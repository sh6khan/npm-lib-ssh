#------------------------------------------------------------------------
# copy modelsim.ini to local directory

xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera/altera /opt-src/CMC/local/maagaard/kits-sim/altera/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera/lpm /opt-src/CMC/local/maagaard/kits-sim/altera/cycloneii")

#------------------------------------------------------------------------
# compile source files

xsys( "uw-msim-com  kirsch.vhd ")

