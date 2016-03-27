###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_0 -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_1 -design rtl 
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/kirsch/main_XRTL -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance mem/mem -design rtl 

set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_0/mem_0 -design rtl 
set_attribute -name ram_processed -value "true" -instance mem_0/mem_0 -design rtl 

set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_1/mem_1 -design rtl 
set_attribute -name ram_processed -value "true" -instance mem_1/mem_1 -design rtl 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 20.000000 -waveform { 0.000000 10.000000 } -design rtl 
