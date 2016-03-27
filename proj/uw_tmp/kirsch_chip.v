// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

// DATE "03/26/2016 22:53:08"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch (
	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

// Design Ports Information
// debug_led_red[0]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[17]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[0]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[1]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[2]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[3]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[1]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[3]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[1]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[1]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[3]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[0]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[1]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[2]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_valid	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_edge	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[1]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[3]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[4]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_key[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_reset	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_valid	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire nx22195z6;
wire nx22195z5;
wire add5_3_;
wire add5_4_;
wire add5_8_;
wire add5_9_;
wire add5_11_;
wire add5_13_;
wire nx40727z3;
wire r7_12_;
wire r7_10_;
wire r7_7_;
wire r7_6_;
wire r7_5_;
wire modgen_counter_pixel_counter_anx23078z1;
wire modgen_counter_pixel_counter_ainc_d_16_;
wire nx28963z3;
wire nx28963z6;
wire nx28963z13;
wire nx28963z14;
wire nx28963z18;
wire nx28963z19;
wire nx28963z25;
wire nx28963z26;
wire nx28963z31;
wire nx28963z34;
wire nx28963z35;
wire nx28963z36;
wire nx28963z41;
wire nx42053z3;
wire nx42053z4;
wire nx42053z8;
wire nx42053z9;
wire nx42053z13;
wire nx42053z14;
wire nx42053z19;
wire nx42053z20;
wire nx42053z21;
wire nx42053z23;
wire nx42053z24;
wire nx42053z26;
wire nx42053z30;
wire nx42053z31;
wire nx42053z33;
wire nx42053z34;
wire nx22195z7;
wire nx52409z1;
wire nx60535z1;
wire nx60779z3;
wire r5_magnitude_a9_a_afeeder_combout;
wire r5_magnitude_a7_a_afeeder_combout;
wire r5_magnitude_a4_a_afeeder_combout;
wire r5_magnitude_a3_a_afeeder_combout;
wire r5_magnitude_a2_a_afeeder_combout;
wire r4_a3_a_afeeder_combout;
wire r4_a5_a_afeeder_combout;
wire r4_a7_a_afeeder_combout;
wire r1_a8_a_afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire modgen_counter_pixel_counter_anx23078z31;
wire modgen_counter_pixel_counter_ainc_d_1_;
wire i_reset_acombout;
wire i_valid_acombout;
wire modgen_counter_pixel_counter_anx22081z1;
wire modgen_counter_pixel_counter_anx23078z29;
wire modgen_counter_pixel_counter_anx23078z27;
wire modgen_counter_pixel_counter_ainc_d_3_;
wire modgen_counter_pixel_counter_anx23078z25;
wire modgen_counter_pixel_counter_anx23078z23;
wire modgen_counter_pixel_counter_ainc_d_5_;
wire modgen_counter_pixel_counter_ainc_d_2_;
wire nx22195z4;
wire modgen_counter_pixel_counter_anx23078z21;
wire modgen_counter_pixel_counter_ainc_d_6_;
wire modgen_counter_pixel_counter_anx23078z19;
wire modgen_counter_pixel_counter_ainc_d_7_;
wire a_3_;
wire nx22195z3;
wire modgen_counter_pixel_counter_anx23078z17;
wire modgen_counter_pixel_counter_ainc_d_8_;
wire modgen_counter_pixel_counter_anx23078z15;
wire modgen_counter_pixel_counter_ainc_d_9_;
wire nx22195z2;
wire modgen_counter_pixel_counter_ainc_d_4_;
wire nx22195z9;
wire nx22195z8;
wire nx22195z1;
wire reg_valid_bits_stage2_3__aregout;
wire nx20426z1;
wire nx42053z2;
wire nx60779z4;
wire modgen_counter_pixel_counter_ainc_d_0_;
wire nx60779z2;
wire nx60779z1;
wire nx58785z1;
wire nx59782z2;
wire nx59782z1;
wire nx50415z1;
wire nx59688z1;
wire nx42053z11;
wire nx42053z10;
wire nx51412z1;
wire nx42053z16;
wire nx42053z15;
wire nx42053z18;
wire nx58541z1;
wire nx42053z25;
wire nx59538z1;
wire nx42053z29;
wire nx42053z28;
wire nx42053z35;
wire nx55400z1;
wire nx42053z36;
wire nx56397z1;
wire nx42053z39;
wire nx42053z38;
wire nx42053z37;
wire nx42053z32;
wire nx42053z27;
wire nx42053z22;
wire nx42053z17;
wire nx42053z12;
wire nx42053z40;
wire nx61532z1;
wire nx42053z41;
wire nx35831z11;
wire nx35831z10;
wire nx35831z9;
wire nx35831z8;
wire nx35831z7;
wire nx35831z6;
wire nx35831z5;
wire nx49418z1;
wire nx42053z6;
wire nx42053z5;
wire nx42053z7;
wire nx35831z4;
wire nx35831z3;
wire add1_a8_a_a0_combout;
wire add3_add11_0_ix35831z52925_a1_cout;
wire nx35831z2;
wire nx43050z1;
wire nx35831z1;
wire nx35831z12;
wire r4_a8_a_afeeder_combout;
wire r4_a6_a_afeeder_combout;
wire r4_a4_a_afeeder_combout;
wire r4_a2_a_afeeder_combout;
wire r4_a1_a_afeeder_combout;
wire nx21429z11;
wire nx21429z10;
wire nx21429z9;
wire nx21429z8;
wire nx21429z7;
wire nx21429z6;
wire nx21429z5;
wire nx21429z4;
wire nx21429z3;
wire nx21429z2;
wire nx21429z1;
wire nx21429z12;
wire add4_a0_a_afeeder_combout;
wire nx40727z14;
wire nx40727z13;
wire nx40727z12;
wire nx40727z11;
wire nx40727z10;
wire nx40727z9;
wire nx40727z8;
wire nx40727z7;
wire nx40727z6;
wire nx40727z5;
wire nx40727z4;
wire add5_12_;
wire ix42053z52923_a1_cout;
wire nx42053z1;
wire nx28963z8;
wire nx28963z9;
wire nx55550z1;
wire nx28963z11;
wire nx28963z10;
wire nx28963z4;
wire nx54553z1;
wire nx28963z5;
wire nx28963z16;
wire nx56547z1;
wire nx28963z15;
wire nx57544z1;
wire nx28963z20;
wire nx28963z21;
wire nx28963z23;
wire nx53406z1;
wire nx28963z24;
wire nx28963z30;
wire nx28963z33;
wire nx28963z38;
wire nx28963z39;
wire nx28963z37;
wire nx28963z32;
wire nx28963z27;
wire nx28963z22;
wire nx28963z17;
wire nx28963z12;
wire nx28963z7;
wire not_rtlc0_copy_n346;
wire nx54403z1;
wire nx28963z29;
wire nx28963z28;
wire nx28963z40;
wire nx28963z48;
wire nx28963z47;
wire nx28963z46;
wire nx28963z45;
wire nx28963z44;
wire nx28963z43;
wire nx28963z42;
wire nx28963z2;
wire nx28963z1;
wire nx4840z10;
wire nx4840z9;
wire nx4840z8;
wire nx4840z7;
wire nx4840z6;
wire nx4840z5;
wire nx4840z4;
wire nx4840z3;
wire nx4840z2;
wire nx4840z1;
wire r5_magnitude_a8_a_afeeder_combout;
wire nx34503z1;
wire r7_11_;
wire add5_10_;
wire r5_magnitude_a6_a_afeeder_combout;
wire r7_9_;
wire r5_magnitude_a5_a_afeeder_combout;
wire r7_8_;
wire add5_7_;
wire add5_6_;
wire add5_5_;
wire r5_magnitude_a1_a_afeeder_combout;
wire r7_4_;
wire r5_magnitude_a0_a_afeeder_combout;
wire r7_3_;
wire nx40727z24;
wire nx40727z23;
wire nx40727z22;
wire nx40727z21;
wire nx40727z20;
wire nx40727z19;
wire nx40727z18;
wire nx40727z17;
wire nx40727z16;
wire nx40727z15;
wire nx40727z2;
wire nx40727z1;
wire reg_r_edge_aregout;
wire nx17193z1;
wire r5_direction_a0_a_afeeder_combout;
wire ix63886z52923_acombout;
wire nx16196z1;
wire r5_direction_a1_a_afeeder_combout;
wire ix62889z52923_acombout;
wire r5_direction_a2_a_afeeder_combout;
wire ix61892z52923_acombout;
wire nx46359z1;
wire nx47356z1;
wire nx45944z1;
wire reg_r_mode_0__aregout;
wire i_reset_a_wirecell_combout;
wire reg_r_mode_1__aregout;
wire modgen_counter_pixel_counter_anx23078z13;
wire modgen_counter_pixel_counter_ainc_d_10_;
wire modgen_counter_pixel_counter_anx23078z11;
wire modgen_counter_pixel_counter_ainc_d_11_;
wire modgen_counter_pixel_counter_anx23078z9;
wire modgen_counter_pixel_counter_ainc_d_12_;
wire modgen_counter_pixel_counter_anx23078z7;
wire modgen_counter_pixel_counter_ainc_d_13_;
wire modgen_counter_pixel_counter_anx23078z5;
wire modgen_counter_pixel_counter_ainc_d_14_;
wire modgen_counter_pixel_counter_anx23078z3;
wire modgen_counter_pixel_counter_ainc_d_15_;
wire [9:0] add2_magnitude;
wire [7:0] conv_table_0__1_;
wire [7:0] conv_table_1__2_;
wire [7:0] i1_magnitude;
wire [1:0] last_pixel_complete;
wire [10:0] r1;
wire [9:0] r3_magnitude;
wire [12:0] r6;
wire [2:0] valid_wren;
wire [7:0] mem_0_aix64056z29482_aauto_generated_aq_a;
wire [7:0] mem_aix64056z29481_aauto_generated_aq_a;
wire [8:0] add1;
wire [10:0] add3;
wire [7:0] conv_table_0__0_;
wire [7:0] conv_table_0__2_;
wire [7:0] conv_table_1__1_;
wire [7:0] conv_table_2__0_;
wire [7:0] conv_table_2__2_;
wire [7:0] i2_magnitude;
wire [7:0] i4;
wire [7:0] max1_magnitude;
wire [9:0] max2_magnitude;
wire [2:0] r2_direction;
wire [2:0] r3_direction;
wire [10:1] r4;
wire [9:0] r5_magnitude;
wire [2:1] row_index;
wire [2:0] valid_bits_stage2;
wire [7:0] i_pixel_acombout;
wire [16:0] modgen_counter_pixel_counter_aq;
wire [12:0] add4;
wire [7:0] conv_table_1__0_;
wire [7:0] conv_table_2__1_;
wire [7:0] i3;
wire [2:0] max2_direction;
wire [9:0] r2_magnitude;
wire [2:0] r5_direction;
wire [3:0] valid_bits_stage1;
wire [7:0] mem_1_aix64056z29483_aauto_generated_aq_a;

wire [7:0] mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign mem_aix64056z29481_aauto_generated_aq_a[0] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign mem_aix64056z29481_aauto_generated_aq_a[1] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign mem_aix64056z29481_aauto_generated_aq_a[2] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign mem_aix64056z29481_aauto_generated_aq_a[3] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign mem_aix64056z29481_aauto_generated_aq_a[4] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign mem_aix64056z29481_aauto_generated_aq_a[5] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign mem_aix64056z29481_aauto_generated_aq_a[6] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign mem_aix64056z29481_aauto_generated_aq_a[7] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign mem_1_aix64056z29483_aauto_generated_aq_a[0] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign mem_1_aix64056z29483_aauto_generated_aq_a[1] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign mem_1_aix64056z29483_aauto_generated_aq_a[2] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign mem_1_aix64056z29483_aauto_generated_aq_a[3] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign mem_1_aix64056z29483_aauto_generated_aq_a[4] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign mem_1_aix64056z29483_aauto_generated_aq_a[5] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign mem_1_aix64056z29483_aauto_generated_aq_a[6] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign mem_1_aix64056z29483_aauto_generated_aq_a[7] = mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign mem_0_aix64056z29482_aauto_generated_aq_a[0] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign mem_0_aix64056z29482_aauto_generated_aq_a[1] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign mem_0_aix64056z29482_aauto_generated_aq_a[2] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign mem_0_aix64056z29482_aauto_generated_aq_a[3] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign mem_0_aix64056z29482_aauto_generated_aq_a[4] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign mem_0_aix64056z29482_aauto_generated_aq_a[5] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign mem_0_aix64056z29482_aauto_generated_aq_a[6] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign mem_0_aix64056z29482_aauto_generated_aq_a[7] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// Location: LCFF_X28_Y23_N17
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_16_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_16_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[16]));

// Location: LCCOMB_X28_Y23_N20
cycloneii_lcell_comb ix22195z52929(
// Equation(s):
// nx22195z6 = (modgen_counter_pixel_counter_aq[13]) # ((modgen_counter_pixel_counter_aq[12]) # ((modgen_counter_pixel_counter_aq[10]) # (modgen_counter_pixel_counter_aq[11])))

	.dataa(modgen_counter_pixel_counter_aq[13]),
	.datab(modgen_counter_pixel_counter_aq[12]),
	.datac(modgen_counter_pixel_counter_aq[10]),
	.datad(modgen_counter_pixel_counter_aq[11]),
	.cin(gnd),
	.combout(nx22195z6),
	.cout());
// synopsys translate_off
defparam ix22195z52929.lut_mask = 16'hFFFE;
defparam ix22195z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N10
cycloneii_lcell_comb ix22195z52928(
// Equation(s):
// nx22195z5 = (modgen_counter_pixel_counter_aq[15]) # ((modgen_counter_pixel_counter_aq[14]) # ((modgen_counter_pixel_counter_aq[16]) # (nx22195z6)))

	.dataa(modgen_counter_pixel_counter_aq[15]),
	.datab(modgen_counter_pixel_counter_aq[14]),
	.datac(modgen_counter_pixel_counter_aq[16]),
	.datad(nx22195z6),
	.cin(gnd),
	.combout(nx22195z5),
	.cout());
// synopsys translate_off
defparam ix22195z52928.lut_mask = 16'hFFFE;
defparam ix22195z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y22_N19
cycloneii_lcell_ff reg_r6_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[9]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[9]));

// Location: LCFF_X29_Y22_N15
cycloneii_lcell_ff reg_r6_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[7]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[7]));

// Location: LCFF_X29_Y22_N9
cycloneii_lcell_ff reg_r6_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[4]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[4]));

// Location: LCFF_X29_Y22_N5
cycloneii_lcell_ff reg_r6_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[2]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[2]));

// Location: LCFF_X29_Y23_N7
cycloneii_lcell_ff reg_r6_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(add4[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[0]));

// Location: LCCOMB_X29_Y23_N10
cycloneii_lcell_comb add5_add13_3_ix40727z52936(
// Equation(s):
// add5_3_ = (r6[3] & ((GND) # (!nx40727z13))) # (!r6[3] & (nx40727z13 $ (GND)))
// nx40727z12 = CARRY((r6[3]) # (!nx40727z13))

	.dataa(vcc),
	.datab(r6[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z13),
	.combout(add5_3_),
	.cout(nx40727z12));
// synopsys translate_off
defparam add5_add13_3_ix40727z52936.lut_mask = 16'h3CCF;
defparam add5_add13_3_ix40727z52936.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N12
cycloneii_lcell_comb add5_add13_3_ix40727z52935(
// Equation(s):
// add5_4_ = (r6[4] & (nx40727z12 & VCC)) # (!r6[4] & (!nx40727z12))
// nx40727z11 = CARRY((!r6[4] & !nx40727z12))

	.dataa(r6[4]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z12),
	.combout(add5_4_),
	.cout(nx40727z11));
// synopsys translate_off
defparam add5_add13_3_ix40727z52935.lut_mask = 16'hA505;
defparam add5_add13_3_ix40727z52935.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N20
cycloneii_lcell_comb add5_add13_3_ix40727z52931(
// Equation(s):
// add5_8_ = (r6[8] & (nx40727z8 & VCC)) # (!r6[8] & (!nx40727z8))
// nx40727z7 = CARRY((!r6[8] & !nx40727z8))

	.dataa(vcc),
	.datab(r6[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z8),
	.combout(add5_8_),
	.cout(nx40727z7));
// synopsys translate_off
defparam add5_add13_3_ix40727z52931.lut_mask = 16'hC303;
defparam add5_add13_3_ix40727z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N22
cycloneii_lcell_comb add5_add13_3_ix40727z52930(
// Equation(s):
// add5_9_ = (r6[9] & (nx40727z7 $ (GND))) # (!r6[9] & (!nx40727z7 & VCC))
// nx40727z6 = CARRY((r6[9] & !nx40727z7))

	.dataa(r6[9]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z7),
	.combout(add5_9_),
	.cout(nx40727z6));
// synopsys translate_off
defparam add5_add13_3_ix40727z52930.lut_mask = 16'hA50A;
defparam add5_add13_3_ix40727z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N26
cycloneii_lcell_comb add5_add13_3_ix40727z52928(
// Equation(s):
// add5_11_ = (r6[11] & (nx40727z5 $ (GND))) # (!r6[11] & (!nx40727z5 & VCC))
// nx40727z4 = CARRY((r6[11] & !nx40727z5))

	.dataa(vcc),
	.datab(r6[11]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z5),
	.combout(add5_11_),
	.cout(nx40727z4));
// synopsys translate_off
defparam add5_add13_3_ix40727z52928.lut_mask = 16'hC30C;
defparam add5_add13_3_ix40727z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N28
cycloneii_lcell_comb add5_add13_3_ix40727z52927(
// Equation(s):
// add5_12_ = (r6[12] & (!nx40727z4)) # (!r6[12] & ((nx40727z4) # (GND)))
// add5_13_ = CARRY((!nx40727z4) # (!r6[12]))

	.dataa(vcc),
	.datab(r6[12]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z4),
	.combout(add5_12_),
	.cout(add5_13_));
// synopsys translate_off
defparam add5_add13_3_ix40727z52927.lut_mask = 16'h3C3F;
defparam add5_add13_3_ix40727z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N30
cycloneii_lcell_comb ix40727z52925(
// Equation(s):
// nx40727z3 = !add5_13_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add5_13_),
	.combout(nx40727z3),
	.cout());
// synopsys translate_off
defparam ix40727z52925.lut_mask = 16'h0F0F;
defparam ix40727z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y23_N21
cycloneii_lcell_ff reg_r7_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[9]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_12_));

// Location: LCFF_X30_Y23_N17
cycloneii_lcell_ff reg_r7_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_10_));

// Location: LCFF_X30_Y23_N11
cycloneii_lcell_ff reg_r7_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_7_));

// Location: LCFF_X30_Y23_N9
cycloneii_lcell_ff reg_r7_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_6_));

// Location: LCFF_X30_Y23_N7
cycloneii_lcell_ff reg_r7_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_5_));

// Location: LCFF_X33_Y23_N21
cycloneii_lcell_ff reg_r2_magnitude_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[9]),
	.sdata(r3_magnitude[9]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[9]));

// Location: LCFF_X35_Y23_N23
cycloneii_lcell_ff reg_r2_magnitude_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[2]),
	.sdata(r3_magnitude[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[2]));

// Location: LCCOMB_X28_Y23_N14
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52925(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_15_ = (modgen_counter_pixel_counter_aq[15] & (!modgen_counter_pixel_counter_anx23078z3)) # (!modgen_counter_pixel_counter_aq[15] & ((modgen_counter_pixel_counter_anx23078z3) # (GND)))
// modgen_counter_pixel_counter_anx23078z1 = CARRY((!modgen_counter_pixel_counter_anx23078z3) # (!modgen_counter_pixel_counter_aq[15]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[15]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z3),
	.combout(modgen_counter_pixel_counter_ainc_d_15_),
	.cout(modgen_counter_pixel_counter_anx23078z1));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52925.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y23_N16
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52923(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_16_ = modgen_counter_pixel_counter_aq[16] $ (!modgen_counter_pixel_counter_anx23078z1)

	.dataa(modgen_counter_pixel_counter_aq[16]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z1),
	.combout(modgen_counter_pixel_counter_ainc_d_16_),
	.cout());
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52923.lut_mask = 16'hA5A5;
defparam modgen_counter_pixel_counter_aix23078z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y22_N9
cycloneii_lcell_ff reg_r4_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[9]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[9]));

// Location: LCFF_X30_Y22_N3
cycloneii_lcell_ff reg_r4_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a7_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[7]));

// Location: LCFF_X30_Y22_N15
cycloneii_lcell_ff reg_r4_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a5_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[5]));

// Location: LCFF_X30_Y22_N27
cycloneii_lcell_ff reg_r4_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a3_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[3]));

// Location: LCCOMB_X29_Y22_N4
cycloneii_lcell_comb add4_add11_2_ix21429z52933(
// Equation(s):
// add4[2] = (r4[1] & ((r4[2] & (nx21429z11 & VCC)) # (!r4[2] & (!nx21429z11)))) # (!r4[1] & ((r4[2] & (!nx21429z11)) # (!r4[2] & ((nx21429z11) # (GND)))))
// nx21429z10 = CARRY((r4[1] & (!r4[2] & !nx21429z11)) # (!r4[1] & ((!nx21429z11) # (!r4[2]))))

	.dataa(r4[1]),
	.datab(r4[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z11),
	.combout(add4[2]),
	.cout(nx21429z10));
// synopsys translate_off
defparam add4_add11_2_ix21429z52933.lut_mask = 16'h9617;
defparam add4_add11_2_ix21429z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N8
cycloneii_lcell_comb add4_add11_2_ix21429z52931(
// Equation(s):
// add4[4] = (r4[3] & ((r4[4] & (nx21429z9 & VCC)) # (!r4[4] & (!nx21429z9)))) # (!r4[3] & ((r4[4] & (!nx21429z9)) # (!r4[4] & ((nx21429z9) # (GND)))))
// nx21429z8 = CARRY((r4[3] & (!r4[4] & !nx21429z9)) # (!r4[3] & ((!nx21429z9) # (!r4[4]))))

	.dataa(r4[3]),
	.datab(r4[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z9),
	.combout(add4[4]),
	.cout(nx21429z8));
// synopsys translate_off
defparam add4_add11_2_ix21429z52931.lut_mask = 16'h9617;
defparam add4_add11_2_ix21429z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N14
cycloneii_lcell_comb add4_add11_2_ix21429z52928(
// Equation(s):
// add4[7] = ((r4[7] $ (r4[6] $ (!nx21429z6)))) # (GND)
// nx21429z5 = CARRY((r4[7] & ((r4[6]) # (!nx21429z6))) # (!r4[7] & (r4[6] & !nx21429z6)))

	.dataa(r4[7]),
	.datab(r4[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z6),
	.combout(add4[7]),
	.cout(nx21429z5));
// synopsys translate_off
defparam add4_add11_2_ix21429z52928.lut_mask = 16'h698E;
defparam add4_add11_2_ix21429z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N18
cycloneii_lcell_comb add4_add11_2_ix21429z52926(
// Equation(s):
// add4[9] = ((r4[9] $ (r4[8] $ (!nx21429z4)))) # (GND)
// nx21429z3 = CARRY((r4[9] & ((r4[8]) # (!nx21429z4))) # (!r4[9] & (r4[8] & !nx21429z4)))

	.dataa(r4[9]),
	.datab(r4[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z4),
	.combout(add4[9]),
	.cout(nx21429z3));
// synopsys translate_off
defparam add4_add11_2_ix21429z52926.lut_mask = 16'h698E;
defparam add4_add11_2_ix21429z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y23_N15
cycloneii_lcell_ff reg_r5_magnitude_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a9_a_afeeder_combout),
	.sdata(r3_magnitude[9]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[9]));

// Location: LCFF_X34_Y23_N11
cycloneii_lcell_ff reg_r5_magnitude_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a7_a_afeeder_combout),
	.sdata(r3_magnitude[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[7]));

// Location: LCFF_X34_Y23_N25
cycloneii_lcell_ff reg_r5_magnitude_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a4_a_afeeder_combout),
	.sdata(r3_magnitude[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[4]));

// Location: LCFF_X34_Y23_N19
cycloneii_lcell_ff reg_r5_magnitude_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a3_a_afeeder_combout),
	.sdata(r3_magnitude[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[3]));

// Location: LCFF_X34_Y23_N21
cycloneii_lcell_ff reg_r5_magnitude_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a2_a_afeeder_combout),
	.sdata(r3_magnitude[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[2]));

// Location: LCCOMB_X33_Y22_N10
cycloneii_lcell_comb ix28963z52928(
// Equation(s):
// nx28963z3 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_2__2_[7] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_2__2_[7]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z3),
	.cout());
// synopsys translate_off
defparam ix28963z52928.lut_mask = 16'h0010;
defparam ix28963z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N16
cycloneii_lcell_comb ix28963z52932(
// Equation(s):
// nx28963z6 = (valid_bits_stage1[0] & (((conv_table_1__0_[7])))) # (!valid_bits_stage1[0] & (conv_table_2__1_[7] & ((valid_bits_stage1[1]))))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_2__1_[7]),
	.datac(conv_table_1__0_[7]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z6),
	.cout());
// synopsys translate_off
defparam ix28963z52932.lut_mask = 16'hE4A0;
defparam ix28963z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N24
cycloneii_lcell_comb ix28963z52943(
// Equation(s):
// nx28963z13 = (!valid_bits_stage1[0] & (!valid_bits_stage1[2] & (conv_table_2__2_[5] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[0]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_2__2_[5]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z13),
	.cout());
// synopsys translate_off
defparam ix28963z52943.lut_mask = 16'h0010;
defparam ix28963z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y21_N25
cycloneii_lcell_ff reg_conv_table_0__2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[5]));

// Location: LCCOMB_X32_Y21_N4
cycloneii_lcell_comb ix28963z52944(
// Equation(s):
// nx28963z14 = (valid_bits_stage1[0] & (conv_table_0__2_[5])) # (!valid_bits_stage1[0] & (((conv_table_0__0_[5] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__2_[5]),
	.datab(conv_table_0__0_[5]),
	.datac(valid_bits_stage1[1]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z14),
	.cout());
// synopsys translate_off
defparam ix28963z52944.lut_mask = 16'hAAC0;
defparam ix28963z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N30
cycloneii_lcell_comb ix28963z52942(
// Equation(s):
// i1_magnitude[5] = (nx28963z13) # ((nx28963z14) # ((nx42053z2 & conv_table_2__0_[5])))

	.dataa(nx28963z13),
	.datab(nx42053z2),
	.datac(conv_table_2__0_[5]),
	.datad(nx28963z14),
	.cin(gnd),
	.combout(i1_magnitude[5]),
	.cout());
// synopsys translate_off
defparam ix28963z52942.lut_mask = 16'hFFEA;
defparam ix28963z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N5
cycloneii_lcell_ff reg_conv_table_2__0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx52409z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[4]));

// Location: LCCOMB_X33_Y21_N24
cycloneii_lcell_comb ix28963z52950(
// Equation(s):
// nx28963z18 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_2__2_[4] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_2__2_[4]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z18),
	.cout());
// synopsys translate_off
defparam ix28963z52950.lut_mask = 16'h0010;
defparam ix28963z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y21_N5
cycloneii_lcell_ff reg_conv_table_0__0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[4]));

// Location: LCCOMB_X33_Y21_N4
cycloneii_lcell_comb ix28963z52951(
// Equation(s):
// nx28963z19 = (valid_bits_stage1[0] & (conv_table_0__2_[4])) # (!valid_bits_stage1[0] & (((conv_table_0__0_[4] & valid_bits_stage1[1]))))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_0__2_[4]),
	.datac(conv_table_0__0_[4]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z19),
	.cout());
// synopsys translate_off
defparam ix28963z52951.lut_mask = 16'hD888;
defparam ix28963z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N22
cycloneii_lcell_comb ix28963z52949(
// Equation(s):
// i1_magnitude[4] = (nx28963z18) # ((nx28963z19) # ((conv_table_2__0_[4] & nx42053z2)))

	.dataa(nx28963z18),
	.datab(conv_table_2__0_[4]),
	.datac(nx28963z19),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i1_magnitude[4]),
	.cout());
// synopsys translate_off
defparam ix28963z52949.lut_mask = 16'hFEFA;
defparam ix28963z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y21_N15
cycloneii_lcell_ff reg_conv_table_1__0__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[4]));

// Location: LCFF_X31_Y21_N19
cycloneii_lcell_ff reg_conv_table_0__2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[3]));

// Location: LCFF_X31_Y21_N15
cycloneii_lcell_ff reg_conv_table_0__1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[3]));

// Location: LCCOMB_X31_Y21_N24
cycloneii_lcell_comb ix28963z52960(
// Equation(s):
// nx28963z25 = (conv_table_0__1_[3] & (!valid_bits_stage1[0] & (!valid_bits_stage1[2] & !valid_bits_stage1[1])))

	.dataa(conv_table_0__1_[3]),
	.datab(valid_bits_stage1[0]),
	.datac(valid_bits_stage1[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z25),
	.cout());
// synopsys translate_off
defparam ix28963z52960.lut_mask = 16'h0002;
defparam ix28963z52960.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N2
cycloneii_lcell_comb ix28963z52961(
// Equation(s):
// nx28963z26 = (valid_bits_stage1[0] & (conv_table_1__0_[3])) # (!valid_bits_stage1[0] & (((conv_table_2__1_[3] & valid_bits_stage1[1]))))

	.dataa(conv_table_1__0_[3]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_2__1_[3]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z26),
	.cout());
// synopsys translate_off
defparam ix28963z52961.lut_mask = 16'hB888;
defparam ix28963z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N12
cycloneii_lcell_comb ix28963z52959(
// Equation(s):
// i2_magnitude[3] = (nx28963z26) # ((nx28963z25) # ((conv_table_1__2_[3] & nx42053z2)))

	.dataa(conv_table_1__2_[3]),
	.datab(nx42053z2),
	.datac(nx28963z26),
	.datad(nx28963z25),
	.cin(gnd),
	.combout(i2_magnitude[3]),
	.cout());
// synopsys translate_off
defparam ix28963z52959.lut_mask = 16'hFFF8;
defparam ix28963z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N12
cycloneii_lcell_comb ix28963z52968(
// Equation(s):
// nx28963z31 = (valid_bits_stage1[0] & (((conv_table_1__0_[2])))) # (!valid_bits_stage1[0] & (conv_table_2__1_[2] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__1_[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__0_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z31),
	.cout());
// synopsys translate_off
defparam ix28963z52968.lut_mask = 16'hE2C0;
defparam ix28963z52968.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y23_N11
cycloneii_lcell_ff reg_conv_table_0__0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[1]));

// Location: LCFF_X31_Y23_N29
cycloneii_lcell_ff reg_conv_table_0__2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[1]));

// Location: LCCOMB_X31_Y23_N10
cycloneii_lcell_comb ix28963z52972(
// Equation(s):
// nx28963z34 = (valid_bits_stage1[0] & (conv_table_0__2_[1])) # (!valid_bits_stage1[0] & (((conv_table_0__0_[1] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__2_[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__0_[1]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z34),
	.cout());
// synopsys translate_off
defparam ix28963z52972.lut_mask = 16'hB888;
defparam ix28963z52972.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y23_N25
cycloneii_lcell_ff reg_conv_table_0__1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[1]));

