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
        if reset = '1' then    --if reset is zero, go to Pause state
            state <= Pause;
        else
            case state is
            -- Initial state, where we wait for the ac_reclrc, then we start to record left channel data
                when Init =>            
                    rec_done <= r_done;
                    if ac_reclrc = '0' and reset = '0' then
                        state <= Count_L;
                    end if;
            --State in which we record left channel data, after the data is recorded, signal it     
                when Count_L =>         
                    data <= ac_recdat;
                    if bit_c <= width then
                        done_c <= '1';
                        state <= Waiting;
                     end if;
            --State where we wait for ac_reclrc=0 to start right recording right channel data
                when Waiting =>
                    if ac_reclrc = '1' and done_c = '1' then
                        done_c <= '0';
                        state <= Count_R;
                    end if;
            --State in which we record right channel data, after the buffer is full, signal it     
                when Count_R =>
                    data <= ac_recdat;
                    if bit_c < 0 then
                        state <= Send;
                     end if;
            -- sending the data to I2s_layer component
                when Send =>
                    r_buff <= buff;
                    if r_done = '1' then
                        state <= Init;
                     end if;
            -- if reset is 1, stay in pause state, after go back to Init state
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
                    if bit_c > 2*width-1 then   -- makes sure to ignore the first bit 
                        bit_c <= bit_c - 1;     
                    else
                        buff(bit_c) <= data;    -- loads each bit into buffer
                        bit_c <= bit_c - 1;
                    end if;
                elsif state = Count_R then
                    if bit_c > (width) then
                        bit_c <= bit_c - 1;     -- makes sure to ignore the first bit 
                    else
                        buff(bit_c) <= data;    -- loads each bit into buffer
                        bit_c <= bit_c - 1;
                    end if;
                elsif state = Init then         -- sets initial value to counter
                    bit_c <= 2*width;
                    r_done <= '0';
                elsif state = Send then         
                    r_done <= '1';
                elsif state = Pause then        -- sets initial value to counter
                    bit_c <= 2*width;
                else
                end if;
            else 
                bit_c <= 2*width;
            end if;
        end if;
    end process;


end Behavioral;

