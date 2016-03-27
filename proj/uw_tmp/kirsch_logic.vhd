
-- 
-- Definition of  kirsch
-- 
--      Sat Mar 26 22:52:53 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_17_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (16 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (16 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_17_0 ;

architecture IMPLEMENTATION of modgen_counter_17_0 is 
   signal nx23078z32, nx23078z30, nx23078z28, nx23078z26, nx23078z24, 
      nx23078z22, nx23078z20, nx23078z18, nx23078z16, nx23078z14, nx23078z12, 
      nx23078z10, nx23078z8, nx23078z6, nx23078z4, nx23078z2, nx63511z1, 
      nx22081z1, inc_d_0, nx23078z31, inc_d_1, nx23078z29, inc_d_2, 
      nx23078z27, inc_d_3, nx23078z25, inc_d_4, nx23078z23, inc_d_5, 
      nx23078z21, inc_d_6, nx23078z19, inc_d_7, nx23078z17, inc_d_8, 
      nx23078z15, inc_d_9, nx23078z13, inc_d_10, nx23078z11, inc_d_11, 
      nx23078z9, inc_d_12, nx23078z7, inc_d_13, nx23078z5, inc_d_14, 
      nx23078z3, inc_d_15, nx23078z1, inc_d_16, 
      nx_modgen_counter_17_0_vcc_net: std_logic ;

begin
   q(16) <= nx63511z1 ;
   q(15) <= nx23078z2 ;
   q(14) <= nx23078z4 ;
   q(13) <= nx23078z6 ;
   q(12) <= nx23078z8 ;
   q(11) <= nx23078z10 ;
   q(10) <= nx23078z12 ;
   q(9) <= nx23078z14 ;
   q(8) <= nx23078z16 ;
   q(7) <= nx23078z18 ;
   q(6) <= nx23078z20 ;
   q(5) <= nx23078z22 ;
   q(4) <= nx23078z24 ;
   q(3) <= nx23078z26 ;
   q(2) <= nx23078z28 ;
   q(1) <= nx23078z30 ;
   q(0) <= nx23078z32 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx23078z14, datain=>
      inc_d_9, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx23078z16, datain=>
      inc_d_8, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx23078z18, datain=>
      inc_d_7, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx23078z20, datain=>
      inc_d_6, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx23078z22, datain=>
      inc_d_5, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx23078z24, datain=>
      inc_d_4, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx23078z26, datain=>
      inc_d_3, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx23078z28, datain=>
      inc_d_2, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_16 : cycloneii_lcell_ff port map ( regout=>nx63511z1, datain=>
      inc_d_16, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx23078z2, datain=>
      inc_d_15, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx23078z4, datain=>
      inc_d_14, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx23078z6, datain=>
      inc_d_13, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx23078z8, datain=>
      inc_d_12, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx23078z10, datain=>
      inc_d_11, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx23078z12, datain=>
      inc_d_10, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx23078z30, datain=>
      inc_d_1, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx23078z32, datain=>
      inc_d_0, clk=>clock, ena=>nx22081z1, sclr=>sclear);
   ix23078z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_16, dataa=>nx63511z1, datad=>
      nx_modgen_counter_17_0_vcc_net, cin=>nx23078z1);
   nx_modgen_counter_17_0_vcc_net <= '1';
   ix23078z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx23078z27, dataa=>nx23078z28, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z29);
   ix23078z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_15, cout=>nx23078z1, dataa=>nx23078z2, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z3);
   ix23078z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_14, cout=>nx23078z3, dataa=>nx23078z4, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z5);
   ix23078z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_13, cout=>nx23078z5, dataa=>nx23078z6, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z7);
   ix23078z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_12, cout=>nx23078z7, dataa=>nx23078z8, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z9);
   ix23078z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, cout=>nx23078z9, dataa=>nx23078z10, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z11);
   ix23078z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, cout=>nx23078z11, dataa=>nx23078z12, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z13);
   ix23078z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx23078z29, dataa=>nx23078z30, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z31);
   ix23078z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx23078z13, dataa=>nx23078z14, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z15);
   ix23078z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx23078z15, dataa=>nx23078z16, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z17);
   ix23078z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx23078z17, dataa=>nx23078z18, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z19);
   ix23078z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx23078z19, dataa=>nx23078z20, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z21);
   ix23078z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx23078z21, dataa=>nx23078z22, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z23);
   ix23078z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx23078z23, dataa=>nx23078z24, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z25);
   ix23078z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx23078z25, dataa=>nx23078z26, 
      datad=>nx_modgen_counter_17_0_vcc_net, cin=>nx23078z27);
   ix23078z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0, cout=>nx23078z31, dataa=>nx23078z32, 
      datad=>nx_modgen_counter_17_0_vcc_net);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx22081z1, dataa=>cnt_en, datab=>sclear);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR41: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Cyclone II",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR41, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR41 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR71: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Cyclone II",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR71, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR71 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal ena1_EXMPLR101: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Cyclone II",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR101, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR101 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch_logic is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch_logic ;