// Location: LCCOMB_X31_Y23_N26
cycloneii_lcell_comb ix28963z52974(
// Equation(s):
// nx28963z35 = (conv_table_0__1_[1] & (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & !valid_bits_stage1[2])))

	.dataa(conv_table_0__1_[1]),
	.datab(valid_bits_stage1[1]),
	.datac(valid_bits_stage1[0]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx28963z35),
	.cout());
// synopsys translate_off
defparam ix28963z52974.lut_mask = 16'h0002;
defparam ix28963z52974.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N11
cycloneii_lcell_ff reg_conv_table_2__1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60535z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[1]));

// Location: LCCOMB_X31_Y23_N8
cycloneii_lcell_comb ix28963z52975(
// Equation(s):
// nx28963z36 = (valid_bits_stage1[0] & (((conv_table_1__0_[1])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_2__1_[1]))))

	.dataa(valid_bits_stage1[1]),
	.datab(conv_table_1__0_[1]),
	.datac(valid_bits_stage1[0]),
	.datad(conv_table_2__1_[1]),
	.cin(gnd),
	.combout(nx28963z36),
	.cout());
// synopsys translate_off
defparam ix28963z52975.lut_mask = 16'hCAC0;
defparam ix28963z52975.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N6
cycloneii_lcell_comb ix28963z52973(
// Equation(s):
// i2_magnitude[1] = (nx28963z35) # ((nx28963z36) # ((conv_table_1__2_[1] & nx42053z2)))

	.dataa(conv_table_1__2_[1]),
	.datab(nx28963z35),
	.datac(nx28963z36),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i2_magnitude[1]),
	.cout());
// synopsys translate_off
defparam ix28963z52973.lut_mask = 16'hFEFC;
defparam ix28963z52973.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N12
cycloneii_lcell_comb ix28963z52982(
// Equation(s):
// nx28963z41 = (valid_bits_stage1[0] & (((conv_table_0__2_[0])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_0__0_[0]))))

	.dataa(valid_bits_stage1[1]),
	.datab(conv_table_0__2_[0]),
	.datac(conv_table_0__0_[0]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z41),
	.cout());
// synopsys translate_off
defparam ix28963z52982.lut_mask = 16'hCCA0;
defparam ix28963z52982.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N20
cycloneii_lcell_comb ix4840z52923(
// Equation(s):
// max2_magnitude[9] = (nx4840z1 & (r3_magnitude[9])) # (!nx4840z1 & ((r2_magnitude[9])))

	.dataa(vcc),
	.datab(r3_magnitude[9]),
	.datac(r2_magnitude[9]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[9]),
	.cout());
// synopsys translate_off
defparam ix4840z52923.lut_mask = 16'hCCF0;
defparam ix4840z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N18
cycloneii_lcell_comb ix42053z52927(
// Equation(s):
// nx42053z3 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_0__2_[7] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_0__2_[7]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z3),
	.cout());
// synopsys translate_off
defparam ix42053z52927.lut_mask = 16'h0010;
defparam ix42053z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N2
cycloneii_lcell_comb ix42053z52928(
// Equation(s):
// nx42053z4 = (valid_bits_stage1[0] & (((conv_table_0__1_[7])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_2__0_[7]))))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[7]),
	.datad(conv_table_2__0_[7]),
	.cin(gnd),
	.combout(nx42053z4),
	.cout());
// synopsys translate_off
defparam ix42053z52928.lut_mask = 16'hE2C0;
defparam ix42053z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y22_N8
cycloneii_lcell_comb ix42053z52925(
// Equation(s):
// i4[7] = (nx42053z3) # ((nx42053z4) # ((conv_table_2__2_[7] & nx42053z2)))

	.dataa(conv_table_2__2_[7]),
	.datab(nx42053z3),
	.datac(nx42053z2),
	.datad(nx42053z4),
	.cin(gnd),
	.combout(i4[7]),
	.cout());
// synopsys translate_off
defparam ix42053z52925.lut_mask = 16'hFFEC;
defparam ix42053z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N22
cycloneii_lcell_comb ix42053z52934(
// Equation(s):
// nx42053z8 = (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & (conv_table_0__2_[6] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__2_[6]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx42053z8),
	.cout());
// synopsys translate_off
defparam ix42053z52934.lut_mask = 16'h0010;
defparam ix42053z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N6
cycloneii_lcell_comb ix42053z52935(
// Equation(s):
// nx42053z9 = (valid_bits_stage1[0] & (((conv_table_0__1_[6])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_2__0_[6]))))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[6]),
	.datad(conv_table_2__0_[6]),
	.cin(gnd),
	.combout(nx42053z9),
	.cout());
// synopsys translate_off
defparam ix42053z52935.lut_mask = 16'hE2C0;
defparam ix42053z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N10
cycloneii_lcell_comb ix42053z52933(
// Equation(s):
// i4[6] = (nx42053z9) # ((nx42053z8) # ((nx42053z2 & conv_table_2__2_[6])))

	.dataa(nx42053z9),
	.datab(nx42053z2),
	.datac(conv_table_2__2_[6]),
	.datad(nx42053z8),
	.cin(gnd),
	.combout(i4[6]),
	.cout());
// synopsys translate_off
defparam ix42053z52933.lut_mask = 16'hFFEA;
defparam ix42053z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N24
cycloneii_lcell_comb ix42053z52941(
// Equation(s):
// nx42053z13 = (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & (conv_table_0__2_[5] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__2_[5]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx42053z13),
	.cout());
// synopsys translate_off
defparam ix42053z52941.lut_mask = 16'h0010;
defparam ix42053z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N30
cycloneii_lcell_comb ix42053z52942(
// Equation(s):
// nx42053z14 = (valid_bits_stage1[0] & (((conv_table_0__1_[5])))) # (!valid_bits_stage1[0] & (conv_table_2__0_[5] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__0_[5]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[5]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z14),
	.cout());
// synopsys translate_off
defparam ix42053z52942.lut_mask = 16'hE2C0;
defparam ix42053z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N28
cycloneii_lcell_comb ix42053z52940(
// Equation(s):
// i4[5] = (nx42053z14) # ((nx42053z13) # ((conv_table_2__2_[5] & nx42053z2)))

	.dataa(conv_table_2__2_[5]),
	.datab(nx42053z14),
	.datac(nx42053z2),
	.datad(nx42053z13),
	.cin(gnd),
	.combout(i4[5]),
	.cout());
// synopsys translate_off
defparam ix42053z52940.lut_mask = 16'hFFEC;
defparam ix42053z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N10
cycloneii_lcell_comb ix42053z52949(
// Equation(s):
// nx42053z19 = (valid_bits_stage1[0] & (((conv_table_0__1_[4])))) # (!valid_bits_stage1[0] & (conv_table_2__0_[4] & (valid_bits_stage1[1])))

	.dataa(conv_table_2__0_[4]),
	.datab(valid_bits_stage1[1]),
	.datac(conv_table_0__1_[4]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z19),
	.cout());
// synopsys translate_off
defparam ix42053z52949.lut_mask = 16'hF088;
defparam ix42053z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N26
cycloneii_lcell_comb ix42053z52951(
// Equation(s):
// nx42053z20 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_1__2_[4] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_1__2_[4]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z20),
	.cout());
// synopsys translate_off
defparam ix42053z52951.lut_mask = 16'h0010;
defparam ix42053z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N14
cycloneii_lcell_comb ix42053z52952(
// Equation(s):
// nx42053z21 = (valid_bits_stage1[0] & (conv_table_0__0_[4])) # (!valid_bits_stage1[0] & (((conv_table_1__0_[4] & valid_bits_stage1[1]))))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_0__0_[4]),
	.datac(conv_table_1__0_[4]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z21),
	.cout());
// synopsys translate_off
defparam ix42053z52952.lut_mask = 16'hD888;
defparam ix42053z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N6
cycloneii_lcell_comb ix42053z52950(
// Equation(s):
// i3[4] = (nx42053z20) # ((nx42053z21) # ((conv_table_2__1_[4] & nx42053z2)))

	.dataa(conv_table_2__1_[4]),
	.datab(nx42053z20),
	.datac(nx42053z21),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i3[4]),
	.cout());
// synopsys translate_off
defparam ix42053z52950.lut_mask = 16'hFEFC;
defparam ix42053z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N18
cycloneii_lcell_comb ix42053z52955(
// Equation(s):
// nx42053z23 = (!valid_bits_stage1[2] & (!valid_bits_stage1[1] & (conv_table_0__2_[3] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[1]),
	.datac(conv_table_0__2_[3]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z23),
	.cout());
// synopsys translate_off
defparam ix42053z52955.lut_mask = 16'h0010;
defparam ix42053z52955.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N14
cycloneii_lcell_comb ix42053z52956(
// Equation(s):
// nx42053z24 = (valid_bits_stage1[0] & (((conv_table_0__1_[3])))) # (!valid_bits_stage1[0] & (conv_table_2__0_[3] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__0_[3]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[3]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z24),
	.cout());
// synopsys translate_off
defparam ix42053z52956.lut_mask = 16'hE2C0;
defparam ix42053z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N16
cycloneii_lcell_comb ix42053z52954(
// Equation(s):
// i4[3] = (nx42053z24) # ((nx42053z23) # ((conv_table_2__2_[3] & nx42053z2)))

	.dataa(conv_table_2__2_[3]),
	.datab(nx42053z24),
	.datac(nx42053z2),
	.datad(nx42053z23),
	.cin(gnd),
	.combout(i4[3]),
	.cout());
// synopsys translate_off
defparam ix42053z52954.lut_mask = 16'hFFEC;
defparam ix42053z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N6
cycloneii_lcell_comb ix42053z52959(
// Equation(s):
// nx42053z26 = (valid_bits_stage1[0] & (conv_table_0__0_[3])) # (!valid_bits_stage1[0] & (((conv_table_1__0_[3] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__0_[3]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__0_[3]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z26),
	.cout());
// synopsys translate_off
defparam ix42053z52959.lut_mask = 16'hB888;
defparam ix42053z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N20
cycloneii_lcell_comb ix42053z52965(
// Equation(s):
// nx42053z30 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_1__2_[2] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_1__2_[2]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z30),
	.cout());
// synopsys translate_off
defparam ix42053z52965.lut_mask = 16'h0010;
defparam ix42053z52965.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N18
cycloneii_lcell_comb ix42053z52966(
// Equation(s):
// nx42053z31 = (valid_bits_stage1[0] & (((conv_table_0__0_[2])))) # (!valid_bits_stage1[0] & (conv_table_1__0_[2] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_1__0_[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__0_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z31),
	.cout());
// synopsys translate_off
defparam ix42053z52966.lut_mask = 16'hE2C0;
defparam ix42053z52966.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N28
cycloneii_lcell_comb ix42053z52964(
// Equation(s):
// i3[2] = (nx42053z31) # ((nx42053z30) # ((conv_table_2__1_[2] & nx42053z2)))

	.dataa(conv_table_2__1_[2]),
	.datab(nx42053z31),
	.datac(nx42053z30),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i3[2]),
	.cout());
// synopsys translate_off
defparam ix42053z52964.lut_mask = 16'hFEFC;
defparam ix42053z52964.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N28
cycloneii_lcell_comb ix42053z52969(
// Equation(s):
// nx42053z33 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_0__2_[1] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_0__2_[1]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z33),
	.cout());
// synopsys translate_off
defparam ix42053z52969.lut_mask = 16'h0010;
defparam ix42053z52969.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N24
cycloneii_lcell_comb ix42053z52970(
// Equation(s):
// nx42053z34 = (valid_bits_stage1[0] & (((conv_table_0__1_[1])))) # (!valid_bits_stage1[0] & (conv_table_2__0_[1] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__0_[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[1]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z34),
	.cout());
// synopsys translate_off
defparam ix42053z52970.lut_mask = 16'hE2C0;
defparam ix42053z52970.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N6
cycloneii_lcell_comb ix42053z52968(
// Equation(s):
// i4[1] = (nx42053z34) # ((nx42053z33) # ((conv_table_2__2_[1] & nx42053z2)))

	.dataa(conv_table_2__2_[1]),
	.datab(nx42053z2),
	.datac(nx42053z34),
	.datad(nx42053z33),
	.cin(gnd),
	.combout(i4[1]),
	.cout());
// synopsys translate_off
defparam ix42053z52968.lut_mask = 16'hFFF8;
defparam ix42053z52968.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N14
cycloneii_lcell_comb ix28963z52926(
// Equation(s):
// max1_magnitude[7] = (not_rtlc0_copy_n346 & (i2_magnitude[7])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[7])))

	.dataa(vcc),
	.datab(i2_magnitude[7]),
	.datac(i1_magnitude[7]),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[7]),
	.cout());
// synopsys translate_off
defparam ix28963z52926.lut_mask = 16'hCCF0;
defparam ix28963z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N4
cycloneii_lcell_comb ix28963z52988(
// Equation(s):
// max1_magnitude[4] = (not_rtlc0_copy_n346 & (i2_magnitude[4])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[4])))

	.dataa(vcc),
	.datab(i2_magnitude[4]),
	.datac(i1_magnitude[4]),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[4]),
	.cout());
// synopsys translate_off
defparam ix28963z52988.lut_mask = 16'hCCF0;
defparam ix28963z52988.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N6
cycloneii_lcell_comb ix28963z52990(
// Equation(s):
// max1_magnitude[3] = (not_rtlc0_copy_n346 & (i2_magnitude[3])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[3])))

	.dataa(i2_magnitude[3]),
	.datab(i1_magnitude[3]),
	.datac(vcc),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[3]),
	.cout());
// synopsys translate_off
defparam ix28963z52990.lut_mask = 16'hAACC;
defparam ix28963z52990.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y23_N22
cycloneii_lcell_comb ix63397z52923(
// Equation(s):
// max2_magnitude[2] = (nx4840z1 & (r3_magnitude[2])) # (!nx4840z1 & ((r2_magnitude[2])))

	.dataa(r3_magnitude[2]),
	.datab(vcc),
	.datac(r2_magnitude[2]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[2]),
	.cout());
// synopsys translate_off
defparam ix63397z52923.lut_mask = 16'hAAF0;
defparam ix63397z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y22_N31
cycloneii_lcell_ff reg_r1_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r1_a8_a_afeeder_combout),
	.sdata(nx42053z1),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[8]));

// Location: LCFF_X31_Y22_N17
cycloneii_lcell_ff reg_r1_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[6]),
	.sdata(add1[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[6]));

// Location: LCCOMB_X32_Y23_N12
cycloneii_lcell_comb ix22195z52930(
// Equation(s):
// nx22195z7 = (modgen_counter_pixel_counter_aq[15]) # ((modgen_counter_pixel_counter_aq[14]) # ((modgen_counter_pixel_counter_aq[9]) # (nx22195z6)))

	.dataa(modgen_counter_pixel_counter_aq[15]),
	.datab(modgen_counter_pixel_counter_aq[14]),
	.datac(modgen_counter_pixel_counter_aq[9]),
	.datad(nx22195z6),
	.cin(gnd),
	.combout(nx22195z7),
	.cout());
// synopsys translate_off
defparam ix22195z52930.lut_mask = 16'hFFFE;
defparam ix22195z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N4
cycloneii_lcell_comb ix52409z52923(
// Equation(s):
// nx52409z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[4]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[4]))

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[4]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx52409z1),
	.cout());
// synopsys translate_off
defparam ix52409z52923.lut_mask = 16'hEE22;
defparam ix52409z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y21_N9
cycloneii_lcell_ff reg_conv_table_1__1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[3]));

// Location: LCFF_X31_Y23_N1
cycloneii_lcell_ff reg_conv_table_1__1__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[1]));

// Location: LCCOMB_X30_Y21_N10
cycloneii_lcell_comb ix60535z52923(
// Equation(s):
// nx60535z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[1])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[1])))

	.dataa(row_index[1]),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx60535z1),
	.cout());
// synopsys translate_off
defparam ix60535z52923.lut_mask = 16'hDD88;
defparam ix60535z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X26_Y22
cycloneii_ram_block mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(valid_wren[0]),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_pixel_counter_aq[7],modgen_counter_pixel_counter_aq[6],modgen_counter_pixel_counter_aq[5],modgen_counter_pixel_counter_aq[4],modgen_counter_pixel_counter_aq[3],modgen_counter_pixel_counter_aq[2],modgen_counter_pixel_counter_aq[1],modgen_counter_pixel_counter_aq[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: M4K_X26_Y21
cycloneii_ram_block mem_0_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(valid_wren[1]),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_pixel_counter_aq[7],modgen_counter_pixel_counter_aq[6],modgen_counter_pixel_counter_aq[5],modgen_counter_pixel_counter_aq[4],modgen_counter_pixel_counter_aq[3],modgen_counter_pixel_counter_aq[2],modgen_counter_pixel_counter_aq[1],modgen_counter_pixel_counter_aq[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N6
cycloneii_lcell_comb ix60779z52925(
// Equation(s):
// nx60779z3 = (modgen_counter_pixel_counter_aq[6] & (modgen_counter_pixel_counter_aq[7] & (i_valid_acombout & modgen_counter_pixel_counter_aq[5])))

	.dataa(modgen_counter_pixel_counter_aq[6]),
	.datab(modgen_counter_pixel_counter_aq[7]),
	.datac(i_valid_acombout),
	.datad(modgen_counter_pixel_counter_aq[5]),
	.cin(gnd),
	.combout(nx60779z3),
	.cout());
// synopsys translate_off
defparam ix60779z52925.lut_mask = 16'h8000;
defparam ix60779z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N20
cycloneii_lcell_comb ix54114z52923(
// Equation(s):
// valid_wren[1] = (i_valid_acombout & row_index[1])

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(row_index[1]),
	.datad(vcc),
	.cin(gnd),
	.combout(valid_wren[1]),
	.cout());
// synopsys translate_off
defparam ix54114z52923.lut_mask = 16'hC0C0;
defparam ix54114z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N22
cycloneii_lcell_comb ix54113z52923(
// Equation(s):
// valid_wren[2] = (row_index[2] & i_valid_acombout)

	.dataa(vcc),
	.datab(row_index[2]),
	.datac(i_valid_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(valid_wren[2]),
	.cout());
// synopsys translate_off
defparam ix54113z52923.lut_mask = 16'hC0C0;
defparam ix54113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N8
cycloneii_lcell_comb ix51243z52923(
// Equation(s):
// valid_wren[0] = (i_valid_acombout & !nx59782z2)

	.dataa(vcc),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(nx59782z2),
	.cin(gnd),
	.combout(valid_wren[0]),
	.cout());
// synopsys translate_off
defparam ix51243z52923.lut_mask = 16'h00F0;
defparam ix51243z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y23_N14
cycloneii_lcell_comb r5_magnitude_a9_a_afeeder(
// Equation(s):
// r5_magnitude_a9_a_afeeder_combout = r2_magnitude[9]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[9]),
	.cin(gnd),
	.combout(r5_magnitude_a9_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a9_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a9_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y23_N10
cycloneii_lcell_comb r5_magnitude_a7_a_afeeder(
// Equation(s):
// r5_magnitude_a7_a_afeeder_combout = r2_magnitude[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[7]),
	.cin(gnd),
	.combout(r5_magnitude_a7_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a7_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a7_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y23_N24
cycloneii_lcell_comb r5_magnitude_a4_a_afeeder(
// Equation(s):
// r5_magnitude_a4_a_afeeder_combout = r2_magnitude[4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[4]),
	.cin(gnd),
	.combout(r5_magnitude_a4_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a4_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a4_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y23_N18
cycloneii_lcell_comb r5_magnitude_a3_a_afeeder(
// Equation(s):
// r5_magnitude_a3_a_afeeder_combout = r2_magnitude[3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[3]),
	.cin(gnd),
	.combout(r5_magnitude_a3_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a3_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a3_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y23_N20
cycloneii_lcell_comb r5_magnitude_a2_a_afeeder(
// Equation(s):
// r5_magnitude_a2_a_afeeder_combout = r2_magnitude[2]

	.dataa(r2_magnitude[2]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_magnitude_a2_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a2_a_afeeder.lut_mask = 16'hAAAA;
defparam r5_magnitude_a2_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N26
cycloneii_lcell_comb r4_a3_a_afeeder(
// Equation(s):
// r4_a3_a_afeeder_combout = add3[3]

	.dataa(vcc),
	.datab(vcc),
	.datac(add3[3]),
	.datad(vcc),
	.cin(gnd),
	.combout(r4_a3_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a3_a_afeeder.lut_mask = 16'hF0F0;
defparam r4_a3_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N14
cycloneii_lcell_comb r4_a5_a_afeeder(
// Equation(s):
// r4_a5_a_afeeder_combout = add3[5]

	.dataa(vcc),
	.datab(vcc),
	.datac(add3[5]),
	.datad(vcc),
	.cin(gnd),
	.combout(r4_a5_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a5_a_afeeder.lut_mask = 16'hF0F0;
defparam r4_a5_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N2
cycloneii_lcell_comb r4_a7_a_afeeder(
// Equation(s):
// r4_a7_a_afeeder_combout = add3[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3[7]),
	.cin(gnd),
	.combout(r4_a7_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a7_a_afeeder.lut_mask = 16'hFF00;
defparam r4_a7_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N30
cycloneii_lcell_comb r1_a8_a_afeeder(
// Equation(s):
// r1_a8_a_afeeder_combout = add3[8]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3[8]),
	.cin(gnd),
	.combout(r1_a8_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r1_a8_a_afeeder.lut_mask = 16'hFF00;
defparam r1_a8_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_clock_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_aI.input_async_reset = "none";
defparam i_clock_aI.input_power_up = "low";
defparam i_clock_aI.input_register_mode = "none";
defparam i_clock_aI.input_sync_reset = "none";
defparam i_clock_aI.oe_async_reset = "none";
defparam i_clock_aI.oe_power_up = "low";
defparam i_clock_aI.oe_register_mode = "none";
defparam i_clock_aI.oe_sync_reset = "none";
defparam i_clock_aI.operation_mode = "input";
defparam i_clock_aI.output_async_reset = "none";
defparam i_clock_aI.output_power_up = "low";
defparam i_clock_aI.output_register_mode = "none";
defparam i_clock_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X28_Y24_N16
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52940(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_0_ = modgen_counter_pixel_counter_aq[0] $ (VCC)
// modgen_counter_pixel_counter_anx23078z31 = CARRY(modgen_counter_pixel_counter_aq[0])

	.dataa(modgen_counter_pixel_counter_aq[0]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_pixel_counter_ainc_d_0_),
	.cout(modgen_counter_pixel_counter_anx23078z31));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52940.lut_mask = 16'h55AA;
defparam modgen_counter_pixel_counter_aix23078z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y24_N18
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52939(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_1_ = (modgen_counter_pixel_counter_aq[1] & (!modgen_counter_pixel_counter_anx23078z31)) # (!modgen_counter_pixel_counter_aq[1] & ((modgen_counter_pixel_counter_anx23078z31) # (GND)))
// modgen_counter_pixel_counter_anx23078z29 = CARRY((!modgen_counter_pixel_counter_anx23078z31) # (!modgen_counter_pixel_counter_aq[1]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z31),
	.combout(modgen_counter_pixel_counter_ainc_d_1_),
	.cout(modgen_counter_pixel_counter_anx23078z29));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52939.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52939.sum_lutc_input = "cin";
// synopsys translate_on

// Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_reset_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_aI.input_async_reset = "none";
defparam i_reset_aI.input_power_up = "low";
defparam i_reset_aI.input_register_mode = "none";
defparam i_reset_aI.input_sync_reset = "none";
defparam i_reset_aI.oe_async_reset = "none";
defparam i_reset_aI.oe_power_up = "low";
defparam i_reset_aI.oe_register_mode = "none";
defparam i_reset_aI.oe_sync_reset = "none";
defparam i_reset_aI.operation_mode = "input";
defparam i_reset_aI.output_async_reset = "none";
defparam i_reset_aI.output_power_up = "low";
defparam i_reset_aI.output_register_mode = "none";
defparam i_reset_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_valid_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_aI.input_async_reset = "none";
defparam i_valid_aI.input_power_up = "low";
defparam i_valid_aI.input_register_mode = "none";
defparam i_valid_aI.input_sync_reset = "none";
defparam i_valid_aI.oe_async_reset = "none";
defparam i_valid_aI.oe_power_up = "low";
defparam i_valid_aI.oe_register_mode = "none";
defparam i_valid_aI.oe_sync_reset = "none";
defparam i_valid_aI.operation_mode = "input";
defparam i_valid_aI.output_async_reset = "none";
defparam i_valid_aI.output_power_up = "low";
defparam i_valid_aI.output_register_mode = "none";
defparam i_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N2
cycloneii_lcell_comb modgen_counter_pixel_counter_aix22081z52923(
// Equation(s):
// modgen_counter_pixel_counter_anx22081z1 = (i_reset_acombout) # (i_valid_acombout)

	.dataa(i_reset_acombout),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_pixel_counter_anx22081z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix22081z52923.lut_mask = 16'hFAFA;
defparam modgen_counter_pixel_counter_aix22081z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y24_N19
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[1]));

// Location: LCCOMB_X28_Y24_N20
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52938(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_2_ = (modgen_counter_pixel_counter_aq[2] & (modgen_counter_pixel_counter_anx23078z29 $ (GND))) # (!modgen_counter_pixel_counter_aq[2] & (!modgen_counter_pixel_counter_anx23078z29 & VCC))
// modgen_counter_pixel_counter_anx23078z27 = CARRY((modgen_counter_pixel_counter_aq[2] & !modgen_counter_pixel_counter_anx23078z29))

	.dataa(modgen_counter_pixel_counter_aq[2]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z29),
	.combout(modgen_counter_pixel_counter_ainc_d_2_),
	.cout(modgen_counter_pixel_counter_anx23078z27));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52938.lut_mask = 16'hA50A;
defparam modgen_counter_pixel_counter_aix23078z52938.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y24_N22
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52937(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_3_ = (modgen_counter_pixel_counter_aq[3] & (!modgen_counter_pixel_counter_anx23078z27)) # (!modgen_counter_pixel_counter_aq[3] & ((modgen_counter_pixel_counter_anx23078z27) # (GND)))
// modgen_counter_pixel_counter_anx23078z25 = CARRY((!modgen_counter_pixel_counter_anx23078z27) # (!modgen_counter_pixel_counter_aq[3]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z27),
	.combout(modgen_counter_pixel_counter_ainc_d_3_),
	.cout(modgen_counter_pixel_counter_anx23078z25));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52937.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52937.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y24_N23
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[3]));

// Location: LCCOMB_X28_Y24_N24
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52936(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_4_ = (modgen_counter_pixel_counter_aq[4] & (modgen_counter_pixel_counter_anx23078z25 $ (GND))) # (!modgen_counter_pixel_counter_aq[4] & (!modgen_counter_pixel_counter_anx23078z25 & VCC))
// modgen_counter_pixel_counter_anx23078z23 = CARRY((modgen_counter_pixel_counter_aq[4] & !modgen_counter_pixel_counter_anx23078z25))

	.dataa(modgen_counter_pixel_counter_aq[4]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z25),
	.combout(modgen_counter_pixel_counter_ainc_d_4_),
	.cout(modgen_counter_pixel_counter_anx23078z23));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52936.lut_mask = 16'hA50A;
defparam modgen_counter_pixel_counter_aix23078z52936.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y24_N26
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52935(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_5_ = (modgen_counter_pixel_counter_aq[5] & (!modgen_counter_pixel_counter_anx23078z23)) # (!modgen_counter_pixel_counter_aq[5] & ((modgen_counter_pixel_counter_anx23078z23) # (GND)))
// modgen_counter_pixel_counter_anx23078z21 = CARRY((!modgen_counter_pixel_counter_anx23078z23) # (!modgen_counter_pixel_counter_aq[5]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z23),
	.combout(modgen_counter_pixel_counter_ainc_d_5_),
	.cout(modgen_counter_pixel_counter_anx23078z21));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52935.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52935.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y24_N27
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[5]));

// Location: LCFF_X28_Y24_N21
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[2]));

// Location: LCCOMB_X28_Y22_N26
cycloneii_lcell_comb ix22195z52927(
// Equation(s):
// nx22195z4 = (modgen_counter_pixel_counter_aq[4]) # ((modgen_counter_pixel_counter_aq[5]) # ((modgen_counter_pixel_counter_aq[3]) # (modgen_counter_pixel_counter_aq[2])))

	.dataa(modgen_counter_pixel_counter_aq[4]),
	.datab(modgen_counter_pixel_counter_aq[5]),
	.datac(modgen_counter_pixel_counter_aq[3]),
	.datad(modgen_counter_pixel_counter_aq[2]),
	.cin(gnd),
	.combout(nx22195z4),
	.cout());
// synopsys translate_off
defparam ix22195z52927.lut_mask = 16'hFFFE;
defparam ix22195z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y24_N28
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52934(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_6_ = (modgen_counter_pixel_counter_aq[6] & (modgen_counter_pixel_counter_anx23078z21 $ (GND))) # (!modgen_counter_pixel_counter_aq[6] & (!modgen_counter_pixel_counter_anx23078z21 & VCC))
// modgen_counter_pixel_counter_anx23078z19 = CARRY((modgen_counter_pixel_counter_aq[6] & !modgen_counter_pixel_counter_anx23078z21))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z21),
	.combout(modgen_counter_pixel_counter_ainc_d_6_),
	.cout(modgen_counter_pixel_counter_anx23078z19));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52934.lut_mask = 16'hC30C;
defparam modgen_counter_pixel_counter_aix23078z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y24_N29
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[6]));

// Location: LCCOMB_X28_Y24_N30
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52933(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_7_ = (modgen_counter_pixel_counter_aq[7] & (!modgen_counter_pixel_counter_anx23078z19)) # (!modgen_counter_pixel_counter_aq[7] & ((modgen_counter_pixel_counter_anx23078z19) # (GND)))
// modgen_counter_pixel_counter_anx23078z17 = CARRY((!modgen_counter_pixel_counter_anx23078z19) # (!modgen_counter_pixel_counter_aq[7]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z19),
	.combout(modgen_counter_pixel_counter_ainc_d_7_),
	.cout(modgen_counter_pixel_counter_anx23078z17));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52933.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y24_N31
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[7]));

// Location: LCCOMB_X28_Y22_N0
cycloneii_lcell_comb ix22195z52926(
// Equation(s):
// a_3_ = (modgen_counter_pixel_counter_aq[6]) # (modgen_counter_pixel_counter_aq[7])

	.dataa(modgen_counter_pixel_counter_aq[6]),
	.datab(vcc),
	.datac(modgen_counter_pixel_counter_aq[7]),
	.datad(vcc),
	.cin(gnd),
	.combout(a_3_),
	.cout());
// synopsys translate_off
defparam ix22195z52926.lut_mask = 16'hFAFA;
defparam ix22195z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N0
cycloneii_lcell_comb ix22195z52925(
// Equation(s):
// nx22195z3 = (modgen_counter_pixel_counter_aq[8]) # ((nx22195z4) # ((a_3_) # (modgen_counter_pixel_counter_aq[1])))

	.dataa(modgen_counter_pixel_counter_aq[8]),
	.datab(nx22195z4),
	.datac(a_3_),
	.datad(modgen_counter_pixel_counter_aq[1]),
	.cin(gnd),
	.combout(nx22195z3),
	.cout());
// synopsys translate_off
defparam ix22195z52925.lut_mask = 16'hFFFE;
defparam ix22195z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y23_N0
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52932(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_8_ = (modgen_counter_pixel_counter_aq[8] & (modgen_counter_pixel_counter_anx23078z17 $ (GND))) # (!modgen_counter_pixel_counter_aq[8] & (!modgen_counter_pixel_counter_anx23078z17 & VCC))
// modgen_counter_pixel_counter_anx23078z15 = CARRY((modgen_counter_pixel_counter_aq[8] & !modgen_counter_pixel_counter_anx23078z17))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z17),
	.combout(modgen_counter_pixel_counter_ainc_d_8_),
	.cout(modgen_counter_pixel_counter_anx23078z15));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52932.lut_mask = 16'hC30C;
defparam modgen_counter_pixel_counter_aix23078z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N1
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_8_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[8]));

// Location: LCCOMB_X28_Y23_N2
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52931(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_9_ = (modgen_counter_pixel_counter_aq[9] & (!modgen_counter_pixel_counter_anx23078z15)) # (!modgen_counter_pixel_counter_aq[9] & ((modgen_counter_pixel_counter_anx23078z15) # (GND)))
// modgen_counter_pixel_counter_anx23078z13 = CARRY((!modgen_counter_pixel_counter_anx23078z15) # (!modgen_counter_pixel_counter_aq[9]))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[9]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z15),
	.combout(modgen_counter_pixel_counter_ainc_d_9_),
	.cout(modgen_counter_pixel_counter_anx23078z13));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52931.lut_mask = 16'h3C3F;
defparam modgen_counter_pixel_counter_aix23078z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N3
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_9_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[9]));

// Location: LCCOMB_X32_Y23_N4
cycloneii_lcell_comb ix22195z52924(
// Equation(s):
// nx22195z2 = (i_reset_acombout) # ((!nx22195z5 & ((!modgen_counter_pixel_counter_aq[9]) # (!nx22195z3))))

	.dataa(nx22195z5),
	.datab(nx22195z3),
	.datac(modgen_counter_pixel_counter_aq[9]),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx22195z2),
	.cout());
// synopsys translate_off
defparam ix22195z52924.lut_mask = 16'hFF15;
defparam ix22195z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y24_N25
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[4]));

// Location: LCCOMB_X28_Y22_N30
cycloneii_lcell_comb ix22195z52932(
// Equation(s):
// nx22195z9 = (modgen_counter_pixel_counter_aq[6]) # ((modgen_counter_pixel_counter_aq[7]) # ((modgen_counter_pixel_counter_aq[4]) # (modgen_counter_pixel_counter_aq[5])))

	.dataa(modgen_counter_pixel_counter_aq[6]),
	.datab(modgen_counter_pixel_counter_aq[7]),
	.datac(modgen_counter_pixel_counter_aq[4]),
	.datad(modgen_counter_pixel_counter_aq[5]),
	.cin(gnd),
	.combout(nx22195z9),
	.cout());
// synopsys translate_off
defparam ix22195z52932.lut_mask = 16'hFFFE;
defparam ix22195z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N16
cycloneii_lcell_comb ix22195z52931(
// Equation(s):
// nx22195z8 = (modgen_counter_pixel_counter_aq[1]) # ((nx22195z9) # ((modgen_counter_pixel_counter_aq[3]) # (modgen_counter_pixel_counter_aq[2])))

	.dataa(modgen_counter_pixel_counter_aq[1]),
	.datab(nx22195z9),
	.datac(modgen_counter_pixel_counter_aq[3]),
	.datad(modgen_counter_pixel_counter_aq[2]),
	.cin(gnd),
	.combout(nx22195z8),
	.cout());
// synopsys translate_off
defparam ix22195z52931.lut_mask = 16'hFFFE;
defparam ix22195z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N10
cycloneii_lcell_comb ix22195z52923(
// Equation(s):
// nx22195z1 = (nx22195z7 & (!nx22195z2 & (i_valid_acombout & nx22195z8)))

	.dataa(nx22195z7),
	.datab(nx22195z2),
	.datac(i_valid_acombout),
	.datad(nx22195z8),
	.cin(gnd),
	.combout(nx22195z1),
	.cout());
// synopsys translate_off
defparam ix22195z52923.lut_mask = 16'h2000;
defparam ix22195z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y22_N11
cycloneii_lcell_ff reg_valid_bits_stage1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22195z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage1[0]));

// Location: LCFF_X32_Y22_N9
cycloneii_lcell_ff reg_valid_bits_stage1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage1[0]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage1[1]));

