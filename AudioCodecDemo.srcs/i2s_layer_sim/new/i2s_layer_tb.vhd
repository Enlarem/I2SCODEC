----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2024 05:56:26 PM
-- Design Name: 
-- Module Name: i2s_layer_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.uniform;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2s_layer_tb is
--  Port ( );
end i2s_layer_tb;

architecture Behavioral of i2s_layer_tb is
    constant mclk_period : integer := 80;
    constant w_width: integer := 24;

    component clockSim is
        Generic( mclk_period : integer);
        Port ( mclk : out STD_LOGIC;
            sysclk : out STD_LOGIC;

               bclk : out STD_LOGIC;
               pblrc : out STD_LOGIC;
               reclrc : out STD_LOGIC);
    end component;
    
    component i2s_layer is
      generic( width: integer := 32);
      port
      (
        onoff: in std_logic;
        filter_switch: in std_logic;

        --Input ports
        sysclk    : in std_logic;

        top_mclk    : in std_logic;
        top_mute: in std_logic;
        ac_bclk   : in std_logic;
        ac_pblrc  : in std_logic;
        ac_recdat : in std_logic;
        ac_reclrc : in std_logic;
    
        -- Output ports
        ac_pbdat  : out std_logic
      );
    end component;
    
    function rand_slv(len : integer) return std_logic_vector is
      variable r : real;
      variable slv : std_logic_vector(len - 1 downto 0);
      variable seed1, seed2: integer := 10;
    begin
      for i in slv'range loop
        uniform(seed1, seed2, r);
        if (r > 0.5) then
            slv(i) := '1' ;
        else
            slv(i) := '0' ;
        end if;
      end loop;
      return slv;
    end function;
    
    function to_string (a : std_logic_vector) return string is
        variable b            : string (1 to a'length) := (others => NUL);
        variable stri         : integer                := 1;
      begin
        for i in a'range loop
          b(stri) := std_logic'image(a((i)))(2);
          stri    := stri + 1;
        end loop;
        return b;
      end function;
    
    function is_null_vector(vector : std_logic_vector) return boolean is
        variable result : boolean := true;
    begin
        for i in vector'range loop
            if vector(i) /= '0' then
                result := false;
                exit;
            end if;
        end loop;
        return result;
    end function is_null_vector;

    signal s_mclk,  s_ac_bclk, s_ac_recdat, s_ac_pblrc, s_ac_reclrc, s_word_received, s_ac_pbdat, s_filter_switch, s_top_mute, s_sysclk : std_logic := '0';
    signal s_onoff: std_logic := '1';
    signal s_t_buf, s_r_buf, temp  : std_logic_vector(w_width*2-1 downto 0) := (others => '0');

begin
    
    clocks: clockSim 
    generic map(
        mclk_period => mclk_period
    )
    port map(
        mclk => s_mclk,
        sysclk => s_sysclk,
        bclk => s_ac_bclk,
        pblrc => s_ac_pblrc,
        reclrc => s_ac_reclrc
    );
    
    uut_i2s: i2s_layer
    generic map(
        width => w_width
    )
    port map(
        onoff => s_onoff,
        filter_switch => s_filter_switch,
        
        top_mclk => s_mclk,
        sysclk => s_sysclk,
        
        top_mute => s_top_mute,
        ac_bclk => s_ac_bclk,
        ac_pblrc => s_ac_pblrc,
        ac_reclrc => s_ac_reclrc,
        ac_recdat => s_ac_recdat,

        ac_pbdat => s_ac_pbdat
    );

    test : process
    begin
        s_r_buf <= "111" & rand_slv(2*w_width -3);
        s_onoff <= '1';

        report "[Test] Simple send and return";
        -- Sending the left bits
        -- wait until falling_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Sending the right bits
        wait until rising_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Listening the left bits
        wait until falling_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;
        -- Listening the right bits
        wait until rising_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;
        
        assert (s_t_buf = s_r_buf) report "Error [1] :value given is " & to_string(s_t_buf) & " whereas it should be " & to_string(s_r_buf);
        
        report "[Test] On/Off feature";

        s_onoff <= '0';
        -- Sending the left bits
        wait until falling_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Sending the right bits
        wait until rising_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Listening the left bits
        wait until falling_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;
        -- Listening the right bits
        wait until rising_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;
        
        assert (is_null_vector(s_t_buf)) report "Error [2] :value given is " & to_string(s_t_buf) & " whereas it should be " & to_string(s_r_buf);
        report "[Test] Mute feature";
        s_top_mute <= '1';
        s_onoff <= '1';
        
        -- Sending the left bits
        wait until falling_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Sending the right bits
        wait until rising_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Listening the left bits
        wait until falling_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;
        -- Listening the right bits
        wait until rising_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_t_buf(i) <= s_ac_pbdat;
            wait until rising_edge(s_ac_bclk);
        end loop;

        assert (is_null_vector(s_t_buf)) report "Error [3] :value given is " & to_string(s_t_buf) & " whereas it should be " & to_string(s_r_buf);
    
        report "[Simulation] Enabling the filter";

        s_top_mute <= '0';
        s_filter_switch <= '1';
        
        -- Sending the left bits
        wait until falling_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width*2-1 downto w_width loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;
        
        -- Sending the right bits
        wait until rising_edge(s_ac_reclrc);
        wait until falling_edge(s_ac_bclk);
        for i in w_width -1  downto 0 loop
            s_ac_recdat <= s_r_buf(i);
            wait until falling_edge(s_ac_bclk);
        end loop;

        wait;
    end process;

end Behavioral;