architecture main of kirsch_logic is 
   component modgen_counter_17_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (16 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (16 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_dq_8_2
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   signal o_valid_EXMPLR117: std_logic ;
   
   signal o_edge_EXMPLR118: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_mode_EXMPLR182: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR183: std_logic_vector (7 DOWNTO 0) ;
   
   signal pixel_counter_16, pixel_counter_7, pixel_counter_6, 
      pixel_counter_5, pixel_counter_4, pixel_counter_3, pixel_counter_2, 
      pixel_counter_1, pixel_counter_0: std_logic ;
   
   signal last_pixel_complete: std_logic_vector (1 DOWNTO 0) ;
   
   signal row_index: std_logic_vector (2 DOWNTO 1) ;
   
   signal valid_bits_stage1: std_logic_vector (3 DOWNTO 0) ;
   
   signal valid_bits_stage2: std_logic_vector (2 DOWNTO 0) ;
   
   signal r1: std_logic_vector (10 DOWNTO 0) ;
   
   signal r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal r7_12, r7_11, r7_10, r7_9, r7_8, r7_7, r7_6, r7_5, r7_4, r7_3: 
   std_logic ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add3: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4: std_logic_vector (12 DOWNTO 0) ;
   
   signal add5_13, add5_12, add5_11, add5_10, add5_9, add5_8, add5_7, add5_6, 
      add5_5, add5_4, add5_3: std_logic ;
   
   signal mem_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal r3_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r3_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal r5_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal add2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx4840z1, nx40727z2, not_rtlc0_copy_n346, nx35831z11, nx35831z10, 
      nx35831z9, nx35831z8, nx35831z7, nx35831z6, nx35831z5, nx35831z4, 
      nx35831z2, nx35831z1, nx4840z10, nx4840z9, nx4840z8, nx4840z7, 
      nx4840z6, nx4840z5, nx4840z4, nx4840z3, nx4840z2, nx40727z24, 
      nx40727z23, nx40727z22, nx40727z21, nx40727z20, nx40727z19, nx40727z18, 
      nx40727z17, nx40727z16, nx40727z15, nx28963z37, nx28963z32, nx28963z27, 
      nx28963z22, nx28963z17, nx28963z12, nx28963z7, nx42053z37, nx42053z32, 
      nx42053z27, nx42053z22, nx42053z17, nx42053z12, nx42053z7, nx21429z11, 
      nx21429z10, nx21429z9, nx21429z8, nx21429z7, nx21429z6, nx21429z5, 
      nx21429z4, nx21429z3, nx21429z2, nx28963z48, nx28963z47, nx28963z46, 
      nx28963z45, nx28963z44, nx28963z43, nx28963z42, nx28963z2, nx40727z14, 
      nx40727z13, nx40727z12, nx40727z11, nx40727z10, nx40727z9, nx40727z8, 
      nx40727z7, nx40727z6, nx40727z5, nx40727z4, GND_EXMPLR180: std_logic
    ;
   
   signal valid_wren: std_logic_vector (2 DOWNTO 0) ;
   
   signal i3: std_logic_vector (7 DOWNTO 0) ;
   
   signal i4: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, nx16196z1, nx42053z2, nx60779z2, nx22195z2, nx22195z3, 
      nx40727z1, nx46941z1, nx22195z7, nx22195z8: std_logic ;
   
   signal i1_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal max1_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal max2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal max2_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal nx56397z1, nx55400z1, nx54403z1, nx53406z1, nx52409z1, nx51412z1, 
      nx50415z1, nx49418z1, nx61532z1, nx60535z1, nx59538z1, nx58541z1, 
      nx57544z1, nx56547z1, nx55550z1, nx54553z1, nx34503z1, nx17193z1, 
      nx45944z1, nx43050z1, nx20426z1, nx46359z1, nx47356z1, nx59782z1, 
      nx60779z1, nx28963z40, nx28963z33, nx28963z28, nx28963z23, nx28963z18, 
      nx28963z13, nx28963z8, nx28963z3, nx28963z38, nx28963z35, nx28963z30, 
      nx28963z25, nx28963z20, nx28963z15, nx28963z10, nx28963z5, nx42053z38, 
      nx42053z35, nx42053z30, nx42053z25, nx42053z20, nx42053z15, nx42053z10, 
      nx42053z5, nx42053z40, nx42053z33, nx42053z28, nx42053z23, nx42053z18, 
      nx42053z13, nx42053z8, nx42053z3, a_3, nx22195z6, nx35831z12, 
      nx21429z12, nx59688z1, nx60779z3, nx60779z4, nx28963z41, nx28963z39, 
      nx28963z34, nx28963z36, nx28963z29, nx28963z31, nx28963z24, nx28963z26, 
      nx28963z19, nx28963z21, nx28963z14, nx28963z16, nx28963z9, nx28963z11, 
      nx28963z4, nx28963z6, nx42053z41, nx42053z39, nx42053z34, nx42053z36, 
      nx42053z29, nx42053z31, nx42053z24, nx42053z26, nx42053z19, nx42053z21, 
      nx42053z14, nx42053z16, nx42053z9, nx42053z11, nx42053z4, nx42053z6, 
      nx22195z4, nx22195z5, nx22195z9, nx22195z1, nx59782z2, nx58785z1, 
      nx35831z3, nx42053z1, nx21429z1, nx28963z1, nx40727z3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR117 ;
   o_edge <= o_edge_EXMPLR118(2) ;
   o_mode(1) <= o_mode_EXMPLR182(1) ;
   o_mode(0) <= o_mode_EXMPLR182(0) ;
   o_row(7) <= o_row_EXMPLR183(7) ;
   o_row(6) <= o_row_EXMPLR183(6) ;
   o_row(5) <= o_row_EXMPLR183(5) ;
   o_row(4) <= o_row_EXMPLR183(4) ;
   o_row(3) <= o_row_EXMPLR183(3) ;
   o_row(2) <= o_row_EXMPLR183(2) ;
   o_row(1) <= o_row_EXMPLR183(1) ;
   o_row(0) <= o_row_EXMPLR183(0) ;
   modgen_counter_pixel_counter : modgen_counter_17_0 port map ( clock=>
      i_clock, q(16)=>pixel_counter_16, q(15)=>o_row_EXMPLR183(7), q(14)=>
      o_row_EXMPLR183(6), q(13)=>o_row_EXMPLR183(5), q(12)=>
      o_row_EXMPLR183(4), q(11)=>o_row_EXMPLR183(3), q(10)=>
      o_row_EXMPLR183(2), q(9)=>o_row_EXMPLR183(1), q(8)=>o_row_EXMPLR183(0), 
      q(7)=>pixel_counter_7, q(6)=>pixel_counter_6, q(5)=>pixel_counter_5, 
      q(4)=>pixel_counter_4, q(3)=>pixel_counter_3, q(2)=>pixel_counter_2, 
      q(1)=>pixel_counter_1, q(0)=>pixel_counter_0, clk_en=>DANGLING(0,0), 
      aclear=>DANGLING(0,1), sload=>DANGLING(0,2), data(16)=>DANGLING(0,3), 
      data(15)=>DANGLING(0,4), data(14)=>DANGLING(0,5), data(13)=>
      DANGLING(0,6), data(12)=>DANGLING(0,7), data(11)=>DANGLING(0,8), 
      data(10)=>DANGLING(0,9), data(9)=>DANGLING(0,10), data(8)=>
      DANGLING(0,11), data(7)=>DANGLING(0,12), data(6)=>DANGLING(0,13), 
      data(5)=>DANGLING(0,14), data(4)=>DANGLING(0,15), data(3)=>
      DANGLING(0,16), data(2)=>DANGLING(0,17), data(1)=>DANGLING(0,18), 
      data(0)=>DANGLING(0,19), aset=>DANGLING(0,20), sclear=>i_reset, updn=>
      DANGLING(0,21), cnt_en=>i_valid);
   mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>mem_out_0(7), 
      rd_data1(6)=>mem_out_0(6), rd_data1(5)=>mem_out_0(5), rd_data1(4)=>
      mem_out_0(4), rd_data1(3)=>mem_out_0(3), rd_data1(2)=>mem_out_0(2), 
      rd_data1(1)=>mem_out_0(1), rd_data1(0)=>mem_out_0(0), addr1(7)=>
      pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>pixel_counter_5, 
      addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, addr1(2)=>
      pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>pixel_counter_0, 
      wr_clk1=>i_clock, rd_clk1=>DANGLING(0,22), wr_ena1=>valid_wren(0), 
      rd_ena1=>DANGLING(0,23), ena1=>DANGLING(0,24), rst1=>DANGLING(0,25), 
      regce1=>DANGLING(0,26), regrst1=>DANGLING(0,27));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>mem_out_1(7), 
      rd_data1(6)=>mem_out_1(6), rd_data1(5)=>mem_out_1(5), rd_data1(4)=>
      mem_out_1(4), rd_data1(3)=>mem_out_1(3), rd_data1(2)=>mem_out_1(2), 
      rd_data1(1)=>mem_out_1(1), rd_data1(0)=>mem_out_1(0), addr1(7)=>
      pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>pixel_counter_5, 
      addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, addr1(2)=>
      pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>pixel_counter_0, 
      wr_clk1=>i_clock, rd_clk1=>DANGLING(0,28), wr_ena1=>valid_wren(1), 
      rd_ena1=>DANGLING(0,29), ena1=>DANGLING(0,30), rst1=>DANGLING(0,31), 
      regce1=>DANGLING(0,32), regrst1=>DANGLING(0,33));
   mem_1 : ram_dq_8_2 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>mem_out_2(7), 
      rd_data1(6)=>mem_out_2(6), rd_data1(5)=>mem_out_2(5), rd_data1(4)=>
      mem_out_2(4), rd_data1(3)=>mem_out_2(3), rd_data1(2)=>mem_out_2(2), 
      rd_data1(1)=>mem_out_2(1), rd_data1(0)=>mem_out_2(0), addr1(7)=>
      pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>pixel_counter_5, 
      addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, addr1(2)=>
      pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>pixel_counter_0, 
      wr_clk1=>i_clock, rd_clk1=>DANGLING(0,34), wr_ena1=>valid_wren(2), 
      rd_ena1=>DANGLING(0,35), ena1=>DANGLING(0,36), rst1=>DANGLING(0,37), 
      regce1=>DANGLING(0,38), regrst1=>DANGLING(0,39));
   GND_EXMPLR180 <= '0';
   PWR <= '1';
   nx46941z1 <= NOT i_reset;
   debug_led_red_triBus2_0 : TRI port map ( a_OUT=>debug_led_red(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_1 : TRI port map ( a_OUT=>debug_led_red(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_2 : TRI port map ( a_OUT=>debug_led_red(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_3 : TRI port map ( a_OUT=>debug_led_red(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_4 : TRI port map ( a_OUT=>debug_led_red(4), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_5 : TRI port map ( a_OUT=>debug_led_red(5), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_6 : TRI port map ( a_OUT=>debug_led_red(6), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_7 : TRI port map ( a_OUT=>debug_led_red(7), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_8 : TRI port map ( a_OUT=>debug_led_red(8), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_9 : TRI port map ( a_OUT=>debug_led_red(9), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_10 : TRI port map ( a_OUT=>debug_led_red(10), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_11 : TRI port map ( a_OUT=>debug_led_red(11), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_12 : TRI port map ( a_OUT=>debug_led_red(12), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_13 : TRI port map ( a_OUT=>debug_led_red(13), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_14 : TRI port map ( a_OUT=>debug_led_red(14), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_15 : TRI port map ( a_OUT=>debug_led_red(15), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_16 : TRI port map ( a_OUT=>debug_led_red(16), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_red_triBus2_17 : TRI port map ( a_OUT=>debug_led_red(17), a_IN
      =>GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_0 : TRI port map ( a_OUT=>debug_led_grn(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_1 : TRI port map ( a_OUT=>debug_led_grn(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_2 : TRI port map ( a_OUT=>debug_led_grn(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_3 : TRI port map ( a_OUT=>debug_led_grn(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_4 : TRI port map ( a_OUT=>debug_led_grn(4), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_led_grn_triBus3_5 : TRI port map ( a_OUT=>debug_led_grn(5), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_0_triBus4_0 : TRI port map ( a_OUT=>debug_num_0(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_0_triBus4_1 : TRI port map ( a_OUT=>debug_num_0(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_0_triBus4_2 : TRI port map ( a_OUT=>debug_num_0(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_0_triBus4_3 : TRI port map ( a_OUT=>debug_num_0(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_1_triBus5_0 : TRI port map ( a_OUT=>debug_num_1(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_1_triBus5_1 : TRI port map ( a_OUT=>debug_num_1(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_1_triBus5_2 : TRI port map ( a_OUT=>debug_num_1(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_1_triBus5_3 : TRI port map ( a_OUT=>debug_num_1(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_2_triBus6_0 : TRI port map ( a_OUT=>debug_num_2(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_2_triBus6_1 : TRI port map ( a_OUT=>debug_num_2(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_2_triBus6_2 : TRI port map ( a_OUT=>debug_num_2(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_2_triBus6_3 : TRI port map ( a_OUT=>debug_num_2(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_3_triBus7_0 : TRI port map ( a_OUT=>debug_num_3(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_3_triBus7_1 : TRI port map ( a_OUT=>debug_num_3(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_3_triBus7_2 : TRI port map ( a_OUT=>debug_num_3(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_3_triBus7_3 : TRI port map ( a_OUT=>debug_num_3(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_4_triBus8_0 : TRI port map ( a_OUT=>debug_num_4(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_4_triBus8_1 : TRI port map ( a_OUT=>debug_num_4(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_4_triBus8_2 : TRI port map ( a_OUT=>debug_num_4(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_4_triBus8_3 : TRI port map ( a_OUT=>debug_num_4(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_5_triBus9_0 : TRI port map ( a_OUT=>debug_num_5(0), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_5_triBus9_1 : TRI port map ( a_OUT=>debug_num_5(1), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_5_triBus9_2 : TRI port map ( a_OUT=>debug_num_5(2), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   debug_num_5_triBus9_3 : TRI port map ( a_OUT=>debug_num_5(3), a_IN=>
      GND_EXMPLR180, OE=>GND_EXMPLR180);
   ix28963z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>not_rtlc0_copy_n346, dataa=>i1_magnitude(7), 
      datab=>i2_magnitude(7), datad=>PWR, cin=>nx28963z7);
   ix28963z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z7, dataa=>i1_magnitude(6), datab=>
      i2_magnitude(6), datad=>PWR, cin=>nx28963z12);
   ix28963z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z12, dataa=>i1_magnitude(5), datab=>
      i2_magnitude(5), datad=>PWR, cin=>nx28963z17);
   ix28963z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z17, dataa=>i1_magnitude(4), datab=>
      i2_magnitude(4), datad=>PWR, cin=>nx28963z22);
   ix28963z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z22, dataa=>i1_magnitude(3), datab=>
      i2_magnitude(3), datad=>PWR, cin=>nx28963z27);
   ix28963z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z27, dataa=>i1_magnitude(2), datab=>
      i2_magnitude(2), datad=>PWR, cin=>nx28963z32);
   ix28963z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx28963z32, dataa=>i1_magnitude(1), datab=>
      i2_magnitude(1), datad=>PWR, cin=>nx28963z37);
   ix28963z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx28963z37, dataa=>i2_magnitude(0), datab=>
      i1_magnitude(0), datad=>PWR);
   ix40727z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5050",
         sum_lutc_input => "cin") 
       port map ( combout=>nx40727z2, dataa=>nx40727z3, datad=>PWR, cin=>
      nx40727z15);
   ix40727z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z15, dataa=>add5_12, datab=>r7_12, datad=>PWR, 
      cin=>nx40727z16);
   ix40727z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z16, dataa=>add5_11, datab=>r7_11, datad=>PWR, 
      cin=>nx40727z17);
   ix40727z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z17, dataa=>add5_10, datab=>r7_10, datad=>PWR, 
      cin=>nx40727z18);
   ix40727z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z18, dataa=>add5_9, datab=>r7_9, datad=>PWR, 
      cin=>nx40727z19);
   ix40727z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z19, dataa=>add5_8, datab=>r7_8, datad=>PWR, 
      cin=>nx40727z20);
   ix40727z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z20, dataa=>add5_7, datab=>r7_7, datad=>PWR, 
      cin=>nx40727z21);
   ix40727z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z21, dataa=>add5_6, datab=>r7_6, datad=>PWR, 
      cin=>nx40727z22);
   ix40727z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z22, dataa=>add5_5, datab=>r7_5, datad=>PWR, 
      cin=>nx40727z23);
   ix40727z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z23, dataa=>add5_4, datab=>r7_4, datad=>PWR, 
      cin=>nx40727z24);
   ix40727z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx40727z24, dataa=>r7_3, datab=>add5_3, datad=>PWR);
   ix4840z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>nx4840z1, dataa=>r2_magnitude(9), datab=>
      r3_magnitude(9), datad=>PWR, cin=>nx4840z2);
   ix4840z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z2, dataa=>r2_magnitude(8), datab=>
      r3_magnitude(8), datad=>PWR, cin=>nx4840z3);
   ix4840z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z3, dataa=>r2_magnitude(7), datab=>
      r3_magnitude(7), datad=>PWR, cin=>nx4840z4);
   ix4840z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z4, dataa=>r2_magnitude(6), datab=>
      r3_magnitude(6), datad=>PWR, cin=>nx4840z5);
   ix4840z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z5, dataa=>r2_magnitude(5), datab=>
      r3_magnitude(5), datad=>PWR, cin=>nx4840z6);
   ix4840z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z6, dataa=>r2_magnitude(4), datab=>
      r3_magnitude(4), datad=>PWR, cin=>nx4840z7);
   ix4840z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z7, dataa=>r2_magnitude(3), datab=>
      r3_magnitude(3), datad=>PWR, cin=>nx4840z8);
   ix4840z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z8, dataa=>r2_magnitude(2), datab=>
      r3_magnitude(2), datad=>PWR, cin=>nx4840z9);
   ix4840z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4840z9, dataa=>r2_magnitude(1), datab=>
      r3_magnitude(1), datad=>PWR, cin=>nx4840z10);
   ix4840z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx4840z10, dataa=>r3_magnitude(0), datab=>
      r2_magnitude(0), datad=>PWR);
   reg_valid_bits_stage2_3 : cycloneii_lcell_ff port map ( regout=>
      o_valid_EXMPLR117, datain=>valid_bits_stage2(2), clk=>i_clock, sclr=>
      nx22195z2);
   reg_valid_bits_stage2_2 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage2(2), datain=>valid_bits_stage2(1), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage2_1 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage2(1), datain=>valid_bits_stage2(0), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage2_0 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage2(0), datain=>valid_bits_stage1(3), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage1_3 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage1(3), datain=>valid_bits_stage1(2), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage1_2 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage1(2), datain=>valid_bits_stage1(1), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage1_1 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage1(1), datain=>valid_bits_stage1(0), clk=>i_clock, sclr
      =>nx22195z2);
   reg_valid_bits_stage1_0 : cycloneii_lcell_ff port map ( regout=>
      valid_bits_stage1(0), datain=>nx22195z1, clk=>i_clock);
   reg_row_index_2 : cycloneii_lcell_ff port map ( regout=>row_index(2), 
      datain=>nx60779z1, clk=>i_clock, sclr=>i_reset);
   reg_row_index_1 : cycloneii_lcell_ff port map ( regout=>row_index(1), 
      datain=>nx59782z1, clk=>i_clock, sclr=>i_reset);
   reg_row_index_0 : cycloneii_lcell_ff port map ( regout=>nx59782z2, datain
      =>nx58785z1, clk=>i_clock, sclr=>i_reset);
   reg_r_mode_1 : cycloneii_lcell_ff port map ( regout=>o_mode_EXMPLR182(1), 
      datain=>nx46941z1, clk=>i_clock);
   reg_r_mode_0 : cycloneii_lcell_ff port map ( regout=>o_mode_EXMPLR182(0), 
      datain=>nx45944z1, clk=>i_clock);
   reg_r_edge : cycloneii_lcell_ff port map ( regout=>o_edge_EXMPLR118(2), 
      datain=>nx40727z1, clk=>i_clock);
   reg_r7_9 : cycloneii_lcell_ff port map ( regout=>r7_9, datain=>
      r5_magnitude(6), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_8 : cycloneii_lcell_ff port map ( regout=>r7_8, datain=>
      r5_magnitude(5), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_7 : cycloneii_lcell_ff port map ( regout=>r7_7, datain=>
      r5_magnitude(4), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_6 : cycloneii_lcell_ff port map ( regout=>r7_6, datain=>
      r5_magnitude(3), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_5 : cycloneii_lcell_ff port map ( regout=>r7_5, datain=>
      r5_magnitude(2), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_4 : cycloneii_lcell_ff port map ( regout=>r7_4, datain=>
      r5_magnitude(1), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_3 : cycloneii_lcell_ff port map ( regout=>r7_3, datain=>
      r5_magnitude(0), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_12 : cycloneii_lcell_ff port map ( regout=>r7_12, datain=>
      r5_magnitude(9), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_11 : cycloneii_lcell_ff port map ( regout=>r7_11, datain=>
      r5_magnitude(8), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r7_10 : cycloneii_lcell_ff port map ( regout=>r7_10, datain=>
      r5_magnitude(7), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_9 : cycloneii_lcell_ff port map ( regout=>r6(9), datain=>add4(9), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_8 : cycloneii_lcell_ff port map ( regout=>r6(8), datain=>add4(8), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_7 : cycloneii_lcell_ff port map ( regout=>r6(7), datain=>add4(7), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_6 : cycloneii_lcell_ff port map ( regout=>r6(6), datain=>add4(6), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_5 : cycloneii_lcell_ff port map ( regout=>r6(5), datain=>add4(5), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_4 : cycloneii_lcell_ff port map ( regout=>r6(4), datain=>add4(4), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_3 : cycloneii_lcell_ff port map ( regout=>r6(3), datain=>add4(3), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_2 : cycloneii_lcell_ff port map ( regout=>r6(2), datain=>add4(2), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_12 : cycloneii_lcell_ff port map ( regout=>r6(12), datain=>
      nx21429z1, clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_11 : cycloneii_lcell_ff port map ( regout=>r6(11), datain=>
      add4(11), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_10 : cycloneii_lcell_ff port map ( regout=>r6(10), datain=>
      add4(10), clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_1 : cycloneii_lcell_ff port map ( regout=>r6(1), datain=>add4(1), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r6_0 : cycloneii_lcell_ff port map ( regout=>r6(0), datain=>add4(0), 
      clk=>i_clock, ena=>nx21429z12, sclr=>i_reset);
   reg_r5_magnitude_9 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(9), datain=>r2_magnitude(9), sdata=>r3_magnitude(9), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_8 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(8), datain=>r2_magnitude(8), sdata=>r3_magnitude(8), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_7 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(7), datain=>r2_magnitude(7), sdata=>r3_magnitude(7), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_6 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(6), datain=>r2_magnitude(6), sdata=>r3_magnitude(6), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_5 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(5), datain=>r2_magnitude(5), sdata=>r3_magnitude(5), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_4 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(4), datain=>r2_magnitude(4), sdata=>r3_magnitude(4), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_3 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(3), datain=>r2_magnitude(3), sdata=>r3_magnitude(3), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_2 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(2), datain=>r2_magnitude(2), sdata=>r3_magnitude(2), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_1 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(1), datain=>r2_magnitude(1), sdata=>r3_magnitude(1), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_magnitude_0 : cycloneii_lcell_ff port map ( regout=>
      r5_magnitude(0), datain=>r2_magnitude(0), sdata=>r3_magnitude(0), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_direction_2 : cycloneii_lcell_ff port map ( regout=>
      r5_direction(2), datain=>r2_direction(2), sdata=>r3_direction(2), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_direction_1 : cycloneii_lcell_ff port map ( regout=>
      r5_direction(1), datain=>r2_direction(1), sdata=>r3_direction(1), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r5_direction_0 : cycloneii_lcell_ff port map ( regout=>
      r5_direction(0), datain=>r2_direction(0), sdata=>r3_direction(0), clk
      =>i_clock, ena=>nx34503z1, sclr=>i_reset, sload=>nx4840z1);
   reg_r4_9 : cycloneii_lcell_ff port map ( regout=>r4(9), datain=>add3(9), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_8 : cycloneii_lcell_ff port map ( regout=>r4(8), datain=>add3(8), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_7 : cycloneii_lcell_ff port map ( regout=>r4(7), datain=>add3(7), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_6 : cycloneii_lcell_ff port map ( regout=>r4(6), datain=>add3(6), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_5 : cycloneii_lcell_ff port map ( regout=>r4(5), datain=>add3(5), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_4 : cycloneii_lcell_ff port map ( regout=>r4(4), datain=>add3(4), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_3 : cycloneii_lcell_ff port map ( regout=>r4(3), datain=>add3(3), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_2 : cycloneii_lcell_ff port map ( regout=>r4(2), datain=>add3(2), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_10 : cycloneii_lcell_ff port map ( regout=>r4(10), datain=>
      add3(10), clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_1 : cycloneii_lcell_ff port map ( regout=>r4(1), datain=>add3(1), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r4_0 : cycloneii_lcell_ff port map ( regout=>add4(0), datain=>add3(0), 
      clk=>i_clock, ena=>nx35831z12, sclr=>i_reset);
   reg_r3_magnitude_9 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(9), datain=>add2_magnitude(9), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_8 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(8), datain=>add2_magnitude(8), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_7 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(7), datain=>add2_magnitude(7), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_6 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(6), datain=>add2_magnitude(6), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_5 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(5), datain=>add2_magnitude(5), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_4 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(4), datain=>add2_magnitude(4), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_3 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(3), datain=>add2_magnitude(3), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_2 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(2), datain=>add2_magnitude(2), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_1 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(1), datain=>add2_magnitude(1), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_magnitude_0 : cycloneii_lcell_ff port map ( regout=>
      r3_magnitude(0), datain=>add2_magnitude(0), clk=>i_clock, sclr=>
      i_reset);
   reg_r3_direction_2 : cycloneii_lcell_ff port map ( regout=>
      r3_direction(2), datain=>not_rtlc0_copy_n346, clk=>i_clock, sclr=>
      i_reset);
   reg_r3_direction_1 : cycloneii_lcell_ff port map ( regout=>
      r3_direction(1), datain=>nx16196z1, clk=>i_clock, sclr=>i_reset);
   reg_r3_direction_0 : cycloneii_lcell_ff port map ( regout=>
      r3_direction(0), datain=>nx17193z1, clk=>i_clock, sclr=>i_reset);
   reg_r2_magnitude_9 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(9), datain=>max2_magnitude(9), sdata=>r3_magnitude(9), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_8 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(8), datain=>max2_magnitude(8), sdata=>r3_magnitude(8), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_7 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(7), datain=>max2_magnitude(7), sdata=>r3_magnitude(7), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_6 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(6), datain=>max2_magnitude(6), sdata=>r3_magnitude(6), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_5 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(5), datain=>max2_magnitude(5), sdata=>r3_magnitude(5), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_4 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(4), datain=>max2_magnitude(4), sdata=>r3_magnitude(4), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_3 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(3), datain=>max2_magnitude(3), sdata=>r3_magnitude(3), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_2 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(2), datain=>max2_magnitude(2), sdata=>r3_magnitude(2), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_1 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(1), datain=>max2_magnitude(1), sdata=>r3_magnitude(1), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_magnitude_0 : cycloneii_lcell_ff port map ( regout=>
      r2_magnitude(0), datain=>max2_magnitude(0), sdata=>r3_magnitude(0), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_direction_2 : cycloneii_lcell_ff port map ( regout=>
      r2_direction(2), datain=>max2_direction(2), sdata=>r3_direction(2), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_direction_1 : cycloneii_lcell_ff port map ( regout=>
      r2_direction(1), datain=>max2_direction(1), sdata=>r3_direction(1), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r2_direction_0 : cycloneii_lcell_ff port map ( regout=>
      r2_direction(0), datain=>max2_direction(0), sdata=>r3_direction(0), 
      clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>valid_bits_stage1(1));
   reg_r1_9 : cycloneii_lcell_ff port map ( regout=>r1(9), datain=>nx43050z1, 
      clk=>i_clock);
   reg_r1_8 : cycloneii_lcell_ff port map ( regout=>r1(8), datain=>add3(8), 
      sdata=>nx42053z1, clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_7 : cycloneii_lcell_ff port map ( regout=>r1(7), datain=>add3(7), 
      sdata=>add1(7), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_6 : cycloneii_lcell_ff port map ( regout=>r1(6), datain=>add3(6), 
      sdata=>add1(6), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_5 : cycloneii_lcell_ff port map ( regout=>r1(5), datain=>add3(5), 
      sdata=>add1(5), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_4 : cycloneii_lcell_ff port map ( regout=>r1(4), datain=>add3(4), 
      sdata=>add1(4), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_3 : cycloneii_lcell_ff port map ( regout=>r1(3), datain=>add3(3), 
      sdata=>add1(3), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_2 : cycloneii_lcell_ff port map ( regout=>r1(2), datain=>add3(2), 
      sdata=>add1(2), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_10 : cycloneii_lcell_ff port map ( regout=>r1(10), datain=>
      nx20426z1, clk=>i_clock);
   reg_r1_1 : cycloneii_lcell_ff port map ( regout=>r1(1), datain=>add3(1), 
      sdata=>add1(1), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_r1_0 : cycloneii_lcell_ff port map ( regout=>r1(0), datain=>add3(0), 
      sdata=>add1(0), clk=>i_clock, ena=>PWR, sclr=>i_reset, sload=>
      valid_bits_stage1(0));
   reg_last_pixel_complete_1 : cycloneii_lcell_ff port map ( regout=>
      last_pixel_complete(1), datain=>nx47356z1, clk=>i_clock, sclr=>i_reset
   );
   reg_last_pixel_complete_0 : cycloneii_lcell_ff port map ( regout=>
      last_pixel_complete(0), datain=>nx46359z1, clk=>i_clock, sclr=>i_reset
   );
   reg_conv_table_2_2_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(7), datain=>i_pixel(7), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(6), datain=>i_pixel(6), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(5), datain=>i_pixel(5), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(4), datain=>i_pixel(4), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(3), datain=>i_pixel(3), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(2), datain=>i_pixel(2), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(1), datain=>i_pixel(1), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_2_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_2(0), datain=>i_pixel(0), clk=>i_clock, ena=>nx59688z1, 
      sclr=>i_reset);
   reg_conv_table_2_1_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(7), datain=>nx54553z1, sdata=>mem_out_1(7), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(6), datain=>nx55550z1, sdata=>mem_out_1(6), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(5), datain=>nx56547z1, sdata=>mem_out_1(5), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(4), datain=>nx57544z1, sdata=>mem_out_1(4), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(3), datain=>nx58541z1, sdata=>mem_out_1(3), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(2), datain=>nx59538z1, sdata=>mem_out_1(2), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(1), datain=>nx60535z1, sdata=>mem_out_1(1), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_1_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_1(0), datain=>nx61532z1, sdata=>mem_out_1(0), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(7), datain=>nx49418z1, sdata=>mem_out_0(7), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(6), datain=>nx50415z1, sdata=>mem_out_0(6), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(5), datain=>nx51412z1, sdata=>mem_out_0(5), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(4), datain=>nx52409z1, sdata=>mem_out_0(4), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(3), datain=>nx53406z1, sdata=>mem_out_0(3), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(2), datain=>nx54403z1, sdata=>mem_out_0(2), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(1), datain=>nx55400z1, sdata=>mem_out_0(1), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_2_0_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_2_0(0), datain=>nx56397z1, sdata=>mem_out_0(0), clk=>
      i_clock, ena=>nx59688z1, sclr=>i_reset, sload=>row_index(2));
   reg_conv_table_1_2_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(7), datain=>conv_table_2_2(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(6), datain=>conv_table_2_2(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(5), datain=>conv_table_2_2(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(4), datain=>conv_table_2_2(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(3), datain=>conv_table_2_2(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(2), datain=>conv_table_2_2(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(1), datain=>conv_table_2_2(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_2_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_2(0), datain=>conv_table_2_2(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(7), datain=>conv_table_2_1(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(6), datain=>conv_table_2_1(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(5), datain=>conv_table_2_1(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(4), datain=>conv_table_2_1(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(3), datain=>conv_table_2_1(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(2), datain=>conv_table_2_1(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(1), datain=>conv_table_2_1(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_1_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_1(0), datain=>conv_table_2_1(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(7), datain=>conv_table_2_0(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(6), datain=>conv_table_2_0(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(5), datain=>conv_table_2_0(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(4), datain=>conv_table_2_0(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(3), datain=>conv_table_2_0(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(2), datain=>conv_table_2_0(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(1), datain=>conv_table_2_0(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_1_0_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_1_0(0), datain=>conv_table_2_0(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(7), datain=>conv_table_1_2(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(6), datain=>conv_table_1_2(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(5), datain=>conv_table_1_2(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(4), datain=>conv_table_1_2(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(3), datain=>conv_table_1_2(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(2), datain=>conv_table_1_2(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(1), datain=>conv_table_1_2(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_2_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_2(0), datain=>conv_table_1_2(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(7), datain=>conv_table_1_1(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(6), datain=>conv_table_1_1(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(5), datain=>conv_table_1_1(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(4), datain=>conv_table_1_1(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(3), datain=>conv_table_1_1(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(2), datain=>conv_table_1_1(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(1), datain=>conv_table_1_1(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_1_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_1(0), datain=>conv_table_1_1(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_7 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(7), datain=>conv_table_1_0(7), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_6 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(6), datain=>conv_table_1_0(6), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_5 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(5), datain=>conv_table_1_0(5), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_4 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(4), datain=>conv_table_1_0(4), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_3 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(3), datain=>conv_table_1_0(3), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_2 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(2), datain=>conv_table_1_0(2), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_1 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(1), datain=>conv_table_1_0(1), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   reg_conv_table_0_0_0 : cycloneii_lcell_ff port map ( regout=>
      conv_table_0_0(0), datain=>conv_table_1_0(0), clk=>i_clock, ena=>
      nx59688z1, sclr=>i_reset);
   ix40727z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx40727z3, datad=>PWR, cin=>add5_13);
   ix28963z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx28963z1, datad=>PWR, cin=>nx28963z2);
   ix21429z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21429z1, datad=>PWR, cin=>add4(12));
   ix42053z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx42053z1, datad=>PWR, cin=>add1(8));
   ix35831z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx35831z3, datad=>PWR, cin=>nx35831z4);
   add5_add13_3_ix40727z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_12, cout=>add5_13, dataa=>r6(12), datad=>PWR, 
      cin=>nx40727z4);
   add5_add13_3_ix40727z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_11, cout=>nx40727z4, dataa=>r6(11), datad=>
      PWR, cin=>nx40727z5);
   add5_add13_3_ix40727z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_10, cout=>nx40727z5, dataa=>r6(10), datad=>
      PWR, cin=>nx40727z6);
   add5_add13_3_ix40727z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_9, cout=>nx40727z6, dataa=>r6(9), datad=>PWR, 
      cin=>nx40727z7);
   add5_add13_3_ix40727z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_8, cout=>nx40727z7, dataa=>r6(8), datad=>PWR, 
      cin=>nx40727z8);
   add5_add13_3_ix40727z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_7, cout=>nx40727z8, dataa=>r6(7), datad=>PWR, 
      cin=>nx40727z9);
   add5_add13_3_ix40727z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_6, cout=>nx40727z9, dataa=>r6(6), datad=>PWR, 
      cin=>nx40727z10);
   add5_add13_3_ix40727z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_5, cout=>nx40727z10, dataa=>r6(5), datad=>
      PWR, cin=>nx40727z11);
   add5_add13_3_ix40727z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_4, cout=>nx40727z11, dataa=>r6(4), datad=>
      PWR, cin=>nx40727z12);
   add5_add13_3_ix40727z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"a5fa",
         sum_lutc_input => "cin") 
       port map ( combout=>add5_3, cout=>nx40727z12, dataa=>r6(3), datad=>
      PWR, cin=>nx40727z13);
   add5_add13_3_ix40727z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx40727z13, dataa=>r6(2), datad=>PWR, cin=>
      nx40727z14);
   add5_add13_3_ix40727z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ee") 
       port map ( cout=>nx40727z14, dataa=>r6(1), datab=>r6(0), datad=>PWR);
   add4_add11_2_ix21429z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(11), cout=>add4(12), dataa=>r4(10), datad=>
      PWR, cin=>nx21429z2);
   add4_add11_2_ix21429z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(10), cout=>nx21429z2, dataa=>r4(9), datab=>
      r4(10), datad=>PWR, cin=>nx21429z3);
   add4_add11_2_ix21429z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(9), cout=>nx21429z3, dataa=>r4(8), datab=>
      r4(9), datad=>PWR, cin=>nx21429z4);
   add4_add11_2_ix21429z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(8), cout=>nx21429z4, dataa=>r4(7), datab=>
      r4(8), datad=>PWR, cin=>nx21429z5);
   add4_add11_2_ix21429z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(7), cout=>nx21429z5, dataa=>r4(6), datab=>
      r4(7), datad=>PWR, cin=>nx21429z6);
   add4_add11_2_ix21429z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(6), cout=>nx21429z6, dataa=>r4(5), datab=>
      r4(6), datad=>PWR, cin=>nx21429z7);
   add4_add11_2_ix21429z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(5), cout=>nx21429z7, dataa=>r4(4), datab=>
      r4(5), datad=>PWR, cin=>nx21429z8);
   add4_add11_2_ix21429z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(4), cout=>nx21429z8, dataa=>r4(3), datab=>
      r4(4), datad=>PWR, cin=>nx21429z9);
   add4_add11_2_ix21429z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(3), cout=>nx21429z9, dataa=>r4(2), datab=>
      r4(3), datad=>PWR, cin=>nx21429z10);
   add4_add11_2_ix21429z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add4(2), cout=>nx21429z10, dataa=>r4(1), datab=>
      r4(2), datad=>PWR, cin=>nx21429z11);
   add4_add11_2_ix21429z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx21429z11, dataa=>r4(1), datab=>add4(0), datad=>PWR
   );
   add4_add11_2_ix58515z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0ff0") 
       port map ( combout=>add4(1), datac=>add4(0), datad=>r4(1));
   add3_add11_0_ix35831z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(10), dataa=>r1(10), datad=>PWR, cin=>
      nx35831z1);
   add3_add11_0_ix35831z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(9), cout=>nx35831z1, dataa=>r1(9), datad=>
      PWR, cin=>nx35831z2);
   add3_add11_0_ix35831z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(8), cout=>nx35831z2, dataa=>r1(8), datab=>
      nx35831z3, datad=>PWR, cin=>add1(8));
   add3_add11_0_ix35831z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(7), cout=>nx35831z4, dataa=>r1(7), datab=>
      add1(7), datad=>PWR, cin=>nx35831z5);
   add3_add11_0_ix35831z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(6), cout=>nx35831z5, dataa=>r1(6), datab=>
      add1(6), datad=>PWR, cin=>nx35831z6);
   add3_add11_0_ix35831z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(5), cout=>nx35831z6, dataa=>r1(5), datab=>
      add1(5), datad=>PWR, cin=>nx35831z7);
   add3_add11_0_ix35831z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(4), cout=>nx35831z7, dataa=>r1(4), datab=>
      add1(4), datad=>PWR, cin=>nx35831z8);
   add3_add11_0_ix35831z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(3), cout=>nx35831z8, dataa=>r1(3), datab=>
      add1(3), datad=>PWR, cin=>nx35831z9);
   add3_add11_0_ix35831z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(2), cout=>nx35831z9, dataa=>r1(2), datab=>
      add1(2), datad=>PWR, cin=>nx35831z10);
   add3_add11_0_ix35831z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add3(1), cout=>nx35831z10, dataa=>r1(1), datab=>
      add1(1), datad=>PWR, cin=>nx35831z11);
   add3_add11_0_ix35831z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>add3(0), cout=>nx35831z11, dataa=>add1(0), datab
      =>r1(0), datad=>PWR);
   add2_magnitude_add9_4_ix28963z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(7), cout=>nx28963z2, dataa=>
      max1_magnitude(7), datab=>add1(7), datad=>PWR, cin=>nx28963z42);
   add2_magnitude_add9_4_ix28963z52983 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(6), cout=>nx28963z42, dataa=>
      max1_magnitude(6), datab=>add1(6), datad=>PWR, cin=>nx28963z43);
   add2_magnitude_add9_4_ix28963z52985 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(5), cout=>nx28963z43, dataa=>
      max1_magnitude(5), datab=>add1(5), datad=>PWR, cin=>nx28963z44);
   add2_magnitude_add9_4_ix28963z52987 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(4), cout=>nx28963z44, dataa=>
      max1_magnitude(4), datab=>add1(4), datad=>PWR, cin=>nx28963z45);
   add2_magnitude_add9_4_ix28963z52989 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(3), cout=>nx28963z45, dataa=>
      max1_magnitude(3), datab=>add1(3), datad=>PWR, cin=>nx28963z46);
   add2_magnitude_add9_4_ix28963z52991 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(2), cout=>nx28963z46, dataa=>
      max1_magnitude(2), datab=>add1(2), datad=>PWR, cin=>nx28963z47);
   add2_magnitude_add9_4_ix28963z52993 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add2_magnitude(1), cout=>nx28963z47, dataa=>
      max1_magnitude(1), datab=>add1(1), datad=>PWR, cin=>nx28963z48);
   add2_magnitude_add9_4_ix28963z52995 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx28963z48, dataa=>add1(0), datab=>max1_magnitude(0), 
      datad=>PWR);
   add2_magnitude_add9_4_ix37936z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0ff0") 
       port map ( combout=>add2_magnitude(0), datac=>max1_magnitude(0), 
      datad=>add1(0));
   add1_add8_1_ix42053z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(7), cout=>add1(8), dataa=>i4(7), datab=>
      i3(7), datad=>PWR, cin=>nx42053z7);
   add1_add8_1_ix42053z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(6), cout=>nx42053z7, dataa=>i4(6), datab=>
      i3(6), datad=>PWR, cin=>nx42053z12);
   add1_add8_1_ix42053z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(5), cout=>nx42053z12, dataa=>i4(5), datab=>
      i3(5), datad=>PWR, cin=>nx42053z17);
   add1_add8_1_ix42053z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(4), cout=>nx42053z17, dataa=>i4(4), datab=>
      i3(4), datad=>PWR, cin=>nx42053z22);
   add1_add8_1_ix42053z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(3), cout=>nx42053z22, dataa=>i4(3), datab=>
      i3(3), datad=>PWR, cin=>nx42053z27);
   add1_add8_1_ix42053z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(2), cout=>nx42053z27, dataa=>i4(2), datab=>
      i3(2), datad=>PWR, cin=>nx42053z32);
   add1_add8_1_ix42053z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>add1(1), cout=>nx42053z32, dataa=>i4(1), datab=>
      i3(1), datad=>PWR, cin=>nx42053z37);
   add1_add8_1_ix42053z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx42053z37, dataa=>i3(0), datab=>i4(0), datad=>PWR);
   add1_add8_1_ix35831z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0ff0") 
       port map ( combout=>add1(0), datac=>i4(0), datad=>i3(0));
   ix22195z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx22195z1, dataa=>i_valid, datab=>nx22195z2, 
      datac=>nx22195z7, datad=>nx22195z8);
   ix22195z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z9, dataa=>pixel_counter_7, datab=>
      pixel_counter_6, datac=>pixel_counter_5, datad=>pixel_counter_4);
   ix22195z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z5, dataa=>o_row_EXMPLR183(7), datab=>
      o_row_EXMPLR183(6), datac=>pixel_counter_16, datad=>nx22195z6);
   ix22195z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z4, dataa=>pixel_counter_5, datab=>
      pixel_counter_4, datac=>pixel_counter_3, datad=>pixel_counter_2);
   ix42053z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z6, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(7), datad=>
      conv_table_1_0(7));
   ix42053z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z4, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(7), datad=>
      conv_table_2_0(7));
   ix42053z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z11, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(6), datad=>
      conv_table_1_0(6));
   ix42053z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z9, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(6), datad=>
      conv_table_2_0(6));
   ix42053z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z16, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(5), datad=>
      conv_table_1_0(5));
   ix42053z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z14, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(5), datad=>
      conv_table_2_0(5));
   ix42053z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z21, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(4), datad=>
      conv_table_1_0(4));
   ix42053z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z19, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(4), datad=>
      conv_table_2_0(4));
   ix42053z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z26, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(3), datad=>
      conv_table_1_0(3));
   ix42053z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z24, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(3), datad=>
      conv_table_2_0(3));
   ix42053z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z31, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(2), datad=>
      conv_table_1_0(2));
   ix42053z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z29, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(2), datad=>
      conv_table_2_0(2));
   ix42053z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z36, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(1), datad=>
      conv_table_1_0(1));
   ix42053z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z34, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(1), datad=>
      conv_table_2_0(1));
   ix42053z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z39, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(0), datad=>
      conv_table_1_0(0));
   ix42053z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx42053z41, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_1(0), datad=>
      conv_table_2_0(0));
   ix28963z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z6, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(7), datad=>
      conv_table_2_1(7));
   ix28963z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z4, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(7), datad=>
      conv_table_0_2(7));
   ix28963z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z11, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(6), datad=>
      conv_table_2_1(6));
   ix28963z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z9, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(6), datad=>
      conv_table_0_2(6));
   ix28963z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z16, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(5), datad=>
      conv_table_2_1(5));
   ix28963z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z14, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(5), datad=>
      conv_table_0_2(5));
   ix28963z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z21, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(4), datad=>
      conv_table_2_1(4));
   ix28963z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z19, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(4), datad=>
      conv_table_0_2(4));
   ix28963z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z26, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(3), datad=>
      conv_table_2_1(3));
   ix28963z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z24, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(3), datad=>
      conv_table_0_2(3));
   ix28963z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z31, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(2), datad=>
      conv_table_2_1(2));
   ix28963z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z29, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(2), datad=>
      conv_table_0_2(2));
   ix28963z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z36, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(1), datad=>
      conv_table_2_1(1));
   ix28963z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z34, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(1), datad=>
      conv_table_0_2(1));
   ix28963z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28963z39, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_1_0(0), datad=>
      conv_table_2_1(0));
   ix28963z52982 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28963z41, dataa=>valid_bits_stage1(1), datab=>
      valid_bits_stage1(0), datac=>conv_table_0_0(0), datad=>
      conv_table_0_2(0));
   ix60779z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60779z4, dataa=>pixel_counter_4, datab=>
      pixel_counter_3, datac=>pixel_counter_2, datad=>pixel_counter_1);
   ix60779z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60779z3, dataa=>i_valid, datab=>pixel_counter_7, 
      datac=>pixel_counter_6, datad=>pixel_counter_5);
   ix59688z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx59688z1, dataa=>i_reset, datab=>i_valid);
   ix21429z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx21429z12, dataa=>i_reset, datab=>
      valid_bits_stage2(1));
   ix35831z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx35831z12, dataa=>i_reset, datab=>
      valid_bits_stage1(3));
   ix22195z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z6, dataa=>o_row_EXMPLR183(5), datab=>
      o_row_EXMPLR183(4), datac=>o_row_EXMPLR183(3), datad=>
      o_row_EXMPLR183(2));
   ix22195z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>a_3, dataa=>pixel_counter_7, datab=>
      pixel_counter_6);
   ix42053z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z3, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(7));
   ix42053z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z8, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(6));
   ix42053z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z13, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(5));
   ix42053z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z18, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(4));
   ix42053z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z23, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(3));
   ix42053z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z28, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(2));
   ix42053z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z33, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(1));
   ix42053z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z40, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_2(0));
   ix42053z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z5, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(7));
   ix42053z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z10, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(6));
   ix42053z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z15, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(5));
   ix42053z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z20, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(4));
   ix42053z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z25, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(3));
   ix42053z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z30, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(2));
   ix42053z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z35, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(1));
   ix42053z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx42053z38, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_1_2(0));
   ix28963z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z5, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(7));
   ix28963z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z10, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(6));
   ix28963z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z15, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(5));
   ix28963z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z20, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(4));
   ix28963z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z25, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(3));
   ix28963z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z30, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(2));
   ix28963z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z35, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(1));
   ix28963z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z38, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_0_1(0));
   ix28963z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z3, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(7));
   ix28963z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z8, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(6));
   ix28963z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z13, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(5));
   ix28963z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z18, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(4));
   ix28963z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z23, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(3));
   ix28963z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z28, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(2));
   ix28963z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z33, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(1));
   ix28963z52981 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28963z40, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      conv_table_2_2(0));
   ix60779z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx60779z1, dataa=>row_index(2), datab=>
      row_index(1), datac=>nx60779z2);
   ix59782z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx59782z1, dataa=>row_index(1), datab=>nx59782z2, 
      datac=>nx60779z2);
   ix58785z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5c5c") 
       port map ( combout=>nx58785z1, dataa=>row_index(2), datab=>nx59782z2, 
      datac=>nx60779z2);
   ix47356z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx47356z1, dataa=>o_valid_EXMPLR117, datab=>
      last_pixel_complete(1), datac=>last_pixel_complete(0));
   ix46359z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx46359z1, dataa=>pixel_counter_16, datab=>
      last_pixel_complete(0), datac=>valid_bits_stage1(3));
   ix20426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1010") 
       port map ( combout=>nx20426z1, dataa=>i_reset, datab=>
      valid_bits_stage1(0), datac=>add3(10));
   ix43050z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1010") 
       port map ( combout=>nx43050z1, dataa=>i_reset, datab=>
      valid_bits_stage1(0), datac=>add3(9));
   ix45944z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff08") 
       port map ( combout=>nx45944z1, dataa=>o_mode_EXMPLR182(1), datab=>
      o_mode_EXMPLR182(0), datac=>last_pixel_complete(1), datad=>nx59688z1);
   ix17193z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"03f1") 
       port map ( combout=>nx17193z1, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0), datad=>
      not_rtlc0_copy_n346);
   ix34503z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx34503z1, dataa=>i_reset, datab=>
      valid_bits_stage2(0));
   ix54553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx54553z1, dataa=>row_index(1), datab=>
      mem_out_0(7), datac=>mem_out_2(7));
   ix55550z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx55550z1, dataa=>row_index(1), datab=>
      mem_out_0(6), datac=>mem_out_2(6));
   ix56547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx56547z1, dataa=>row_index(1), datab=>
      mem_out_0(5), datac=>mem_out_2(5));
   ix57544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx57544z1, dataa=>row_index(1), datab=>
      mem_out_0(4), datac=>mem_out_2(4));
   ix58541z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx58541z1, dataa=>row_index(1), datab=>
      mem_out_0(3), datac=>mem_out_2(3));
   ix59538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx59538z1, dataa=>row_index(1), datab=>
      mem_out_0(2), datac=>mem_out_2(2));
   ix60535z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx60535z1, dataa=>row_index(1), datab=>
      mem_out_0(1), datac=>mem_out_2(1));
   ix61532z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx61532z1, dataa=>row_index(1), datab=>
      mem_out_0(0), datac=>mem_out_2(0));
   ix49418z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx49418z1, dataa=>row_index(1), datab=>
      mem_out_1(7), datac=>mem_out_2(7));
   ix50415z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx50415z1, dataa=>row_index(1), datab=>
      mem_out_1(6), datac=>mem_out_2(6));
   ix51412z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx51412z1, dataa=>row_index(1), datab=>
      mem_out_1(5), datac=>mem_out_2(5));
   ix52409z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx52409z1, dataa=>row_index(1), datab=>
      mem_out_1(4), datac=>mem_out_2(4));
   ix53406z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx53406z1, dataa=>row_index(1), datab=>
      mem_out_1(3), datac=>mem_out_2(3));
   ix54403z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx54403z1, dataa=>row_index(1), datab=>
      mem_out_1(2), datac=>mem_out_2(2));
   ix55400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx55400z1, dataa=>row_index(1), datab=>
      mem_out_1(1), datac=>mem_out_2(1));
   ix56397z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx56397z1, dataa=>row_index(1), datab=>
      mem_out_1(0), datac=>mem_out_2(0));
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_direction(0), dataa=>r2_direction(0), datab
      =>r3_direction(0), datac=>nx4840z1);
   ix47929z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_direction(1), dataa=>r2_direction(1), datab
      =>r3_direction(1), datac=>nx4840z1);
   ix46932z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_direction(2), dataa=>r2_direction(2), datab
      =>r3_direction(2), datac=>nx4840z1);
   ix61403z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(0), dataa=>r2_magnitude(0), datab
      =>r3_magnitude(0), datac=>nx4840z1);
   ix62400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(1), dataa=>r2_magnitude(1), datab
      =>r3_magnitude(1), datac=>nx4840z1);
   ix63397z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(2), dataa=>r2_magnitude(2), datab
      =>r3_magnitude(2), datac=>nx4840z1);
   ix64394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(3), dataa=>r2_magnitude(3), datab
      =>r3_magnitude(3), datac=>nx4840z1);
   ix65391z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(4), dataa=>r2_magnitude(4), datab
      =>r3_magnitude(4), datac=>nx4840z1);
   ix852z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(5), dataa=>r2_magnitude(5), datab
      =>r3_magnitude(5), datac=>nx4840z1);
   ix1849z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(6), dataa=>r2_magnitude(6), datab
      =>r3_magnitude(6), datac=>nx4840z1);
   ix2846z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(7), dataa=>r2_magnitude(7), datab
      =>r3_magnitude(7), datac=>nx4840z1);
   ix3843z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(8), dataa=>r2_magnitude(8), datab
      =>r3_magnitude(8), datac=>nx4840z1);
   ix4840z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max2_magnitude(9), dataa=>r2_magnitude(9), datab
      =>r3_magnitude(9), datac=>nx4840z1);
   ix28963z52996 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(0), dataa=>i1_magnitude(0), datab
      =>i2_magnitude(0), datac=>not_rtlc0_copy_n346);
   ix28963z52994 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(1), dataa=>i1_magnitude(1), datab
      =>i2_magnitude(1), datac=>not_rtlc0_copy_n346);
   ix28963z52992 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(2), dataa=>i1_magnitude(2), datab
      =>i2_magnitude(2), datac=>not_rtlc0_copy_n346);
   ix28963z52990 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(3), dataa=>i1_magnitude(3), datab
      =>i2_magnitude(3), datac=>not_rtlc0_copy_n346);
   ix28963z52988 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(4), dataa=>i1_magnitude(4), datab
      =>i2_magnitude(4), datac=>not_rtlc0_copy_n346);
   ix28963z52986 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(5), dataa=>i1_magnitude(5), datab
      =>i2_magnitude(5), datac=>not_rtlc0_copy_n346);
   ix28963z52984 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(6), dataa=>i1_magnitude(6), datab
      =>i2_magnitude(6), datac=>not_rtlc0_copy_n346);
   ix28963z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>max1_magnitude(7), dataa=>i1_magnitude(7), datab
      =>i2_magnitude(7), datac=>not_rtlc0_copy_n346);
   ix28963z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(0), dataa=>nx42053z2, datab=>
      conv_table_1_2(0), datac=>nx28963z38, datad=>nx28963z39);
   ix28963z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(1), dataa=>nx42053z2, datab=>
      conv_table_1_2(1), datac=>nx28963z35, datad=>nx28963z36);
   ix28963z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(2), dataa=>nx42053z2, datab=>
      conv_table_1_2(2), datac=>nx28963z30, datad=>nx28963z31);
   ix28963z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(3), dataa=>nx42053z2, datab=>
      conv_table_1_2(3), datac=>nx28963z25, datad=>nx28963z26);
   ix28963z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(4), dataa=>nx42053z2, datab=>
      conv_table_1_2(4), datac=>nx28963z20, datad=>nx28963z21);
   ix28963z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(5), dataa=>nx42053z2, datab=>
      conv_table_1_2(5), datac=>nx28963z15, datad=>nx28963z16);
   ix28963z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(6), dataa=>nx42053z2, datab=>
      conv_table_1_2(6), datac=>nx28963z10, datad=>nx28963z11);
   ix28963z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i2_magnitude(7), dataa=>nx42053z2, datab=>
      conv_table_1_2(7), datac=>nx28963z5, datad=>nx28963z6);
   ix28963z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(0), dataa=>nx42053z2, datab=>
      conv_table_2_0(0), datac=>nx28963z40, datad=>nx28963z41);
   ix28963z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(1), dataa=>nx42053z2, datab=>
      conv_table_2_0(1), datac=>nx28963z33, datad=>nx28963z34);
   ix28963z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(2), dataa=>nx42053z2, datab=>
      conv_table_2_0(2), datac=>nx28963z28, datad=>nx28963z29);
   ix28963z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(3), dataa=>nx42053z2, datab=>
      conv_table_2_0(3), datac=>nx28963z23, datad=>nx28963z24);
   ix28963z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(4), dataa=>nx42053z2, datab=>
      conv_table_2_0(4), datac=>nx28963z18, datad=>nx28963z19);
   ix28963z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(5), dataa=>nx42053z2, datab=>
      conv_table_2_0(5), datac=>nx28963z13, datad=>nx28963z14);
   ix28963z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(6), dataa=>nx42053z2, datab=>
      conv_table_2_0(6), datac=>nx28963z8, datad=>nx28963z9);
   ix28963z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i1_magnitude(7), dataa=>nx42053z2, datab=>
      conv_table_2_0(7), datac=>nx28963z3, datad=>nx28963z4);
   ix22195z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z8, dataa=>pixel_counter_3, datab=>
      pixel_counter_2, datac=>pixel_counter_1, datad=>nx22195z9);
   ix22195z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z7, dataa=>o_row_EXMPLR183(7), datab=>
      o_row_EXMPLR183(6), datac=>o_row_EXMPLR183(1), datad=>nx22195z6);
   ix40727z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx40727z1, dataa=>valid_bits_stage2(2), datab=>
      nx40727z2);
   ix22195z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx22195z3, dataa=>o_row_EXMPLR183(0), datab=>
      pixel_counter_1, datac=>a_3, datad=>nx22195z4);
   ix22195z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"aabf") 
       port map ( combout=>nx22195z2, dataa=>i_reset, datab=>
      o_row_EXMPLR183(1), datac=>nx22195z3, datad=>nx22195z5);
   ix60779z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx60779z2, dataa=>pixel_counter_0, datab=>
      nx60779z3, datac=>nx60779z4);
   ix42053z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx42053z2, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0));
   ix16196z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d0d") 
       port map ( combout=>nx16196z1, dataa=>valid_bits_stage1(2), datab=>
      valid_bits_stage1(1), datac=>valid_bits_stage1(0));
   ix42053z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(0), dataa=>nx42053z2, datab=>conv_table_2_2(0), 
      datac=>nx42053z40, datad=>nx42053z41);
   ix42053z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(1), dataa=>nx42053z2, datab=>conv_table_2_2(1), 
      datac=>nx42053z33, datad=>nx42053z34);
   ix42053z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(2), dataa=>nx42053z2, datab=>conv_table_2_2(2), 
      datac=>nx42053z28, datad=>nx42053z29);
   ix42053z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(3), dataa=>nx42053z2, datab=>conv_table_2_2(3), 
      datac=>nx42053z23, datad=>nx42053z24);
   ix42053z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(4), dataa=>nx42053z2, datab=>conv_table_2_2(4), 
      datac=>nx42053z18, datad=>nx42053z19);
   ix42053z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(5), dataa=>nx42053z2, datab=>conv_table_2_2(5), 
      datac=>nx42053z13, datad=>nx42053z14);
   ix42053z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(6), dataa=>nx42053z2, datab=>conv_table_2_2(6), 
      datac=>nx42053z8, datad=>nx42053z9);
   ix42053z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i4(7), dataa=>nx42053z2, datab=>conv_table_2_2(7), 
      datac=>nx42053z3, datad=>nx42053z4);
   ix42053z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(0), dataa=>nx42053z2, datab=>conv_table_2_1(0), 
      datac=>nx42053z38, datad=>nx42053z39);
   ix42053z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(1), dataa=>nx42053z2, datab=>conv_table_2_1(1), 
      datac=>nx42053z35, datad=>nx42053z36);
   ix42053z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(2), dataa=>nx42053z2, datab=>conv_table_2_1(2), 
      datac=>nx42053z30, datad=>nx42053z31);
   ix42053z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(3), dataa=>nx42053z2, datab=>conv_table_2_1(3), 
      datac=>nx42053z25, datad=>nx42053z26);
   ix42053z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(4), dataa=>nx42053z2, datab=>conv_table_2_1(4), 
      datac=>nx42053z20, datad=>nx42053z21);
   ix42053z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(5), dataa=>nx42053z2, datab=>conv_table_2_1(5), 
      datac=>nx42053z15, datad=>nx42053z16);
   ix42053z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(6), dataa=>nx42053z2, datab=>conv_table_2_1(6), 
      datac=>nx42053z10, datad=>nx42053z11);
   ix42053z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i3(7), dataa=>nx42053z2, datab=>conv_table_2_1(7), 
      datac=>nx42053z5, datad=>nx42053z6);
   ix51243z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>valid_wren(0), dataa=>i_valid, datab=>nx59782z2);
   ix54114z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>valid_wren(1), dataa=>i_valid, datab=>
      row_index(1));
   ix54113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>valid_wren(2), dataa=>i_valid, datab=>
      row_index(2));
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR118(2), datab=>
      r5_direction(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR118(2), datab=>
      r5_direction(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR118(2), datab=>
      r5_direction(2));
   ix28963z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>add2_magnitude(9), dataa=>nx42053z1, datab=>
      nx28963z1);
   ix29960z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>add2_magnitude(8), dataa=>nx42053z1, datab=>
      nx28963z1);
end main ;

------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.max_pkg.all;
use work.state_pkg.all;
use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_num_0  : out std_logic_vector (3 downto 0)
    ; debug_num_1  : out std_logic_vector (3 downto 0)
    ; debug_num_2  : out std_logic_vector (3 downto 0)
    ; debug_num_3  : out std_logic_vector (3 downto 0)
    ; debug_num_4  : out std_logic_vector (3 downto 0)
    ; debug_num_5  : out std_logic_vector (3 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  logic : entity work.kirsch_logic
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_led_red(17) => debug_led_red(17)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(3) => debug_num_1(3)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
    );
end architecture;