// Location: LCFF_X32_Y22_N3
cycloneii_lcell_ff reg_valid_bits_stage1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage1[1]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage1[2]));

// Location: LCFF_X27_Y23_N9
cycloneii_lcell_ff reg_valid_bits_stage1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage1[2]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage1[3]));

// Location: LCFF_X27_Y23_N5
cycloneii_lcell_ff reg_valid_bits_stage2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage1[3]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage2[0]));

// Location: LCFF_X27_Y23_N15
cycloneii_lcell_ff reg_valid_bits_stage2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage2[0]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage2[1]));

// Location: LCFF_X27_Y23_N19
cycloneii_lcell_ff reg_valid_bits_stage2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage2[1]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_bits_stage2[2]));

// Location: LCFF_X27_Y23_N17
cycloneii_lcell_ff reg_valid_bits_stage2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_bits_stage2[2]),
	.aclr(gnd),
	.sclr(nx22195z2),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_valid_bits_stage2_3__aregout));

// Location: LCCOMB_X30_Y22_N28
cycloneii_lcell_comb ix20426z52923(
// Equation(s):
// nx20426z1 = (!valid_bits_stage1[0] & (!i_reset_acombout & add3[10]))

	.dataa(valid_bits_stage1[0]),
	.datab(i_reset_acombout),
	.datac(vcc),
	.datad(add3[10]),
	.cin(gnd),
	.combout(nx20426z1),
	.cout());
// synopsys translate_off
defparam ix20426z52923.lut_mask = 16'h1100;
defparam ix20426z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N29
cycloneii_lcell_ff reg_r1_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20426z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[10]));

// Location: LCCOMB_X32_Y22_N2
cycloneii_lcell_comb ix42053z52926(
// Equation(s):
// nx42053z2 = (!valid_bits_stage1[1] & (valid_bits_stage1[2] & !valid_bits_stage1[0]))

	.dataa(vcc),
	.datab(valid_bits_stage1[1]),
	.datac(valid_bits_stage1[2]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z2),
	.cout());
// synopsys translate_off
defparam ix42053z52926.lut_mask = 16'h0030;
defparam ix42053z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N24
cycloneii_lcell_comb ix60779z52926(
// Equation(s):
// nx60779z4 = (modgen_counter_pixel_counter_aq[4] & (modgen_counter_pixel_counter_aq[2] & (modgen_counter_pixel_counter_aq[3] & modgen_counter_pixel_counter_aq[1])))

	.dataa(modgen_counter_pixel_counter_aq[4]),
	.datab(modgen_counter_pixel_counter_aq[2]),
	.datac(modgen_counter_pixel_counter_aq[3]),
	.datad(modgen_counter_pixel_counter_aq[1]),
	.cin(gnd),
	.combout(nx60779z4),
	.cout());
// synopsys translate_off
defparam ix60779z52926.lut_mask = 16'h8000;
defparam ix60779z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y24_N17
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[0]));

// Location: LCCOMB_X28_Y22_N18
cycloneii_lcell_comb ix60779z52924(
// Equation(s):
// nx60779z2 = (nx60779z3 & (nx60779z4 & modgen_counter_pixel_counter_aq[0]))

	.dataa(nx60779z3),
	.datab(vcc),
	.datac(nx60779z4),
	.datad(modgen_counter_pixel_counter_aq[0]),
	.cin(gnd),
	.combout(nx60779z2),
	.cout());
// synopsys translate_off
defparam ix60779z52924.lut_mask = 16'hA000;
defparam ix60779z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y22_N2
cycloneii_lcell_comb ix60779z52923(
// Equation(s):
// nx60779z1 = (nx60779z2 & (row_index[1])) # (!nx60779z2 & ((row_index[2])))

	.dataa(vcc),
	.datab(row_index[1]),
	.datac(row_index[2]),
	.datad(nx60779z2),
	.cin(gnd),
	.combout(nx60779z1),
	.cout());
// synopsys translate_off
defparam ix60779z52923.lut_mask = 16'hCCF0;
defparam ix60779z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y22_N3
cycloneii_lcell_ff reg_row_index_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60779z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_index[2]));

// Location: LCCOMB_X28_Y22_N12
cycloneii_lcell_comb ix58785z52923(
// Equation(s):
// nx58785z1 = (nx60779z2 & (!row_index[2])) # (!nx60779z2 & ((nx59782z2)))

	.dataa(vcc),
	.datab(row_index[2]),
	.datac(nx59782z2),
	.datad(nx60779z2),
	.cin(gnd),
	.combout(nx58785z1),
	.cout());
// synopsys translate_off
defparam ix58785z52923.lut_mask = 16'h33F0;
defparam ix58785z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y22_N13
cycloneii_lcell_ff reg_row_index_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx58785z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx59782z2));

// Location: LCCOMB_X28_Y23_N22
cycloneii_lcell_comb ix59782z52923(
// Equation(s):
// nx59782z1 = (nx60779z2 & ((!nx59782z2))) # (!nx60779z2 & (row_index[1]))

	.dataa(nx60779z2),
	.datab(vcc),
	.datac(row_index[1]),
	.datad(nx59782z2),
	.cin(gnd),
	.combout(nx59782z1),
	.cout());
// synopsys translate_off
defparam ix59782z52923.lut_mask = 16'h50FA;
defparam ix59782z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N23
cycloneii_lcell_ff reg_row_index_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx59782z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_index[1]));

// Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam i_pixel_a0_a_aI.input_async_reset = "none";
defparam i_pixel_a0_a_aI.input_power_up = "low";
defparam i_pixel_a0_a_aI.input_register_mode = "none";
defparam i_pixel_a0_a_aI.input_sync_reset = "none";
defparam i_pixel_a0_a_aI.oe_async_reset = "none";
defparam i_pixel_a0_a_aI.oe_power_up = "low";
defparam i_pixel_a0_a_aI.oe_register_mode = "none";
defparam i_pixel_a0_a_aI.oe_sync_reset = "none";
defparam i_pixel_a0_a_aI.operation_mode = "input";
defparam i_pixel_a0_a_aI.output_async_reset = "none";
defparam i_pixel_a0_a_aI.output_power_up = "low";
defparam i_pixel_a0_a_aI.output_register_mode = "none";
defparam i_pixel_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam i_pixel_a1_a_aI.input_async_reset = "none";
defparam i_pixel_a1_a_aI.input_power_up = "low";
defparam i_pixel_a1_a_aI.input_register_mode = "none";
defparam i_pixel_a1_a_aI.input_sync_reset = "none";
defparam i_pixel_a1_a_aI.oe_async_reset = "none";
defparam i_pixel_a1_a_aI.oe_power_up = "low";
defparam i_pixel_a1_a_aI.oe_register_mode = "none";
defparam i_pixel_a1_a_aI.oe_sync_reset = "none";
defparam i_pixel_a1_a_aI.operation_mode = "input";
defparam i_pixel_a1_a_aI.output_async_reset = "none";
defparam i_pixel_a1_a_aI.output_power_up = "low";
defparam i_pixel_a1_a_aI.output_register_mode = "none";
defparam i_pixel_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam i_pixel_a2_a_aI.input_async_reset = "none";
defparam i_pixel_a2_a_aI.input_power_up = "low";
defparam i_pixel_a2_a_aI.input_register_mode = "none";
defparam i_pixel_a2_a_aI.input_sync_reset = "none";
defparam i_pixel_a2_a_aI.oe_async_reset = "none";
defparam i_pixel_a2_a_aI.oe_power_up = "low";
defparam i_pixel_a2_a_aI.oe_register_mode = "none";
defparam i_pixel_a2_a_aI.oe_sync_reset = "none";
defparam i_pixel_a2_a_aI.operation_mode = "input";
defparam i_pixel_a2_a_aI.output_async_reset = "none";
defparam i_pixel_a2_a_aI.output_power_up = "low";
defparam i_pixel_a2_a_aI.output_register_mode = "none";
defparam i_pixel_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam i_pixel_a3_a_aI.input_async_reset = "none";
defparam i_pixel_a3_a_aI.input_power_up = "low";
defparam i_pixel_a3_a_aI.input_register_mode = "none";
defparam i_pixel_a3_a_aI.input_sync_reset = "none";
defparam i_pixel_a3_a_aI.oe_async_reset = "none";
defparam i_pixel_a3_a_aI.oe_power_up = "low";
defparam i_pixel_a3_a_aI.oe_register_mode = "none";
defparam i_pixel_a3_a_aI.oe_sync_reset = "none";
defparam i_pixel_a3_a_aI.operation_mode = "input";
defparam i_pixel_a3_a_aI.output_async_reset = "none";
defparam i_pixel_a3_a_aI.output_power_up = "low";
defparam i_pixel_a3_a_aI.output_register_mode = "none";
defparam i_pixel_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam i_pixel_a4_a_aI.input_async_reset = "none";
defparam i_pixel_a4_a_aI.input_power_up = "low";
defparam i_pixel_a4_a_aI.input_register_mode = "none";
defparam i_pixel_a4_a_aI.input_sync_reset = "none";
defparam i_pixel_a4_a_aI.oe_async_reset = "none";
defparam i_pixel_a4_a_aI.oe_power_up = "low";
defparam i_pixel_a4_a_aI.oe_register_mode = "none";
defparam i_pixel_a4_a_aI.oe_sync_reset = "none";
defparam i_pixel_a4_a_aI.operation_mode = "input";
defparam i_pixel_a4_a_aI.output_async_reset = "none";
defparam i_pixel_a4_a_aI.output_power_up = "low";
defparam i_pixel_a4_a_aI.output_register_mode = "none";
defparam i_pixel_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam i_pixel_a5_a_aI.input_async_reset = "none";
defparam i_pixel_a5_a_aI.input_power_up = "low";
defparam i_pixel_a5_a_aI.input_register_mode = "none";
defparam i_pixel_a5_a_aI.input_sync_reset = "none";
defparam i_pixel_a5_a_aI.oe_async_reset = "none";
defparam i_pixel_a5_a_aI.oe_power_up = "low";
defparam i_pixel_a5_a_aI.oe_register_mode = "none";
defparam i_pixel_a5_a_aI.oe_sync_reset = "none";
defparam i_pixel_a5_a_aI.operation_mode = "input";
defparam i_pixel_a5_a_aI.output_async_reset = "none";
defparam i_pixel_a5_a_aI.output_power_up = "low";
defparam i_pixel_a5_a_aI.output_register_mode = "none";
defparam i_pixel_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam i_pixel_a6_a_aI.input_async_reset = "none";
defparam i_pixel_a6_a_aI.input_power_up = "low";
defparam i_pixel_a6_a_aI.input_register_mode = "none";
defparam i_pixel_a6_a_aI.input_sync_reset = "none";
defparam i_pixel_a6_a_aI.oe_async_reset = "none";
defparam i_pixel_a6_a_aI.oe_power_up = "low";
defparam i_pixel_a6_a_aI.oe_register_mode = "none";
defparam i_pixel_a6_a_aI.oe_sync_reset = "none";
defparam i_pixel_a6_a_aI.operation_mode = "input";
defparam i_pixel_a6_a_aI.output_async_reset = "none";
defparam i_pixel_a6_a_aI.output_power_up = "low";
defparam i_pixel_a6_a_aI.output_register_mode = "none";
defparam i_pixel_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam i_pixel_a7_a_aI.input_async_reset = "none";
defparam i_pixel_a7_a_aI.input_power_up = "low";
defparam i_pixel_a7_a_aI.input_register_mode = "none";
defparam i_pixel_a7_a_aI.input_sync_reset = "none";
defparam i_pixel_a7_a_aI.oe_async_reset = "none";
defparam i_pixel_a7_a_aI.oe_power_up = "low";
defparam i_pixel_a7_a_aI.oe_register_mode = "none";
defparam i_pixel_a7_a_aI.oe_sync_reset = "none";
defparam i_pixel_a7_a_aI.operation_mode = "input";
defparam i_pixel_a7_a_aI.output_async_reset = "none";
defparam i_pixel_a7_a_aI.output_power_up = "low";
defparam i_pixel_a7_a_aI.output_register_mode = "none";
defparam i_pixel_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: M4K_X26_Y23
cycloneii_ram_block mem_1_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(valid_wren[2]),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_pixel_counter_aq[7],modgen_counter_pixel_counter_aq[6],modgen_counter_pixel_counter_aq[5],modgen_counter_pixel_counter_aq[4],modgen_counter_pixel_counter_aq[3],modgen_counter_pixel_counter_aq[2],modgen_counter_pixel_counter_aq[1],modgen_counter_pixel_counter_aq[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:mem_1|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_1_aix64056z29483_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N28
cycloneii_lcell_comb ix50415z52923(
// Equation(s):
// nx50415z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[6]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[6]))

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[6]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx50415z1),
	.cout());
// synopsys translate_off
defparam ix50415z52923.lut_mask = 16'hEE22;
defparam ix50415z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N26
cycloneii_lcell_comb ix59688z52923(
// Equation(s):
// nx59688z1 = (i_reset_acombout) # (i_valid_acombout)

	.dataa(i_reset_acombout),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(nx59688z1),
	.cout());
// synopsys translate_off
defparam ix59688z52923.lut_mask = 16'hFAFA;
defparam ix59688z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N29
cycloneii_lcell_ff reg_conv_table_2__0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx50415z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[6]));

// Location: LCFF_X31_Y23_N17
cycloneii_lcell_ff reg_conv_table_1__0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[6]));

// Location: LCCOMB_X31_Y23_N16
cycloneii_lcell_comb ix42053z52938(
// Equation(s):
// nx42053z11 = (valid_bits_stage1[0] & (conv_table_0__0_[6])) # (!valid_bits_stage1[0] & (((conv_table_1__0_[6] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__0_[6]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__0_[6]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z11),
	.cout());
// synopsys translate_off
defparam ix42053z52938.lut_mask = 16'hB888;
defparam ix42053z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y23_N19
cycloneii_lcell_ff reg_conv_table_2__2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[6]));

// Location: LCFF_X32_Y21_N21
cycloneii_lcell_ff reg_conv_table_1__2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[6]));

// Location: LCCOMB_X32_Y21_N20
cycloneii_lcell_comb ix42053z52937(
// Equation(s):
// nx42053z10 = (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & (conv_table_1__2_[6] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__2_[6]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx42053z10),
	.cout());
// synopsys translate_off
defparam ix42053z52937.lut_mask = 16'h0010;
defparam ix42053z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N0
cycloneii_lcell_comb ix42053z52936(
// Equation(s):
// i3[6] = (nx42053z11) # ((nx42053z10) # ((conv_table_2__1_[6] & nx42053z2)))

	.dataa(conv_table_2__1_[6]),
	.datab(nx42053z2),
	.datac(nx42053z11),
	.datad(nx42053z10),
	.cin(gnd),
	.combout(i3[6]),
	.cout());
// synopsys translate_off
defparam ix42053z52936.lut_mask = 16'hFFF8;
defparam ix42053z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N0
cycloneii_lcell_comb ix51412z52923(
// Equation(s):
// nx51412z1 = (row_index[1] & (mem_1_aix64056z29483_aauto_generated_aq_a[5])) # (!row_index[1] & ((mem_0_aix64056z29482_aauto_generated_aq_a[5])))

	.dataa(mem_1_aix64056z29483_aauto_generated_aq_a[5]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx51412z1),
	.cout());
// synopsys translate_off
defparam ix51412z52923.lut_mask = 16'hBB88;
defparam ix51412z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N1
cycloneii_lcell_ff reg_conv_table_2__0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx51412z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[5]));

// Location: LCFF_X31_Y21_N5
cycloneii_lcell_ff reg_conv_table_1__0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[5]));

// Location: LCFF_X32_Y21_N19
cycloneii_lcell_ff reg_conv_table_0__0__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[5]));

// Location: LCCOMB_X32_Y21_N18
cycloneii_lcell_comb ix42053z52945(
// Equation(s):
// nx42053z16 = (valid_bits_stage1[0] & (((conv_table_0__0_[5])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & (conv_table_1__0_[5])))

	.dataa(valid_bits_stage1[1]),
	.datab(conv_table_1__0_[5]),
	.datac(conv_table_0__0_[5]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z16),
	.cout());
// synopsys translate_off
defparam ix42053z52945.lut_mask = 16'hF088;
defparam ix42053z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y24_N25
cycloneii_lcell_ff reg_conv_table_2__2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[5]));

// Location: LCFF_X32_Y21_N13
cycloneii_lcell_ff reg_conv_table_1__2__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[5]));

// Location: LCCOMB_X32_Y21_N12
cycloneii_lcell_comb ix42053z52944(
// Equation(s):
// nx42053z15 = (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & (conv_table_1__2_[5] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__2_[5]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx42053z15),
	.cout());
// synopsys translate_off
defparam ix42053z52944.lut_mask = 16'h0010;
defparam ix42053z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N14
cycloneii_lcell_comb ix42053z52943(
// Equation(s):
// i3[5] = (nx42053z16) # ((nx42053z15) # ((conv_table_2__1_[5] & nx42053z2)))

	.dataa(conv_table_2__1_[5]),
	.datab(nx42053z16),
	.datac(nx42053z2),
	.datad(nx42053z15),
	.cin(gnd),
	.combout(i3[5]),
	.cout());
// synopsys translate_off
defparam ix42053z52943.lut_mask = 16'hFFEC;
defparam ix42053z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y21_N25
cycloneii_lcell_ff reg_conv_table_2__2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[4]));

// Location: LCFF_X33_Y21_N27
cycloneii_lcell_ff reg_conv_table_1__2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[4]));

// Location: LCFF_X33_Y21_N31
cycloneii_lcell_ff reg_conv_table_0__2__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[4]));

// Location: LCCOMB_X33_Y21_N30
cycloneii_lcell_comb ix42053z52948(
// Equation(s):
// nx42053z18 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_0__2_[4] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_0__2_[4]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z18),
	.cout());
// synopsys translate_off
defparam ix42053z52948.lut_mask = 16'h0010;
defparam ix42053z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N12
cycloneii_lcell_comb ix42053z52947(
// Equation(s):
// i4[4] = (nx42053z19) # ((nx42053z18) # ((conv_table_2__2_[4] & nx42053z2)))

	.dataa(nx42053z19),
	.datab(conv_table_2__2_[4]),
	.datac(nx42053z18),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i4[4]),
	.cout());
// synopsys translate_off
defparam ix42053z52947.lut_mask = 16'hFEFA;
defparam ix42053z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N26
cycloneii_lcell_comb ix58541z52923(
// Equation(s):
// nx58541z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[3])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[3])))

	.dataa(row_index[1]),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx58541z1),
	.cout());
// synopsys translate_off
defparam ix58541z52923.lut_mask = 16'hDD88;
defparam ix58541z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N27
cycloneii_lcell_ff reg_conv_table_2__1__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx58541z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[3]));

// Location: LCFF_X31_Y21_N21
cycloneii_lcell_ff reg_conv_table_2__2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[3]));

// Location: LCFF_X31_Y21_N23
cycloneii_lcell_ff reg_conv_table_1__2__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[3]));

// Location: LCCOMB_X31_Y21_N22
cycloneii_lcell_comb ix42053z52958(
// Equation(s):
// nx42053z25 = (!valid_bits_stage1[2] & (!valid_bits_stage1[1] & (conv_table_1__2_[3] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[1]),
	.datac(conv_table_1__2_[3]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z25),
	.cout());
// synopsys translate_off
defparam ix42053z52958.lut_mask = 16'h0010;
defparam ix42053z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N0
cycloneii_lcell_comb ix42053z52957(
// Equation(s):
// i3[3] = (nx42053z26) # ((nx42053z25) # ((conv_table_2__1_[3] & nx42053z2)))

	.dataa(nx42053z26),
	.datab(conv_table_2__1_[3]),
	.datac(nx42053z2),
	.datad(nx42053z25),
	.cin(gnd),
	.combout(i3[3]),
	.cout());
// synopsys translate_off
defparam ix42053z52957.lut_mask = 16'hFFEA;
defparam ix42053z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N14
cycloneii_lcell_comb ix59538z52923(
// Equation(s):
// nx59538z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[2])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[2])))

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx59538z1),
	.cout());
// synopsys translate_off
defparam ix59538z52923.lut_mask = 16'hBB88;
defparam ix59538z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N15
cycloneii_lcell_ff reg_conv_table_2__1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx59538z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[2]));

// Location: LCFF_X31_Y24_N3
cycloneii_lcell_ff reg_conv_table_1__1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[2]));

// Location: LCFF_X31_Y24_N23
cycloneii_lcell_ff reg_conv_table_0__1__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[2]));

// Location: LCCOMB_X31_Y24_N22
cycloneii_lcell_comb ix42053z52963(
// Equation(s):
// nx42053z29 = (valid_bits_stage1[0] & (((conv_table_0__1_[2])))) # (!valid_bits_stage1[0] & (conv_table_2__0_[2] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__0_[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z29),
	.cout());
// synopsys translate_off
defparam ix42053z52963.lut_mask = 16'hE2C0;
defparam ix42053z52963.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y24_N27
cycloneii_lcell_ff reg_conv_table_2__2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[2]));

// Location: LCFF_X31_Y24_N21
cycloneii_lcell_ff reg_conv_table_1__2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[2]));

// Location: LCFF_X31_Y24_N11
cycloneii_lcell_ff reg_conv_table_0__2__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[2]));

// Location: LCCOMB_X31_Y24_N10
cycloneii_lcell_comb ix42053z52962(
// Equation(s):
// nx42053z28 = (!valid_bits_stage1[2] & (!valid_bits_stage1[0] & (conv_table_0__2_[2] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__2_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z28),
	.cout());
// synopsys translate_off
defparam ix42053z52962.lut_mask = 16'h0010;
defparam ix42053z52962.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N6
cycloneii_lcell_comb ix42053z52961(
// Equation(s):
// i4[2] = (nx42053z29) # ((nx42053z28) # ((conv_table_2__2_[2] & nx42053z2)))

	.dataa(conv_table_2__2_[2]),
	.datab(nx42053z29),
	.datac(nx42053z28),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i4[2]),
	.cout());
// synopsys translate_off
defparam ix42053z52961.lut_mask = 16'hFEFC;
defparam ix42053z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y23_N5
cycloneii_lcell_ff reg_conv_table_2__2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[1]));

// Location: LCFF_X31_Y23_N31
cycloneii_lcell_ff reg_conv_table_1__2__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[1]));

// Location: LCCOMB_X31_Y23_N30
cycloneii_lcell_comb ix42053z52972(
// Equation(s):
// nx42053z35 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_1__2_[1] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_1__2_[1]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z35),
	.cout());
// synopsys translate_off
defparam ix42053z52972.lut_mask = 16'h0010;
defparam ix42053z52972.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N24
cycloneii_lcell_comb ix55400z52923(
// Equation(s):
// nx55400z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[1]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[1]))

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[1]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx55400z1),
	.cout());
// synopsys translate_off
defparam ix55400z52923.lut_mask = 16'hEE22;
defparam ix55400z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N25
cycloneii_lcell_ff reg_conv_table_2__0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55400z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[1]));

// Location: LCFF_X31_Y23_N13
cycloneii_lcell_ff reg_conv_table_1__0__1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[1]));

// Location: LCCOMB_X31_Y23_N12
cycloneii_lcell_comb ix42053z52973(
// Equation(s):
// nx42053z36 = (valid_bits_stage1[0] & (conv_table_0__0_[1])) # (!valid_bits_stage1[0] & (((conv_table_1__0_[1] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__0_[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__0_[1]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z36),
	.cout());
// synopsys translate_off
defparam ix42053z52973.lut_mask = 16'hB888;
defparam ix42053z52973.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N0
cycloneii_lcell_comb ix42053z52971(
// Equation(s):
// i3[1] = (nx42053z35) # ((nx42053z36) # ((conv_table_2__1_[1] & nx42053z2)))

	.dataa(conv_table_2__1_[1]),
	.datab(nx42053z2),
	.datac(nx42053z35),
	.datad(nx42053z36),
	.cin(gnd),
	.combout(i3[1]),
	.cout());
// synopsys translate_off
defparam ix42053z52971.lut_mask = 16'hFFF8;
defparam ix42053z52971.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N6
cycloneii_lcell_comb ix56397z52923(
// Equation(s):
// nx56397z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[0]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[0]))

	.dataa(row_index[1]),
	.datab(mem_0_aix64056z29482_aauto_generated_aq_a[0]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx56397z1),
	.cout());
// synopsys translate_off
defparam ix56397z52923.lut_mask = 16'hEE44;
defparam ix56397z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N7
cycloneii_lcell_ff reg_conv_table_2__0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56397z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[0]));

// Location: LCFF_X33_Y22_N27
cycloneii_lcell_ff reg_conv_table_1__0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[0]));

// Location: LCFF_X33_Y22_N13
cycloneii_lcell_ff reg_conv_table_0__0__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[0]));

// Location: LCCOMB_X33_Y22_N26
cycloneii_lcell_comb ix42053z52977(
// Equation(s):
// nx42053z39 = (valid_bits_stage1[0] & (((conv_table_0__0_[0])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_1__0_[0]))))

	.dataa(valid_bits_stage1[1]),
	.datab(conv_table_0__0_[0]),
	.datac(conv_table_1__0_[0]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z39),
	.cout());
// synopsys translate_off
defparam ix42053z52977.lut_mask = 16'hCCA0;
defparam ix42053z52977.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y22_N31
cycloneii_lcell_ff reg_conv_table_2__2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[0]));

// Location: LCFF_X33_Y22_N21
cycloneii_lcell_ff reg_conv_table_1__2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[0]));

// Location: LCCOMB_X33_Y22_N20
cycloneii_lcell_comb ix42053z52976(
// Equation(s):
// nx42053z38 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_1__2_[0] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_1__2_[0]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z38),
	.cout());
// synopsys translate_off
defparam ix42053z52976.lut_mask = 16'h0010;
defparam ix42053z52976.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N4
cycloneii_lcell_comb ix42053z52975(
// Equation(s):
// i3[0] = (nx42053z39) # ((nx42053z38) # ((conv_table_2__1_[0] & nx42053z2)))

	.dataa(conv_table_2__1_[0]),
	.datab(nx42053z2),
	.datac(nx42053z39),
	.datad(nx42053z38),
	.cin(gnd),
	.combout(i3[0]),
	.cout());
