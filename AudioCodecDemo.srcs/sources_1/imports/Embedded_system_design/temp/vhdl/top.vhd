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

component i2s_layer is
  generic( width: integer := 32);
  port
  (
    onoff: in std_logic;
    sysclk: in std_logic;

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
    
    -- The SSM2603 needs mclk to work. Maximum frequency is about 18 MHz.
    -- Let's divide the 125 MHz clock by 10.
    codecMCLKClockGen: process(sysclk)
        constant cnt_max : integer := 10/2;
        variable cnt : integer range 0 to cnt_max := 0; 
    begin
        if rising_edge(sysclk) then
            if btn(0) = '1' then
                cnt := 0;
            end if;
            
            if cnt < cnt_max-1 then
                cnt := cnt + 1;
            else
                cnt := 0;
                clk_mclk <= not clk_mclk;
            end if;
        end if;
    end process;
    
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
    
--    -- For 48kHz in/out the BCLK must be MCLK/4
--    codecBCLKClockGen: process(clk_mclk)
--        constant cnt_max : integer := 4/2;
--        variable cnt : integer range 0 to cnt_max := 0; 
--    begin
--        if rising_edge(clk_mclk) then
--            if btn(0) = '1' then
--                cnt := 0;
--            end if;
            
--            if cnt < cnt_max-1 then
--                cnt := cnt + 1;
--            else
--                cnt := 0;
--                clk_bclk <= not clk_bclk;
--            end if;
--        end if;
--    end process;
    
    ac_mclk <= clk_mclk;
    
    ac_muten <= sw(0);   -- mute switch
    led6_r <= not sw(0) when onoff = '1' else '0'; -- red when muted

end Behavioral;
