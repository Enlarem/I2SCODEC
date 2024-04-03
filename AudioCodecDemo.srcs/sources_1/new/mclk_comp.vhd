library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mclk_comp is
    Port ( sysclk : in STD_LOGIC;
            mclk : out std_logic);
end mclk_comp;

architecture Behavioral of mclk_comp is

signal clk_mclk : std_logic := '0';--25 Mhz master clock 

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
      clk_mclk <= not clk_mclk;
    end if ;
  end if;
end process;

mclk <= clk_mclk;

end Behavioral;