// synopsys translate_off
defparam ix42053z52975.lut_mask = 16'hFFF8;
defparam ix42053z52975.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N14
cycloneii_lcell_comb add1_add8_1_ix42053z52974(
// Equation(s):
// nx42053z37 = CARRY((i4[0] & i3[0]))

	.dataa(i4[0]),
	.datab(i3[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx42053z37));
// synopsys translate_off
defparam add1_add8_1_ix42053z52974.lut_mask = 16'h0088;
defparam add1_add8_1_ix42053z52974.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N16
cycloneii_lcell_comb add1_add8_1_ix42053z52967(
// Equation(s):
// add1[1] = (i4[1] & ((i3[1] & (nx42053z37 & VCC)) # (!i3[1] & (!nx42053z37)))) # (!i4[1] & ((i3[1] & (!nx42053z37)) # (!i3[1] & ((nx42053z37) # (GND)))))
// nx42053z32 = CARRY((i4[1] & (!i3[1] & !nx42053z37)) # (!i4[1] & ((!nx42053z37) # (!i3[1]))))

	.dataa(i4[1]),
	.datab(i3[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z37),
	.combout(add1[1]),
	.cout(nx42053z32));
// synopsys translate_off
defparam add1_add8_1_ix42053z52967.lut_mask = 16'h9617;
defparam add1_add8_1_ix42053z52967.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N18
cycloneii_lcell_comb add1_add8_1_ix42053z52960(
// Equation(s):
// add1[2] = ((i3[2] $ (i4[2] $ (!nx42053z32)))) # (GND)
// nx42053z27 = CARRY((i3[2] & ((i4[2]) # (!nx42053z32))) # (!i3[2] & (i4[2] & !nx42053z32)))

	.dataa(i3[2]),
	.datab(i4[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z32),
	.combout(add1[2]),
	.cout(nx42053z27));
// synopsys translate_off
defparam add1_add8_1_ix42053z52960.lut_mask = 16'h698E;
defparam add1_add8_1_ix42053z52960.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N20
cycloneii_lcell_comb add1_add8_1_ix42053z52953(
// Equation(s):
// add1[3] = (i4[3] & ((i3[3] & (nx42053z27 & VCC)) # (!i3[3] & (!nx42053z27)))) # (!i4[3] & ((i3[3] & (!nx42053z27)) # (!i3[3] & ((nx42053z27) # (GND)))))
// nx42053z22 = CARRY((i4[3] & (!i3[3] & !nx42053z27)) # (!i4[3] & ((!nx42053z27) # (!i3[3]))))

	.dataa(i4[3]),
	.datab(i3[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z27),
	.combout(add1[3]),
	.cout(nx42053z22));
// synopsys translate_off
defparam add1_add8_1_ix42053z52953.lut_mask = 16'h9617;
defparam add1_add8_1_ix42053z52953.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N22
cycloneii_lcell_comb add1_add8_1_ix42053z52946(
// Equation(s):
// add1[4] = ((i3[4] $ (i4[4] $ (!nx42053z22)))) # (GND)
// nx42053z17 = CARRY((i3[4] & ((i4[4]) # (!nx42053z22))) # (!i3[4] & (i4[4] & !nx42053z22)))

	.dataa(i3[4]),
	.datab(i4[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z22),
	.combout(add1[4]),
	.cout(nx42053z17));
// synopsys translate_off
defparam add1_add8_1_ix42053z52946.lut_mask = 16'h698E;
defparam add1_add8_1_ix42053z52946.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N24
cycloneii_lcell_comb add1_add8_1_ix42053z52939(
// Equation(s):
// add1[5] = (i4[5] & ((i3[5] & (nx42053z17 & VCC)) # (!i3[5] & (!nx42053z17)))) # (!i4[5] & ((i3[5] & (!nx42053z17)) # (!i3[5] & ((nx42053z17) # (GND)))))
// nx42053z12 = CARRY((i4[5] & (!i3[5] & !nx42053z17)) # (!i4[5] & ((!nx42053z17) # (!i3[5]))))

	.dataa(i4[5]),
	.datab(i3[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z17),
	.combout(add1[5]),
	.cout(nx42053z12));
// synopsys translate_off
defparam add1_add8_1_ix42053z52939.lut_mask = 16'h9617;
defparam add1_add8_1_ix42053z52939.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N26
cycloneii_lcell_comb add1_add8_1_ix42053z52932(
// Equation(s):
// add1[6] = ((i4[6] $ (i3[6] $ (!nx42053z12)))) # (GND)
// nx42053z7 = CARRY((i4[6] & ((i3[6]) # (!nx42053z12))) # (!i4[6] & (i3[6] & !nx42053z12)))

	.dataa(i4[6]),
	.datab(i3[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z12),
	.combout(add1[6]),
	.cout(nx42053z7));
// synopsys translate_off
defparam add1_add8_1_ix42053z52932.lut_mask = 16'h698E;
defparam add1_add8_1_ix42053z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N4
cycloneii_lcell_comb add3_add11_0_ix35831z52934(
// Equation(s):
// add3[0] = (add1[0] & (r1[0] $ (VCC))) # (!add1[0] & (r1[0] & VCC))
// nx35831z11 = CARRY((add1[0] & r1[0]))

	.dataa(add1[0]),
	.datab(r1[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(add3[0]),
	.cout(nx35831z11));
// synopsys translate_off
defparam add3_add11_0_ix35831z52934.lut_mask = 16'h6688;
defparam add3_add11_0_ix35831z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y22_N15
cycloneii_lcell_ff reg_conv_table_0__2__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[0]));

// Location: LCCOMB_X33_Y22_N14
cycloneii_lcell_comb ix42053z52979(
// Equation(s):
// nx42053z40 = (!valid_bits_stage1[1] & (!valid_bits_stage1[0] & (conv_table_0__2_[0] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__2_[0]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx42053z40),
	.cout());
// synopsys translate_off
defparam ix42053z52979.lut_mask = 16'h0010;
defparam ix42053z52979.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N20
cycloneii_lcell_comb ix61532z52923(
// Equation(s):
// nx61532z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[0])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[0])))

	.dataa(row_index[1]),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx61532z1),
	.cout());
// synopsys translate_off
defparam ix61532z52923.lut_mask = 16'hDD88;
defparam ix61532z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N21
cycloneii_lcell_ff reg_conv_table_2__1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx61532z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[0]));

// Location: LCFF_X33_Y22_N23
cycloneii_lcell_ff reg_conv_table_1__1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[0]));

// Location: LCFF_X33_Y22_N5
cycloneii_lcell_ff reg_conv_table_0__1__0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[0]));

// Location: LCCOMB_X33_Y22_N4
cycloneii_lcell_comb ix42053z52980(
// Equation(s):
// nx42053z41 = (valid_bits_stage1[0] & (((conv_table_0__1_[0])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & ((conv_table_2__0_[0]))))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[0]),
	.datad(conv_table_2__0_[0]),
	.cin(gnd),
	.combout(nx42053z41),
	.cout());
// synopsys translate_off
defparam ix42053z52980.lut_mask = 16'hE2C0;
defparam ix42053z52980.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N12
cycloneii_lcell_comb ix42053z52978(
// Equation(s):
// i4[0] = (nx42053z40) # ((nx42053z41) # ((conv_table_2__2_[0] & nx42053z2)))

	.dataa(conv_table_2__2_[0]),
	.datab(nx42053z2),
	.datac(nx42053z40),
	.datad(nx42053z41),
	.cin(gnd),
	.combout(i4[0]),
	.cout());
// synopsys translate_off
defparam ix42053z52978.lut_mask = 16'hFFF8;
defparam ix42053z52978.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N24
cycloneii_lcell_comb add1_add8_1_ix35831z52935(
// Equation(s):
// add1[0] = i4[0] $ (i3[0])

	.dataa(vcc),
	.datab(vcc),
	.datac(i4[0]),
	.datad(i3[0]),
	.cin(gnd),
	.combout(add1[0]),
	.cout());
// synopsys translate_off
defparam add1_add8_1_ix35831z52935.lut_mask = 16'h0FF0;
defparam add1_add8_1_ix35831z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y22_N5
cycloneii_lcell_ff reg_r1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[0]),
	.sdata(add1[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[0]));

// Location: LCCOMB_X31_Y22_N6
cycloneii_lcell_comb add3_add11_0_ix35831z52933(
// Equation(s):
// add3[1] = (add1[1] & ((r1[1] & (nx35831z11 & VCC)) # (!r1[1] & (!nx35831z11)))) # (!add1[1] & ((r1[1] & (!nx35831z11)) # (!r1[1] & ((nx35831z11) # (GND)))))
// nx35831z10 = CARRY((add1[1] & (!r1[1] & !nx35831z11)) # (!add1[1] & ((!nx35831z11) # (!r1[1]))))

	.dataa(add1[1]),
	.datab(r1[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z11),
	.combout(add3[1]),
	.cout(nx35831z10));
// synopsys translate_off
defparam add3_add11_0_ix35831z52933.lut_mask = 16'h9617;
defparam add3_add11_0_ix35831z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N7
cycloneii_lcell_ff reg_r1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[1]),
	.sdata(add1[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[1]));

// Location: LCCOMB_X31_Y22_N8
cycloneii_lcell_comb add3_add11_0_ix35831z52932(
// Equation(s):
// add3[2] = ((add1[2] $ (r1[2] $ (!nx35831z10)))) # (GND)
// nx35831z9 = CARRY((add1[2] & ((r1[2]) # (!nx35831z10))) # (!add1[2] & (r1[2] & !nx35831z10)))

	.dataa(add1[2]),
	.datab(r1[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z10),
	.combout(add3[2]),
	.cout(nx35831z9));
// synopsys translate_off
defparam add3_add11_0_ix35831z52932.lut_mask = 16'h698E;
defparam add3_add11_0_ix35831z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N9
cycloneii_lcell_ff reg_r1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[2]),
	.sdata(add1[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[2]));

// Location: LCCOMB_X31_Y22_N10
cycloneii_lcell_comb add3_add11_0_ix35831z52931(
// Equation(s):
// add3[3] = (add1[3] & ((r1[3] & (nx35831z9 & VCC)) # (!r1[3] & (!nx35831z9)))) # (!add1[3] & ((r1[3] & (!nx35831z9)) # (!r1[3] & ((nx35831z9) # (GND)))))
// nx35831z8 = CARRY((add1[3] & (!r1[3] & !nx35831z9)) # (!add1[3] & ((!nx35831z9) # (!r1[3]))))

	.dataa(add1[3]),
	.datab(r1[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z9),
	.combout(add3[3]),
	.cout(nx35831z8));
// synopsys translate_off
defparam add3_add11_0_ix35831z52931.lut_mask = 16'h9617;
defparam add3_add11_0_ix35831z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N11
cycloneii_lcell_ff reg_r1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[3]),
	.sdata(add1[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[3]));

// Location: LCCOMB_X31_Y22_N12
cycloneii_lcell_comb add3_add11_0_ix35831z52930(
// Equation(s):
// add3[4] = ((add1[4] $ (r1[4] $ (!nx35831z8)))) # (GND)
// nx35831z7 = CARRY((add1[4] & ((r1[4]) # (!nx35831z8))) # (!add1[4] & (r1[4] & !nx35831z8)))

	.dataa(add1[4]),
	.datab(r1[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z8),
	.combout(add3[4]),
	.cout(nx35831z7));
// synopsys translate_off
defparam add3_add11_0_ix35831z52930.lut_mask = 16'h698E;
defparam add3_add11_0_ix35831z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N13
cycloneii_lcell_ff reg_r1_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[4]),
	.sdata(add1[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[4]));

// Location: LCCOMB_X31_Y22_N14
cycloneii_lcell_comb add3_add11_0_ix35831z52929(
// Equation(s):
// add3[5] = (add1[5] & ((r1[5] & (nx35831z7 & VCC)) # (!r1[5] & (!nx35831z7)))) # (!add1[5] & ((r1[5] & (!nx35831z7)) # (!r1[5] & ((nx35831z7) # (GND)))))
// nx35831z6 = CARRY((add1[5] & (!r1[5] & !nx35831z7)) # (!add1[5] & ((!nx35831z7) # (!r1[5]))))

	.dataa(add1[5]),
	.datab(r1[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z7),
	.combout(add3[5]),
	.cout(nx35831z6));
// synopsys translate_off
defparam add3_add11_0_ix35831z52929.lut_mask = 16'h9617;
defparam add3_add11_0_ix35831z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N15
cycloneii_lcell_ff reg_r1_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[5]),
	.sdata(add1[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[5]));

// Location: LCCOMB_X31_Y22_N16
cycloneii_lcell_comb add3_add11_0_ix35831z52928(
// Equation(s):
// add3[6] = ((r1[6] $ (add1[6] $ (!nx35831z6)))) # (GND)
// nx35831z5 = CARRY((r1[6] & ((add1[6]) # (!nx35831z6))) # (!r1[6] & (add1[6] & !nx35831z6)))

	.dataa(r1[6]),
	.datab(add1[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z6),
	.combout(add3[6]),
	.cout(nx35831z5));
// synopsys translate_off
defparam add3_add11_0_ix35831z52928.lut_mask = 16'h698E;
defparam add3_add11_0_ix35831z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N18
cycloneii_lcell_comb add3_add11_0_ix35831z52927(
// Equation(s):
// add3[7] = (add1[7] & ((r1[7] & (nx35831z5 & VCC)) # (!r1[7] & (!nx35831z5)))) # (!add1[7] & ((r1[7] & (!nx35831z5)) # (!r1[7] & ((nx35831z5) # (GND)))))
// nx35831z4 = CARRY((add1[7] & (!r1[7] & !nx35831z5)) # (!add1[7] & ((!nx35831z5) # (!r1[7]))))

	.dataa(add1[7]),
	.datab(r1[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z5),
	.combout(add3[7]),
	.cout(nx35831z4));
// synopsys translate_off
defparam add3_add11_0_ix35831z52927.lut_mask = 16'h9617;
defparam add3_add11_0_ix35831z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N16
cycloneii_lcell_comb ix49418z52923(
// Equation(s):
// nx49418z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[7]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[7]))

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[7]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx49418z1),
	.cout());
// synopsys translate_off
defparam ix49418z52923.lut_mask = 16'hEE22;
defparam ix49418z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N17
cycloneii_lcell_ff reg_conv_table_2__0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx49418z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[7]));

// Location: LCFF_X33_Y21_N17
cycloneii_lcell_ff reg_conv_table_1__0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[7]));

// Location: LCFF_X33_Y21_N3
cycloneii_lcell_ff reg_conv_table_0__0__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[7]));

// Location: LCCOMB_X33_Y21_N2
cycloneii_lcell_comb ix42053z52931(
// Equation(s):
// nx42053z6 = (valid_bits_stage1[0] & (((conv_table_0__0_[7])))) # (!valid_bits_stage1[0] & (conv_table_1__0_[7] & (valid_bits_stage1[1])))

	.dataa(conv_table_1__0_[7]),
	.datab(valid_bits_stage1[1]),
	.datac(conv_table_0__0_[7]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx42053z6),
	.cout());
// synopsys translate_off
defparam ix42053z52931.lut_mask = 16'hF088;
defparam ix42053z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y22_N11
cycloneii_lcell_ff reg_conv_table_2__2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__2_[7]));

// Location: LCFF_X33_Y21_N9
cycloneii_lcell_ff reg_conv_table_1__2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__2_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__2_[7]));

// Location: LCCOMB_X33_Y21_N8
cycloneii_lcell_comb ix42053z52930(
// Equation(s):
// nx42053z5 = (!valid_bits_stage1[0] & (!valid_bits_stage1[2] & (conv_table_1__2_[7] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[0]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_1__2_[7]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx42053z5),
	.cout());
// synopsys translate_off
defparam ix42053z52930.lut_mask = 16'h0010;
defparam ix42053z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N0
cycloneii_lcell_comb ix42053z52929(
// Equation(s):
// i3[7] = (nx42053z6) # ((nx42053z5) # ((conv_table_2__1_[7] & nx42053z2)))

	.dataa(conv_table_2__1_[7]),
	.datab(nx42053z6),
	.datac(nx42053z5),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i3[7]),
	.cout());
// synopsys translate_off
defparam ix42053z52929.lut_mask = 16'hFEFC;
defparam ix42053z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N28
cycloneii_lcell_comb add1_add8_1_ix42053z52924(
// Equation(s):
// add1[7] = (i4[7] & ((i3[7] & (nx42053z7 & VCC)) # (!i3[7] & (!nx42053z7)))) # (!i4[7] & ((i3[7] & (!nx42053z7)) # (!i3[7] & ((nx42053z7) # (GND)))))
// add1[8] = CARRY((i4[7] & (!i3[7] & !nx42053z7)) # (!i4[7] & ((!nx42053z7) # (!i3[7]))))

	.dataa(i4[7]),
	.datab(i3[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx42053z7),
	.combout(add1[7]),
	.cout(add1[8]));
// synopsys translate_off
defparam add1_add8_1_ix42053z52924.lut_mask = 16'h9617;
defparam add1_add8_1_ix42053z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y22_N19
cycloneii_lcell_ff reg_r1_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[7]),
	.sdata(add1[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[0]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[7]));

// Location: LCCOMB_X31_Y22_N20
cycloneii_lcell_comb ix35831z52926(
// Equation(s):
// nx35831z3 = !nx35831z4

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z4),
	.combout(nx35831z3),
	.cout());
// synopsys translate_off
defparam ix35831z52926.lut_mask = 16'h0F0F;
defparam ix35831z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N30
cycloneii_lcell_comb add1_a8_a_a0(
// Equation(s):
// add1_a8_a_a0_combout = !add1[8]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add1[8]),
	.combout(add1_a8_a_a0_combout),
	.cout());
// synopsys translate_off
defparam add1_a8_a_a0.lut_mask = 16'h0F0F;
defparam add1_a8_a_a0.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N4
cycloneii_lcell_comb add3_add11_0_ix35831z52925_a1(
// Equation(s):
// add3_add11_0_ix35831z52925_a1_cout = CARRY(add1_a8_a_a0_combout)

	.dataa(vcc),
	.datab(add1_a8_a_a0_combout),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(add3_add11_0_ix35831z52925_a1_cout));
// synopsys translate_off
defparam add3_add11_0_ix35831z52925_a1.lut_mask = 16'h00CC;
defparam add3_add11_0_ix35831z52925_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N6
cycloneii_lcell_comb add3_add11_0_ix35831z52925(
// Equation(s):
// add3[8] = (r1[8] & ((nx35831z3 & (add3_add11_0_ix35831z52925_a1_cout & VCC)) # (!nx35831z3 & (!add3_add11_0_ix35831z52925_a1_cout)))) # (!r1[8] & ((nx35831z3 & (!add3_add11_0_ix35831z52925_a1_cout)) # (!nx35831z3 & ((add3_add11_0_ix35831z52925_a1_cout) # 
// (GND)))))
// nx35831z2 = CARRY((r1[8] & (!nx35831z3 & !add3_add11_0_ix35831z52925_a1_cout)) # (!r1[8] & ((!add3_add11_0_ix35831z52925_a1_cout) # (!nx35831z3))))

	.dataa(r1[8]),
	.datab(nx35831z3),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_ix35831z52925_a1_cout),
	.combout(add3[8]),
	.cout(nx35831z2));
// synopsys translate_off
defparam add3_add11_0_ix35831z52925.lut_mask = 16'h9617;
defparam add3_add11_0_ix35831z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N8
cycloneii_lcell_comb add3_add11_0_ix35831z52924(
// Equation(s):
// add3[9] = (r1[9] & (nx35831z2 $ (GND))) # (!r1[9] & (!nx35831z2 & VCC))
// nx35831z1 = CARRY((r1[9] & !nx35831z2))

	.dataa(vcc),
	.datab(r1[9]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx35831z2),
	.combout(add3[9]),
	.cout(nx35831z1));
// synopsys translate_off
defparam add3_add11_0_ix35831z52924.lut_mask = 16'hC30C;
defparam add3_add11_0_ix35831z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y22_N22
cycloneii_lcell_comb ix43050z52923(
// Equation(s):
// nx43050z1 = (!valid_bits_stage1[0] & (add3[9] & !i_reset_acombout))

	.dataa(valid_bits_stage1[0]),
	.datab(vcc),
	.datac(add3[9]),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx43050z1),
	.cout());
// synopsys translate_off
defparam ix43050z52923.lut_mask = 16'h0050;
defparam ix43050z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N23
cycloneii_lcell_ff reg_r1_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43050z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1[9]));

// Location: LCCOMB_X30_Y22_N10
cycloneii_lcell_comb add3_add11_0_ix35831z52923(
// Equation(s):
// add3[10] = nx35831z1 $ (r1[10])

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r1[10]),
	.cin(nx35831z1),
	.combout(add3[10]),
	.cout());
// synopsys translate_off
defparam add3_add11_0_ix35831z52923.lut_mask = 16'h0FF0;
defparam add3_add11_0_ix35831z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y23_N8
cycloneii_lcell_comb ix35831z52936(
// Equation(s):
// nx35831z12 = (valid_bits_stage1[3]) # (i_reset_acombout)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_bits_stage1[3]),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx35831z12),
	.cout());
// synopsys translate_off
defparam ix35831z52936.lut_mask = 16'hFFF0;
defparam ix35831z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N11
cycloneii_lcell_ff reg_r4_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3[10]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[10]));

// Location: LCCOMB_X30_Y22_N24
cycloneii_lcell_comb r4_a8_a_afeeder(
// Equation(s):
// r4_a8_a_afeeder_combout = add3[8]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3[8]),
	.cin(gnd),
	.combout(r4_a8_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a8_a_afeeder.lut_mask = 16'hFF00;
defparam r4_a8_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N25
cycloneii_lcell_ff reg_r4_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a8_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[8]));

// Location: LCCOMB_X30_Y22_N12
cycloneii_lcell_comb r4_a6_a_afeeder(
// Equation(s):
// r4_a6_a_afeeder_combout = add3[6]

	.dataa(vcc),
	.datab(vcc),
	.datac(add3[6]),
	.datad(vcc),
	.cin(gnd),
	.combout(r4_a6_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a6_a_afeeder.lut_mask = 16'hF0F0;
defparam r4_a6_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N13
cycloneii_lcell_ff reg_r4_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a6_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[6]));

// Location: LCCOMB_X30_Y22_N0
cycloneii_lcell_comb r4_a4_a_afeeder(
// Equation(s):
// r4_a4_a_afeeder_combout = add3[4]

	.dataa(vcc),
	.datab(vcc),
	.datac(add3[4]),
	.datad(vcc),
	.cin(gnd),
	.combout(r4_a4_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a4_a_afeeder.lut_mask = 16'hF0F0;
defparam r4_a4_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N1
cycloneii_lcell_ff reg_r4_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a4_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[4]));

// Location: LCCOMB_X30_Y22_N20
cycloneii_lcell_comb r4_a2_a_afeeder(
// Equation(s):
// r4_a2_a_afeeder_combout = add3[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(add3[2]),
	.datad(vcc),
	.cin(gnd),
	.combout(r4_a2_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a2_a_afeeder.lut_mask = 16'hF0F0;
defparam r4_a2_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N21
cycloneii_lcell_ff reg_r4_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a2_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[2]));

// Location: LCCOMB_X30_Y22_N30
cycloneii_lcell_comb r4_a1_a_afeeder(
// Equation(s):
// r4_a1_a_afeeder_combout = add3[1]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3[1]),
	.cin(gnd),
	.combout(r4_a1_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r4_a1_a_afeeder.lut_mask = 16'hFF00;
defparam r4_a1_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N31
cycloneii_lcell_ff reg_r4_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r4_a1_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4[1]));

// Location: LCCOMB_X29_Y22_N2
cycloneii_lcell_comb add4_add11_2_ix21429z52934(
// Equation(s):
// nx21429z11 = CARRY((add4[0] & r4[1]))

	.dataa(add4[0]),
	.datab(r4[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx21429z11));
// synopsys translate_off
defparam add4_add11_2_ix21429z52934.lut_mask = 16'h0088;
defparam add4_add11_2_ix21429z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N6
cycloneii_lcell_comb add4_add11_2_ix21429z52932(
// Equation(s):
// add4[3] = ((r4[3] $ (r4[2] $ (!nx21429z10)))) # (GND)
// nx21429z9 = CARRY((r4[3] & ((r4[2]) # (!nx21429z10))) # (!r4[3] & (r4[2] & !nx21429z10)))

	.dataa(r4[3]),
	.datab(r4[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z10),
	.combout(add4[3]),
	.cout(nx21429z9));
// synopsys translate_off
defparam add4_add11_2_ix21429z52932.lut_mask = 16'h698E;
defparam add4_add11_2_ix21429z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N10
cycloneii_lcell_comb add4_add11_2_ix21429z52930(
// Equation(s):
// add4[5] = ((r4[5] $ (r4[4] $ (!nx21429z8)))) # (GND)
// nx21429z7 = CARRY((r4[5] & ((r4[4]) # (!nx21429z8))) # (!r4[5] & (r4[4] & !nx21429z8)))

	.dataa(r4[5]),
	.datab(r4[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z8),
	.combout(add4[5]),
	.cout(nx21429z7));
// synopsys translate_off
defparam add4_add11_2_ix21429z52930.lut_mask = 16'h698E;
defparam add4_add11_2_ix21429z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N12
cycloneii_lcell_comb add4_add11_2_ix21429z52929(
// Equation(s):
// add4[6] = (r4[5] & ((r4[6] & (nx21429z7 & VCC)) # (!r4[6] & (!nx21429z7)))) # (!r4[5] & ((r4[6] & (!nx21429z7)) # (!r4[6] & ((nx21429z7) # (GND)))))
// nx21429z6 = CARRY((r4[5] & (!r4[6] & !nx21429z7)) # (!r4[5] & ((!nx21429z7) # (!r4[6]))))

	.dataa(r4[5]),
	.datab(r4[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z7),
	.combout(add4[6]),
	.cout(nx21429z6));
// synopsys translate_off
defparam add4_add11_2_ix21429z52929.lut_mask = 16'h9617;
defparam add4_add11_2_ix21429z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N16
cycloneii_lcell_comb add4_add11_2_ix21429z52927(
// Equation(s):
// add4[8] = (r4[7] & ((r4[8] & (nx21429z5 & VCC)) # (!r4[8] & (!nx21429z5)))) # (!r4[7] & ((r4[8] & (!nx21429z5)) # (!r4[8] & ((nx21429z5) # (GND)))))
// nx21429z4 = CARRY((r4[7] & (!r4[8] & !nx21429z5)) # (!r4[7] & ((!nx21429z5) # (!r4[8]))))

	.dataa(r4[7]),
	.datab(r4[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z5),
	.combout(add4[8]),
	.cout(nx21429z4));
// synopsys translate_off
defparam add4_add11_2_ix21429z52927.lut_mask = 16'h9617;
defparam add4_add11_2_ix21429z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N20
cycloneii_lcell_comb add4_add11_2_ix21429z52925(
// Equation(s):
// add4[10] = (r4[9] & ((r4[10] & (nx21429z3 & VCC)) # (!r4[10] & (!nx21429z3)))) # (!r4[9] & ((r4[10] & (!nx21429z3)) # (!r4[10] & ((nx21429z3) # (GND)))))
// nx21429z2 = CARRY((r4[9] & (!r4[10] & !nx21429z3)) # (!r4[9] & ((!nx21429z3) # (!r4[10]))))

	.dataa(r4[9]),
	.datab(r4[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z3),
	.combout(add4[10]),
	.cout(nx21429z2));
// synopsys translate_off
defparam add4_add11_2_ix21429z52925.lut_mask = 16'h9617;
defparam add4_add11_2_ix21429z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N22
cycloneii_lcell_comb add4_add11_2_ix21429z52924(
// Equation(s):
// add4[11] = (r4[10] & (nx21429z2 $ (GND))) # (!r4[10] & (!nx21429z2 & VCC))
// add4[12] = CARRY((r4[10] & !nx21429z2))

	.dataa(vcc),
	.datab(r4[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx21429z2),
	.combout(add4[11]),
	.cout(add4[12]));
// synopsys translate_off
defparam add4_add11_2_ix21429z52924.lut_mask = 16'hC30C;
defparam add4_add11_2_ix21429z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y22_N24
cycloneii_lcell_comb ix21429z52923(
// Equation(s):
// nx21429z1 = add4[12]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add4[12]),
	.combout(nx21429z1),
	.cout());
// synopsys translate_off
defparam ix21429z52923.lut_mask = 16'hF0F0;
defparam ix21429z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y23_N14
cycloneii_lcell_comb ix21429z52935(
// Equation(s):
// nx21429z12 = (valid_bits_stage2[1]) # (i_reset_acombout)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_bits_stage2[1]),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx21429z12),
	.cout());
// synopsys translate_off
defparam ix21429z52935.lut_mask = 16'hFFF0;
defparam ix21429z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y22_N25
cycloneii_lcell_ff reg_r6_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21429z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[12]));

// Location: LCFF_X29_Y22_N23
cycloneii_lcell_ff reg_r6_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[11]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[11]));

// Location: LCFF_X29_Y22_N21
cycloneii_lcell_ff reg_r6_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[10]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[10]));

// Location: LCFF_X29_Y22_N17
cycloneii_lcell_ff reg_r6_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[8]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[8]));

// Location: LCFF_X29_Y22_N13
cycloneii_lcell_ff reg_r6_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[6]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[6]));

// Location: LCFF_X29_Y22_N11
cycloneii_lcell_ff reg_r6_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[5]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[5]));

// Location: LCFF_X29_Y22_N7
cycloneii_lcell_ff reg_r6_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[3]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[3]));

// Location: LCCOMB_X30_Y22_N16
cycloneii_lcell_comb add4_a0_a_afeeder(
// Equation(s):
// add4_a0_a_afeeder_combout = add3[0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3[0]),
	.cin(gnd),
	.combout(add4_a0_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam add4_a0_a_afeeder.lut_mask = 16'hFF00;
defparam add4_a0_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y22_N17
cycloneii_lcell_ff reg_r4_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_a0_a_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx35831z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(add4[0]));

// Location: LCCOMB_X28_Y22_N28
cycloneii_lcell_comb add4_add11_2_ix58515z52923(
// Equation(s):
// add4[1] = r4[1] $ (add4[0])

	.dataa(vcc),
	.datab(vcc),
	.datac(r4[1]),
	.datad(add4[0]),
	.cin(gnd),
	.combout(add4[1]),
	.cout());
// synopsys translate_off
defparam add4_add11_2_ix58515z52923.lut_mask = 16'h0FF0;
defparam add4_add11_2_ix58515z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y22_N29
cycloneii_lcell_ff reg_r6_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4[1]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6[1]));

