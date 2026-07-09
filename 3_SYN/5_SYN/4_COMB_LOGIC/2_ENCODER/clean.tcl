## Set simulation
touch cds.lib hdl.var
mkdir work.lib
echo "define work.lib ./work.lib" >> ./cds.lib
echo "define WORK work.lib" >> ./hdl.var

# Compile HDL sources
xmvlog -MESS -linedebug ./*v

# Elaborate compiled sources
xmelab -MESS -access rwc tb_interrupt_controller

# run simulation in CLI mode
xmsim -MESS tb_interrupt_cintroller -gui
