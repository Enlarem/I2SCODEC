library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity i2s_tb is
end i2s_tb;
architecture Behavioral of i2s_tb is
  constant cc : time := 40 ns;

  -- usual signals
  signal s_clk : std_logic := '0';

  -- i2s signals
  signal s_filter_mode, s_ac_bclk, s_ac_muten, s_ac_pblrc, s_ac_recdat, s_ac_reclrc, s_ac_sda, s_ac_pbdat, s_ac_scl, s_ac_mclk : std_logic;
  -- Test data
  signal s_small_data : std_logic_vector(30 downto 0);

begin

  -- Simulating clocks
  -- Clock simulation is based on the actual set up made
  -- using the I2c_cofigurator component, following the SSM2603
  -- specification file
  

  i2s_layer_inst : entity work.i2s_layer
    port map
    (
      filter_mode => s_filter_mode,

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

  tests : process (s_clk)
  begin

    -- To test :
    -- I2S specification 
    -- -- MSB of the next word on the falling edge of the next clock cycle after the switch of PBLRC
    if rising_edge(s_ac_pblrc) then
        
    end if;
    wait for 4 * cc;
    wait for 2 * cc; -- Waiting for the blank space just after the switch 

    for i in 0 to s_small_data'length loop
      assert(s_small_data(i) = s_ac_pbdat) report "Error [1] : at index " & integer'image(i) & " expected " & std_logic'image(s_small_data(i)) & " but had " & std_logic'image(s_ac_pblrc);
      wait for 2 * cc;
    end loop;
    -- -- When giving a word too wide word to transmit, the word transmitted should be trundated

    -- I2S transimition
    -- -- The data sent should be received without modification
    -- -- The data sent should be received synchronized
    -- -- -- Look at the synchronization between pblrc and the pbdat
    -- -- -- 

  end process; -- tests
end architecture;