// Location: LCCOMB_X29_Y23_N6
cycloneii_lcell_comb add5_add13_3_ix40727z52938(
// Equation(s):
// nx40727z14 = CARRY((r6[0]) # (r6[1]))

	.dataa(r6[0]),
	.datab(r6[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx40727z14));
// synopsys translate_off
defparam add5_add13_3_ix40727z52938.lut_mask = 16'h00EE;
defparam add5_add13_3_ix40727z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N8
cycloneii_lcell_comb add5_add13_3_ix40727z52937(
// Equation(s):
// nx40727z13 = CARRY((!r6[2] & !nx40727z14))

	.dataa(r6[2]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z14),
	.combout(),
	.cout(nx40727z13));
// synopsys translate_off
defparam add5_add13_3_ix40727z52937.lut_mask = 16'h0005;
defparam add5_add13_3_ix40727z52937.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N14
cycloneii_lcell_comb add5_add13_3_ix40727z52934(
// Equation(s):
// add5_5_ = (r6[5] & ((GND) # (!nx40727z11))) # (!r6[5] & (nx40727z11 $ (GND)))
// nx40727z10 = CARRY((r6[5]) # (!nx40727z11))

	.dataa(vcc),
	.datab(r6[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z11),
	.combout(add5_5_),
	.cout(nx40727z10));
// synopsys translate_off
defparam add5_add13_3_ix40727z52934.lut_mask = 16'h3CCF;
defparam add5_add13_3_ix40727z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N16
cycloneii_lcell_comb add5_add13_3_ix40727z52933(
// Equation(s):
// add5_6_ = (r6[6] & (nx40727z10 & VCC)) # (!r6[6] & (!nx40727z10))
// nx40727z9 = CARRY((!r6[6] & !nx40727z10))

	.dataa(vcc),
	.datab(r6[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z10),
	.combout(add5_6_),
	.cout(nx40727z9));
// synopsys translate_off
defparam add5_add13_3_ix40727z52933.lut_mask = 16'hC303;
defparam add5_add13_3_ix40727z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N18
cycloneii_lcell_comb add5_add13_3_ix40727z52932(
// Equation(s):
// add5_7_ = (r6[7] & (nx40727z9 $ (GND))) # (!r6[7] & (!nx40727z9 & VCC))
// nx40727z8 = CARRY((r6[7] & !nx40727z9))

	.dataa(r6[7]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z9),
	.combout(add5_7_),
	.cout(nx40727z8));
// synopsys translate_off
defparam add5_add13_3_ix40727z52932.lut_mask = 16'hA50A;
defparam add5_add13_3_ix40727z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y23_N24
cycloneii_lcell_comb add5_add13_3_ix40727z52929(
// Equation(s):
// add5_10_ = (r6[10] & (!nx40727z6)) # (!r6[10] & ((nx40727z6) # (GND)))
// nx40727z5 = CARRY((!nx40727z6) # (!r6[10]))

	.dataa(vcc),
	.datab(r6[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z6),
	.combout(add5_10_),
	.cout(nx40727z5));
// synopsys translate_off
defparam add5_add13_3_ix40727z52929.lut_mask = 16'h3C3F;
defparam add5_add13_3_ix40727z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N26
cycloneii_lcell_comb ix42053z52923_a1(
// Equation(s):
// ix42053z52923_a1_cout = CARRY(add1_a8_a_a0_combout)

	.dataa(vcc),
	.datab(add1_a8_a_a0_combout),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix42053z52923_a1_cout));
// synopsys translate_off
defparam ix42053z52923_a1.lut_mask = 16'h00CC;
defparam ix42053z52923_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N28
cycloneii_lcell_comb ix42053z52923(
// Equation(s):
// nx42053z1 = ix42053z52923_a1_cout

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42053z52923_a1_cout),
	.combout(nx42053z1),
	.cout());
// synopsys translate_off
defparam ix42053z52923.lut_mask = 16'hF0F0;
defparam ix42053z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N18
cycloneii_lcell_comb ix28963z52936(
// Equation(s):
// nx28963z8 = (!valid_bits_stage1[2] & (!valid_bits_stage1[0] & (conv_table_2__2_[6] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_2__2_[6]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z8),
	.cout());
// synopsys translate_off
defparam ix28963z52936.lut_mask = 16'h0010;
defparam ix28963z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y23_N15
cycloneii_lcell_ff reg_conv_table_0__0__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[6]));

// Location: LCFF_X32_Y21_N23
cycloneii_lcell_ff reg_conv_table_0__2__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[6]));

// Location: LCCOMB_X31_Y23_N14
cycloneii_lcell_comb ix28963z52937(
// Equation(s):
// nx28963z9 = (valid_bits_stage1[0] & (((conv_table_0__2_[6])))) # (!valid_bits_stage1[0] & (valid_bits_stage1[1] & (conv_table_0__0_[6])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__0_[6]),
	.datad(conv_table_0__2_[6]),
	.cin(gnd),
	.combout(nx28963z9),
	.cout());
// synopsys translate_off
defparam ix28963z52937.lut_mask = 16'hEC20;
defparam ix28963z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N20
cycloneii_lcell_comb ix28963z52935(
// Equation(s):
// i1_magnitude[6] = (nx28963z8) # ((nx28963z9) # ((nx42053z2 & conv_table_2__0_[6])))

	.dataa(nx42053z2),
	.datab(nx28963z8),
	.datac(nx28963z9),
	.datad(conv_table_2__0_[6]),
	.cin(gnd),
	.combout(i1_magnitude[6]),
	.cout());
// synopsys translate_off
defparam ix28963z52935.lut_mask = 16'hFEFC;
defparam ix28963z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N22
cycloneii_lcell_comb ix55550z52923(
// Equation(s):
// nx55550z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[6])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[6])))

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx55550z1),
	.cout());
// synopsys translate_off
defparam ix55550z52923.lut_mask = 16'hBB88;
defparam ix55550z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N23
cycloneii_lcell_ff reg_conv_table_2__1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55550z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[6]));

// Location: LCCOMB_X31_Y22_N2
cycloneii_lcell_comb ix28963z52940(
// Equation(s):
// nx28963z11 = (valid_bits_stage1[0] & (conv_table_1__0_[6])) # (!valid_bits_stage1[0] & (((valid_bits_stage1[1] & conv_table_2__1_[6]))))

	.dataa(conv_table_1__0_[6]),
	.datab(valid_bits_stage1[0]),
	.datac(valid_bits_stage1[1]),
	.datad(conv_table_2__1_[6]),
	.cin(gnd),
	.combout(nx28963z11),
	.cout());
// synopsys translate_off
defparam ix28963z52940.lut_mask = 16'hB888;
defparam ix28963z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y21_N17
cycloneii_lcell_ff reg_conv_table_1__1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[6]));

// Location: LCFF_X32_Y21_N7
cycloneii_lcell_ff reg_conv_table_0__1__6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[6]));

// Location: LCCOMB_X31_Y22_N0
cycloneii_lcell_comb ix28963z52939(
// Equation(s):
// nx28963z10 = (!valid_bits_stage1[2] & (!valid_bits_stage1[0] & (!valid_bits_stage1[1] & conv_table_0__1_[6])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[0]),
	.datac(valid_bits_stage1[1]),
	.datad(conv_table_0__1_[6]),
	.cin(gnd),
	.combout(nx28963z10),
	.cout());
// synopsys translate_off
defparam ix28963z52939.lut_mask = 16'h0100;
defparam ix28963z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y22_N22
cycloneii_lcell_comb ix28963z52938(
// Equation(s):
// i2_magnitude[6] = (nx28963z11) # ((nx28963z10) # ((nx42053z2 & conv_table_1__2_[6])))

	.dataa(nx42053z2),
	.datab(nx28963z11),
	.datac(conv_table_1__2_[6]),
	.datad(nx28963z10),
	.cin(gnd),
	.combout(i2_magnitude[6]),
	.cout());
// synopsys translate_off
defparam ix28963z52938.lut_mask = 16'hFFEC;
defparam ix28963z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y22_N19
cycloneii_lcell_ff reg_conv_table_0__2__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__2_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__2_[7]));

// Location: LCCOMB_X33_Y22_N8
cycloneii_lcell_comb ix28963z52929(
// Equation(s):
// nx28963z4 = (valid_bits_stage1[0] & (((conv_table_0__2_[7])))) # (!valid_bits_stage1[0] & (conv_table_0__0_[7] & (valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_0__0_[7]),
	.datac(valid_bits_stage1[1]),
	.datad(conv_table_0__2_[7]),
	.cin(gnd),
	.combout(nx28963z4),
	.cout());
// synopsys translate_off
defparam ix28963z52929.lut_mask = 16'hEA40;
defparam ix28963z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N16
cycloneii_lcell_comb ix28963z52927(
// Equation(s):
// i1_magnitude[7] = (nx28963z3) # ((nx28963z4) # ((conv_table_2__0_[7] & nx42053z2)))

	.dataa(nx28963z3),
	.datab(conv_table_2__0_[7]),
	.datac(nx42053z2),
	.datad(nx28963z4),
	.cin(gnd),
	.combout(i1_magnitude[7]),
	.cout());
// synopsys translate_off
defparam ix28963z52927.lut_mask = 16'hFFEA;
defparam ix28963z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N18
cycloneii_lcell_comb ix54553z52923(
// Equation(s):
// nx54553z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[7])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[7])))

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx54553z1),
	.cout());
// synopsys translate_off
defparam ix54553z52923.lut_mask = 16'hBB88;
defparam ix54553z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N19
cycloneii_lcell_ff reg_conv_table_2__1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54553z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[7]));

// Location: LCFF_X32_Y21_N29
cycloneii_lcell_ff reg_conv_table_1__1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[7]));

// Location: LCFF_X33_Y22_N3
cycloneii_lcell_ff reg_conv_table_0__1__7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[7]));

// Location: LCCOMB_X30_Y22_N18
cycloneii_lcell_comb ix28963z52931(
// Equation(s):
// nx28963z5 = (!valid_bits_stage1[2] & (conv_table_0__1_[7] & (!valid_bits_stage1[1] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[2]),
	.datab(conv_table_0__1_[7]),
	.datac(valid_bits_stage1[1]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z5),
	.cout());
// synopsys translate_off
defparam ix28963z52931.lut_mask = 16'h0004;
defparam ix28963z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y21_N30
cycloneii_lcell_comb ix28963z52930(
// Equation(s):
// i2_magnitude[7] = (nx28963z6) # ((nx28963z5) # ((conv_table_1__2_[7] & nx42053z2)))

	.dataa(nx28963z6),
	.datab(conv_table_1__2_[7]),
	.datac(nx28963z5),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i2_magnitude[7]),
	.cout());
// synopsys translate_off
defparam ix28963z52930.lut_mask = 16'hFEFA;
defparam ix28963z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N4
cycloneii_lcell_comb ix28963z52947(
// Equation(s):
// nx28963z16 = (valid_bits_stage1[0] & (((conv_table_1__0_[5])))) # (!valid_bits_stage1[0] & (conv_table_2__1_[5] & ((valid_bits_stage1[1]))))

	.dataa(conv_table_2__1_[5]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_1__0_[5]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z16),
	.cout());
// synopsys translate_off
defparam ix28963z52947.lut_mask = 16'hE2C0;
defparam ix28963z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N2
cycloneii_lcell_comb ix56547z52923(
// Equation(s):
// nx56547z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[5])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[5])))

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx56547z1),
	.cout());
// synopsys translate_off
defparam ix56547z52923.lut_mask = 16'hBB88;
defparam ix56547z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N3
cycloneii_lcell_ff reg_conv_table_2__1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56547z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[5]));

// Location: LCFF_X32_Y21_N9
cycloneii_lcell_ff reg_conv_table_1__1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[5]));

// Location: LCFF_X31_Y21_N31
cycloneii_lcell_ff reg_conv_table_0__1__5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[5]));

// Location: LCCOMB_X31_Y21_N26
cycloneii_lcell_comb ix28963z52946(
// Equation(s):
// nx28963z15 = (!valid_bits_stage1[2] & (!valid_bits_stage1[0] & (conv_table_0__1_[5] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__1_[5]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z15),
	.cout());
// synopsys translate_off
defparam ix28963z52946.lut_mask = 16'h0010;
defparam ix28963z52946.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N12
cycloneii_lcell_comb ix28963z52945(
// Equation(s):
// i2_magnitude[5] = (nx28963z16) # ((nx28963z15) # ((nx42053z2 & conv_table_1__2_[5])))

	.dataa(nx42053z2),
	.datab(conv_table_1__2_[5]),
	.datac(nx28963z16),
	.datad(nx28963z15),
	.cin(gnd),
	.combout(i2_magnitude[5]),
	.cout());
// synopsys translate_off
defparam ix28963z52945.lut_mask = 16'hFFF8;
defparam ix28963z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N30
cycloneii_lcell_comb ix57544z52923(
// Equation(s):
// nx57544z1 = (row_index[1] & (mem_aix64056z29481_aauto_generated_aq_a[4])) # (!row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[4])))

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx57544z1),
	.cout());
// synopsys translate_off
defparam ix57544z52923.lut_mask = 16'hBB88;
defparam ix57544z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N31
cycloneii_lcell_ff reg_conv_table_2__1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx57544z1),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__1_[4]));

// Location: LCFF_X33_Y21_N21
cycloneii_lcell_ff reg_conv_table_1__1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__1_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__1_[4]));

// Location: LCFF_X33_Y21_N11
cycloneii_lcell_ff reg_conv_table_0__1__4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__1_[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__1_[4]));

// Location: LCCOMB_X33_Y21_N28
cycloneii_lcell_comb ix28963z52953(
// Equation(s):
// nx28963z20 = (!valid_bits_stage1[0] & (conv_table_0__1_[4] & (!valid_bits_stage1[1] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_0__1_[4]),
	.datac(valid_bits_stage1[1]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx28963z20),
	.cout());
// synopsys translate_off
defparam ix28963z52953.lut_mask = 16'h0004;
defparam ix28963z52953.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y21_N18
cycloneii_lcell_comb ix28963z52954(
// Equation(s):
// nx28963z21 = (valid_bits_stage1[0] & (conv_table_1__0_[4])) # (!valid_bits_stage1[0] & (((conv_table_2__1_[4] & valid_bits_stage1[1]))))

	.dataa(conv_table_1__0_[4]),
	.datab(conv_table_2__1_[4]),
	.datac(valid_bits_stage1[0]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z21),
	.cout());
// synopsys translate_off
defparam ix28963z52954.lut_mask = 16'hACA0;
defparam ix28963z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N0
cycloneii_lcell_comb ix28963z52952(
// Equation(s):
// i2_magnitude[4] = (nx28963z20) # ((nx28963z21) # ((conv_table_1__2_[4] & nx42053z2)))

	.dataa(conv_table_1__2_[4]),
	.datab(nx42053z2),
	.datac(nx28963z20),
	.datad(nx28963z21),
	.cin(gnd),
	.combout(i2_magnitude[4]),
	.cout());
// synopsys translate_off
defparam ix28963z52952.lut_mask = 16'hFFF8;
defparam ix28963z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y21_N20
cycloneii_lcell_comb ix28963z52957(
// Equation(s):
// nx28963z23 = (!valid_bits_stage1[2] & (!valid_bits_stage1[1] & (conv_table_2__2_[3] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[1]),
	.datac(conv_table_2__2_[3]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z23),
	.cout());
// synopsys translate_off
defparam ix28963z52957.lut_mask = 16'h0010;
defparam ix28963z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N8
cycloneii_lcell_comb ix53406z52923(
// Equation(s):
// nx53406z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[3]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[3]))

	.dataa(row_index[1]),
	.datab(mem_0_aix64056z29482_aauto_generated_aq_a[3]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx53406z1),
	.cout());
// synopsys translate_off
defparam ix53406z52923.lut_mask = 16'hEE44;
defparam ix53406z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N9
cycloneii_lcell_ff reg_conv_table_2__0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx53406z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[3]));

// Location: LCFF_X31_Y21_N7
cycloneii_lcell_ff reg_conv_table_1__0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[3]));

// Location: LCFF_X31_Y21_N11
cycloneii_lcell_ff reg_conv_table_0__0__3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[3]));

// Location: LCCOMB_X31_Y21_N10
cycloneii_lcell_comb ix28963z52958(
// Equation(s):
// nx28963z24 = (valid_bits_stage1[0] & (conv_table_0__2_[3])) # (!valid_bits_stage1[0] & (((conv_table_0__0_[3] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__2_[3]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__0_[3]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z24),
	.cout());
// synopsys translate_off
defparam ix28963z52958.lut_mask = 16'hB888;
defparam ix28963z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N2
cycloneii_lcell_comb ix28963z52956(
// Equation(s):
// i1_magnitude[3] = (nx28963z23) # ((nx28963z24) # ((conv_table_2__0_[3] & nx42053z2)))

	.dataa(conv_table_2__0_[3]),
	.datab(nx42053z2),
	.datac(nx28963z23),
	.datad(nx28963z24),
	.cin(gnd),
	.combout(i1_magnitude[3]),
	.cout());
// synopsys translate_off
defparam ix28963z52956.lut_mask = 16'hFFF8;
defparam ix28963z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N0
cycloneii_lcell_comb ix28963z52967(
// Equation(s):
// nx28963z30 = (conv_table_0__1_[2] & (!valid_bits_stage1[0] & (!valid_bits_stage1[2] & !valid_bits_stage1[1])))

	.dataa(conv_table_0__1_[2]),
	.datab(valid_bits_stage1[0]),
	.datac(valid_bits_stage1[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z30),
	.cout());
// synopsys translate_off
defparam ix28963z52967.lut_mask = 16'h0002;
defparam ix28963z52967.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N16
cycloneii_lcell_comb ix28963z52966(
// Equation(s):
// i2_magnitude[2] = (nx28963z31) # ((nx28963z30) # ((nx42053z2 & conv_table_1__2_[2])))

	.dataa(nx28963z31),
	.datab(nx42053z2),
	.datac(conv_table_1__2_[2]),
	.datad(nx28963z30),
	.cin(gnd),
	.combout(i2_magnitude[2]),
	.cout());
// synopsys translate_off
defparam ix28963z52966.lut_mask = 16'hFFEA;
defparam ix28963z52966.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N4
cycloneii_lcell_comb ix28963z52971(
// Equation(s):
// nx28963z33 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_2__2_[1] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_2__2_[1]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z33),
	.cout());
// synopsys translate_off
defparam ix28963z52971.lut_mask = 16'h0010;
defparam ix28963z52971.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N2
cycloneii_lcell_comb ix28963z52970(
// Equation(s):
// i1_magnitude[1] = (nx28963z34) # ((nx28963z33) # ((conv_table_2__0_[1] & nx42053z2)))

	.dataa(nx28963z34),
	.datab(conv_table_2__0_[1]),
	.datac(nx28963z33),
	.datad(nx42053z2),
	.cin(gnd),
	.combout(i1_magnitude[1]),
	.cout());
// synopsys translate_off
defparam ix28963z52970.lut_mask = 16'hFEFA;
defparam ix28963z52970.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N28
cycloneii_lcell_comb ix28963z52978(
// Equation(s):
// nx28963z38 = (!valid_bits_stage1[0] & (conv_table_0__1_[0] & (!valid_bits_stage1[1] & !valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_0__1_[0]),
	.datac(valid_bits_stage1[1]),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx28963z38),
	.cout());
// synopsys translate_off
defparam ix28963z52978.lut_mask = 16'h0004;
defparam ix28963z52978.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y22_N8
cycloneii_lcell_comb ix28963z52979(
// Equation(s):
// nx28963z39 = (valid_bits_stage1[0] & (conv_table_1__0_[0])) # (!valid_bits_stage1[0] & (((valid_bits_stage1[1] & conv_table_2__1_[0]))))

	.dataa(valid_bits_stage1[0]),
	.datab(conv_table_1__0_[0]),
	.datac(valid_bits_stage1[1]),
	.datad(conv_table_2__1_[0]),
	.cin(gnd),
	.combout(nx28963z39),
	.cout());
// synopsys translate_off
defparam ix28963z52979.lut_mask = 16'hD888;
defparam ix28963z52979.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N6
cycloneii_lcell_comb ix28963z52977(
// Equation(s):
// i2_magnitude[0] = (nx28963z38) # ((nx28963z39) # ((conv_table_1__2_[0] & nx42053z2)))

	.dataa(conv_table_1__2_[0]),
	.datab(nx28963z38),
	.datac(nx42053z2),
	.datad(nx28963z39),
	.cin(gnd),
	.combout(i2_magnitude[0]),
	.cout());
// synopsys translate_off
defparam ix28963z52977.lut_mask = 16'hFFEC;
defparam ix28963z52977.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N16
cycloneii_lcell_comb ix28963z52976(
// Equation(s):
// nx28963z37 = CARRY((!i1_magnitude[0] & i2_magnitude[0]))

	.dataa(i1_magnitude[0]),
	.datab(i2_magnitude[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx28963z37));
// synopsys translate_off
defparam ix28963z52976.lut_mask = 16'h0044;
defparam ix28963z52976.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N18
cycloneii_lcell_comb ix28963z52969(
// Equation(s):
// nx28963z32 = CARRY((i2_magnitude[1] & (i1_magnitude[1] & !nx28963z37)) # (!i2_magnitude[1] & ((i1_magnitude[1]) # (!nx28963z37))))

	.dataa(i2_magnitude[1]),
	.datab(i1_magnitude[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z37),
	.combout(),
	.cout(nx28963z32));
// synopsys translate_off
defparam ix28963z52969.lut_mask = 16'h004D;
defparam ix28963z52969.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N20
cycloneii_lcell_comb ix28963z52962(
// Equation(s):
// nx28963z27 = CARRY((i1_magnitude[2] & (i2_magnitude[2] & !nx28963z32)) # (!i1_magnitude[2] & ((i2_magnitude[2]) # (!nx28963z32))))

	.dataa(i1_magnitude[2]),
	.datab(i2_magnitude[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z32),
	.combout(),
	.cout(nx28963z27));
// synopsys translate_off
defparam ix28963z52962.lut_mask = 16'h004D;
defparam ix28963z52962.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N22
cycloneii_lcell_comb ix28963z52955(
// Equation(s):
// nx28963z22 = CARRY((i2_magnitude[3] & (i1_magnitude[3] & !nx28963z27)) # (!i2_magnitude[3] & ((i1_magnitude[3]) # (!nx28963z27))))

	.dataa(i2_magnitude[3]),
	.datab(i1_magnitude[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z27),
	.combout(),
	.cout(nx28963z22));
// synopsys translate_off
defparam ix28963z52955.lut_mask = 16'h004D;
defparam ix28963z52955.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N24
cycloneii_lcell_comb ix28963z52948(
// Equation(s):
// nx28963z17 = CARRY((i1_magnitude[4] & (i2_magnitude[4] & !nx28963z22)) # (!i1_magnitude[4] & ((i2_magnitude[4]) # (!nx28963z22))))

	.dataa(i1_magnitude[4]),
	.datab(i2_magnitude[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z22),
	.combout(),
	.cout(nx28963z17));
// synopsys translate_off
defparam ix28963z52948.lut_mask = 16'h004D;
defparam ix28963z52948.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N26
cycloneii_lcell_comb ix28963z52941(
// Equation(s):
// nx28963z12 = CARRY((i1_magnitude[5] & ((!nx28963z17) # (!i2_magnitude[5]))) # (!i1_magnitude[5] & (!i2_magnitude[5] & !nx28963z17)))

	.dataa(i1_magnitude[5]),
	.datab(i2_magnitude[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z17),
	.combout(),
	.cout(nx28963z12));
// synopsys translate_off
defparam ix28963z52941.lut_mask = 16'h002B;
defparam ix28963z52941.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N28
cycloneii_lcell_comb ix28963z52934(
// Equation(s):
// nx28963z7 = CARRY((i2_magnitude[6] & ((!nx28963z12) # (!i1_magnitude[6]))) # (!i2_magnitude[6] & (!i1_magnitude[6] & !nx28963z12)))

	.dataa(i2_magnitude[6]),
	.datab(i1_magnitude[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z12),
	.combout(),
	.cout(nx28963z7));
// synopsys translate_off
defparam ix28963z52934.lut_mask = 16'h002B;
defparam ix28963z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N30
cycloneii_lcell_comb ix28963z52933(
// Equation(s):
// not_rtlc0_copy_n346 = (i1_magnitude[7] & (nx28963z7 & i2_magnitude[7])) # (!i1_magnitude[7] & ((nx28963z7) # (i2_magnitude[7])))

	.dataa(vcc),
	.datab(i1_magnitude[7]),
	.datac(vcc),
	.datad(i2_magnitude[7]),
	.cin(nx28963z7),
	.combout(not_rtlc0_copy_n346),
	.cout());
// synopsys translate_off
defparam ix28963z52933.lut_mask = 16'hF330;
defparam ix28963z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N8
cycloneii_lcell_comb ix28963z52984(
// Equation(s):
// max1_magnitude[6] = (not_rtlc0_copy_n346 & ((i2_magnitude[6]))) # (!not_rtlc0_copy_n346 & (i1_magnitude[6]))

	.dataa(vcc),
	.datab(i1_magnitude[6]),
	.datac(i2_magnitude[6]),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[6]),
	.cout());
// synopsys translate_off
defparam ix28963z52984.lut_mask = 16'hF0CC;
defparam ix28963z52984.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y24_N10
cycloneii_lcell_comb ix28963z52986(
// Equation(s):
// max1_magnitude[5] = (not_rtlc0_copy_n346 & ((i2_magnitude[5]))) # (!not_rtlc0_copy_n346 & (i1_magnitude[5]))

	.dataa(i1_magnitude[5]),
	.datab(vcc),
	.datac(i2_magnitude[5]),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[5]),
	.cout());
// synopsys translate_off
defparam ix28963z52986.lut_mask = 16'hF0AA;
defparam ix28963z52986.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y21_N12
cycloneii_lcell_comb ix54403z52923(
// Equation(s):
// nx54403z1 = (row_index[1] & ((mem_1_aix64056z29483_aauto_generated_aq_a[2]))) # (!row_index[1] & (mem_0_aix64056z29482_aauto_generated_aq_a[2]))

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[2]),
	.datab(row_index[1]),
	.datac(vcc),
	.datad(mem_1_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx54403z1),
	.cout());
// synopsys translate_off
defparam ix54403z52923.lut_mask = 16'hEE22;
defparam ix54403z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y21_N13
cycloneii_lcell_ff reg_conv_table_2__0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54403z1),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(row_index[2]),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_2__0_[2]));

// Location: LCFF_X31_Y24_N13
cycloneii_lcell_ff reg_conv_table_1__0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_2__0_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_1__0_[2]));

