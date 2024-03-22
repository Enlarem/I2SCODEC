#! /bin/sh

#Build the simulation
xelab -prj top-tb.prj -s top-tb_simulation_snapshot xil_defaultlib.top_tb --nolog -debug all
#Run the simulation
xsim top-tb_simulation_snapshot -gui -wdb simulate_xsim.wdb --nolog
