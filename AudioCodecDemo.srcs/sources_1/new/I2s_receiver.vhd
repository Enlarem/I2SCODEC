library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


entity I2s_receiver is
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
end I2s_receiver;

architecture Behavioral of I2s_receiver is

    type i2sr_state is (Init, Count_L, Count_R, Ignore_bit);
    signal State :i2sr_state   :=Init;
    signal data : std_logic := '0';
    signal ready_c : std_logic := '0';
    signal done_c : std_logic := '0';
    signal start : std_logic := '0';
    signal buff : std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal left : std_logic := '0';
    signal right : std_logic := '0';
begin

chanel : process (ac_reclrc)
    begin
        if rising_edge(ac_reclrc) then
            left <= '1';
        end if;
        if falling_edge(ac_reclrc) then
            right <= '1';
        end if; 
    end process;
    
    
uart :process (ac_bclk)
        variable bit_c : integer range 0 to 63 :=0;
        
    begin
        if rising_edge(ac_bclk) then
        case (State) is
            when Init =>
            data <= ac_recdat;
                if left = '1' then
                    State <= Count_L;
                end if;
                if right = '1' and done_c = '1' then
                    State <= Count_R;
                end if;
            State <= Init;
            when Count_L =>
                if bit_c < (width-1) then
                    buff(bit_c) <= data;
                    bit_c := bit_c + 1;
                else 
                    done_c <= '1';
                    left <= '0';
                    State <= Init;
                end if;
            when Count_R =>
                if bit_c < (2*width-1) then     --and bit_c >= (width-1) (might be needed)
                    buff(bit_c) <= data;
                    bit_c := bit_c + 1;
                else 
                    right <= '0';
                    State <= Init;
                end if;
        end case;
        end if;
    end process;
end Behavioral;

