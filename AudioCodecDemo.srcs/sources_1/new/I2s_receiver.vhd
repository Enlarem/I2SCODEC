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
        r_buff      : out std_logic_vector((2*width-1) downto 0) := (others => '0');
        rec_done    : out std_logic
        );
end I2s_receiver;

architecture Behavioral of I2s_receiver is

    type i2sr_state is (Init, Count_L, Count_R, Waiting, Send);
    signal State :i2sr_state   :=Init;
    signal data : std_logic := '0';
    signal reset : std_logic := '0';
    signal done_c : std_logic := '0';
    signal buff : std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal r_done : std_logic := '0';
    signal ignore : std_logic := '0';
    signal bit_c : integer :=0;
begin

--chanel : process (ac_reclrc)
--    begin
--        if falling_edge(ac_reclrc) then
--            left <= '1';
--        end if;
--        if rising_edge(ac_reclrc) then
--            right <= '1';
--        end if; 
--    end process;
    
uart_state : process(ac_mclk)
    begin
        case state is
            when Init =>
                rec_done <= r_done;
                if ac_reclrc = '0' then
                    state <= Count_L;
                end if;
            when Count_L =>
                data <= ac_recdat;
                if bit_c >= width then
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
                if bit_c >= 2* width then
                    state <= Send;
                 end if;
            when Send =>
                r_buff <= buff;
                if r_done = '1' then
                    state <= Init;
                 end if;
--                if ignore = '1' and ac_reclrc = '0'then
--                    state <= Count_L;
--                elsif ignore = '1' and ac_reclrc = '1' then
--                     state <= Count_R;
--                end if;
        end case;
    end process;
 
uart : process (ac_bclk, reset)
    begin
        if falling_edge(ac_bclk) and reset = '0' then
            if state = Count_L then
                if bit_c < 1 then
                    bit_c <= bit_c + 1;
                else
                    buff(bit_c - 1) <= data;
                    bit_c <= bit_c + 1;
                end if;
 --               ignore <= '0';
            elsif state = Count_R then
                if bit_c < (width + 1) then
                    bit_c <= bit_c + 1;
                else
                    buff(bit_c - 1) <= data;
                    bit_c <= bit_c + 1;
                end if;
  --              ignore <= '0';
            elsif state = Init then
                bit_c <= 0;
                r_done <= '0';
            elsif state = Send then
                r_done <= '1';
            else
            end if;
--        elsif rising_edge(ac_bclk) and state = Ignore_bit then
--            ignore <= '1';
         elsif reset = '1' then
            buff <= (others => '0');
            bit_c <= 0;
         end if;
    end process;




















        
--    begin
--        if rising_edge(ac_bclk) then
--        case (State) is
--            when Init =>
--            data <= ac_recdat;
--                if r_done = '1' then
--                    r_done <= '0';
--                    State <= Init;
--                else
--                    if ac_reclrc = '0' then
--                        State <= Count_L;
--                    end if;
--                    if ac_reclrc = '1' and done_c = '1' then
--                        State <= Count_R;
--                    end if;
--                end if;
--            when Count_L =>
--                if bit_c < (width-1) then
--                    buff(bit_c) <= data;
--                    bit_c := bit_c + 1;
--                else 
--                    done_c <= '1';
--                    State <= Init;
--                end if;
--            when Count_R =>
--                if bit_c < (2*width-1) then     --and bit_c >= (width-1) (might be needed)
--                    buff(bit_c) <= data;
--                    bit_c := bit_c + 1;
--                else 
--                    r_done <= '1';
--                    rec_done <= r_done;
--                    bit_c := 0;
--                    State <= Init;
--                end if;
--            when others => null;
--        end case;
--        end if;
--    end process;
end Behavioral;

