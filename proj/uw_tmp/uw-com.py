#------------------------------------------------------------------------
# copy modelsim.ini to local directory

xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera/altera /opt-src/CMC/local/maagaard/kits-sim/altera/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera/lpm /opt-src/CMC/local/maagaard/kits-sim/altera/cycloneii")

#------------------------------------------------------------------------
# compile source files

xsys( "uw-msim-com  mem.vhd kirsch_synth_pkg.vhd kirsch.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

