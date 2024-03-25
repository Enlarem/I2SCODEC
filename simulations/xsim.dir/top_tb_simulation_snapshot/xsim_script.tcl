set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {top_tb_simulation_snapshot} -wdb {../simulations/simulate_xsim.wdb} -view {{Waveforms/basic_config.wcfg}} -xsimdir ../simulations
