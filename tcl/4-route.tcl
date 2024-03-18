## Run router
route_design
write_checkpoint -force $outdir/post_route
# Create simulation sources
write_vhdl -mode funcsim -force $outdir/gameStateMachine_funcsim_post_route.vhd
write_verilog -mode timesim -force $outdir/gameStateMachine_timesim_post_route.v

write_xdc -no_fixed_only -force $outdir/gameStateMachine_impl.xdx

## Generate the bitstream
write_bitstream -force $outfile

