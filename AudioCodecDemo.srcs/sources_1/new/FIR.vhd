library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


entity FIR is
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
end FIR;

architecture Behavioral of FIR is

signal left : std_logic_vector (width-1 downto 0) := (others => '0');
signal right : std_logic_vector (width-1 downto 0) := (others => '0');

type input_registers is array(0 to taps-1) of signed(width-1 downto 0);
signal delay_line_l  : input_registers := (others=>(others=>'0'));
signal delay_line_r  : input_registers := (others=>(others=>'0'));

--Filter coeficients, filter with 10kHz cut off frequency
type coefficients is array (0 to taps-1) of signed((coef_width - 1) downto 0);
signal coeff_s: coefficients :=( 
x"FFFF", x"FFF6", x"FFEF", x"006C", 
x"0111", x"FEDD", x"FA09", x"FE7A", 
x"164A", x"30F5", x"30F5", x"164A", 
x"FE7A", x"FA09", x"FEDD", x"0111", 
x"006C", x"FFEF", x"FFF6", x"FFFF");

signal mclk : std_logic := '0';
  
type state_machine is (idle_st, active_st, sendresults_st);
signal state : state_machine := idle_st;
  
signal counter : integer range 0 to taps-1 := taps-1;
  
signal out_l   : signed(width+coef_width-1 downto 0) := (others=>'0');
signal out_r   : signed(width+coef_width-1 downto 0) := (others=>'0');
signal accum_l : signed(width+coef_width-1 downto 0) := (others=>'0');
signal accum_r : signed(width+coef_width-1 downto 0) := (others=>'0');
 
 
begin

--    vector_sep : process (sysclk)   --separation of input vetor into left and right
--    begin
--        if rec_done = '1' then
            
--        end if;
--    end process;
 
      
    process(sysclk)
        
        variable sum_l : signed(width+coef_width-1 downto 0) := (others=>'0');
        variable sum_r : signed(width+coef_width-1 downto 0) := (others=>'0');
  
    begin
        mclk <= ac_mclk;
        
        if falling_edge(sysclk) then 
            case state is
            -- After rec_done=1 load a buffer and divides the data into left and right
            when idle_st => 
                fil_done <= '0';
                if rec_done = '1' then
                    left <= r_buff ((2*width - 1) downto width);
                    right <= r_buff ((width - 1) downto 0);
                    state <= active_st;
                end if;
            --Counter starts to count from N and does mat operations on the stored data in the current memory 
            --and then shifts them from N-1 to Nth memory. This operation repeats until the counter is zero for both left and right channel data
            --then signals that the filtering is done and goes to sendresults_st
            when active_st =>
                -- Counter 
                if counter > 0 then
                    counter <= counter - 1;
                else
                    counter <= taps-1;
                    state <= sendresults_st;
                    fil_done <= '1';
                end if;
                  
                -- Delay line shifting
                if counter > 0 then
                    delay_line_l(counter) <= delay_line_l(counter-1);
                    delay_line_r(counter) <= delay_line_r(counter-1);
                else
                    delay_line_l(counter) <= signed(left);
                    delay_line_r(counter) <= signed(right);
                end if;
                  
                -- MAC operations
                if counter > 0 then
                    sum_l := delay_line_l(counter)*coeff_s(counter);
                    sum_r := delay_line_r(counter)*coeff_s(counter);
                    accum_l <= accum_l + sum_l;
                    accum_r <= accum_r + sum_r;    
                else
                    accum_l <= (others=>'0');
                    accum_r <= (others=>'0');
                    sum_l := delay_line_l(counter)*coeff_s(counter);
                    sum_r := delay_line_r(counter)*coeff_s(counter);
                    out_l <= accum_l + sum_l;
                    out_r <= accum_r + sum_r;  
                end if;
            --loads filtered left nad right data into one buffer that we sand
            when sendresults_st =>
                fil_buff((2*width - 1) downto width) <= std_logic_vector(out_l(width+coef_width-1 downto coef_width));
                fil_buff((width - 1) downto 0) <= std_logic_vector(out_r(width+coef_width-1 downto coef_width));
    
                if ac_mclk = '1' and mclk = '0' then
                    state <= idle_st;
                end if ;
            end case;
      end if;
    end process;
end Behavioral;
