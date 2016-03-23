#------------------------------------------------------------------------
# copy modelsim.ini to local directory

xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# user's VHDL code should not refer to IP components (e.g. altera_mf)
# xsys( "vlib $FAB_SIM_IP")
# xsys( "vmap $FAB_SIM_IP $FAB_SIM_HOME/vhdl_libs/$FAB_SIM_IP" )

#------------------------------------------------------------------------
# compile source files

xsys( "uw-msim-com  mem.vhd kirsch_synth_pkg.vhd kirsch.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

