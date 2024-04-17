library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port (
        btn         : in std_logic_vector(3 downto 0);
        sw          : in std_logic_vector(3 downto 0);
        led6_r      : out std_logic;
        
        sysclk      : in std_logic;
        ac_bclk     : in std_logic;
        ac_mclk     : out std_logic;
        ac_muten    : out std_logic;
        ac_pbdat    : out std_logic;
        ac_pblrc    : in std_logic;
        ac_recdat   : in std_logic;
        ac_reclrc   : in std_logic;
        ac_scl      : out std_logic;
        ac_sda      : inout std_logic
        
        );
end top;

architecture Behavioral of top is

component i2c_configurator
    Port (
        sysclk  : in std_logic;
        rst     : in std_logic;
        scl     : out std_logic;
        sda     : inout std_logic;
        s_done    : out std_logic
    );
end component;

component mclk_comp is
    Port ( sysclk : in STD_LOGIC;
            mclk : out std_logic);
end component;

component i2s_layer is
  generic( width: integer := 32);
  port
  (
    onoff: in std_logic;
    sysclk: in std_logic;
    filter_switch: in std_logic;

    --Input ports
    top_mclk    : in std_logic;
    top_mute    : in std_logic;
    ac_bclk   : in std_logic;
    ac_pblrc  : in std_logic;
    ac_recdat : in std_logic;
    ac_reclrc : in std_logic;

    -- Output ports
    ac_pbdat  : out std_logic
  );
end component;

type top_t is (s_Init, s_Configurating, s_Listening);

signal clk_mclk : std_logic := '0'; -- SSM2603 MCLK. 12.5 MHz
signal clk_bclk, ic2_rst : std_logic := '0'; -- SSM2603 BCLK. 3.125 MHz
signal onoff, i2c_done: std_logic := '1'; 

signal top_sm : top_t := s_Init;

begin

    i2cConf: i2c_configurator port map(sysclk, ic2_rst, ac_scl, ac_sda, i2c_done);    
    i2sLayer: i2s_layer generic map( width => 24)
        port map (
        filter_switch => sw(1),
        sysclk => sysclk,
        top_mclk => clk_mclk,
        ac_bclk => ac_bclk,
        ac_pblrc => ac_pblrc,
        ac_reclrc => ac_reclrc,
        ac_recdat => ac_recdat,
        ac_pbdat => ac_pbdat,
        onoff => onoff,
        top_mute => sw(0)
    ); 
    
    clock: mclk_comp port map(
        sysclk => sysclk,
        mclk => clk_mclk
    );
    
    state_process: process(sysclk)
    begin
        case top_sm is 
            when s_Init => 
                ic2_rst <= '1';
                onoff <= '0';
                top_sm <= s_Configurating;
            when s_Configurating => 
                ic2_rst <= '0';
                if i2c_done = '1' then 
                    top_sm <= s_Listening;
                end if;
            when s_Listening =>
                onoff <= '1';
        end case;
    end process;
    
    ac_mclk <= clk_mclk;
    
    ac_muten <= sw(0);   -- mute switch
    led6_r <= not sw(0) when onoff = '1' else '0'; -- red when muted

end Behavioral;
