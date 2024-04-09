library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity i2s_layer is
  port
  (

    filter_mode : in std_logic;

    --Input ports
    sysclk    : in std_logic;
    ac_bclk   : in std_logic;
    ac_muten  : in std_logic;
    ac_pblrc  : in std_logic;
    ac_recdat : in std_logic;
    ac_reclrc : in std_logic;
    ac_sda    : inout std_logic;

    -- Output ports
    ac_pbdat  : out std_logic;
    ac_scl    : out std_logic;
    ac_mclk   : out std_logic
  );
end i2s_layer;
architecture Behavioral of i2s_layer is
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

    component I2s_receiver is
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
    
begin



end Behavioral; -- Behavioral