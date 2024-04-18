library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


entity I2s_receiver is
    Generic (width : integer := 24
            );
    
    Port ( 
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_recdat   : in std_logic;
        ac_reclrc   : in std_logic;
        reset       : in std_logic := '0';
        r_buff      : out std_logic_vector((2*width-1) downto 0) := (others => '0');
        rec_done    : out std_logic
        );
end I2s_receiver;

architecture Behavioral of I2s_receiver is

    type i2sr_state is (Init, Count_L, Count_R, Waiting, Send, Pause);
    signal State :i2sr_state   :=Init;
    signal data : std_logic := '0';
    signal done_c : std_logic := '0';
    signal buff : std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal r_done : std_logic := '0';
    signal bit_c : integer := 2 * width;
begin


uart_state : process(ac_mclk, ac_reclrc)
    begin
        if reset = '1' then
            state <= Pause;
        else
            case state is
                when Init =>
                    rec_done <= r_done;
                    if ac_reclrc = '0' and reset = '0' then
                        state <= Count_L;
                    end if;
                when Count_L =>
                    data <= ac_recdat;
                    if bit_c <= width then
                        done_c <= '1';
                        state <= Waiting;
                     end if;
                when Waiting =>
                    if ac_reclrc = '1' and done_c = '1' then
                        done_c <= '0';
                        state <= Count_R;
                    end if;
                when Count_R =>
                    data <= ac_recdat;
                    if bit_c < 0 then
                        state <= Send;
                     end if;
                when Send =>
                    r_buff <= buff;
                    if r_done = '1' then
                        state <= Init;
                     end if;
                when Pause =>
                    r_buff <= buff;
                    if reset = '0' and falling_edge(ac_reclrc) then
                        state <= Init;
                    end if;
                
            end case;
        end if;
    end process;
 
uart : process (ac_bclk, reset)
    begin
        if falling_edge(ac_bclk) then
            if reset = '0' then
            
                if state = Count_L then
                    if bit_c > 2*width-1 then
                        bit_c <= bit_c - 1;
                    else
                        buff(bit_c) <= data;
                        bit_c <= bit_c - 1;
                    end if;
                elsif state = Count_R then
                    if bit_c > (width) then
                        bit_c <= bit_c - 1;
                    else
                        buff(bit_c) <= data;
                        bit_c <= bit_c - 1;
                    end if;
                elsif state = Init then
                    bit_c <= 2*width;
                    r_done <= '0';
                elsif state = Send then
                    r_done <= '1';
                elsif state = Pause then
                    bit_c <= 2*width;
                else
                end if;
            else 
                bit_c <= 2*width;
            end if;
        end if;
    end process;


end Behavioral;

