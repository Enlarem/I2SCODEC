library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


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
        r_buff      : out std_logic_vector((2*width-1) downto 0) := (others => '0')
        );
end component;

constant width : integer := 32;
signal sim_clk, sim_bclk, sim_mclk, sim_reclrc, sim_recdat : std_logic;
signal sim_buff :  std_logic_vector ((2*width-1) downto 0) := (others => '0');
constant simtime : time := 4ns;

begin

uut: I2s_receiver
port map (  sysclk => sim_clk,
            ac_bclk => sim_bclk,
            ac_mclk => sim_mclk,
            ac_recdat => sim_recdat,
            ac_reclrc => sim_reclrc,
            r_buff => sim_buff
            );

end Behavioral;
