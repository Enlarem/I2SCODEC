library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity i2s_layer is
  generic( width: integer := 32);
  port
  (
    onoff: in std_logic;            -- Says if the system is turned on or off
    filter_switch: in std_logic;    -- Says if the filter should be used or not
    sysclk: in std_logic;           -- System clock
    top_mclk    : in std_logic;     -- Top's master clock
    top_mute    : in std_logic;     -- Says if the system is muted or not

    -- Signals from CODEC
    ac_bclk   : in std_logic;
    ac_pblrc  : in std_logic;
    ac_recdat : in std_logic;
    ac_reclrc : in std_logic;
    ac_pbdat  : out std_logic
  );
end i2s_layer;
architecture Behavioral of i2s_layer is
    component i2s_transmitter is
        Generic(
            w_width: integer :=32
        );
        Port ( 
        -- Related to internal data management
               t_buf: in std_logic_vector( 2* w_width -1 downto 0);
               word_received: in std_logic;
               rst: in std_logic;
                top_mute : in std_logic;

        -- Related to the Codec interface
               pblrc : in STD_LOGIC;
               mclk : in STD_LOGIC;
               bclk : in STD_LOGIC;
               pbdat : out STD_LOGIC);
    end component;

    component I2s_receiver is
        Generic (width : integer := 32
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
    end component ;
    
    component FIR is
    Generic (width : integer := 24;
            taps : integer := 20;
            in_width : integer range 8 to 32 := 24;
            out_width : integer range 8 to 32 := 24;
            coef_width : integer range 8 to 32 := 16
            );
    Port (  
            sysclk      : in std_logic;
            ac_mclk     : in std_logic;
            rec_done    : in std_logic;
            r_buff      : in std_logic_vector((2*width-1) downto 0) := (others => '0');
            fil_buff    : out std_logic_vector((2*width-1) downto 0) := (others => '0');
            fil_done    : out std_logic
                );
    end component;
    
    type general_state is (s_Init, s_Wait_First_Word, s_Idle, s_Filter, s_Finished_filter, s_Word_Received);
    signal currentState : general_state := s_Init;
    signal t_word_received, t_rst, r_rst, r_rec_done, buf_rec_done, rec_done, t_ac_pbdat, fil_done : std_logic := '0';
    signal r_buff, t_buff, r_buff_temp, t_buff_temp  : std_logic_vector(width*2 -1 downto 0) := (others => '0');
    
begin

    receiver: I2s_receiver 
    generic map( width => width )
    port map(
        ac_reclrc => ac_reclrc,
        ac_mclk => top_mclk,
        ac_bclk => ac_bclk,
        ac_recdat => ac_recdat,
        r_buff => r_buff,
        reset => r_rst,
        rec_done => r_rec_done
    );
    
    transmitter: i2s_transmitter 
    generic map( w_width => width )
    port map(
        t_buf => t_buff,
        word_received => t_word_received,
        rst => t_rst,
        pblrc => ac_pblrc,
        mclk => top_mclk,
        bclk => ac_bclk,
        top_mute => top_mute,

        pbdat => ac_pbdat
    );
    
    filter: FIR
    port map (
        sysclk      => sysclk,
        ac_mclk     => top_mclk,
        rec_done    => buf_rec_done,
        r_buff      => r_buff_temp,
        fil_buff    => t_buff_temp,
        fil_done    => fil_done
    );
    
    -- Process that allows to get the filtered data just after it has been processed
    -- It wouldn't be possible to do it in the state_process because of the master clock's speed
    fil_done_process: process(sysclk)
    begin
        if r_rec_done = '1' and (currentState = s_Filter or currentState = s_Word_Received) then
            buf_rec_done <= '1';
        end if;
        if fil_done = '1' then
            buf_rec_done <= '0';
        end if;
    end process;
    
    state_process: process (top_mclk)
    begin
        if onoff = '1' then 
            case currentState is
                -- We are at the begining, nothing as been received yet.
                when s_Init => 
                    t_rst <= '0';
                    r_rst <= '0';
                    currentState <= s_Wait_First_Word;
                
                -- Once initialized, the system waits for the receiver to record a word
                when s_Wait_First_Word =>
                    if r_rec_done = '1' then
                        currentState <= s_Word_Received;
                        t_word_received <= '1';
                    end if;
                
                -- The word was juste received, we either switch a state for filtering it or we directly transmit it to the transmitter
                when s_Word_Received => 
                    if filter_switch = '1' then
                        r_buff_temp <= r_buff;
                        currentState <= s_Filter;
                    else
                        t_buff <= r_buff;
                        currentState <= s_Idle;
                    end if;
                
                -- Normal state, just retreives the words received by the receiver component, or filter them before
                when s_Idle => 
                    t_word_received <= '0';
                    if r_rec_done = '1' then
                        if filter_switch = '1' then
                            currentState <= s_Filter;
                            r_buff_temp <= r_buff;
                        else
                            t_buff <= r_buff;
                            t_word_received <= '1';
                        end if;
                    else
                        t_buff <= (others => 'Z');
                    end if;
                -- Waits for the filter component to filter the sample
                when s_Filter =>
                    if fil_done = '1' then
                        currentState <= s_Finished_filter;
                        t_buff <= t_buff_temp;
                        t_word_received <= '1';
                    else
                        t_buff <= (others => 'Z');
                    end if;
                
                -- Waits for the uncontrolled r_rec_done signal to turn off before moving on 
                -- Further explanations in the documentation
                when s_Finished_Filter => 
                    t_word_received <= '0';
                    if r_rec_done = '0' then
                        currentState <= s_Idle;
                    end if;
                when others => null;
            end case;
            
            -- For the mute to work we only "unplug" the last pin before the CODEC
            -- Further explanations in the documentation
            
        else 
            currentState <= s_Init;
            t_rst <= '1';
            r_rst <= '1';
            t_word_received <= '0';
            t_buff <= (others => '0');
        end if;
    end process;
    
end Behavioral; -- Behavioral