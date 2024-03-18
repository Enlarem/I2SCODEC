## Run synthesis
synth_design -top gameStateMachine -part $part -flatten_hierarchy rebuilt
write_checkpoint -force $outdir/post_synth
# Create simulation sources
write_vhdl -mode funcsim -force $outdir/gameStateMachine_funcsim_post_synth.vhd
write_verilog -mode timesim -force $outdir/gameStateMachine_timesim_post_synth.v

