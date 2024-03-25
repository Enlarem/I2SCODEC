library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity i2s_tb is
end i2s_tb;
architecture Behavioral of i2s_tb is
    -- usual signals
    signal s_clk : std_logic := '0';
    
    -- i2s signals
    signal s_ac_bclk, s_ac_muten, s_ac_pblrc, s_ac_recdat, s_ac_reclrc, s_ac_sda, s_ac_pbdat, s_ac_scl, s_ac_mclk : std_logic;

begin
    i2s_layer_inst: entity work.i2s_layer
    port map (
      ac_bclk   => s_ac_bclk,
      ac_muten  => s_ac_muten,
      ac_pblrc  => s_ac_pblrc,
      ac_recdat => s_ac_recdat,
      ac_reclrc => s_ac_reclrc,
      ac_sda    => s_ac_sda,
      ac_pbdat  => s_ac_pbdat,
      ac_scl    => s_ac_scl,
      ac_mclk   => s_ac_mclk
    );

    tests : process
    begin
        
        -- To test :
        -- I2S specification 
        -- -- MSB of the next word on the falling edge of the next clock cycle after the switch of PBLRC
        -- -- When giving a word too wide word to transmit, the word transmitted should be trundated
        -- I2S transimition
        -- -- The data sent should be received without modification
        -- -- The data sent should be received synchronized
        -- -- -- Look at the synchronization between pblrc and the pbdat
        -- -- -- 

    end process ; -- tests
end architecture;