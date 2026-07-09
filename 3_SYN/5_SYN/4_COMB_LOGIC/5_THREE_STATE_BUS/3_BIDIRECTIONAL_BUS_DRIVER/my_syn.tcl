set_db init_lib_search_path /home/hah003/Basic_SoC_implementation/3_SYN/1_LIB 
set_db init_hdl_search_path /home/hah003/Basic_SoC_implementation/1_RTL/4_COMB_LOGIC/5_THREE_STATE_BUS/3_BIDIRECTIONAL_BUS_DRIVER/bidirectional_bus_driver.v

read_libs /home/hah003/Basic_SoC_implementation/3_SYN/1_LIB/slow_vdd1v0_basicCells.lib

read_hdl /home/hah003/Basic_SoC_implementation/1_RTL/4_COMB_LOGIC/5_THREE_STATE_BUS/3_BIDIRECTIONAL_BUS_DRIVER/bidirectional_bus_driver.v

elaborate

read_sdc /home/hah003/Basic_SoC_implementation/3_SYN/2_CONSTRAINTS/sample.sdc

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

write_hdl > ./outputs/bidirectional_bus_driver_netlist.v
write_sdc > ./outputs/bidirectional_bus_driver_final.sdc
