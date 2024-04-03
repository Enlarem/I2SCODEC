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

signal mclk : std_logic := '0';--25 Mhz master clock 

begin

process (sysclk)
  constant cntm_max : integer := 20; -- 20 rising edges, half a period
  variable cntm : integer range 0 to cntm_max :=0;

begin
  if rising_edge(sysclk) then
    if cntm < cntm_max - 1 then
      cntm := cntm + 1;
    else 
      cntm := 0;
      mclk <= not mclk;
    end if ;
  end if;
end process;




end Behavioral; -- Behavioral