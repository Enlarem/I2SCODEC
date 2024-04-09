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
        sysclk      : in std_logic;
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_recdat   : in std_logic;
        ac_reclrc   : in std_logic;
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
    signal sim_buff :  std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal sim_done : std_logic := '0';

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
port map (  sysclk => sim_clk,
            ac_bclk => sim_bclk,
            ac_mclk => sim_mclk,
            ac_recdat => sim_recdat,
            ac_reclrc => sim_reclrc,
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
    wait until falling_edge(sim_reclrc); -- waiting to activate left channel
    report "------ [Test] Recording Left";
    
    wait until rising_edge(sim_bclk);
    for i in width-1 downto 0 loop
        assert (sim_buff(i) = sim_recdat) report "Error ["& integer'image(i) &"] :value given is " & std_logic'image(sim_buff(i)) & " whereas it should be " & std_logic'image(sim_recdat);
        wait until rising_edge(sim_bclk);
    end loop;
    
    wait until rising_edge(sim_reclrc);
    wait until falling_edge(sim_bclk);
    wait until rising_edge(sim_bclk);
    report "------ [Test] Recording Right";
    
    wait until rising_edge(sim_bclk);
    for i in (2*width-1) downto width loop
        assert (sim_buff(i) = sim_recdat) report "Error ["& integer'image(i) &"] :value given is " & std_logic'image(sim_buff(i)) & " whereas it should be " & std_logic'image(sim_recdat);
        wait until rising_edge(sim_bclk);
    end loop;    
    
    assert (sim_done = '1') report "Error value is " & std_logic'image(sim_done) & " whereas it should be " & std_logic'image('1');
    
end process;
end Behavioral;
