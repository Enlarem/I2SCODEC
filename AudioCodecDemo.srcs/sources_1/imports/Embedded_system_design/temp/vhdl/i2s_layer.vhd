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


begin



end Behavioral; -- Behavioral