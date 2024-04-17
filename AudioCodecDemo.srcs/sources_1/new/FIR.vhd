library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


entity FIR is
    Generic (width : integer := 24;
            taps : integer := 19;
            in_width : integer range 8 to 32 := 24;
            out_width : integer range 8 to 32 := 24;
            coef_width : integer range 8 to 32 := 16
            );
    Port (  
        sysclk      : in std_logic;
        ac_bclk     : in std_logic;
        ac_mclk     : in std_logic;
        ac_reclrc   : in std_logic;
        rec_done    : in std_logic;
        r_buff      : in std_logic_vector((2*width-1) downto 0) := (others => '0');
        fil_buff    : out std_logic_vector((2*width-1) downto 0) := (others => '0');
        ac_pbdat    : out std_logic
            );
end FIR;

architecture Behavioral of FIR is

signal left : std_logic_vector (width-1 downto 0) := (others => '0');
signal right : std_logic_vector (width-1 downto 0) := (others => '0');

type input_registers is array(0 to taps-1) of signed(width-1 downto 0);
signal delay_line_l  : input_registers := (others=>(others=>'0'));
signal delay_line_r  : input_registers := (others=>(others=>'0'));
  
type coefficients is array (0 to 18) of signed((coef_width - 1) downto 0);
signal coeff_s: coefficients :=( 
---- 500Hz Blackman LPF
x"FCD7", x"FDB1", x"0435", x"0B08", 
x"07A2", x"FABB", x"F5E8", x"0875", 
x"2864", x"3868", x"2864", x"0875", 
x"F5E8", x"FABB", x"07A2", x"0B08",
x"0435", x"FDB1", x"FCD7"); -- x"FDB1", x"FCD7"

signal bclk : std_logic := '0';
  
type state_machine is (idle_st, active_st);
signal state : state_machine := idle_st;
  
signal counter : integer range 0 to taps-1 := taps-1;
  
signal out_l   : signed(width+coef_width-1 downto 0) := (others=>'0');
signal out_r   : signed(width+coef_width-1 downto 0) := (others=>'0');
signal accum_l  : signed(width+coef_width-1 downto 0) := (others=>'0');
signal accum_r  : signed(width+coef_width-1 downto 0) := (others=>'0');
 
 
begin

vector_sep : process (sysclk)   --separation of input vetor into left and right
begin
    if rec_done = '1' then
        left <= r_buff ((2*width - 1) downto width);
        right <= r_buff ((width - 1) downto 0);
    end if;
end process;
 
fil_buff((2*width - 1) downto width) <= std_logic_vector(out_l(width+coef_width-2 downto width+coef_width-width-1));
fil_buff((width - 1) downto 0) <= std_logic_vector(out_r(width+coef_width-2 downto width+coef_width-width-1));
  
process(sysclk)
  
variable sum_l : signed(width+coef_width-1 downto 0) := (others=>'0');
variable sum_r : signed(width+coef_width-1 downto 0) := (others=>'0');
  
    begin
      
        if rising_edge(sysclk) then
            bclk <= ac_bclk;
              
            case state is
            when idle_st => 
                if ac_bclk = '1' and bclk = '0' and rec_done = '1' then
                    state <= active_st;
                end if;
                  
            when active_st =>
                -- Counter
                if counter > 0 then
                    counter <= counter - 1;
                else
                    counter <= taps-1;
                    state <= idle_st;
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
                  
            end case;
        end if;
      
    end process;
end Behavioral;
