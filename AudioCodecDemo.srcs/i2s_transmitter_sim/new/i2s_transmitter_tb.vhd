----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2024 10:20:40 AM
-- Design Name: 
-- Module Name: i2s_transmitter_tb - Behavioral
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

entity i2s_transmitter_tb is    
--  Port ( );
end i2s_transmitter_tb;

architecture Behavioral of i2s_transmitter_tb is
    constant mclk_period : integer := 80;
    constant w_width: integer := 24;

    component i2s_transmitter is
        Generic(
            w_width: integer
        );
        Port ( 
        -- Relted to internal data management
               t_buf: std_logic_vector( 2* w_width -1 downto 0);
               word_received: std_logic;
               rst: std_logic;
        -- Related to the Codec interface
               pblrc : in STD_LOGIC;
               mclk : in STD_LOGIC;
               bclk : in STD_LOGIC;
               pbdat : out STD_LOGIC);
    end component;

    component clockSim is
        Generic( mclk_period : integer);
        Port ( mclk : out STD_LOGIC;
               bclk : out STD_LOGIC;
               pblrc : out STD_LOGIC;
               reclrc : out STD_LOGIC);
    end component;
    
    function rand_slv(len : integer) return std_logic_vector is
      variable r : real;
      variable slv : std_logic_vector(len - 1 downto 0);
      variable seed1, seed2: integer := 999;
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

    signal s_mclk, s_rst, s_ac_bclk, s_ac_pblrc, s_word_received, s_pbdat : std_logic := '0';
    signal s_t_buf : std_logic_vector(w_width*2-1 downto 0) := (others => '0');
    

begin

    clocks: clockSim 
    generic map(
        mclk_period => mclk_period
    )
    port map(
        mclk => s_mclk,
        bclk => s_ac_bclk,
        pblrc => s_ac_pblrc
    );
    
    uut_transmitter: i2s_transmitter 
    generic map(
        w_width => w_width
    )
    port map(
        t_buf => s_t_buf,
        word_received => s_word_received,
        rst => s_rst,
        
        mclk => s_mclk,
        bclk => s_ac_bclk,
        pblrc => s_ac_pblrc,
        pbdat => s_pbdat
    );

    test: process
    begin
        -- Loading data into the buffer
        s_t_buf <= "111" & rand_slv(w_width*2 - 3 );
        
        -- Testing the data transfer
        wait until falling_edge(s_ac_pblrc);
        -- wait for 3 * mclk_period * ns;

        s_word_received <= '1';    
        wait for mclk_period * ns;
        s_word_received <= '0';    
        -- Data should be transfered into the internal state of the transmitter

        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        -- Should have sent the first bit
        
        report "------ [Test] Sending Left";
        for i in 2*w_width - 1 downto w_width loop
            assert(s_pbdat = s_t_buf(i)) report "Error["& integer'image(i) &"] : value given is " & std_logic'image(s_pbdat) & " whereas it should be " & std_logic'image(s_t_buf(i));
            wait until rising_edge(s_ac_bclk);
        end loop;
        
        wait until rising_edge(s_ac_pblrc);
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
        report "------ [Test] Sending Right";

        for i in w_width - 1 downto 0 loop
            assert(s_pbdat = s_t_buf(i)) report "Error["& integer'image(i) &"] : value given is " & std_logic'image(s_pbdat) & " whereas it should be " & std_logic'image(s_t_buf(i));
            wait until rising_edge(s_ac_bclk);
        end loop;
      -- Testing if the transmitter can handle playing multiple words
        report "------ [Test] Changing the word";

        s_t_buf(w_width*2-1) <= not s_t_buf(w_width*2-1);
        
        wait until falling_edge(s_ac_pblrc); 
        wait until falling_edge(s_ac_bclk);
        wait until rising_edge(s_ac_bclk);
       
        assert(s_pbdat = s_t_buf(w_width*2-1)) report "Error["& integer'image(w_width*2) &"] : value given is " & std_logic'image(s_pbdat) & " whereas it should be " & std_logic'image(s_t_buf(w_width*2-1));

        -- Test reset
        report "------ [Test] Testing Reset";
        
        -- Waiting for the next bit to be sent because it'll be a 1, and the value sent after a reset is 0.
        wait until rising_edge(s_ac_bclk);

        s_rst <= '1';
        wait for mclk_period * ns;
        assert(s_pbdat = '0') report "Error["& integer'image(w_width*2 + 1) &"] : value given is " & std_logic'image(s_pbdat) & " whereas it should be 0";
        s_rst <= '0';
        wait for mclk_period * ns;
        
    end process;
    
end Behavioral;
