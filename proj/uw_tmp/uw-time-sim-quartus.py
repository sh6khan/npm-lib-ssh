# copy modelsim.ini to local directory
xsys( "vmap -c" )

# libraries
xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera/altera /opt-src/CMC/local/maagaard/kits-sim/altera/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera/lpm /opt-src/CMC/local/maagaard/kits-sim/altera/cycloneii" )

# compile source files
xsys( "uw-msim-com  uw_tmp/kirsch_chip.v uw_tmp/kirsch_chip.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

# run simulation
xsys( "vsim -lib work-msim  -L /opt-src/CMC/local/maagaard/kits-sim/altera/altera -L /opt-src/CMC/local/maagaard/kits-sim/altera/altera_mf -L /opt-src/CMC/local/maagaard/kits-sim/altera/lpm -L /opt-src/CMC/local/maagaard/kits-sim/altera/cycloneii   -g/kirsch_tb/period=20   -sdfmax uut/chip=uw_tmp/kirsch_chip.sdf -wlf uw_tmp/vsim.wlf -t 1ns -do uw_tmp/uw-sim.tcl kirsch_tb")