// Location: LCFF_X31_Y24_N19
cycloneii_lcell_ff reg_conv_table_0__0__2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(conv_table_1__0_[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx59688z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(conv_table_0__0_[2]));

// Location: LCCOMB_X31_Y24_N4
cycloneii_lcell_comb ix28963z52965(
// Equation(s):
// nx28963z29 = (valid_bits_stage1[0] & (conv_table_0__2_[2])) # (!valid_bits_stage1[0] & (((conv_table_0__0_[2] & valid_bits_stage1[1]))))

	.dataa(conv_table_0__2_[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_0__0_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z29),
	.cout());
// synopsys translate_off
defparam ix28963z52965.lut_mask = 16'hB888;
defparam ix28963z52965.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N26
cycloneii_lcell_comb ix28963z52964(
// Equation(s):
// nx28963z28 = (!valid_bits_stage1[2] & (!valid_bits_stage1[0] & (conv_table_2__2_[2] & !valid_bits_stage1[1])))

	.dataa(valid_bits_stage1[2]),
	.datab(valid_bits_stage1[0]),
	.datac(conv_table_2__2_[2]),
	.datad(valid_bits_stage1[1]),
	.cin(gnd),
	.combout(nx28963z28),
	.cout());
// synopsys translate_off
defparam ix28963z52964.lut_mask = 16'h0010;
defparam ix28963z52964.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N14
cycloneii_lcell_comb ix28963z52963(
// Equation(s):
// i1_magnitude[2] = (nx28963z29) # ((nx28963z28) # ((nx42053z2 & conv_table_2__0_[2])))

	.dataa(nx42053z2),
	.datab(conv_table_2__0_[2]),
	.datac(nx28963z29),
	.datad(nx28963z28),
	.cin(gnd),
	.combout(i1_magnitude[2]),
	.cout());
// synopsys translate_off
defparam ix28963z52963.lut_mask = 16'hFFF8;
defparam ix28963z52963.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y24_N8
cycloneii_lcell_comb ix28963z52992(
// Equation(s):
// max1_magnitude[2] = (not_rtlc0_copy_n346 & (i2_magnitude[2])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[2])))

	.dataa(vcc),
	.datab(i2_magnitude[2]),
	.datac(i1_magnitude[2]),
	.datad(not_rtlc0_copy_n346),
	.cin(gnd),
	.combout(max1_magnitude[2]),
	.cout());
// synopsys translate_off
defparam ix28963z52992.lut_mask = 16'hCCF0;
defparam ix28963z52992.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y23_N22
cycloneii_lcell_comb ix28963z52994(
// Equation(s):
// max1_magnitude[1] = (not_rtlc0_copy_n346 & (i2_magnitude[1])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[1])))

	.dataa(i2_magnitude[1]),
	.datab(vcc),
	.datac(not_rtlc0_copy_n346),
	.datad(i1_magnitude[1]),
	.cin(gnd),
	.combout(max1_magnitude[1]),
	.cout());
// synopsys translate_off
defparam ix28963z52994.lut_mask = 16'hAFA0;
defparam ix28963z52994.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N30
cycloneii_lcell_comb ix28963z52981(
// Equation(s):
// nx28963z40 = (!valid_bits_stage1[1] & (!valid_bits_stage1[2] & (conv_table_2__2_[0] & !valid_bits_stage1[0])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[2]),
	.datac(conv_table_2__2_[0]),
	.datad(valid_bits_stage1[0]),
	.cin(gnd),
	.combout(nx28963z40),
	.cout());
// synopsys translate_off
defparam ix28963z52981.lut_mask = 16'h0010;
defparam ix28963z52981.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N24
cycloneii_lcell_comb ix28963z52980(
// Equation(s):
// i1_magnitude[0] = (nx28963z41) # ((nx28963z40) # ((conv_table_2__0_[0] & nx42053z2)))

	.dataa(nx28963z41),
	.datab(conv_table_2__0_[0]),
	.datac(nx42053z2),
	.datad(nx28963z40),
	.cin(gnd),
	.combout(i1_magnitude[0]),
	.cout());
// synopsys translate_off
defparam ix28963z52980.lut_mask = 16'hFFEA;
defparam ix28963z52980.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y22_N0
cycloneii_lcell_comb ix28963z52996(
// Equation(s):
// max1_magnitude[0] = (not_rtlc0_copy_n346 & (i2_magnitude[0])) # (!not_rtlc0_copy_n346 & ((i1_magnitude[0])))

	.dataa(i2_magnitude[0]),
	.datab(vcc),
	.datac(not_rtlc0_copy_n346),
	.datad(i1_magnitude[0]),
	.cin(gnd),
	.combout(max1_magnitude[0]),
	.cout());
// synopsys translate_off
defparam ix28963z52996.lut_mask = 16'hAFA0;
defparam ix28963z52996.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N14
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52995(
// Equation(s):
// nx28963z48 = CARRY((add1[0] & max1_magnitude[0]))

	.dataa(add1[0]),
	.datab(max1_magnitude[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx28963z48));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52995.lut_mask = 16'h0088;
defparam add2_magnitude_add9_4_ix28963z52995.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N16
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52993(
// Equation(s):
// add2_magnitude[1] = (add1[1] & ((max1_magnitude[1] & (nx28963z48 & VCC)) # (!max1_magnitude[1] & (!nx28963z48)))) # (!add1[1] & ((max1_magnitude[1] & (!nx28963z48)) # (!max1_magnitude[1] & ((nx28963z48) # (GND)))))
// nx28963z47 = CARRY((add1[1] & (!max1_magnitude[1] & !nx28963z48)) # (!add1[1] & ((!nx28963z48) # (!max1_magnitude[1]))))

	.dataa(add1[1]),
	.datab(max1_magnitude[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z48),
	.combout(add2_magnitude[1]),
	.cout(nx28963z47));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52993.lut_mask = 16'h9617;
defparam add2_magnitude_add9_4_ix28963z52993.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N18
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52991(
// Equation(s):
// add2_magnitude[2] = ((add1[2] $ (max1_magnitude[2] $ (!nx28963z47)))) # (GND)
// nx28963z46 = CARRY((add1[2] & ((max1_magnitude[2]) # (!nx28963z47))) # (!add1[2] & (max1_magnitude[2] & !nx28963z47)))

	.dataa(add1[2]),
	.datab(max1_magnitude[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z47),
	.combout(add2_magnitude[2]),
	.cout(nx28963z46));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52991.lut_mask = 16'h698E;
defparam add2_magnitude_add9_4_ix28963z52991.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N20
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52989(
// Equation(s):
// add2_magnitude[3] = (max1_magnitude[3] & ((add1[3] & (nx28963z46 & VCC)) # (!add1[3] & (!nx28963z46)))) # (!max1_magnitude[3] & ((add1[3] & (!nx28963z46)) # (!add1[3] & ((nx28963z46) # (GND)))))
// nx28963z45 = CARRY((max1_magnitude[3] & (!add1[3] & !nx28963z46)) # (!max1_magnitude[3] & ((!nx28963z46) # (!add1[3]))))

	.dataa(max1_magnitude[3]),
	.datab(add1[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z46),
	.combout(add2_magnitude[3]),
	.cout(nx28963z45));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52989.lut_mask = 16'h9617;
defparam add2_magnitude_add9_4_ix28963z52989.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N22
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52987(
// Equation(s):
// add2_magnitude[4] = ((max1_magnitude[4] $ (add1[4] $ (!nx28963z45)))) # (GND)
// nx28963z44 = CARRY((max1_magnitude[4] & ((add1[4]) # (!nx28963z45))) # (!max1_magnitude[4] & (add1[4] & !nx28963z45)))

	.dataa(max1_magnitude[4]),
	.datab(add1[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z45),
	.combout(add2_magnitude[4]),
	.cout(nx28963z44));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52987.lut_mask = 16'h698E;
defparam add2_magnitude_add9_4_ix28963z52987.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N24
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52985(
// Equation(s):
// add2_magnitude[5] = (add1[5] & ((max1_magnitude[5] & (nx28963z44 & VCC)) # (!max1_magnitude[5] & (!nx28963z44)))) # (!add1[5] & ((max1_magnitude[5] & (!nx28963z44)) # (!max1_magnitude[5] & ((nx28963z44) # (GND)))))
// nx28963z43 = CARRY((add1[5] & (!max1_magnitude[5] & !nx28963z44)) # (!add1[5] & ((!nx28963z44) # (!max1_magnitude[5]))))

	.dataa(add1[5]),
	.datab(max1_magnitude[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z44),
	.combout(add2_magnitude[5]),
	.cout(nx28963z43));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52985.lut_mask = 16'h9617;
defparam add2_magnitude_add9_4_ix28963z52985.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N26
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52983(
// Equation(s):
// add2_magnitude[6] = ((add1[6] $ (max1_magnitude[6] $ (!nx28963z43)))) # (GND)
// nx28963z42 = CARRY((add1[6] & ((max1_magnitude[6]) # (!nx28963z43))) # (!add1[6] & (max1_magnitude[6] & !nx28963z43)))

	.dataa(add1[6]),
	.datab(max1_magnitude[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z43),
	.combout(add2_magnitude[6]),
	.cout(nx28963z42));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52983.lut_mask = 16'h698E;
defparam add2_magnitude_add9_4_ix28963z52983.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N28
cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52925(
// Equation(s):
// add2_magnitude[7] = (max1_magnitude[7] & ((add1[7] & (nx28963z42 & VCC)) # (!add1[7] & (!nx28963z42)))) # (!max1_magnitude[7] & ((add1[7] & (!nx28963z42)) # (!add1[7] & ((nx28963z42) # (GND)))))
// nx28963z2 = CARRY((max1_magnitude[7] & (!add1[7] & !nx28963z42)) # (!max1_magnitude[7] & ((!nx28963z42) # (!add1[7]))))

	.dataa(max1_magnitude[7]),
	.datab(add1[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z42),
	.combout(add2_magnitude[7]),
	.cout(nx28963z2));
// synopsys translate_off
defparam add2_magnitude_add9_4_ix28963z52925.lut_mask = 16'h9617;
defparam add2_magnitude_add9_4_ix28963z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N30
cycloneii_lcell_comb ix28963z52924(
// Equation(s):
// nx28963z1 = !nx28963z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx28963z2),
	.combout(nx28963z1),
	.cout());
// synopsys translate_off
defparam ix28963z52924.lut_mask = 16'h0F0F;
defparam ix28963z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N6
cycloneii_lcell_comb ix28963z52923(
// Equation(s):
// add2_magnitude[9] = (nx42053z1 & nx28963z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx42053z1),
	.datad(nx28963z1),
	.cin(gnd),
	.combout(add2_magnitude[9]),
	.cout());
// synopsys translate_off
defparam ix28963z52923.lut_mask = 16'hF000;
defparam ix28963z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N7
cycloneii_lcell_ff reg_r3_magnitude_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[9]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[9]));

// Location: LCFF_X32_Y23_N29
cycloneii_lcell_ff reg_r3_magnitude_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[7]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[7]));

// Location: LCCOMB_X33_Y23_N22
cycloneii_lcell_comb ix2846z52923(
// Equation(s):
// max2_magnitude[7] = (nx4840z1 & (r3_magnitude[7])) # (!nx4840z1 & ((r2_magnitude[7])))

	.dataa(vcc),
	.datab(r3_magnitude[7]),
	.datac(r2_magnitude[7]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[7]),
	.cout());
// synopsys translate_off
defparam ix2846z52923.lut_mask = 16'hCCF0;
defparam ix2846z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y23_N23
cycloneii_lcell_ff reg_r2_magnitude_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[7]),
	.sdata(r3_magnitude[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[7]));

// Location: LCFF_X32_Y23_N27
cycloneii_lcell_ff reg_r3_magnitude_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[6]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[6]));

// Location: LCCOMB_X33_Y23_N26
cycloneii_lcell_comb ix852z52923(
// Equation(s):
// max2_magnitude[5] = (nx4840z1 & (r3_magnitude[5])) # (!nx4840z1 & ((r2_magnitude[5])))

	.dataa(r3_magnitude[5]),
	.datab(vcc),
	.datac(r2_magnitude[5]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[5]),
	.cout());
// synopsys translate_off
defparam ix852z52923.lut_mask = 16'hAAF0;
defparam ix852z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N25
cycloneii_lcell_ff reg_r3_magnitude_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[5]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[5]));

// Location: LCFF_X33_Y23_N27
cycloneii_lcell_ff reg_r2_magnitude_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[5]),
	.sdata(r3_magnitude[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[5]));

// Location: LCCOMB_X33_Y23_N28
cycloneii_lcell_comb ix65391z52923(
// Equation(s):
// max2_magnitude[4] = (nx4840z1 & (r3_magnitude[4])) # (!nx4840z1 & ((r2_magnitude[4])))

	.dataa(r3_magnitude[4]),
	.datab(vcc),
	.datac(r2_magnitude[4]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[4]),
	.cout());
// synopsys translate_off
defparam ix65391z52923.lut_mask = 16'hAAF0;
defparam ix65391z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N23
cycloneii_lcell_ff reg_r3_magnitude_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[4]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[4]));

// Location: LCFF_X33_Y23_N29
cycloneii_lcell_ff reg_r2_magnitude_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[4]),
	.sdata(r3_magnitude[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[4]));

// Location: LCCOMB_X35_Y23_N12
cycloneii_lcell_comb ix64394z52923(
// Equation(s):
// max2_magnitude[3] = (nx4840z1 & (r3_magnitude[3])) # (!nx4840z1 & ((r2_magnitude[3])))

	.dataa(r3_magnitude[3]),
	.datab(vcc),
	.datac(r2_magnitude[3]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[3]),
	.cout());
// synopsys translate_off
defparam ix64394z52923.lut_mask = 16'hAAF0;
defparam ix64394z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N21
cycloneii_lcell_ff reg_r3_magnitude_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[3]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[3]));

// Location: LCFF_X35_Y23_N13
cycloneii_lcell_ff reg_r2_magnitude_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[3]),
	.sdata(r3_magnitude[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[3]));

// Location: LCFF_X32_Y23_N19
cycloneii_lcell_ff reg_r3_magnitude_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[2]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[2]));

// Location: LCCOMB_X33_Y23_N30
cycloneii_lcell_comb ix62400z52923(
// Equation(s):
// max2_magnitude[1] = (nx4840z1 & (r3_magnitude[1])) # (!nx4840z1 & ((r2_magnitude[1])))

	.dataa(r3_magnitude[1]),
	.datab(vcc),
	.datac(r2_magnitude[1]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[1]),
	.cout());
// synopsys translate_off
defparam ix62400z52923.lut_mask = 16'hAAF0;
defparam ix62400z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N17
cycloneii_lcell_ff reg_r3_magnitude_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[1]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[1]));

// Location: LCFF_X33_Y23_N31
cycloneii_lcell_ff reg_r2_magnitude_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[1]),
	.sdata(r3_magnitude[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[1]));

// Location: LCCOMB_X32_Y23_N2
cycloneii_lcell_comb add2_magnitude_add9_4_ix37936z52923(
// Equation(s):
// add2_magnitude[0] = add1[0] $ (max1_magnitude[0])

	.dataa(add1[0]),
	.datab(vcc),
	.datac(vcc),
	.datad(max1_magnitude[0]),
	.cin(gnd),
	.combout(add2_magnitude[0]),
	.cout());
// synopsys translate_off
defparam add2_magnitude_add9_4_ix37936z52923.lut_mask = 16'h55AA;
defparam add2_magnitude_add9_4_ix37936z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N3
cycloneii_lcell_ff reg_r3_magnitude_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[0]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[0]));

// Location: LCCOMB_X35_Y23_N16
cycloneii_lcell_comb ix61403z52923(
// Equation(s):
// max2_magnitude[0] = (nx4840z1 & (r3_magnitude[0])) # (!nx4840z1 & ((r2_magnitude[0])))

	.dataa(vcc),
	.datab(r3_magnitude[0]),
	.datac(r2_magnitude[0]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[0]),
	.cout());
// synopsys translate_off
defparam ix61403z52923.lut_mask = 16'hCCF0;
defparam ix61403z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y23_N17
cycloneii_lcell_ff reg_r2_magnitude_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[0]),
	.sdata(r3_magnitude[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[0]));

// Location: LCCOMB_X33_Y23_N0
cycloneii_lcell_comb ix4840z52933(
// Equation(s):
// nx4840z10 = CARRY((r3_magnitude[0] & !r2_magnitude[0]))

	.dataa(r3_magnitude[0]),
	.datab(r2_magnitude[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx4840z10));
// synopsys translate_off
defparam ix4840z52933.lut_mask = 16'h0022;
defparam ix4840z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N2
cycloneii_lcell_comb ix4840z52932(
// Equation(s):
// nx4840z9 = CARRY((r3_magnitude[1] & (r2_magnitude[1] & !nx4840z10)) # (!r3_magnitude[1] & ((r2_magnitude[1]) # (!nx4840z10))))

	.dataa(r3_magnitude[1]),
	.datab(r2_magnitude[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z10),
	.combout(),
	.cout(nx4840z9));
// synopsys translate_off
defparam ix4840z52932.lut_mask = 16'h004D;
defparam ix4840z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N4
cycloneii_lcell_comb ix4840z52931(
// Equation(s):
// nx4840z8 = CARRY((r2_magnitude[2] & (r3_magnitude[2] & !nx4840z9)) # (!r2_magnitude[2] & ((r3_magnitude[2]) # (!nx4840z9))))

	.dataa(r2_magnitude[2]),
	.datab(r3_magnitude[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z9),
	.combout(),
	.cout(nx4840z8));
// synopsys translate_off
defparam ix4840z52931.lut_mask = 16'h004D;
defparam ix4840z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N6
cycloneii_lcell_comb ix4840z52930(
// Equation(s):
// nx4840z7 = CARRY((r3_magnitude[3] & (r2_magnitude[3] & !nx4840z8)) # (!r3_magnitude[3] & ((r2_magnitude[3]) # (!nx4840z8))))

	.dataa(r3_magnitude[3]),
	.datab(r2_magnitude[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z8),
	.combout(),
	.cout(nx4840z7));
// synopsys translate_off
defparam ix4840z52930.lut_mask = 16'h004D;
defparam ix4840z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N8
cycloneii_lcell_comb ix4840z52929(
// Equation(s):
// nx4840z6 = CARRY((r3_magnitude[4] & ((!nx4840z7) # (!r2_magnitude[4]))) # (!r3_magnitude[4] & (!r2_magnitude[4] & !nx4840z7)))

	.dataa(r3_magnitude[4]),
	.datab(r2_magnitude[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z7),
	.combout(),
	.cout(nx4840z6));
// synopsys translate_off
defparam ix4840z52929.lut_mask = 16'h002B;
defparam ix4840z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N10
cycloneii_lcell_comb ix4840z52928(
// Equation(s):
// nx4840z5 = CARRY((r3_magnitude[5] & (r2_magnitude[5] & !nx4840z6)) # (!r3_magnitude[5] & ((r2_magnitude[5]) # (!nx4840z6))))

	.dataa(r3_magnitude[5]),
	.datab(r2_magnitude[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z6),
	.combout(),
	.cout(nx4840z5));
// synopsys translate_off
defparam ix4840z52928.lut_mask = 16'h004D;
defparam ix4840z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N12
cycloneii_lcell_comb ix4840z52927(
// Equation(s):
// nx4840z4 = CARRY((r2_magnitude[6] & (r3_magnitude[6] & !nx4840z5)) # (!r2_magnitude[6] & ((r3_magnitude[6]) # (!nx4840z5))))

	.dataa(r2_magnitude[6]),
	.datab(r3_magnitude[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z5),
	.combout(),
	.cout(nx4840z4));
// synopsys translate_off
defparam ix4840z52927.lut_mask = 16'h004D;
defparam ix4840z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N14
cycloneii_lcell_comb ix4840z52926(
// Equation(s):
// nx4840z3 = CARRY((r3_magnitude[7] & (r2_magnitude[7] & !nx4840z4)) # (!r3_magnitude[7] & ((r2_magnitude[7]) # (!nx4840z4))))

	.dataa(r3_magnitude[7]),
	.datab(r2_magnitude[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z4),
	.combout(),
	.cout(nx4840z3));
// synopsys translate_off
defparam ix4840z52926.lut_mask = 16'h004D;
defparam ix4840z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N16
cycloneii_lcell_comb ix4840z52925(
// Equation(s):
// nx4840z2 = CARRY((r3_magnitude[8] & ((!nx4840z3) # (!r2_magnitude[8]))) # (!r3_magnitude[8] & (!r2_magnitude[8] & !nx4840z3)))

	.dataa(r3_magnitude[8]),
	.datab(r2_magnitude[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z3),
	.combout(),
	.cout(nx4840z2));
// synopsys translate_off
defparam ix4840z52925.lut_mask = 16'h002B;
defparam ix4840z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X33_Y23_N18
cycloneii_lcell_comb ix4840z52924(
// Equation(s):
// nx4840z1 = (r2_magnitude[9] & (r3_magnitude[9] & nx4840z2)) # (!r2_magnitude[9] & ((r3_magnitude[9]) # (nx4840z2)))

	.dataa(r2_magnitude[9]),
	.datab(r3_magnitude[9]),
	.datac(vcc),
	.datad(vcc),
	.cin(nx4840z2),
	.combout(nx4840z1),
	.cout());
// synopsys translate_off
defparam ix4840z52924.lut_mask = 16'hD4D4;
defparam ix4840z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y23_N2
cycloneii_lcell_comb ix3843z52923(
// Equation(s):
// max2_magnitude[8] = (nx4840z1 & (r3_magnitude[8])) # (!nx4840z1 & ((r2_magnitude[8])))

	.dataa(r3_magnitude[8]),
	.datab(vcc),
	.datac(r2_magnitude[8]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[8]),
	.cout());
// synopsys translate_off
defparam ix3843z52923.lut_mask = 16'hAAF0;
defparam ix3843z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y23_N8
cycloneii_lcell_comb ix29960z52923(
// Equation(s):
// add2_magnitude[8] = nx42053z1 $ (nx28963z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx42053z1),
	.datad(nx28963z1),
	.cin(gnd),
	.combout(add2_magnitude[8]),
	.cout());
// synopsys translate_off
defparam ix29960z52923.lut_mask = 16'h0FF0;
defparam ix29960z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y23_N9
cycloneii_lcell_ff reg_r3_magnitude_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_magnitude[8]),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_magnitude[8]));

// Location: LCFF_X35_Y23_N3
cycloneii_lcell_ff reg_r2_magnitude_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[8]),
	.sdata(r3_magnitude[8]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[8]));

// Location: LCCOMB_X34_Y23_N0
cycloneii_lcell_comb r5_magnitude_a8_a_afeeder(
// Equation(s):
// r5_magnitude_a8_a_afeeder_combout = r2_magnitude[8]

	.dataa(vcc),
	.datab(r2_magnitude[8]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_magnitude_a8_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a8_a_afeeder.lut_mask = 16'hCCCC;
defparam r5_magnitude_a8_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y23_N4
cycloneii_lcell_comb ix34503z52923(
// Equation(s):
// nx34503z1 = (valid_bits_stage2[0]) # (i_reset_acombout)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_bits_stage2[0]),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx34503z1),
	.cout());
// synopsys translate_off
defparam ix34503z52923.lut_mask = 16'hFFF0;
defparam ix34503z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N1
cycloneii_lcell_ff reg_r5_magnitude_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a8_a_afeeder_combout),
	.sdata(r3_magnitude[8]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[8]));

// Location: LCFF_X30_Y23_N19
cycloneii_lcell_ff reg_r7_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[8]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_11_));

// Location: LCCOMB_X33_Y23_N24
cycloneii_lcell_comb ix1849z52923(
// Equation(s):
// max2_magnitude[6] = (nx4840z1 & (r3_magnitude[6])) # (!nx4840z1 & ((r2_magnitude[6])))

	.dataa(r3_magnitude[6]),
	.datab(vcc),
	.datac(r2_magnitude[6]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_magnitude[6]),
	.cout());
// synopsys translate_off
defparam ix1849z52923.lut_mask = 16'hAAF0;
defparam ix1849z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y23_N25
cycloneii_lcell_ff reg_r2_magnitude_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_magnitude[6]),
	.sdata(r3_magnitude[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_magnitude[6]));

// Location: LCCOMB_X34_Y23_N4
cycloneii_lcell_comb r5_magnitude_a6_a_afeeder(
// Equation(s):
// r5_magnitude_a6_a_afeeder_combout = r2_magnitude[6]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[6]),
	.cin(gnd),
	.combout(r5_magnitude_a6_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a6_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a6_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N5
cycloneii_lcell_ff reg_r5_magnitude_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a6_a_afeeder_combout),
	.sdata(r3_magnitude[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[6]));

// Location: LCFF_X30_Y23_N15
cycloneii_lcell_ff reg_r7_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_9_));

// Location: LCCOMB_X34_Y23_N22
cycloneii_lcell_comb r5_magnitude_a5_a_afeeder(
// Equation(s):
// r5_magnitude_a5_a_afeeder_combout = r2_magnitude[5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[5]),
	.cin(gnd),
	.combout(r5_magnitude_a5_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a5_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a5_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N23
cycloneii_lcell_ff reg_r5_magnitude_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a5_a_afeeder_combout),
	.sdata(r3_magnitude[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[5]));

// Location: LCFF_X30_Y23_N13
cycloneii_lcell_ff reg_r7_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_8_));

// Location: LCCOMB_X34_Y23_N30
cycloneii_lcell_comb r5_magnitude_a1_a_afeeder(
// Equation(s):
// r5_magnitude_a1_a_afeeder_combout = r2_magnitude[1]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_magnitude[1]),
	.cin(gnd),
	.combout(r5_magnitude_a1_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a1_a_afeeder.lut_mask = 16'hFF00;
defparam r5_magnitude_a1_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N31
cycloneii_lcell_ff reg_r5_magnitude_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a1_a_afeeder_combout),
	.sdata(r3_magnitude[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[1]));

// Location: LCFF_X30_Y23_N5
cycloneii_lcell_ff reg_r7_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_4_));

// Location: LCCOMB_X34_Y23_N8
cycloneii_lcell_comb r5_magnitude_a0_a_afeeder(
// Equation(s):
// r5_magnitude_a0_a_afeeder_combout = r2_magnitude[0]

	.dataa(r2_magnitude[0]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_magnitude_a0_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_magnitude_a0_a_afeeder.lut_mask = 16'hAAAA;
defparam r5_magnitude_a0_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N9
cycloneii_lcell_ff reg_r5_magnitude_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_magnitude_a0_a_afeeder_combout),
	.sdata(r3_magnitude[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_magnitude[0]));

// Location: LCFF_X30_Y23_N3
cycloneii_lcell_ff reg_r7_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r5_magnitude[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx21429z12),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_3_));

// Location: LCCOMB_X30_Y23_N2
cycloneii_lcell_comb ix40727z52948(
// Equation(s):
// nx40727z24 = CARRY((!add5_3_ & r7_3_))

	.dataa(add5_3_),
	.datab(r7_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx40727z24));
// synopsys translate_off
defparam ix40727z52948.lut_mask = 16'h0044;
defparam ix40727z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N4
cycloneii_lcell_comb ix40727z52947(
// Equation(s):
// nx40727z23 = CARRY((add5_4_ & ((!nx40727z24) # (!r7_4_))) # (!add5_4_ & (!r7_4_ & !nx40727z24)))

	.dataa(add5_4_),
	.datab(r7_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z24),
	.combout(),
	.cout(nx40727z23));
// synopsys translate_off
defparam ix40727z52947.lut_mask = 16'h002B;
defparam ix40727z52947.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N6
cycloneii_lcell_comb ix40727z52946(
// Equation(s):
// nx40727z22 = CARRY((r7_5_ & ((!nx40727z23) # (!add5_5_))) # (!r7_5_ & (!add5_5_ & !nx40727z23)))

	.dataa(r7_5_),
	.datab(add5_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z23),
	.combout(),
	.cout(nx40727z22));
// synopsys translate_off
defparam ix40727z52946.lut_mask = 16'h002B;
defparam ix40727z52946.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N8
cycloneii_lcell_comb ix40727z52945(
// Equation(s):
// nx40727z21 = CARRY((r7_6_ & (add5_6_ & !nx40727z22)) # (!r7_6_ & ((add5_6_) # (!nx40727z22))))

	.dataa(r7_6_),
	.datab(add5_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z22),
	.combout(),
	.cout(nx40727z21));
// synopsys translate_off
defparam ix40727z52945.lut_mask = 16'h004D;
defparam ix40727z52945.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N10
cycloneii_lcell_comb ix40727z52944(
// Equation(s):
// nx40727z20 = CARRY((r7_7_ & ((!nx40727z21) # (!add5_7_))) # (!r7_7_ & (!add5_7_ & !nx40727z21)))

	.dataa(r7_7_),
	.datab(add5_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z21),
	.combout(),
	.cout(nx40727z20));
// synopsys translate_off
defparam ix40727z52944.lut_mask = 16'h002B;
defparam ix40727z52944.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N12
cycloneii_lcell_comb ix40727z52943(
// Equation(s):
// nx40727z19 = CARRY((add5_8_ & ((!nx40727z20) # (!r7_8_))) # (!add5_8_ & (!r7_8_ & !nx40727z20)))

	.dataa(add5_8_),
	.datab(r7_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z20),
	.combout(),
	.cout(nx40727z19));
// synopsys translate_off
defparam ix40727z52943.lut_mask = 16'h002B;
defparam ix40727z52943.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N14
cycloneii_lcell_comb ix40727z52942(
// Equation(s):
// nx40727z18 = CARRY((add5_9_ & (r7_9_ & !nx40727z19)) # (!add5_9_ & ((r7_9_) # (!nx40727z19))))

	.dataa(add5_9_),
	.datab(r7_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z19),
	.combout(),
	.cout(nx40727z18));
// synopsys translate_off
defparam ix40727z52942.lut_mask = 16'h004D;
defparam ix40727z52942.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N16
cycloneii_lcell_comb ix40727z52941(
// Equation(s):
// nx40727z17 = CARRY((r7_10_ & (add5_10_ & !nx40727z18)) # (!r7_10_ & ((add5_10_) # (!nx40727z18))))

	.dataa(r7_10_),
	.datab(add5_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z18),
	.combout(),
	.cout(nx40727z17));
// synopsys translate_off
defparam ix40727z52941.lut_mask = 16'h004D;
defparam ix40727z52941.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N18
cycloneii_lcell_comb ix40727z52940(
// Equation(s):
// nx40727z16 = CARRY((add5_11_ & (r7_11_ & !nx40727z17)) # (!add5_11_ & ((r7_11_) # (!nx40727z17))))

	.dataa(add5_11_),
	.datab(r7_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z17),
	.combout(),
	.cout(nx40727z16));
// synopsys translate_off
defparam ix40727z52940.lut_mask = 16'h004D;
defparam ix40727z52940.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N20
cycloneii_lcell_comb ix40727z52939(
// Equation(s):
// nx40727z15 = CARRY((r7_12_ & (add5_12_ & !nx40727z16)) # (!r7_12_ & ((add5_12_) # (!nx40727z16))))

	.dataa(r7_12_),
	.datab(add5_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z16),
	.combout(),
	.cout(nx40727z15));
// synopsys translate_off
defparam ix40727z52939.lut_mask = 16'h004D;
defparam ix40727z52939.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N22
cycloneii_lcell_comb ix40727z52924(
// Equation(s):
// nx40727z2 = (!nx40727z3 & !nx40727z15)

	.dataa(nx40727z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx40727z15),
	.combout(nx40727z2),
	.cout());
// synopsys translate_off
defparam ix40727z52924.lut_mask = 16'h0505;
defparam ix40727z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y23_N24
cycloneii_lcell_comb ix40727z52923(
// Equation(s):
// nx40727z1 = (valid_bits_stage2[2] & nx40727z2)

	.dataa(vcc),
	.datab(valid_bits_stage2[2]),
	.datac(vcc),
	.datad(nx40727z2),
	.cin(gnd),
	.combout(nx40727z1),
	.cout());
// synopsys translate_off
defparam ix40727z52923.lut_mask = 16'hCC00;
defparam ix40727z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y23_N25
cycloneii_lcell_ff reg_r_edge(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx40727z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_r_edge_aregout));

// Location: LCCOMB_X28_Y23_N30
cycloneii_lcell_comb ix17193z52923(
// Equation(s):
// nx17193z1 = (valid_bits_stage1[0] & (((!not_rtlc0_copy_n346)))) # (!valid_bits_stage1[0] & (!valid_bits_stage1[1] & ((not_rtlc0_copy_n346) # (!valid_bits_stage1[2]))))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(not_rtlc0_copy_n346),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx17193z1),
	.cout());
// synopsys translate_off
defparam ix17193z52923.lut_mask = 16'h1C1D;
defparam ix17193z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N31
cycloneii_lcell_ff reg_r3_direction_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx17193z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_direction[0]));

// Location: LCCOMB_X35_Y23_N24
cycloneii_lcell_comb ix48926z52923(
// Equation(s):
// max2_direction[0] = (nx4840z1 & (r3_direction[0])) # (!nx4840z1 & ((r2_direction[0])))

	.dataa(vcc),
	.datab(r3_direction[0]),
	.datac(r2_direction[0]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_direction[0]),
	.cout());
// synopsys translate_off
defparam ix48926z52923.lut_mask = 16'hCCF0;
defparam ix48926z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y23_N25
cycloneii_lcell_ff reg_r2_direction_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_direction[0]),
	.sdata(r3_direction[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_direction[0]));

// Location: LCCOMB_X34_Y23_N16
cycloneii_lcell_comb r5_direction_a0_a_afeeder(
// Equation(s):
// r5_direction_a0_a_afeeder_combout = r2_direction[0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_direction[0]),
	.cin(gnd),
	.combout(r5_direction_a0_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_direction_a0_a_afeeder.lut_mask = 16'hFF00;
defparam r5_direction_a0_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N17
cycloneii_lcell_ff reg_r5_direction_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_direction_a0_a_afeeder_combout),
	.sdata(r3_direction[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_direction[0]));

// Location: LCCOMB_X30_Y23_N0
cycloneii_lcell_comb ix63886z52923(
// Equation(s):
// ix63886z52923_acombout = (reg_r_edge_aregout & r5_direction[0])

	.dataa(vcc),
	.datab(vcc),
	.datac(reg_r_edge_aregout),
	.datad(r5_direction[0]),
	.cin(gnd),
	.combout(ix63886z52923_acombout),
	.cout());
// synopsys translate_off
defparam ix63886z52923.lut_mask = 16'hF000;
defparam ix63886z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y23_N18
cycloneii_lcell_comb ix47929z52923(
// Equation(s):
// max2_direction[1] = (nx4840z1 & (r3_direction[1])) # (!nx4840z1 & ((r2_direction[1])))

	.dataa(r3_direction[1]),
	.datab(vcc),
	.datac(r2_direction[1]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_direction[1]),
	.cout());
// synopsys translate_off
defparam ix47929z52923.lut_mask = 16'hAAF0;
defparam ix47929z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y23_N24
cycloneii_lcell_comb ix16196z52923(
// Equation(s):
// nx16196z1 = (!valid_bits_stage1[0] & ((valid_bits_stage1[1]) # (!valid_bits_stage1[2])))

	.dataa(valid_bits_stage1[1]),
	.datab(valid_bits_stage1[0]),
	.datac(vcc),
	.datad(valid_bits_stage1[2]),
	.cin(gnd),
	.combout(nx16196z1),
	.cout());
// synopsys translate_off
defparam ix16196z52923.lut_mask = 16'h2233;
defparam ix16196z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N25
cycloneii_lcell_ff reg_r3_direction_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx16196z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_direction[1]));

// Location: LCFF_X35_Y23_N19
cycloneii_lcell_ff reg_r2_direction_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_direction[1]),
	.sdata(r3_direction[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_direction[1]));

// Location: LCCOMB_X34_Y23_N26
cycloneii_lcell_comb r5_direction_a1_a_afeeder(
// Equation(s):
// r5_direction_a1_a_afeeder_combout = r2_direction[1]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_direction[1]),
	.cin(gnd),
	.combout(r5_direction_a1_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_direction_a1_a_afeeder.lut_mask = 16'hFF00;
defparam r5_direction_a1_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N27
cycloneii_lcell_ff reg_r5_direction_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_direction_a1_a_afeeder_combout),
	.sdata(r3_direction[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_direction[1]));

// Location: LCCOMB_X36_Y23_N16
cycloneii_lcell_comb ix62889z52923(
// Equation(s):
// ix62889z52923_acombout = (reg_r_edge_aregout & r5_direction[1])

	.dataa(vcc),
	.datab(reg_r_edge_aregout),
	.datac(vcc),
	.datad(r5_direction[1]),
	.cin(gnd),
	.combout(ix62889z52923_acombout),
	.cout());
// synopsys translate_off
defparam ix62889z52923.lut_mask = 16'hCC00;
defparam ix62889z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y24_N31
cycloneii_lcell_ff reg_r3_direction_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(not_rtlc0_copy_n346),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_direction[2]));

