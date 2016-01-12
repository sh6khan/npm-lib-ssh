source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim sum.vhd carry.vhd fulladder.vhd add2.vhd add2_tb.vhd
}

if { "add2_tb.sim" ne "" } {
  source add2_tb.sim
}


