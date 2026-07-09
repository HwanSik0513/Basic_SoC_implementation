set_db init_lib_search_path ../../1_LIB
set_db init_hdl_search_path ../../4_SAMPLE_RTL

read_libs slow_vdd1v0_basicCells.lib

read_hdl ls194.v

elaborate

read_sdc ../../2_CONSTRAINTS/sample.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

report_timing > ./reports/report_timing.rpt
report_power > ./reports/report_power.rpt
report_area > ./reports/report_area.rpt
report_qor > ./reports/report_qor.rpt

write_hdl > ./outputs/ls194_netlist.v
write_sdc > ./outputs/ls194_final.sdc
