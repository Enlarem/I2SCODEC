----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2024 10:05:53 AM
-- Design Name: 
-- Module Name: clockSim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockSim is
    Generic( mclk_period : integer);
    Port ( mclk : out STD_LOGIC;
           bclk : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           reclrc : out STD_LOGIC);
end clockSim;

architecture Behavioral of clockSim is
   constant cc : time := (mclk_period/2) * ns;
  signal s_clk, s_ac_bclk, s_ac_pblrc : std_logic := '0';

begin

  mainClkGen : process begin
    s_clk <= '0';
    wait for cc; -- So it fits the  12.288 Mhz clock
    s_clk <= '1';
    wait for cc;
  end process;

  bclkGen : process(s_clk) 
    variable count : integer := 0;
  begin
    if rising_edge(s_clk) then
        count := count + 1;
    end if;
    if count = 2 then
        count := 0;
        s_ac_bclk <= not s_ac_bclk;    
    end if;
  end process;

  pblrcGen : process(s_ac_bclk) 
    variable count : integer := 0; 
  begin
    if rising_edge(s_ac_bclk) then
        count := count + 1;
    end if;
    if count = 127 then
        count := 0;
        s_ac_pblrc <= not s_ac_pblrc;    
    end if;
  end process;
  
  mclk <= s_clk;
  bclk <= s_ac_bclk;
  pblrc <= s_ac_pblrc;
  reclrc <= s_ac_pblrc;
  
end Behavioral;
