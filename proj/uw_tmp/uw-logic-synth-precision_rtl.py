#--------------------------------------------------------------
# remove xrf files to prevent warning about moving them because
# they already exist

my_rm( ["uw_tmp/*.xrf", "uw_tmp/*.qsf"] )

my_mkdir( "LOG" )

#--------------------------------------------------------------
# run precision

xsys( "precision -shell -file uw_tmp/uw-logic-synth-precision_rtl.tcl" )

my_rm( ["uw_tmp*_modelnotmatched.rep"] )

# rename files whose names are generated automatically by 'synthesize'
my_mv( "uw_tmp/kirsch.v"  , "uw_tmp/kirsch_logic.v" )
my_mv( "uw_tmp/kirsch.vhd", "uw_tmp/kirsch_logic.vhd" )

#--------------------------------------------------------------
# build shim architecture

# copy modelsim.ini to local directory
xsys( "vmap -c" )

xsys( "vlib work-msim")

xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera/altera /opt-src/CMC/local/maagaard/kits-sim/altera/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera/lpm /opt-src/CMC/local/maagaard/kits-sim/altera/cycloneii" )

xsys( "uw-msim-com  mem.vhd kirsch_synth_pkg.vhd kirsch.vhd" )
xsys( "vcom -work work-msim -gen_xml kirsch uw_tmp/kirsch.xml")

xsys( "uw-msim-com uw_tmp/kirsch_logic.vhd" )
xsys( "vcom -work work-msim -gen_xml kirsch uw_tmp/kirsch_logic.xml")

# fix up _logic.vhd file
vgencomp_to_arch( "kirsch", "logic" )

