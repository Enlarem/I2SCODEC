library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity i2s_layer is
  generic( width: integer := 32);
  port
  (

    filter_mode : in std_logic;
    onoff: in std_logic;

    --Input ports
    top_mclk    : in std_logic;
    ac_bclk   : in std_logic;
    ac_muten  : in std_logic;
    ac_pblrc  : in std_logic;
    ac_recdat : in std_logic;
    ac_reclrc : in std_logic;
    ac_sda    : inout std_logic;

    -- Output ports
    ac_pbdat  : out std_logic;
    ac_scl    : out std_logic;
    ac_mclk   : out std_logic
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
            r_buff      : out std_logic_vector((2*width-1) downto 0) := (others => '0');
            rec_done    : out std_logic
            );
    end component ;
    
    type general_state is (s_Init, s_Pause, s_Idle, s_WordReceived);
    signal currentState : general_state := s_Init;
    signal t_word_received, t_rst, r_rec_done, t_ac_pbdat : std_logic := '0';
    signal r_buff, t_buff : std_logic_vector(width*2 -1 downto 0) := (others => '0');
    
begin

    receiver: I2s_receiver port map(
        ac_reclrc => ac_reclrc,
        ac_mclk => top_mclk,
        ac_bclk => ac_bclk,
        ac_recdat => ac_recdat,
        r_buff => r_buff,
        rec_done => r_rec_done
    );
    
    transmitter: i2s_transmitter port map(
        t_buf => t_buff,
        word_received => t_word_received,
        rst => t_rst,
        pblrc => ac_pblrc,
        mclk => top_mclk,
        bclk => ac_bclk,
        
        pbdat => t_ac_pbdat
    );
    
    state_process: process (top_mclk)
    begin
        if onoff = '0' then 
            case currentState is
                when s_WordReceived => 
                    t_buff <= r_buff;
                    t_word_received <= '1';
                    currentState <= s_Idle;
                when s_Idle => 
                    t_word_received <= '0';
                    if r_rec_done = '1' then
                        t_buff <= r_buff;
                    end if;
                when others => ;
            end case;
        end if;
    end process;
    

end Behavioral; -- Behavioral