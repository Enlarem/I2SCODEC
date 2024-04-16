library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FIR_tb is
end FIR_tb;

architecture Behavioral of FIR_tb is

component FIR
    Generic (width      : integer := 24;
            taps        : integer := 17;
            in_width    : integer range 8 to 32 := 24;
            out_width   : integer range 8 to 32 := 24;
            coef_width  : integer range 8 to 32 := 16
            );
    Port (  
        sysclk      : in std_logic;
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_reclrc   : in std_logic;
        rec_done    : in std_logic;
        r_buff      : in std_logic_vector((2*width-1) downto 0) := (others => '0');
        fil_buff    : out std_logic_vector((2*width-1) downto 0) := (others => '0');
        ac_pbdat    : out std_logic
            );
end component;

component clockSim
    Generic( mclk_period : integer);
    Port ( mclk : out STD_LOGIC;
           bclk : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           reclrc : out STD_LOGIC);
end component;





begin


end Behavioral;
