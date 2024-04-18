----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 11:44:30 AM
-- Design Name: 
-- Module Name: i2s_transmitter - Behavioral
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

entity i2s_transmitter is
    Generic(
        w_width: integer := 24
    );
    Port ( 
    -- Relted to internal data management
           t_buf: in std_logic_vector( 2* w_width -1 downto 0);
           word_received: in std_logic;
           rst: in std_logic;

    -- Related to the Codec interface
           pblrc : in STD_LOGIC;
           mclk : in STD_LOGIC;
           bclk : in STD_LOGIC;
           pbdat : out STD_LOGIC);
end i2s_transmitter;

architecture Behavioral of i2s_transmitter is
    
    function is_Z_vector(vector : std_logic_vector) return boolean is
        variable result : boolean := true;
    begin
        for i in vector'range loop
            if vector(i) /= 'Z' then
                result := false;
                exit;
            end if;
        end loop;
        return result;
    end function is_Z_vector;


    type i2s_transmitter_states is (s_Init, s_Transmit, s_Wait_for_Left, s_Wait_for_Right, s_Early_wait_for_Left, s_Early_wait_for_Right, s_NextEdge, s_Stores);
    signal currentState : i2s_transmitter_states := s_Init;
    signal t_buf_temp : std_logic_vector(t_buf'range) := (others => '0');
    signal bits_sent : integer := 0;
    signal last_falling_edge : integer := 0;
    signal start_counting, stop_counting : std_logic :='0';
begin

    state_process : process(mclk)
        begin
            if rst = '1' then
                currentState <= s_Init;
            else
                case currentState is
                    when s_Init => 
                        if (word_received = '1') then 
                            currentState <= s_Wait_for_Left;
                        end if;
                        
                    when s_Stores => 
                        t_buf_temp <= t_buf;
                        currentState <= s_Transmit;
                    when s_Transmit => 
                        if(bits_sent >= w_width and pblrc = '0' ) then
                            currentState <= s_Wait_for_Right;
                        elsif (bits_sent >= 2*w_width and pblrc = '1') then
                            currentState <= s_Wait_for_Left;
                        end if;
                    when s_Wait_for_Left => 
                        if  word_received = '1' then
                            currentState <= s_Early_wait_for_left;
                            t_buf_temp <= t_buf;
                        end if;
                        if(pblrc = '0') then
                            currentState <= s_Stores;
                        end if;
                    when s_Wait_for_Right =>
                        if word_received = '1' then
                            currentState <= s_Early_wait_for_right;
                            t_buf_temp <= t_buf;
                        end if;
                        if(pblrc = '1') then
                            currentState <= s_Transmit;
                        end if;
                    when s_Early_wait_for_Left => 
                        if(pblrc = '0') then
                            currentState <= s_Transmit;
                        end if;
                    when s_Early_wait_for_Right => 
                        if(pblrc = '1') then
                            currentState <= s_Transmit;
                        end if;
                    when others => null;
                end case;   
            end if;
            
        end process;
    
    data_process: process(bclk, rst)
    begin
        if rst = '0' then 
            if falling_edge(bclk)  then 
                if currentState = s_Transmit then
                    if t_buf_temp(t_buf_temp'length - 1 - bits_sent) /= 'Z' then
                        pbdat <= t_buf_temp(t_buf_temp'length - 1 - bits_sent);
                    else
                        pbdat <= '0';
                    end if;
                    bits_sent <= bits_sent + 1;
                elsif (currentState /= s_Transmit and bits_sent >= 2*w_width)then 
                    bits_sent <= 0;
                    pbdat <= '0';
                elsif (bits_sent >= 2*w_width and pblrc = '1') or (bits_sent >= w_width and pblrc = '0') then
                    pbdat <= '0';
                end if;
            end if;
        else
            bits_sent <= 0;
            pbdat <= '0';
        end if;
    end process;
        
    pb_process: process(pblrc)
    begin
        start_counting <= not pblrc;
    end process;
 
end Behavioral;
