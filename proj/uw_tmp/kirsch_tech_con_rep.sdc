###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_0 -design gatelevel 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default mem_1 -design gatelevel 
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/kirsch/main -design gatelevel 
set_attribute -name KEEP_HIERARCHY -value "TRUE" /work/kirsch/main -design gatelevel 
set_attribute -name width_a -value "8" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type integer mem/ix64056z29481 -design gatelevel 
set_attribute -name intended_device_family -value "Cyclone II" -instance -type string mem/ix64056z29481 -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type string mem/ix64056z29481 -design gatelevel 

set_attribute -name width_a -value "8" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type integer mem_0/ix64056z29482 -design gatelevel 
set_attribute -name intended_device_family -value "Cyclone II" -instance -type string mem_0/ix64056z29482 -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type string mem_0/ix64056z29482 -design gatelevel 

set_attribute -name width_a -value "8" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name widthad_a -value "8" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name numwords_a -value "256" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name widthad_b -value "8" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name numwords_b -value "256" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name init_file -value "UNUSED" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type integer mem_1/ix64056z29483 -design gatelevel 
set_attribute -name intended_device_family -value "Cyclone II" -instance -type string mem_1/ix64056z29483 -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type string mem_1/ix64056z29483 -design gatelevel 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 20.000000 -waveform { 0.000000 10.000000 } -design gatelevel 
