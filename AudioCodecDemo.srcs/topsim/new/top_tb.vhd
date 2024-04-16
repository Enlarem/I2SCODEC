library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.uniform;

entity top_tb is
end entity;

architecture Behavioral of top_tb is

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

    component clockSim is
        Generic( mclk_period : integer);
        Port ( mclk : out STD_LOGIC;
               bclk : out STD_LOGIC;
               pblrc : out STD_LOGIC;
               reclrc : out STD_LOGIC);
    end component;

    constant mclk_period : integer := 80;
    constant w_width : integer := 24;
    signal s_t_buf, s_r_buf, temp  : std_logic_vector(w_width*2-1 downto 0) := (others => '0');
    
    signal s_btn: std_logic_vector(3 downto 0) := (others => '0');
    signal s_sw: std_logic_vector(3 downto 0) := (others => '0');
    signal s_r_led : std_logic;
             
    signal s_sysclk, s_ac_bclk, s_ac_mclk, s_ac_muten, s_ac_pbdat, s_ac_pblrc, s_ac_recdat, s_ac_reclrc, s_ac_scl, s_ac_sda : std_logic := 'Z';   

begin


uut: entity work.top port map(
    btn => s_btn,
    sw => s_sw,
    led6_r => s_r_led,
    sysclk => s_sysclk,
    ac_bclk => s_ac_bclk,
    ac_mclk => s_ac_mclk,
    ac_muten => s_ac_muten,
    ac_pbdat => s_ac_pbdat,
    ac_pblrc => s_ac_pblrc,
    ac_recdat => s_ac_recdat,
    ac_reclrc => s_ac_reclrc,
    ac_scl => s_ac_scl,
    ac_sda => s_ac_sda
    );

--s_ac_scl <= 'H';
--s_ac_sda <= 'H';

--s_sw(0) <= '1';

clkGen: process begin
    s_sysclk <= '0';
    wait for 4 ns;
    s_sysclk <= '1';
    wait for 4 ns;
end process;


  bclkGen : process(s_ac_mclk) 
    variable count : integer := 0;
  begin
    if falling_edge(s_ac_mclk) then
        count := count + 1;
    end if;
    if count = 2 then
        count := 0;
        s_ac_bclk <= not s_ac_bclk;    
    end if;
  end process;

  pblrcGen : process(s_ac_mclk) 
    variable count : integer := 0; 
  begin
    if falling_edge(s_ac_mclk) then
        count := count + 1;
    end if;
    if count = 128 then
        count := 0;
        s_ac_pblrc <= not s_ac_pblrc;    
    end if;
  end process;
    
    reclrcGen : process(s_ac_mclk) 
    variable count : integer := 0; 
  begin
    if falling_edge(s_ac_reclrc) then
        count := count + 1;
    end if;
    if count = 128 then
        count := 0;
        s_ac_reclrc <= not s_ac_reclrc;    
    end if;
  end process;


tests: process
begin
    -- Wait until it's configured
    s_r_buf <= "111" & rand_slv(2*w_width -3);
    wait until s_r_led = '1';

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
    
    assert (s_t_buf = s_r_buf) report "Error [1] :value given is " & to_string(s_t_buf) & " whereas it should be " & to_string(s_r_buf);
        
    
end process;


end Behavioral;