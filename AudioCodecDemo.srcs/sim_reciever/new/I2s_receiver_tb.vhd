library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.uniform;


entity I2s_receiver_tb is
end I2s_receiver_tb;

architecture Behavioral of I2s_receiver_tb is

component I2s_receiver
    Generic (width : integer := 32
            );
    
    Port ( 
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_recdat   : in std_logic;
        ac_reclrc   : in std_logic;
        reset       : in std_logic := '0';
        rec_done    : out std_logic;
        r_buff      : out std_logic_vector((2*width-1) downto 0) := (others => '0')
        );
end component;

component clockSim is
    Generic( mclk_period : integer);
    Port ( mclk : out STD_LOGIC;
           bclk : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           reclrc : out STD_LOGIC);
end component;

    constant mclk_period : integer := 80;
    constant width : integer := 32;

    signal sim_clk, sim_bclk, sim_mclk, sim_reclrc, sim_recdat : std_logic;
    signal sim_buff, temp :  std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal sim_done, sim_reset : std_logic := '0';
    
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

begin

clocks: clockSim 
    generic map(
        mclk_period => mclk_period
    )
    port map(
        mclk => sim_mclk,
        bclk => sim_bclk,
        reclrc => sim_reclrc
    );


uut: I2s_receiver
generic map (width => width)
port map ( 
            ac_bclk => sim_bclk,
            ac_mclk => sim_mclk,
            ac_recdat => sim_recdat,
            ac_reclrc => sim_reclrc,
            reset => sim_reset,
            r_buff => sim_buff,
            rec_done => sim_done
            );


random_bit : process(sim_bclk) is
    variable seed1, seed2 : positive := 1;
    variable re           : real;
begin
    if falling_edge(sim_bclk) then
        uniform(seed1, seed2, re);
        if (re < 0.5) then
            sim_recdat <= '0';
        else
            sim_recdat <= '1';
        end if;
    end if;
end process;
    
test : process
begin
    
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    for i in 63 downto 32 loop
        temp(i) <= sim_recdat;
        wait until rising_edge(sim_bclk);
    end loop;
    wait until rising_edge(sim_reclrc);
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    for i in 31 downto 0 loop
        temp(i) <= sim_recdat;
        wait until rising_edge(sim_bclk);
    end loop;
    wait on sim_done;
    assert (sim_buff = temp) report "Error [1] :value given is " & to_string(sim_buff) & " whereas it should be " & to_string(temp);
    
    -- Another counting cycle, but this time with restart after recording
    wait until falling_edge(sim_bclk);
    sim_reset <= '1';
    wait for mclk_period * ns;
    assert (sim_buff = temp) report "Error [2] :value given is " & to_string(sim_buff) & " whereas it should be " & to_string(temp);
    wait until rising_edge(sim_reclrc);
    sim_reset <= '0';
    
    -- Restart during counting
    wait until falling_edge(sim_reclrc);
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    for i in 63 downto 40 loop
        temp(i) <= sim_recdat;
        wait until rising_edge(sim_bclk);
    end loop;
    sim_reset <= '1';
    wait for mclk_period * ns;
    sim_reset <= '0';
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    wait until falling_edge(sim_bclk);    
    assert (sim_buff = temp) report "Error [3] :value given is " & to_string(sim_buff) & " whereas it should be " & to_string(temp);
    
    -- Counting without interuption
    wait until falling_edge(sim_reclrc);
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    for i in 63 downto 32 loop
        temp(i) <= sim_recdat;
        wait until rising_edge(sim_bclk);
    end loop;
    wait until rising_edge(sim_reclrc);
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    for i in 31 downto 0 loop
        temp(i) <= sim_recdat;
        wait until rising_edge(sim_bclk);
    end loop;
    wait on sim_done;
    assert (sim_buff = temp) report "Error [4] :value given is " & to_string(sim_buff) & " whereas it should be " & to_string(temp);

    wait;
    
end process;
end Behavioral;
