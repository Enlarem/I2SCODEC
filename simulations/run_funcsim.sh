#!/bin/zsh
xvhdl --nolog -prj spedenspelit.prj
xelab xil_defaultlib.$1\_tb -prj spedenspelit.prj -debug all --nolog
#xsim --nolog -g -view xil_defaultlib.top_tb.wcfg xil_defaultlib.top_tb
xsim --nolog -g  xil_defaultlib.$1\_tb
