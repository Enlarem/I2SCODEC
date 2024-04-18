library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;
use IEEE.Numeric_std.all;


entity FIR_tb is
end FIR_tb;

architecture Behavioral of FIR_tb is

component FIR
    Generic (width      : integer := 24;
            taps        : integer := 20;
            coef_width  : integer range 8 to 32 := 16
            );
    Port (  
        sysclk      : in std_logic;
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_reclrc   : in std_logic;
        rec_done    : in std_logic;
        r_buff      : in std_logic_vector((2*width-1) downto 0) := (others => '0');
        fil_buff    : out std_logic_vector((2*width-1) downto 0) := (others => '0')
            );
end component;

component clockSim
    Generic( mclk_period : integer);
    Port ( mclk : out STD_LOGIC;
           bclk : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           reclrc : out STD_LOGIC);
end component;

    constant mclk_period : integer := 80;
    constant width : integer := 24;
    constant taps : integer := 20;
    constant coef_width : integer := 16;

    signal sim_clk, sim_bclk, sim_mclk, sim_reclrc, sim_recdat : std_logic := '0';
    signal sim_fil_buff, sim_buff, out_buff :  std_logic_vector ((2*width-1) downto 0) := (others => '0');
    signal sim_done, sim_reset : std_logic := '0';
 --   signal sim_left : std_logic_vector (width-1 downto 0) := (others => '0');
 --   signal sim_right : std_logic_vector (width-1 downto 0) := (others => '0');
    signal recL_buff, recR_buff, firL_buff, firR_buff : integer := 0;
    file input_buf : text;


begin

clocks: clockSim 
    generic map(
        mclk_period => mclk_period
    )
    port map(
        mclk => sim_mclk,
        bclk => sim_bclk,
        reclrc => sim_reclrc
    );

uut: FIR
generic map (width => width,
            taps => taps,
            coef_width => coef_width
            )
port map ( 
            sysclk => sim_clk,
            ac_bclk => sim_bclk,
            ac_mclk => sim_mclk,
            ac_reclrc => sim_reclrc,
            r_buff => sim_buff,
            rec_done => sim_done,
            fil_buff => sim_fil_buff
            );



CLKprocess : process
begin
    wait for mclk_period/20*ns;
        sim_clk <= not sim_clk;
end process;



--loading all 241 samples for filtering
recProcess: process
begin
    wait until falling_edge(sim_bclk);
    for i in 241 downto 0 loop
        wait until falling_edge(sim_bclk);
        wait until rising_edge(sim_bclk);
        wait until falling_edge(sim_bclk);
        wait until rising_edge(sim_bclk);
        sim_done <= '1';
        wait until rising_edge(sim_bclk);
        sim_done <= '0';
    end loop;
end process;



stimProcess: process

variable inLine : line;
variable colTmp: character;
variable l, r, l_fir, r_fir : integer;

    begin
    
        file_open(input_buf, "sound_v.csv",  read_mode);
        
        while not endfile(input_buf) loop
            for i in (241) downto 0 loop
                readline(input_buf, inLine);
                read(inLine, l);
                read(inLine, colTmp);
                read(inLine, r);
                read(inLine, colTmp);
                read(inLine, l_fir);
                read(inLine, colTmp);
                read(inLine, r_fir);
                
                recL_buff <= std_logic_vector(to_signed(l, recL_buff'length));
                recR_buff <= std_logic_vector(to_signed(r, recR_buff'length));
                firL_buff <= std_logic_vector(to_signed(l_fir, firL_buff'length));
                firR_buff <= std_logic_vector(to_signed(r_fir, firR_buff'length));
                
                sim_buff(2*width-1 downto width) <= recL_buff;
                sim_buff(width-1 downto 0) <= recR_buff;
                out_buff(2*width-1 downto width) <= firL_buff;
                out_buff(width-1 downto 0) <= firR_buff;
                
                wait until rising_edge(sim_done);
            end loop;
            --comparing filter output with values from matlab
            assert((sim_fil_buff = out_buff)) report "error" severity error;   -- add output of the filter     
            
        end loop;
        
        file_close(input_buf);
        report "Finished";
        wait;
    end process;

end Behavioral;



--  output_1b <= std_logic_vector(to_signed(input_1, output_1b'length));