// Location: LCCOMB_X35_Y23_N4
cycloneii_lcell_comb ix46932z52923(
// Equation(s):
// max2_direction[2] = (nx4840z1 & (r3_direction[2])) # (!nx4840z1 & ((r2_direction[2])))

	.dataa(vcc),
	.datab(r3_direction[2]),
	.datac(r2_direction[2]),
	.datad(nx4840z1),
	.cin(gnd),
	.combout(max2_direction[2]),
	.cout());
// synopsys translate_off
defparam ix46932z52923.lut_mask = 16'hCCF0;
defparam ix46932z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y23_N5
cycloneii_lcell_ff reg_r2_direction_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_direction[2]),
	.sdata(r3_direction[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(valid_bits_stage1[1]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_direction[2]));

// Location: LCCOMB_X34_Y23_N12
cycloneii_lcell_comb r5_direction_a2_a_afeeder(
// Equation(s):
// r5_direction_a2_a_afeeder_combout = r2_direction[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_direction[2]),
	.cin(gnd),
	.combout(r5_direction_a2_a_afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_direction_a2_a_afeeder.lut_mask = 16'hFF00;
defparam r5_direction_a2_a_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y23_N13
cycloneii_lcell_ff reg_r5_direction_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_direction_a2_a_afeeder_combout),
	.sdata(r3_direction[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(nx4840z1),
	.ena(nx34503z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_direction[2]));

// Location: LCCOMB_X36_Y23_N2
cycloneii_lcell_comb ix61892z52923(
// Equation(s):
// ix61892z52923_acombout = (reg_r_edge_aregout & r5_direction[2])

	.dataa(vcc),
	.datab(reg_r_edge_aregout),
	.datac(vcc),
	.datad(r5_direction[2]),
	.cin(gnd),
	.combout(ix61892z52923_acombout),
	.cout());
// synopsys translate_off
defparam ix61892z52923.lut_mask = 16'hCC00;
defparam ix61892z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y23_N28
cycloneii_lcell_comb ix46359z52923(
// Equation(s):
// nx46359z1 = (last_pixel_complete[0]) # ((modgen_counter_pixel_counter_aq[16] & valid_bits_stage1[3]))

	.dataa(modgen_counter_pixel_counter_aq[16]),
	.datab(vcc),
	.datac(last_pixel_complete[0]),
	.datad(valid_bits_stage1[3]),
	.cin(gnd),
	.combout(nx46359z1),
	.cout());
// synopsys translate_off
defparam ix46359z52923.lut_mask = 16'hFAF0;
defparam ix46359z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N29
cycloneii_lcell_ff reg_last_pixel_complete_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46359z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(last_pixel_complete[0]));

// Location: LCCOMB_X28_Y23_N26
cycloneii_lcell_comb ix47356z52923(
// Equation(s):
// nx47356z1 = (last_pixel_complete[1]) # ((reg_valid_bits_stage2_3__aregout & last_pixel_complete[0]))

	.dataa(vcc),
	.datab(reg_valid_bits_stage2_3__aregout),
	.datac(last_pixel_complete[1]),
	.datad(last_pixel_complete[0]),
	.cin(gnd),
	.combout(nx47356z1),
	.cout());
// synopsys translate_off
defparam ix47356z52923.lut_mask = 16'hFCF0;
defparam ix47356z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N27
cycloneii_lcell_ff reg_last_pixel_complete_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx47356z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(last_pixel_complete[1]));

// Location: LCCOMB_X28_Y23_N18
cycloneii_lcell_comb ix45944z52923(
// Equation(s):
// nx45944z1 = (nx59688z1) # ((reg_r_mode_1__aregout & (!last_pixel_complete[1] & reg_r_mode_0__aregout)))

	.dataa(reg_r_mode_1__aregout),
	.datab(last_pixel_complete[1]),
	.datac(reg_r_mode_0__aregout),
	.datad(nx59688z1),
	.cin(gnd),
	.combout(nx45944z1),
	.cout());
// synopsys translate_off
defparam ix45944z52923.lut_mask = 16'hFF20;
defparam ix45944z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y23_N19
cycloneii_lcell_ff reg_r_mode_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45944z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_r_mode_0__aregout));

// Location: LCCOMB_X30_Y23_N26
cycloneii_lcell_comb i_reset_a_wirecell(
// Equation(s):
// i_reset_a_wirecell_combout = !i_reset_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(i_reset_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam i_reset_a_wirecell.lut_mask = 16'h00FF;
defparam i_reset_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y23_N27
cycloneii_lcell_ff reg_r_mode_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_reset_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_r_mode_1__aregout));

// Location: LCCOMB_X28_Y23_N4
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52930(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_10_ = (modgen_counter_pixel_counter_aq[10] & (modgen_counter_pixel_counter_anx23078z13 $ (GND))) # (!modgen_counter_pixel_counter_aq[10] & (!modgen_counter_pixel_counter_anx23078z13 & VCC))
// modgen_counter_pixel_counter_anx23078z11 = CARRY((modgen_counter_pixel_counter_aq[10] & !modgen_counter_pixel_counter_anx23078z13))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[10]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z13),
	.combout(modgen_counter_pixel_counter_ainc_d_10_),
	.cout(modgen_counter_pixel_counter_anx23078z11));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52930.lut_mask = 16'hC30C;
defparam modgen_counter_pixel_counter_aix23078z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N5
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_10_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[10]));

// Location: LCCOMB_X28_Y23_N6
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52929(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_11_ = (modgen_counter_pixel_counter_aq[11] & (!modgen_counter_pixel_counter_anx23078z11)) # (!modgen_counter_pixel_counter_aq[11] & ((modgen_counter_pixel_counter_anx23078z11) # (GND)))
// modgen_counter_pixel_counter_anx23078z9 = CARRY((!modgen_counter_pixel_counter_anx23078z11) # (!modgen_counter_pixel_counter_aq[11]))

	.dataa(modgen_counter_pixel_counter_aq[11]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z11),
	.combout(modgen_counter_pixel_counter_ainc_d_11_),
	.cout(modgen_counter_pixel_counter_anx23078z9));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52929.lut_mask = 16'h5A5F;
defparam modgen_counter_pixel_counter_aix23078z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N7
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_11_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[11]));

// Location: LCCOMB_X28_Y23_N8
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52928(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_12_ = (modgen_counter_pixel_counter_aq[12] & (modgen_counter_pixel_counter_anx23078z9 $ (GND))) # (!modgen_counter_pixel_counter_aq[12] & (!modgen_counter_pixel_counter_anx23078z9 & VCC))
// modgen_counter_pixel_counter_anx23078z7 = CARRY((modgen_counter_pixel_counter_aq[12] & !modgen_counter_pixel_counter_anx23078z9))

	.dataa(vcc),
	.datab(modgen_counter_pixel_counter_aq[12]),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z9),
	.combout(modgen_counter_pixel_counter_ainc_d_12_),
	.cout(modgen_counter_pixel_counter_anx23078z7));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52928.lut_mask = 16'hC30C;
defparam modgen_counter_pixel_counter_aix23078z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N9
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_12_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[12]));

// Location: LCCOMB_X28_Y23_N10
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52927(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_13_ = (modgen_counter_pixel_counter_aq[13] & (!modgen_counter_pixel_counter_anx23078z7)) # (!modgen_counter_pixel_counter_aq[13] & ((modgen_counter_pixel_counter_anx23078z7) # (GND)))
// modgen_counter_pixel_counter_anx23078z5 = CARRY((!modgen_counter_pixel_counter_anx23078z7) # (!modgen_counter_pixel_counter_aq[13]))

	.dataa(modgen_counter_pixel_counter_aq[13]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z7),
	.combout(modgen_counter_pixel_counter_ainc_d_13_),
	.cout(modgen_counter_pixel_counter_anx23078z5));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52927.lut_mask = 16'h5A5F;
defparam modgen_counter_pixel_counter_aix23078z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N11
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_13_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_13_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[13]));

// Location: LCCOMB_X28_Y23_N12
cycloneii_lcell_comb modgen_counter_pixel_counter_aix23078z52926(
// Equation(s):
// modgen_counter_pixel_counter_ainc_d_14_ = (modgen_counter_pixel_counter_aq[14] & (modgen_counter_pixel_counter_anx23078z5 $ (GND))) # (!modgen_counter_pixel_counter_aq[14] & (!modgen_counter_pixel_counter_anx23078z5 & VCC))
// modgen_counter_pixel_counter_anx23078z3 = CARRY((modgen_counter_pixel_counter_aq[14] & !modgen_counter_pixel_counter_anx23078z5))

	.dataa(modgen_counter_pixel_counter_aq[14]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_pixel_counter_anx23078z5),
	.combout(modgen_counter_pixel_counter_ainc_d_14_),
	.cout(modgen_counter_pixel_counter_anx23078z3));
// synopsys translate_off
defparam modgen_counter_pixel_counter_aix23078z52926.lut_mask = 16'hA50A;
defparam modgen_counter_pixel_counter_aix23078z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X28_Y23_N13
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_14_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_14_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[14]));

// Location: LCFF_X28_Y23_N15
cycloneii_lcell_ff modgen_counter_pixel_counter_areg_q_15_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_pixel_counter_ainc_d_15_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_pixel_counter_anx22081z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_pixel_counter_aq[15]));

// Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam debug_led_red_a0_a_aI.input_async_reset = "none";
defparam debug_led_red_a0_a_aI.input_power_up = "low";
defparam debug_led_red_a0_a_aI.input_register_mode = "none";
defparam debug_led_red_a0_a_aI.input_sync_reset = "none";
defparam debug_led_red_a0_a_aI.oe_async_reset = "none";
defparam debug_led_red_a0_a_aI.oe_power_up = "low";
defparam debug_led_red_a0_a_aI.oe_register_mode = "none";
defparam debug_led_red_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a0_a_aI.open_drain_output = "true";
defparam debug_led_red_a0_a_aI.operation_mode = "output";
defparam debug_led_red_a0_a_aI.output_async_reset = "none";
defparam debug_led_red_a0_a_aI.output_power_up = "low";
defparam debug_led_red_a0_a_aI.output_register_mode = "none";
defparam debug_led_red_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam debug_led_red_a1_a_aI.input_async_reset = "none";
defparam debug_led_red_a1_a_aI.input_power_up = "low";
defparam debug_led_red_a1_a_aI.input_register_mode = "none";
defparam debug_led_red_a1_a_aI.input_sync_reset = "none";
defparam debug_led_red_a1_a_aI.oe_async_reset = "none";
defparam debug_led_red_a1_a_aI.oe_power_up = "low";
defparam debug_led_red_a1_a_aI.oe_register_mode = "none";
defparam debug_led_red_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a1_a_aI.open_drain_output = "true";
defparam debug_led_red_a1_a_aI.operation_mode = "output";
defparam debug_led_red_a1_a_aI.output_async_reset = "none";
defparam debug_led_red_a1_a_aI.output_power_up = "low";
defparam debug_led_red_a1_a_aI.output_register_mode = "none";
defparam debug_led_red_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam debug_led_red_a2_a_aI.input_async_reset = "none";
defparam debug_led_red_a2_a_aI.input_power_up = "low";
defparam debug_led_red_a2_a_aI.input_register_mode = "none";
defparam debug_led_red_a2_a_aI.input_sync_reset = "none";
defparam debug_led_red_a2_a_aI.oe_async_reset = "none";
defparam debug_led_red_a2_a_aI.oe_power_up = "low";
defparam debug_led_red_a2_a_aI.oe_register_mode = "none";
defparam debug_led_red_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a2_a_aI.open_drain_output = "true";
defparam debug_led_red_a2_a_aI.operation_mode = "output";
defparam debug_led_red_a2_a_aI.output_async_reset = "none";
defparam debug_led_red_a2_a_aI.output_power_up = "low";
defparam debug_led_red_a2_a_aI.output_register_mode = "none";
defparam debug_led_red_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam debug_led_red_a3_a_aI.input_async_reset = "none";
defparam debug_led_red_a3_a_aI.input_power_up = "low";
defparam debug_led_red_a3_a_aI.input_register_mode = "none";
defparam debug_led_red_a3_a_aI.input_sync_reset = "none";
defparam debug_led_red_a3_a_aI.oe_async_reset = "none";
defparam debug_led_red_a3_a_aI.oe_power_up = "low";
defparam debug_led_red_a3_a_aI.oe_register_mode = "none";
defparam debug_led_red_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a3_a_aI.open_drain_output = "true";
defparam debug_led_red_a3_a_aI.operation_mode = "output";
defparam debug_led_red_a3_a_aI.output_async_reset = "none";
defparam debug_led_red_a3_a_aI.output_power_up = "low";
defparam debug_led_red_a3_a_aI.output_register_mode = "none";
defparam debug_led_red_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a4_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam debug_led_red_a4_a_aI.input_async_reset = "none";
defparam debug_led_red_a4_a_aI.input_power_up = "low";
defparam debug_led_red_a4_a_aI.input_register_mode = "none";
defparam debug_led_red_a4_a_aI.input_sync_reset = "none";
defparam debug_led_red_a4_a_aI.oe_async_reset = "none";
defparam debug_led_red_a4_a_aI.oe_power_up = "low";
defparam debug_led_red_a4_a_aI.oe_register_mode = "none";
defparam debug_led_red_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a4_a_aI.open_drain_output = "true";
defparam debug_led_red_a4_a_aI.operation_mode = "output";
defparam debug_led_red_a4_a_aI.output_async_reset = "none";
defparam debug_led_red_a4_a_aI.output_power_up = "low";
defparam debug_led_red_a4_a_aI.output_register_mode = "none";
defparam debug_led_red_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a5_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam debug_led_red_a5_a_aI.input_async_reset = "none";
defparam debug_led_red_a5_a_aI.input_power_up = "low";
defparam debug_led_red_a5_a_aI.input_register_mode = "none";
defparam debug_led_red_a5_a_aI.input_sync_reset = "none";
defparam debug_led_red_a5_a_aI.oe_async_reset = "none";
defparam debug_led_red_a5_a_aI.oe_power_up = "low";
defparam debug_led_red_a5_a_aI.oe_register_mode = "none";
defparam debug_led_red_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a5_a_aI.open_drain_output = "true";
defparam debug_led_red_a5_a_aI.operation_mode = "output";
defparam debug_led_red_a5_a_aI.output_async_reset = "none";
defparam debug_led_red_a5_a_aI.output_power_up = "low";
defparam debug_led_red_a5_a_aI.output_register_mode = "none";
defparam debug_led_red_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a6_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam debug_led_red_a6_a_aI.input_async_reset = "none";
defparam debug_led_red_a6_a_aI.input_power_up = "low";
defparam debug_led_red_a6_a_aI.input_register_mode = "none";
defparam debug_led_red_a6_a_aI.input_sync_reset = "none";
defparam debug_led_red_a6_a_aI.oe_async_reset = "none";
defparam debug_led_red_a6_a_aI.oe_power_up = "low";
defparam debug_led_red_a6_a_aI.oe_register_mode = "none";
defparam debug_led_red_a6_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a6_a_aI.open_drain_output = "true";
defparam debug_led_red_a6_a_aI.operation_mode = "output";
defparam debug_led_red_a6_a_aI.output_async_reset = "none";
defparam debug_led_red_a6_a_aI.output_power_up = "low";
defparam debug_led_red_a6_a_aI.output_register_mode = "none";
defparam debug_led_red_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a7_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam debug_led_red_a7_a_aI.input_async_reset = "none";
defparam debug_led_red_a7_a_aI.input_power_up = "low";
defparam debug_led_red_a7_a_aI.input_register_mode = "none";
defparam debug_led_red_a7_a_aI.input_sync_reset = "none";
defparam debug_led_red_a7_a_aI.oe_async_reset = "none";
defparam debug_led_red_a7_a_aI.oe_power_up = "low";
defparam debug_led_red_a7_a_aI.oe_register_mode = "none";
defparam debug_led_red_a7_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a7_a_aI.open_drain_output = "true";
defparam debug_led_red_a7_a_aI.operation_mode = "output";
defparam debug_led_red_a7_a_aI.output_async_reset = "none";
defparam debug_led_red_a7_a_aI.output_power_up = "low";
defparam debug_led_red_a7_a_aI.output_register_mode = "none";
defparam debug_led_red_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a8_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam debug_led_red_a8_a_aI.input_async_reset = "none";
defparam debug_led_red_a8_a_aI.input_power_up = "low";
defparam debug_led_red_a8_a_aI.input_register_mode = "none";
defparam debug_led_red_a8_a_aI.input_sync_reset = "none";
defparam debug_led_red_a8_a_aI.oe_async_reset = "none";
defparam debug_led_red_a8_a_aI.oe_power_up = "low";
defparam debug_led_red_a8_a_aI.oe_register_mode = "none";
defparam debug_led_red_a8_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a8_a_aI.open_drain_output = "true";
defparam debug_led_red_a8_a_aI.operation_mode = "output";
defparam debug_led_red_a8_a_aI.output_async_reset = "none";
defparam debug_led_red_a8_a_aI.output_power_up = "low";
defparam debug_led_red_a8_a_aI.output_register_mode = "none";
defparam debug_led_red_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a9_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam debug_led_red_a9_a_aI.input_async_reset = "none";
defparam debug_led_red_a9_a_aI.input_power_up = "low";
defparam debug_led_red_a9_a_aI.input_register_mode = "none";
defparam debug_led_red_a9_a_aI.input_sync_reset = "none";
defparam debug_led_red_a9_a_aI.oe_async_reset = "none";
defparam debug_led_red_a9_a_aI.oe_power_up = "low";
defparam debug_led_red_a9_a_aI.oe_register_mode = "none";
defparam debug_led_red_a9_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a9_a_aI.open_drain_output = "true";
defparam debug_led_red_a9_a_aI.operation_mode = "output";
defparam debug_led_red_a9_a_aI.output_async_reset = "none";
defparam debug_led_red_a9_a_aI.output_power_up = "low";
defparam debug_led_red_a9_a_aI.output_register_mode = "none";
defparam debug_led_red_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a10_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam debug_led_red_a10_a_aI.input_async_reset = "none";
defparam debug_led_red_a10_a_aI.input_power_up = "low";
defparam debug_led_red_a10_a_aI.input_register_mode = "none";
defparam debug_led_red_a10_a_aI.input_sync_reset = "none";
defparam debug_led_red_a10_a_aI.oe_async_reset = "none";
defparam debug_led_red_a10_a_aI.oe_power_up = "low";
defparam debug_led_red_a10_a_aI.oe_register_mode = "none";
defparam debug_led_red_a10_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a10_a_aI.open_drain_output = "true";
defparam debug_led_red_a10_a_aI.operation_mode = "output";
defparam debug_led_red_a10_a_aI.output_async_reset = "none";
defparam debug_led_red_a10_a_aI.output_power_up = "low";
defparam debug_led_red_a10_a_aI.output_register_mode = "none";
defparam debug_led_red_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a11_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam debug_led_red_a11_a_aI.input_async_reset = "none";
defparam debug_led_red_a11_a_aI.input_power_up = "low";
defparam debug_led_red_a11_a_aI.input_register_mode = "none";
defparam debug_led_red_a11_a_aI.input_sync_reset = "none";
defparam debug_led_red_a11_a_aI.oe_async_reset = "none";
defparam debug_led_red_a11_a_aI.oe_power_up = "low";
defparam debug_led_red_a11_a_aI.oe_register_mode = "none";
defparam debug_led_red_a11_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a11_a_aI.open_drain_output = "true";
defparam debug_led_red_a11_a_aI.operation_mode = "output";
defparam debug_led_red_a11_a_aI.output_async_reset = "none";
defparam debug_led_red_a11_a_aI.output_power_up = "low";
defparam debug_led_red_a11_a_aI.output_register_mode = "none";
defparam debug_led_red_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a12_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam debug_led_red_a12_a_aI.input_async_reset = "none";
defparam debug_led_red_a12_a_aI.input_power_up = "low";
defparam debug_led_red_a12_a_aI.input_register_mode = "none";
defparam debug_led_red_a12_a_aI.input_sync_reset = "none";
defparam debug_led_red_a12_a_aI.oe_async_reset = "none";
defparam debug_led_red_a12_a_aI.oe_power_up = "low";
defparam debug_led_red_a12_a_aI.oe_register_mode = "none";
defparam debug_led_red_a12_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a12_a_aI.open_drain_output = "true";
defparam debug_led_red_a12_a_aI.operation_mode = "output";
defparam debug_led_red_a12_a_aI.output_async_reset = "none";
defparam debug_led_red_a12_a_aI.output_power_up = "low";
defparam debug_led_red_a12_a_aI.output_register_mode = "none";
defparam debug_led_red_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a13_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam debug_led_red_a13_a_aI.input_async_reset = "none";
defparam debug_led_red_a13_a_aI.input_power_up = "low";
defparam debug_led_red_a13_a_aI.input_register_mode = "none";
defparam debug_led_red_a13_a_aI.input_sync_reset = "none";
defparam debug_led_red_a13_a_aI.oe_async_reset = "none";
defparam debug_led_red_a13_a_aI.oe_power_up = "low";
defparam debug_led_red_a13_a_aI.oe_register_mode = "none";
defparam debug_led_red_a13_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a13_a_aI.open_drain_output = "true";
defparam debug_led_red_a13_a_aI.operation_mode = "output";
defparam debug_led_red_a13_a_aI.output_async_reset = "none";
defparam debug_led_red_a13_a_aI.output_power_up = "low";
defparam debug_led_red_a13_a_aI.output_register_mode = "none";
defparam debug_led_red_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a14_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam debug_led_red_a14_a_aI.input_async_reset = "none";
defparam debug_led_red_a14_a_aI.input_power_up = "low";
defparam debug_led_red_a14_a_aI.input_register_mode = "none";
defparam debug_led_red_a14_a_aI.input_sync_reset = "none";
defparam debug_led_red_a14_a_aI.oe_async_reset = "none";
defparam debug_led_red_a14_a_aI.oe_power_up = "low";
defparam debug_led_red_a14_a_aI.oe_register_mode = "none";
defparam debug_led_red_a14_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a14_a_aI.open_drain_output = "true";
defparam debug_led_red_a14_a_aI.operation_mode = "output";
defparam debug_led_red_a14_a_aI.output_async_reset = "none";
defparam debug_led_red_a14_a_aI.output_power_up = "low";
defparam debug_led_red_a14_a_aI.output_register_mode = "none";
defparam debug_led_red_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a15_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam debug_led_red_a15_a_aI.input_async_reset = "none";
defparam debug_led_red_a15_a_aI.input_power_up = "low";
defparam debug_led_red_a15_a_aI.input_register_mode = "none";
defparam debug_led_red_a15_a_aI.input_sync_reset = "none";
defparam debug_led_red_a15_a_aI.oe_async_reset = "none";
defparam debug_led_red_a15_a_aI.oe_power_up = "low";
defparam debug_led_red_a15_a_aI.oe_register_mode = "none";
defparam debug_led_red_a15_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a15_a_aI.open_drain_output = "true";
defparam debug_led_red_a15_a_aI.operation_mode = "output";
defparam debug_led_red_a15_a_aI.output_async_reset = "none";
defparam debug_led_red_a15_a_aI.output_power_up = "low";
defparam debug_led_red_a15_a_aI.output_register_mode = "none";
defparam debug_led_red_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a16_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam debug_led_red_a16_a_aI.input_async_reset = "none";
defparam debug_led_red_a16_a_aI.input_power_up = "low";
defparam debug_led_red_a16_a_aI.input_register_mode = "none";
defparam debug_led_red_a16_a_aI.input_sync_reset = "none";
defparam debug_led_red_a16_a_aI.oe_async_reset = "none";
defparam debug_led_red_a16_a_aI.oe_power_up = "low";
defparam debug_led_red_a16_a_aI.oe_register_mode = "none";
defparam debug_led_red_a16_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a16_a_aI.open_drain_output = "true";
defparam debug_led_red_a16_a_aI.operation_mode = "output";
defparam debug_led_red_a16_a_aI.output_async_reset = "none";
defparam debug_led_red_a16_a_aI.output_power_up = "low";
defparam debug_led_red_a16_a_aI.output_register_mode = "none";
defparam debug_led_red_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a17_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_a17_a_aI.input_async_reset = "none";
defparam debug_led_red_a17_a_aI.input_power_up = "low";
defparam debug_led_red_a17_a_aI.input_register_mode = "none";
defparam debug_led_red_a17_a_aI.input_sync_reset = "none";
defparam debug_led_red_a17_a_aI.oe_async_reset = "none";
defparam debug_led_red_a17_a_aI.oe_power_up = "low";
defparam debug_led_red_a17_a_aI.oe_register_mode = "none";
defparam debug_led_red_a17_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a17_a_aI.open_drain_output = "true";
defparam debug_led_red_a17_a_aI.operation_mode = "output";
defparam debug_led_red_a17_a_aI.output_async_reset = "none";
defparam debug_led_red_a17_a_aI.output_power_up = "low";
defparam debug_led_red_a17_a_aI.output_register_mode = "none";
defparam debug_led_red_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam debug_led_grn_a0_a_aI.input_async_reset = "none";
defparam debug_led_grn_a0_a_aI.input_power_up = "low";
defparam debug_led_grn_a0_a_aI.input_register_mode = "none";
defparam debug_led_grn_a0_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_power_up = "low";
defparam debug_led_grn_a0_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.open_drain_output = "true";
defparam debug_led_grn_a0_a_aI.operation_mode = "output";
defparam debug_led_grn_a0_a_aI.output_async_reset = "none";
defparam debug_led_grn_a0_a_aI.output_power_up = "low";
defparam debug_led_grn_a0_a_aI.output_register_mode = "none";
defparam debug_led_grn_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam debug_led_grn_a1_a_aI.input_async_reset = "none";
defparam debug_led_grn_a1_a_aI.input_power_up = "low";
defparam debug_led_grn_a1_a_aI.input_register_mode = "none";
defparam debug_led_grn_a1_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_power_up = "low";
defparam debug_led_grn_a1_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.open_drain_output = "true";
defparam debug_led_grn_a1_a_aI.operation_mode = "output";
defparam debug_led_grn_a1_a_aI.output_async_reset = "none";
defparam debug_led_grn_a1_a_aI.output_power_up = "low";
defparam debug_led_grn_a1_a_aI.output_register_mode = "none";
defparam debug_led_grn_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam debug_led_grn_a2_a_aI.input_async_reset = "none";
defparam debug_led_grn_a2_a_aI.input_power_up = "low";
defparam debug_led_grn_a2_a_aI.input_register_mode = "none";
defparam debug_led_grn_a2_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_power_up = "low";
defparam debug_led_grn_a2_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.open_drain_output = "true";
defparam debug_led_grn_a2_a_aI.operation_mode = "output";
defparam debug_led_grn_a2_a_aI.output_async_reset = "none";
defparam debug_led_grn_a2_a_aI.output_power_up = "low";
defparam debug_led_grn_a2_a_aI.output_register_mode = "none";
defparam debug_led_grn_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam debug_led_grn_a3_a_aI.input_async_reset = "none";
defparam debug_led_grn_a3_a_aI.input_power_up = "low";
defparam debug_led_grn_a3_a_aI.input_register_mode = "none";
defparam debug_led_grn_a3_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_power_up = "low";
defparam debug_led_grn_a3_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.open_drain_output = "true";
defparam debug_led_grn_a3_a_aI.operation_mode = "output";
defparam debug_led_grn_a3_a_aI.output_async_reset = "none";
defparam debug_led_grn_a3_a_aI.output_power_up = "low";
defparam debug_led_grn_a3_a_aI.output_register_mode = "none";
defparam debug_led_grn_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a4_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam debug_led_grn_a4_a_aI.input_async_reset = "none";
defparam debug_led_grn_a4_a_aI.input_power_up = "low";
defparam debug_led_grn_a4_a_aI.input_register_mode = "none";
defparam debug_led_grn_a4_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_power_up = "low";
defparam debug_led_grn_a4_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.open_drain_output = "true";
defparam debug_led_grn_a4_a_aI.operation_mode = "output";
defparam debug_led_grn_a4_a_aI.output_async_reset = "none";
defparam debug_led_grn_a4_a_aI.output_power_up = "low";
defparam debug_led_grn_a4_a_aI.output_register_mode = "none";
defparam debug_led_grn_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a5_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam debug_led_grn_a5_a_aI.input_async_reset = "none";
defparam debug_led_grn_a5_a_aI.input_power_up = "low";
defparam debug_led_grn_a5_a_aI.input_register_mode = "none";
defparam debug_led_grn_a5_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_power_up = "low";
defparam debug_led_grn_a5_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.open_drain_output = "true";
defparam debug_led_grn_a5_a_aI.operation_mode = "output";
defparam debug_led_grn_a5_a_aI.output_async_reset = "none";
defparam debug_led_grn_a5_a_aI.output_power_up = "low";
defparam debug_led_grn_a5_a_aI.output_register_mode = "none";
defparam debug_led_grn_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_a0_a_aI.input_async_reset = "none";
defparam debug_num_0_a0_a_aI.input_power_up = "low";
defparam debug_num_0_a0_a_aI.input_register_mode = "none";
defparam debug_num_0_a0_a_aI.input_sync_reset = "none";
defparam debug_num_0_a0_a_aI.oe_async_reset = "none";
defparam debug_num_0_a0_a_aI.oe_power_up = "low";
defparam debug_num_0_a0_a_aI.oe_register_mode = "none";
defparam debug_num_0_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a0_a_aI.open_drain_output = "true";
defparam debug_num_0_a0_a_aI.operation_mode = "output";
defparam debug_num_0_a0_a_aI.output_async_reset = "none";
defparam debug_num_0_a0_a_aI.output_power_up = "low";
defparam debug_num_0_a0_a_aI.output_register_mode = "none";
defparam debug_num_0_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_a1_a_aI.input_async_reset = "none";
defparam debug_num_0_a1_a_aI.input_power_up = "low";
defparam debug_num_0_a1_a_aI.input_register_mode = "none";
defparam debug_num_0_a1_a_aI.input_sync_reset = "none";
defparam debug_num_0_a1_a_aI.oe_async_reset = "none";
defparam debug_num_0_a1_a_aI.oe_power_up = "low";
defparam debug_num_0_a1_a_aI.oe_register_mode = "none";
defparam debug_num_0_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a1_a_aI.open_drain_output = "true";
defparam debug_num_0_a1_a_aI.operation_mode = "output";
defparam debug_num_0_a1_a_aI.output_async_reset = "none";
defparam debug_num_0_a1_a_aI.output_power_up = "low";
defparam debug_num_0_a1_a_aI.output_register_mode = "none";
defparam debug_num_0_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_a2_a_aI.input_async_reset = "none";
defparam debug_num_0_a2_a_aI.input_power_up = "low";
defparam debug_num_0_a2_a_aI.input_register_mode = "none";
defparam debug_num_0_a2_a_aI.input_sync_reset = "none";
defparam debug_num_0_a2_a_aI.oe_async_reset = "none";
defparam debug_num_0_a2_a_aI.oe_power_up = "low";
defparam debug_num_0_a2_a_aI.oe_register_mode = "none";
defparam debug_num_0_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a2_a_aI.open_drain_output = "true";
defparam debug_num_0_a2_a_aI.operation_mode = "output";
defparam debug_num_0_a2_a_aI.output_async_reset = "none";
defparam debug_num_0_a2_a_aI.output_power_up = "low";
defparam debug_num_0_a2_a_aI.output_register_mode = "none";
defparam debug_num_0_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_a3_a_aI.input_async_reset = "none";
defparam debug_num_0_a3_a_aI.input_power_up = "low";
defparam debug_num_0_a3_a_aI.input_register_mode = "none";
defparam debug_num_0_a3_a_aI.input_sync_reset = "none";
defparam debug_num_0_a3_a_aI.oe_async_reset = "none";
defparam debug_num_0_a3_a_aI.oe_power_up = "low";
defparam debug_num_0_a3_a_aI.oe_register_mode = "none";
defparam debug_num_0_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a3_a_aI.open_drain_output = "true";
defparam debug_num_0_a3_a_aI.operation_mode = "output";
defparam debug_num_0_a3_a_aI.output_async_reset = "none";
defparam debug_num_0_a3_a_aI.output_power_up = "low";
defparam debug_num_0_a3_a_aI.output_register_mode = "none";
defparam debug_num_0_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_a0_a_aI.input_async_reset = "none";
defparam debug_num_1_a0_a_aI.input_power_up = "low";
defparam debug_num_1_a0_a_aI.input_register_mode = "none";
defparam debug_num_1_a0_a_aI.input_sync_reset = "none";
defparam debug_num_1_a0_a_aI.oe_async_reset = "none";
defparam debug_num_1_a0_a_aI.oe_power_up = "low";
defparam debug_num_1_a0_a_aI.oe_register_mode = "none";
defparam debug_num_1_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a0_a_aI.open_drain_output = "true";
defparam debug_num_1_a0_a_aI.operation_mode = "output";
defparam debug_num_1_a0_a_aI.output_async_reset = "none";
defparam debug_num_1_a0_a_aI.output_power_up = "low";
defparam debug_num_1_a0_a_aI.output_register_mode = "none";
defparam debug_num_1_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_a1_a_aI.input_async_reset = "none";
defparam debug_num_1_a1_a_aI.input_power_up = "low";
defparam debug_num_1_a1_a_aI.input_register_mode = "none";
defparam debug_num_1_a1_a_aI.input_sync_reset = "none";
defparam debug_num_1_a1_a_aI.oe_async_reset = "none";
defparam debug_num_1_a1_a_aI.oe_power_up = "low";
defparam debug_num_1_a1_a_aI.oe_register_mode = "none";
defparam debug_num_1_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a1_a_aI.open_drain_output = "true";
defparam debug_num_1_a1_a_aI.operation_mode = "output";
defparam debug_num_1_a1_a_aI.output_async_reset = "none";
defparam debug_num_1_a1_a_aI.output_power_up = "low";
defparam debug_num_1_a1_a_aI.output_register_mode = "none";
defparam debug_num_1_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_a2_a_aI.input_async_reset = "none";
defparam debug_num_1_a2_a_aI.input_power_up = "low";
defparam debug_num_1_a2_a_aI.input_register_mode = "none";
defparam debug_num_1_a2_a_aI.input_sync_reset = "none";
defparam debug_num_1_a2_a_aI.oe_async_reset = "none";
defparam debug_num_1_a2_a_aI.oe_power_up = "low";
defparam debug_num_1_a2_a_aI.oe_register_mode = "none";
defparam debug_num_1_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a2_a_aI.open_drain_output = "true";
defparam debug_num_1_a2_a_aI.operation_mode = "output";
defparam debug_num_1_a2_a_aI.output_async_reset = "none";
defparam debug_num_1_a2_a_aI.output_power_up = "low";
defparam debug_num_1_a2_a_aI.output_register_mode = "none";
defparam debug_num_1_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_a3_a_aI.input_async_reset = "none";
defparam debug_num_1_a3_a_aI.input_power_up = "low";
defparam debug_num_1_a3_a_aI.input_register_mode = "none";
defparam debug_num_1_a3_a_aI.input_sync_reset = "none";
defparam debug_num_1_a3_a_aI.oe_async_reset = "none";
defparam debug_num_1_a3_a_aI.oe_power_up = "low";
defparam debug_num_1_a3_a_aI.oe_register_mode = "none";
defparam debug_num_1_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a3_a_aI.open_drain_output = "true";
defparam debug_num_1_a3_a_aI.operation_mode = "output";
defparam debug_num_1_a3_a_aI.output_async_reset = "none";
defparam debug_num_1_a3_a_aI.output_power_up = "low";
defparam debug_num_1_a3_a_aI.output_register_mode = "none";
defparam debug_num_1_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_a0_a_aI.input_async_reset = "none";
defparam debug_num_2_a0_a_aI.input_power_up = "low";
defparam debug_num_2_a0_a_aI.input_register_mode = "none";
defparam debug_num_2_a0_a_aI.input_sync_reset = "none";
defparam debug_num_2_a0_a_aI.oe_async_reset = "none";
defparam debug_num_2_a0_a_aI.oe_power_up = "low";
defparam debug_num_2_a0_a_aI.oe_register_mode = "none";
defparam debug_num_2_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a0_a_aI.open_drain_output = "true";
defparam debug_num_2_a0_a_aI.operation_mode = "output";
defparam debug_num_2_a0_a_aI.output_async_reset = "none";
defparam debug_num_2_a0_a_aI.output_power_up = "low";
defparam debug_num_2_a0_a_aI.output_register_mode = "none";
defparam debug_num_2_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_a1_a_aI.input_async_reset = "none";
defparam debug_num_2_a1_a_aI.input_power_up = "low";
defparam debug_num_2_a1_a_aI.input_register_mode = "none";
defparam debug_num_2_a1_a_aI.input_sync_reset = "none";
defparam debug_num_2_a1_a_aI.oe_async_reset = "none";
defparam debug_num_2_a1_a_aI.oe_power_up = "low";
defparam debug_num_2_a1_a_aI.oe_register_mode = "none";
defparam debug_num_2_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a1_a_aI.open_drain_output = "true";
defparam debug_num_2_a1_a_aI.operation_mode = "output";
defparam debug_num_2_a1_a_aI.output_async_reset = "none";
defparam debug_num_2_a1_a_aI.output_power_up = "low";
defparam debug_num_2_a1_a_aI.output_register_mode = "none";
defparam debug_num_2_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_a2_a_aI.input_async_reset = "none";
defparam debug_num_2_a2_a_aI.input_power_up = "low";
defparam debug_num_2_a2_a_aI.input_register_mode = "none";
defparam debug_num_2_a2_a_aI.input_sync_reset = "none";
defparam debug_num_2_a2_a_aI.oe_async_reset = "none";
defparam debug_num_2_a2_a_aI.oe_power_up = "low";
defparam debug_num_2_a2_a_aI.oe_register_mode = "none";
defparam debug_num_2_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a2_a_aI.open_drain_output = "true";
defparam debug_num_2_a2_a_aI.operation_mode = "output";
defparam debug_num_2_a2_a_aI.output_async_reset = "none";
defparam debug_num_2_a2_a_aI.output_power_up = "low";
defparam debug_num_2_a2_a_aI.output_register_mode = "none";
defparam debug_num_2_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_a3_a_aI.input_async_reset = "none";
defparam debug_num_2_a3_a_aI.input_power_up = "low";
defparam debug_num_2_a3_a_aI.input_register_mode = "none";
defparam debug_num_2_a3_a_aI.input_sync_reset = "none";
defparam debug_num_2_a3_a_aI.oe_async_reset = "none";
defparam debug_num_2_a3_a_aI.oe_power_up = "low";
defparam debug_num_2_a3_a_aI.oe_register_mode = "none";
defparam debug_num_2_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a3_a_aI.open_drain_output = "true";
defparam debug_num_2_a3_a_aI.operation_mode = "output";
defparam debug_num_2_a3_a_aI.output_async_reset = "none";
defparam debug_num_2_a3_a_aI.output_power_up = "low";
defparam debug_num_2_a3_a_aI.output_register_mode = "none";
defparam debug_num_2_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_a0_a_aI.input_async_reset = "none";
defparam debug_num_3_a0_a_aI.input_power_up = "low";
defparam debug_num_3_a0_a_aI.input_register_mode = "none";
defparam debug_num_3_a0_a_aI.input_sync_reset = "none";
defparam debug_num_3_a0_a_aI.oe_async_reset = "none";
defparam debug_num_3_a0_a_aI.oe_power_up = "low";
defparam debug_num_3_a0_a_aI.oe_register_mode = "none";
defparam debug_num_3_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a0_a_aI.open_drain_output = "true";
defparam debug_num_3_a0_a_aI.operation_mode = "output";
defparam debug_num_3_a0_a_aI.output_async_reset = "none";
defparam debug_num_3_a0_a_aI.output_power_up = "low";
defparam debug_num_3_a0_a_aI.output_register_mode = "none";
defparam debug_num_3_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_a1_a_aI.input_async_reset = "none";
defparam debug_num_3_a1_a_aI.input_power_up = "low";
defparam debug_num_3_a1_a_aI.input_register_mode = "none";
defparam debug_num_3_a1_a_aI.input_sync_reset = "none";
defparam debug_num_3_a1_a_aI.oe_async_reset = "none";
defparam debug_num_3_a1_a_aI.oe_power_up = "low";
defparam debug_num_3_a1_a_aI.oe_register_mode = "none";
defparam debug_num_3_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a1_a_aI.open_drain_output = "true";
defparam debug_num_3_a1_a_aI.operation_mode = "output";
defparam debug_num_3_a1_a_aI.output_async_reset = "none";
defparam debug_num_3_a1_a_aI.output_power_up = "low";
defparam debug_num_3_a1_a_aI.output_register_mode = "none";
defparam debug_num_3_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_a2_a_aI.input_async_reset = "none";
defparam debug_num_3_a2_a_aI.input_power_up = "low";
defparam debug_num_3_a2_a_aI.input_register_mode = "none";
defparam debug_num_3_a2_a_aI.input_sync_reset = "none";
defparam debug_num_3_a2_a_aI.oe_async_reset = "none";
defparam debug_num_3_a2_a_aI.oe_power_up = "low";
defparam debug_num_3_a2_a_aI.oe_register_mode = "none";
defparam debug_num_3_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a2_a_aI.open_drain_output = "true";
defparam debug_num_3_a2_a_aI.operation_mode = "output";
defparam debug_num_3_a2_a_aI.output_async_reset = "none";
defparam debug_num_3_a2_a_aI.output_power_up = "low";
defparam debug_num_3_a2_a_aI.output_register_mode = "none";
defparam debug_num_3_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_a3_a_aI.input_async_reset = "none";
defparam debug_num_3_a3_a_aI.input_power_up = "low";
defparam debug_num_3_a3_a_aI.input_register_mode = "none";
defparam debug_num_3_a3_a_aI.input_sync_reset = "none";
defparam debug_num_3_a3_a_aI.oe_async_reset = "none";
defparam debug_num_3_a3_a_aI.oe_power_up = "low";
defparam debug_num_3_a3_a_aI.oe_register_mode = "none";
defparam debug_num_3_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a3_a_aI.open_drain_output = "true";
defparam debug_num_3_a3_a_aI.operation_mode = "output";
defparam debug_num_3_a3_a_aI.output_async_reset = "none";
defparam debug_num_3_a3_a_aI.output_power_up = "low";
defparam debug_num_3_a3_a_aI.output_register_mode = "none";
defparam debug_num_3_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_a0_a_aI.input_async_reset = "none";
defparam debug_num_4_a0_a_aI.input_power_up = "low";
defparam debug_num_4_a0_a_aI.input_register_mode = "none";
defparam debug_num_4_a0_a_aI.input_sync_reset = "none";
defparam debug_num_4_a0_a_aI.oe_async_reset = "none";
defparam debug_num_4_a0_a_aI.oe_power_up = "low";
defparam debug_num_4_a0_a_aI.oe_register_mode = "none";
defparam debug_num_4_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a0_a_aI.open_drain_output = "true";
defparam debug_num_4_a0_a_aI.operation_mode = "output";
defparam debug_num_4_a0_a_aI.output_async_reset = "none";
defparam debug_num_4_a0_a_aI.output_power_up = "low";
defparam debug_num_4_a0_a_aI.output_register_mode = "none";
defparam debug_num_4_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_a1_a_aI.input_async_reset = "none";
defparam debug_num_4_a1_a_aI.input_power_up = "low";
defparam debug_num_4_a1_a_aI.input_register_mode = "none";
defparam debug_num_4_a1_a_aI.input_sync_reset = "none";
defparam debug_num_4_a1_a_aI.oe_async_reset = "none";
defparam debug_num_4_a1_a_aI.oe_power_up = "low";
defparam debug_num_4_a1_a_aI.oe_register_mode = "none";
defparam debug_num_4_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a1_a_aI.open_drain_output = "true";
defparam debug_num_4_a1_a_aI.operation_mode = "output";
defparam debug_num_4_a1_a_aI.output_async_reset = "none";
defparam debug_num_4_a1_a_aI.output_power_up = "low";
defparam debug_num_4_a1_a_aI.output_register_mode = "none";
defparam debug_num_4_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_a2_a_aI.input_async_reset = "none";
defparam debug_num_4_a2_a_aI.input_power_up = "low";
defparam debug_num_4_a2_a_aI.input_register_mode = "none";
defparam debug_num_4_a2_a_aI.input_sync_reset = "none";
defparam debug_num_4_a2_a_aI.oe_async_reset = "none";
defparam debug_num_4_a2_a_aI.oe_power_up = "low";
defparam debug_num_4_a2_a_aI.oe_register_mode = "none";
defparam debug_num_4_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a2_a_aI.open_drain_output = "true";
defparam debug_num_4_a2_a_aI.operation_mode = "output";
defparam debug_num_4_a2_a_aI.output_async_reset = "none";
defparam debug_num_4_a2_a_aI.output_power_up = "low";
defparam debug_num_4_a2_a_aI.output_register_mode = "none";
defparam debug_num_4_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_a3_a_aI.input_async_reset = "none";
defparam debug_num_4_a3_a_aI.input_power_up = "low";
defparam debug_num_4_a3_a_aI.input_register_mode = "none";
defparam debug_num_4_a3_a_aI.input_sync_reset = "none";
defparam debug_num_4_a3_a_aI.oe_async_reset = "none";
defparam debug_num_4_a3_a_aI.oe_power_up = "low";
defparam debug_num_4_a3_a_aI.oe_register_mode = "none";
defparam debug_num_4_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a3_a_aI.open_drain_output = "true";
defparam debug_num_4_a3_a_aI.operation_mode = "output";
defparam debug_num_4_a3_a_aI.output_async_reset = "none";
defparam debug_num_4_a3_a_aI.output_power_up = "low";
defparam debug_num_4_a3_a_aI.output_register_mode = "none";
defparam debug_num_4_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a0_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_a0_a_aI.input_async_reset = "none";
defparam debug_num_5_a0_a_aI.input_power_up = "low";
defparam debug_num_5_a0_a_aI.input_register_mode = "none";
defparam debug_num_5_a0_a_aI.input_sync_reset = "none";
defparam debug_num_5_a0_a_aI.oe_async_reset = "none";
defparam debug_num_5_a0_a_aI.oe_power_up = "low";
defparam debug_num_5_a0_a_aI.oe_register_mode = "none";
defparam debug_num_5_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a0_a_aI.open_drain_output = "true";
defparam debug_num_5_a0_a_aI.operation_mode = "output";
defparam debug_num_5_a0_a_aI.output_async_reset = "none";
defparam debug_num_5_a0_a_aI.output_power_up = "low";
defparam debug_num_5_a0_a_aI.output_register_mode = "none";
defparam debug_num_5_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a1_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_a1_a_aI.input_async_reset = "none";
defparam debug_num_5_a1_a_aI.input_power_up = "low";
defparam debug_num_5_a1_a_aI.input_register_mode = "none";
defparam debug_num_5_a1_a_aI.input_sync_reset = "none";
defparam debug_num_5_a1_a_aI.oe_async_reset = "none";
defparam debug_num_5_a1_a_aI.oe_power_up = "low";
defparam debug_num_5_a1_a_aI.oe_register_mode = "none";
defparam debug_num_5_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a1_a_aI.open_drain_output = "true";
defparam debug_num_5_a1_a_aI.operation_mode = "output";
defparam debug_num_5_a1_a_aI.output_async_reset = "none";
defparam debug_num_5_a1_a_aI.output_power_up = "low";
defparam debug_num_5_a1_a_aI.output_register_mode = "none";
defparam debug_num_5_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a2_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_a2_a_aI.input_async_reset = "none";
defparam debug_num_5_a2_a_aI.input_power_up = "low";
defparam debug_num_5_a2_a_aI.input_register_mode = "none";
defparam debug_num_5_a2_a_aI.input_sync_reset = "none";
defparam debug_num_5_a2_a_aI.oe_async_reset = "none";
defparam debug_num_5_a2_a_aI.oe_power_up = "low";
defparam debug_num_5_a2_a_aI.oe_register_mode = "none";
defparam debug_num_5_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a2_a_aI.open_drain_output = "true";
defparam debug_num_5_a2_a_aI.operation_mode = "output";
defparam debug_num_5_a2_a_aI.output_async_reset = "none";
defparam debug_num_5_a2_a_aI.output_power_up = "low";
defparam debug_num_5_a2_a_aI.output_register_mode = "none";
defparam debug_num_5_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a3_a_aI(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_a3_a_aI.input_async_reset = "none";
defparam debug_num_5_a3_a_aI.input_power_up = "low";
defparam debug_num_5_a3_a_aI.input_register_mode = "none";
defparam debug_num_5_a3_a_aI.input_sync_reset = "none";
defparam debug_num_5_a3_a_aI.oe_async_reset = "none";
defparam debug_num_5_a3_a_aI.oe_power_up = "low";
defparam debug_num_5_a3_a_aI.oe_register_mode = "none";
defparam debug_num_5_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a3_a_aI.open_drain_output = "true";
defparam debug_num_5_a3_a_aI.operation_mode = "output";
defparam debug_num_5_a3_a_aI.output_async_reset = "none";
defparam debug_num_5_a3_a_aI.output_power_up = "low";
defparam debug_num_5_a3_a_aI.output_register_mode = "none";
defparam debug_num_5_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_valid_aI(
	.datain(reg_valid_bits_stage2_3__aregout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_aI.input_async_reset = "none";
defparam o_valid_aI.input_power_up = "low";
defparam o_valid_aI.input_register_mode = "none";
defparam o_valid_aI.input_sync_reset = "none";
defparam o_valid_aI.oe_async_reset = "none";
defparam o_valid_aI.oe_power_up = "low";
defparam o_valid_aI.oe_register_mode = "none";
defparam o_valid_aI.oe_sync_reset = "none";
defparam o_valid_aI.operation_mode = "output";
defparam o_valid_aI.output_async_reset = "none";
defparam o_valid_aI.output_power_up = "low";
defparam o_valid_aI.output_register_mode = "none";
defparam o_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_edge_aI(
	.datain(reg_r_edge_aregout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_edge));
// synopsys translate_off
defparam o_edge_aI.input_async_reset = "none";
defparam o_edge_aI.input_power_up = "low";
defparam o_edge_aI.input_register_mode = "none";
defparam o_edge_aI.input_sync_reset = "none";
defparam o_edge_aI.oe_async_reset = "none";
defparam o_edge_aI.oe_power_up = "low";
defparam o_edge_aI.oe_register_mode = "none";
defparam o_edge_aI.oe_sync_reset = "none";
defparam o_edge_aI.operation_mode = "output";
defparam o_edge_aI.output_async_reset = "none";
defparam o_edge_aI.output_power_up = "low";
defparam o_edge_aI.output_register_mode = "none";
defparam o_edge_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a0_a_aI(
	.datain(ix63886z52923_acombout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_a0_a_aI.input_async_reset = "none";
defparam o_dir_a0_a_aI.input_power_up = "low";
defparam o_dir_a0_a_aI.input_register_mode = "none";
defparam o_dir_a0_a_aI.input_sync_reset = "none";
defparam o_dir_a0_a_aI.oe_async_reset = "none";
defparam o_dir_a0_a_aI.oe_power_up = "low";
defparam o_dir_a0_a_aI.oe_register_mode = "none";
defparam o_dir_a0_a_aI.oe_sync_reset = "none";
defparam o_dir_a0_a_aI.operation_mode = "output";
defparam o_dir_a0_a_aI.output_async_reset = "none";
defparam o_dir_a0_a_aI.output_power_up = "low";
defparam o_dir_a0_a_aI.output_register_mode = "none";
defparam o_dir_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a1_a_aI(
	.datain(ix62889z52923_acombout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_a1_a_aI.input_async_reset = "none";
defparam o_dir_a1_a_aI.input_power_up = "low";
defparam o_dir_a1_a_aI.input_register_mode = "none";
defparam o_dir_a1_a_aI.input_sync_reset = "none";
defparam o_dir_a1_a_aI.oe_async_reset = "none";
defparam o_dir_a1_a_aI.oe_power_up = "low";
defparam o_dir_a1_a_aI.oe_register_mode = "none";
defparam o_dir_a1_a_aI.oe_sync_reset = "none";
defparam o_dir_a1_a_aI.operation_mode = "output";
defparam o_dir_a1_a_aI.output_async_reset = "none";
defparam o_dir_a1_a_aI.output_power_up = "low";
defparam o_dir_a1_a_aI.output_register_mode = "none";
defparam o_dir_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a2_a_aI(
	.datain(ix61892z52923_acombout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_a2_a_aI.input_async_reset = "none";
defparam o_dir_a2_a_aI.input_power_up = "low";
defparam o_dir_a2_a_aI.input_register_mode = "none";
defparam o_dir_a2_a_aI.input_sync_reset = "none";
defparam o_dir_a2_a_aI.oe_async_reset = "none";
defparam o_dir_a2_a_aI.oe_power_up = "low";
defparam o_dir_a2_a_aI.oe_register_mode = "none";
defparam o_dir_a2_a_aI.oe_sync_reset = "none";
defparam o_dir_a2_a_aI.operation_mode = "output";
defparam o_dir_a2_a_aI.output_async_reset = "none";
defparam o_dir_a2_a_aI.output_power_up = "low";
defparam o_dir_a2_a_aI.output_register_mode = "none";
defparam o_dir_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a0_a_aI(
	.datain(reg_r_mode_0__aregout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam o_mode_a0_a_aI.input_async_reset = "none";
defparam o_mode_a0_a_aI.input_power_up = "low";
defparam o_mode_a0_a_aI.input_register_mode = "none";
defparam o_mode_a0_a_aI.input_sync_reset = "none";
defparam o_mode_a0_a_aI.oe_async_reset = "none";
defparam o_mode_a0_a_aI.oe_power_up = "low";
defparam o_mode_a0_a_aI.oe_register_mode = "none";
defparam o_mode_a0_a_aI.oe_sync_reset = "none";
defparam o_mode_a0_a_aI.operation_mode = "output";
defparam o_mode_a0_a_aI.output_async_reset = "none";
defparam o_mode_a0_a_aI.output_power_up = "low";
defparam o_mode_a0_a_aI.output_register_mode = "none";
defparam o_mode_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a1_a_aI(
	.datain(reg_r_mode_1__aregout),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam o_mode_a1_a_aI.input_async_reset = "none";
defparam o_mode_a1_a_aI.input_power_up = "low";
defparam o_mode_a1_a_aI.input_register_mode = "none";
defparam o_mode_a1_a_aI.input_sync_reset = "none";
defparam o_mode_a1_a_aI.oe_async_reset = "none";
defparam o_mode_a1_a_aI.oe_power_up = "low";
defparam o_mode_a1_a_aI.oe_register_mode = "none";
defparam o_mode_a1_a_aI.oe_sync_reset = "none";
defparam o_mode_a1_a_aI.operation_mode = "output";
defparam o_mode_a1_a_aI.output_async_reset = "none";
defparam o_mode_a1_a_aI.output_power_up = "low";
defparam o_mode_a1_a_aI.output_register_mode = "none";
defparam o_mode_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a0_a_aI(
	.datain(modgen_counter_pixel_counter_aq[8]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[0]));
// synopsys translate_off
defparam o_row_a0_a_aI.input_async_reset = "none";
defparam o_row_a0_a_aI.input_power_up = "low";
defparam o_row_a0_a_aI.input_register_mode = "none";
defparam o_row_a0_a_aI.input_sync_reset = "none";
defparam o_row_a0_a_aI.oe_async_reset = "none";
defparam o_row_a0_a_aI.oe_power_up = "low";
defparam o_row_a0_a_aI.oe_register_mode = "none";
defparam o_row_a0_a_aI.oe_sync_reset = "none";
defparam o_row_a0_a_aI.operation_mode = "output";
defparam o_row_a0_a_aI.output_async_reset = "none";
defparam o_row_a0_a_aI.output_power_up = "low";
defparam o_row_a0_a_aI.output_register_mode = "none";
defparam o_row_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a1_a_aI(
	.datain(modgen_counter_pixel_counter_aq[9]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[1]));
// synopsys translate_off
defparam o_row_a1_a_aI.input_async_reset = "none";
defparam o_row_a1_a_aI.input_power_up = "low";
defparam o_row_a1_a_aI.input_register_mode = "none";
defparam o_row_a1_a_aI.input_sync_reset = "none";
defparam o_row_a1_a_aI.oe_async_reset = "none";
defparam o_row_a1_a_aI.oe_power_up = "low";
defparam o_row_a1_a_aI.oe_register_mode = "none";
defparam o_row_a1_a_aI.oe_sync_reset = "none";
defparam o_row_a1_a_aI.operation_mode = "output";
defparam o_row_a1_a_aI.output_async_reset = "none";
defparam o_row_a1_a_aI.output_power_up = "low";
defparam o_row_a1_a_aI.output_register_mode = "none";
defparam o_row_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a2_a_aI(
	.datain(modgen_counter_pixel_counter_aq[10]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[2]));
// synopsys translate_off
defparam o_row_a2_a_aI.input_async_reset = "none";
defparam o_row_a2_a_aI.input_power_up = "low";
defparam o_row_a2_a_aI.input_register_mode = "none";
defparam o_row_a2_a_aI.input_sync_reset = "none";
defparam o_row_a2_a_aI.oe_async_reset = "none";
defparam o_row_a2_a_aI.oe_power_up = "low";
defparam o_row_a2_a_aI.oe_register_mode = "none";
defparam o_row_a2_a_aI.oe_sync_reset = "none";
defparam o_row_a2_a_aI.operation_mode = "output";
defparam o_row_a2_a_aI.output_async_reset = "none";
defparam o_row_a2_a_aI.output_power_up = "low";
defparam o_row_a2_a_aI.output_register_mode = "none";
defparam o_row_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a3_a_aI(
	.datain(modgen_counter_pixel_counter_aq[11]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[3]));
// synopsys translate_off
defparam o_row_a3_a_aI.input_async_reset = "none";
defparam o_row_a3_a_aI.input_power_up = "low";
defparam o_row_a3_a_aI.input_register_mode = "none";
defparam o_row_a3_a_aI.input_sync_reset = "none";
defparam o_row_a3_a_aI.oe_async_reset = "none";
defparam o_row_a3_a_aI.oe_power_up = "low";
defparam o_row_a3_a_aI.oe_register_mode = "none";
defparam o_row_a3_a_aI.oe_sync_reset = "none";
defparam o_row_a3_a_aI.operation_mode = "output";
defparam o_row_a3_a_aI.output_async_reset = "none";
defparam o_row_a3_a_aI.output_power_up = "low";
defparam o_row_a3_a_aI.output_register_mode = "none";
defparam o_row_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a4_a_aI(
	.datain(modgen_counter_pixel_counter_aq[12]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[4]));
// synopsys translate_off
defparam o_row_a4_a_aI.input_async_reset = "none";
defparam o_row_a4_a_aI.input_power_up = "low";
defparam o_row_a4_a_aI.input_register_mode = "none";
defparam o_row_a4_a_aI.input_sync_reset = "none";
defparam o_row_a4_a_aI.oe_async_reset = "none";
defparam o_row_a4_a_aI.oe_power_up = "low";
defparam o_row_a4_a_aI.oe_register_mode = "none";
defparam o_row_a4_a_aI.oe_sync_reset = "none";
defparam o_row_a4_a_aI.operation_mode = "output";
defparam o_row_a4_a_aI.output_async_reset = "none";
defparam o_row_a4_a_aI.output_power_up = "low";
defparam o_row_a4_a_aI.output_register_mode = "none";
defparam o_row_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a5_a_aI(
	.datain(modgen_counter_pixel_counter_aq[13]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[5]));
// synopsys translate_off
defparam o_row_a5_a_aI.input_async_reset = "none";
defparam o_row_a5_a_aI.input_power_up = "low";
defparam o_row_a5_a_aI.input_register_mode = "none";
defparam o_row_a5_a_aI.input_sync_reset = "none";
defparam o_row_a5_a_aI.oe_async_reset = "none";
defparam o_row_a5_a_aI.oe_power_up = "low";
defparam o_row_a5_a_aI.oe_register_mode = "none";
defparam o_row_a5_a_aI.oe_sync_reset = "none";
defparam o_row_a5_a_aI.operation_mode = "output";
defparam o_row_a5_a_aI.output_async_reset = "none";
defparam o_row_a5_a_aI.output_power_up = "low";
defparam o_row_a5_a_aI.output_register_mode = "none";
defparam o_row_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a6_a_aI(
	.datain(modgen_counter_pixel_counter_aq[14]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[6]));
// synopsys translate_off
defparam o_row_a6_a_aI.input_async_reset = "none";
defparam o_row_a6_a_aI.input_power_up = "low";
defparam o_row_a6_a_aI.input_register_mode = "none";
defparam o_row_a6_a_aI.input_sync_reset = "none";
defparam o_row_a6_a_aI.oe_async_reset = "none";
defparam o_row_a6_a_aI.oe_power_up = "low";
defparam o_row_a6_a_aI.oe_register_mode = "none";
defparam o_row_a6_a_aI.oe_sync_reset = "none";
defparam o_row_a6_a_aI.operation_mode = "output";
defparam o_row_a6_a_aI.output_async_reset = "none";
defparam o_row_a6_a_aI.output_power_up = "low";
defparam o_row_a6_a_aI.output_register_mode = "none";
defparam o_row_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a7_a_aI(
	.datain(modgen_counter_pixel_counter_aq[15]),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[7]));
// synopsys translate_off
defparam o_row_a7_a_aI.input_async_reset = "none";
defparam o_row_a7_a_aI.input_power_up = "low";
defparam o_row_a7_a_aI.input_register_mode = "none";
defparam o_row_a7_a_aI.input_sync_reset = "none";
defparam o_row_a7_a_aI.oe_async_reset = "none";
defparam o_row_a7_a_aI.oe_power_up = "low";
defparam o_row_a7_a_aI.oe_register_mode = "none";
defparam o_row_a7_a_aI.oe_sync_reset = "none";
defparam o_row_a7_a_aI.operation_mode = "output";
defparam o_row_a7_a_aI.output_async_reset = "none";
defparam o_row_a7_a_aI.output_power_up = "low";
defparam o_row_a7_a_aI.output_register_mode = "none";
defparam o_row_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a8_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a9_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a10_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a11_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a12_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a13_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a14_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a15_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a16_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a17_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
