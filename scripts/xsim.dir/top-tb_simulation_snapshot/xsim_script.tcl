set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {top-tb_simulation_snapshot} -wdb {simulate_xsim.wdb} -autoloadwcfg
