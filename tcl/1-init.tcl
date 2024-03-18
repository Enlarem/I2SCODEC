# Create some build variables
set outdir ../build
set outfile $outdir/gameStateMachine.bit
set part xc7z010clg400-1

# Load files to memory
read_vhdl -vhdl2008 ../src/vhdl/gameStateMachine.vhd
read_vhdl -vhdl2008 ../src/vhdl/randomNumberGeneration.vhd
read_vhdl -vhdl2008 ../src/vhdl/timer.vhd
read_vhdl -vhdl2008 ../src/testbench/gameStateMachine_tb.vhd
read_vhdl -vhdl2008 ../src/testbench/timer_tb.vhd
read_vhdl -vhdl2008 ../src/testbench/randomNumberGeneration_tb.vhd
read_xdc ../src/constraints/Zybo-Z7-Master.xdc

