-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

-- DATE "03/26/2016 22:53:07"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_num_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END kirsch_chip;

-- Design Ports Information
-- debug_led_red[0]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[17]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[0]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[1]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[2]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[3]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[1]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[3]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[1]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[1]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[3]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[0]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[1]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[2]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_valid	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_edge	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[1]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[3]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[4]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_key[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_reset	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_num_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL nx22195z6 : std_logic;
SIGNAL nx22195z5 : std_logic;
SIGNAL add5_3_a : std_logic;
SIGNAL add5_4_a : std_logic;
SIGNAL add5_8_a : std_logic;
SIGNAL add5_9_a : std_logic;
SIGNAL add5_11_a : std_logic;
SIGNAL add5_13_a : std_logic;
SIGNAL nx40727z3 : std_logic;
SIGNAL r7_12_a : std_logic;
SIGNAL r7_10_a : std_logic;
SIGNAL r7_7_a : std_logic;
SIGNAL r7_6_a : std_logic;
SIGNAL r7_5_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z1 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_16_a : std_logic;
SIGNAL nx28963z3 : std_logic;
SIGNAL nx28963z6 : std_logic;
SIGNAL nx28963z13 : std_logic;
SIGNAL nx28963z14 : std_logic;
SIGNAL nx28963z18 : std_logic;
SIGNAL nx28963z19 : std_logic;
SIGNAL nx28963z25 : std_logic;
SIGNAL nx28963z26 : std_logic;
SIGNAL nx28963z31 : std_logic;
SIGNAL nx28963z34 : std_logic;
SIGNAL nx28963z35 : std_logic;
SIGNAL nx28963z36 : std_logic;
SIGNAL nx28963z41 : std_logic;
SIGNAL nx42053z3 : std_logic;
SIGNAL nx42053z4 : std_logic;
SIGNAL nx42053z8 : std_logic;
SIGNAL nx42053z9 : std_logic;
SIGNAL nx42053z13 : std_logic;
SIGNAL nx42053z14 : std_logic;
SIGNAL nx42053z19 : std_logic;
SIGNAL nx42053z20 : std_logic;
SIGNAL nx42053z21 : std_logic;
SIGNAL nx42053z23 : std_logic;
SIGNAL nx42053z24 : std_logic;
SIGNAL nx42053z26 : std_logic;
SIGNAL nx42053z30 : std_logic;
SIGNAL nx42053z31 : std_logic;
SIGNAL nx42053z33 : std_logic;
SIGNAL nx42053z34 : std_logic;
SIGNAL nx22195z7 : std_logic;
SIGNAL nx52409z1 : std_logic;
SIGNAL nx60535z1 : std_logic;
SIGNAL nx60779z3 : std_logic;
SIGNAL r5_magnitude_a9_a_afeeder_combout : std_logic;
SIGNAL r5_magnitude_a7_a_afeeder_combout : std_logic;
SIGNAL r5_magnitude_a4_a_afeeder_combout : std_logic;
SIGNAL r5_magnitude_a3_a_afeeder_combout : std_logic;
SIGNAL r5_magnitude_a2_a_afeeder_combout : std_logic;
SIGNAL r4_a3_a_afeeder_combout : std_logic;
SIGNAL r4_a5_a_afeeder_combout : std_logic;
SIGNAL r4_a7_a_afeeder_combout : std_logic;
SIGNAL r1_a8_a_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z31 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_1_a : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL modgen_counter_pixel_counter_anx22081z1 : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z29 : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z27 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_3_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z25 : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z23 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_5_a : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_2_a : std_logic;
SIGNAL nx22195z4 : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z21 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_6_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z19 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_7_a : std_logic;
SIGNAL a_3_a : std_logic;
SIGNAL nx22195z3 : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z17 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_8_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z15 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_9_a : std_logic;
SIGNAL nx22195z2 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_4_a : std_logic;
SIGNAL nx22195z9 : std_logic;
SIGNAL nx22195z8 : std_logic;
SIGNAL nx22195z1 : std_logic;
SIGNAL reg_valid_bits_stage2_3_aregout : std_logic;
SIGNAL nx20426z1 : std_logic;
SIGNAL nx42053z2 : std_logic;
SIGNAL nx60779z4 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_0_a : std_logic;
SIGNAL nx60779z2 : std_logic;
SIGNAL nx60779z1 : std_logic;
SIGNAL nx58785z1 : std_logic;
SIGNAL nx59782z2 : std_logic;
SIGNAL nx59782z1 : std_logic;
SIGNAL nx50415z1 : std_logic;
SIGNAL nx59688z1 : std_logic;
SIGNAL nx42053z11 : std_logic;
SIGNAL nx42053z10 : std_logic;
SIGNAL nx51412z1 : std_logic;
SIGNAL nx42053z16 : std_logic;
SIGNAL nx42053z15 : std_logic;
SIGNAL nx42053z18 : std_logic;
SIGNAL nx58541z1 : std_logic;
SIGNAL nx42053z25 : std_logic;
SIGNAL nx59538z1 : std_logic;
SIGNAL nx42053z29 : std_logic;
SIGNAL nx42053z28 : std_logic;
SIGNAL nx42053z35 : std_logic;
SIGNAL nx55400z1 : std_logic;
SIGNAL nx42053z36 : std_logic;
SIGNAL nx56397z1 : std_logic;
SIGNAL nx42053z39 : std_logic;
SIGNAL nx42053z38 : std_logic;
SIGNAL nx42053z37 : std_logic;
SIGNAL nx42053z32 : std_logic;
SIGNAL nx42053z27 : std_logic;
SIGNAL nx42053z22 : std_logic;
SIGNAL nx42053z17 : std_logic;
SIGNAL nx42053z12 : std_logic;
SIGNAL nx42053z40 : std_logic;
SIGNAL nx61532z1 : std_logic;
SIGNAL nx42053z41 : std_logic;
SIGNAL nx35831z11 : std_logic;
SIGNAL nx35831z10 : std_logic;
SIGNAL nx35831z9 : std_logic;
SIGNAL nx35831z8 : std_logic;
SIGNAL nx35831z7 : std_logic;
SIGNAL nx35831z6 : std_logic;
SIGNAL nx35831z5 : std_logic;
SIGNAL nx49418z1 : std_logic;
SIGNAL nx42053z6 : std_logic;
SIGNAL nx42053z5 : std_logic;
SIGNAL nx42053z7 : std_logic;
SIGNAL nx35831z4 : std_logic;
SIGNAL nx35831z3 : std_logic;
SIGNAL add1_a8_a_a0_combout : std_logic;
SIGNAL add3_add11_0_ix35831z52925_a1_cout : std_logic;
SIGNAL nx35831z2 : std_logic;
SIGNAL nx43050z1 : std_logic;
SIGNAL nx35831z1 : std_logic;
SIGNAL nx35831z12 : std_logic;
SIGNAL r4_a8_a_afeeder_combout : std_logic;
SIGNAL r4_a6_a_afeeder_combout : std_logic;
SIGNAL r4_a4_a_afeeder_combout : std_logic;
SIGNAL r4_a2_a_afeeder_combout : std_logic;
SIGNAL r4_a1_a_afeeder_combout : std_logic;
SIGNAL nx21429z11 : std_logic;
SIGNAL nx21429z10 : std_logic;
SIGNAL nx21429z9 : std_logic;
SIGNAL nx21429z8 : std_logic;
SIGNAL nx21429z7 : std_logic;
SIGNAL nx21429z6 : std_logic;
SIGNAL nx21429z5 : std_logic;
SIGNAL nx21429z4 : std_logic;
SIGNAL nx21429z3 : std_logic;
SIGNAL nx21429z2 : std_logic;
SIGNAL nx21429z1 : std_logic;
SIGNAL nx21429z12 : std_logic;
SIGNAL add4_a0_a_afeeder_combout : std_logic;
SIGNAL nx40727z14 : std_logic;
SIGNAL nx40727z13 : std_logic;
SIGNAL nx40727z12 : std_logic;
SIGNAL nx40727z11 : std_logic;
SIGNAL nx40727z10 : std_logic;
SIGNAL nx40727z9 : std_logic;
SIGNAL nx40727z8 : std_logic;
SIGNAL nx40727z7 : std_logic;
SIGNAL nx40727z6 : std_logic;
SIGNAL nx40727z5 : std_logic;
SIGNAL nx40727z4 : std_logic;
SIGNAL add5_12_a : std_logic;
SIGNAL ix42053z52923_a1_cout : std_logic;
SIGNAL nx42053z1 : std_logic;
SIGNAL nx28963z8 : std_logic;
SIGNAL nx28963z9 : std_logic;
SIGNAL nx55550z1 : std_logic;
SIGNAL nx28963z11 : std_logic;
SIGNAL nx28963z10 : std_logic;
SIGNAL nx28963z4 : std_logic;
SIGNAL nx54553z1 : std_logic;
SIGNAL nx28963z5 : std_logic;
SIGNAL nx28963z16 : std_logic;
SIGNAL nx56547z1 : std_logic;
SIGNAL nx28963z15 : std_logic;
SIGNAL nx57544z1 : std_logic;
SIGNAL nx28963z20 : std_logic;
SIGNAL nx28963z21 : std_logic;
SIGNAL nx28963z23 : std_logic;
SIGNAL nx53406z1 : std_logic;
SIGNAL nx28963z24 : std_logic;
SIGNAL nx28963z30 : std_logic;
SIGNAL nx28963z33 : std_logic;
SIGNAL nx28963z38 : std_logic;
SIGNAL nx28963z39 : std_logic;
SIGNAL nx28963z37 : std_logic;
SIGNAL nx28963z32 : std_logic;
SIGNAL nx28963z27 : std_logic;
SIGNAL nx28963z22 : std_logic;
SIGNAL nx28963z17 : std_logic;
SIGNAL nx28963z12 : std_logic;
SIGNAL nx28963z7 : std_logic;
SIGNAL not_rtlc0_copy_n346 : std_logic;
SIGNAL nx54403z1 : std_logic;
SIGNAL nx28963z29 : std_logic;
SIGNAL nx28963z28 : std_logic;
SIGNAL nx28963z40 : std_logic;
SIGNAL nx28963z48 : std_logic;
SIGNAL nx28963z47 : std_logic;
SIGNAL nx28963z46 : std_logic;
SIGNAL nx28963z45 : std_logic;
SIGNAL nx28963z44 : std_logic;
SIGNAL nx28963z43 : std_logic;
SIGNAL nx28963z42 : std_logic;
SIGNAL nx28963z2 : std_logic;
SIGNAL nx28963z1 : std_logic;
SIGNAL nx4840z10 : std_logic;
SIGNAL nx4840z9 : std_logic;
SIGNAL nx4840z8 : std_logic;
SIGNAL nx4840z7 : std_logic;
SIGNAL nx4840z6 : std_logic;
SIGNAL nx4840z5 : std_logic;
SIGNAL nx4840z4 : std_logic;
SIGNAL nx4840z3 : std_logic;
SIGNAL nx4840z2 : std_logic;
SIGNAL nx4840z1 : std_logic;
SIGNAL r5_magnitude_a8_a_afeeder_combout : std_logic;
SIGNAL nx34503z1 : std_logic;
SIGNAL r7_11_a : std_logic;
SIGNAL add5_10_a : std_logic;
SIGNAL r5_magnitude_a6_a_afeeder_combout : std_logic;
SIGNAL r7_9_a : std_logic;
SIGNAL r5_magnitude_a5_a_afeeder_combout : std_logic;
SIGNAL r7_8_a : std_logic;
SIGNAL add5_7_a : std_logic;
SIGNAL add5_6_a : std_logic;
SIGNAL add5_5_a : std_logic;
SIGNAL r5_magnitude_a1_a_afeeder_combout : std_logic;
SIGNAL r7_4_a : std_logic;
SIGNAL r5_magnitude_a0_a_afeeder_combout : std_logic;
SIGNAL r7_3_a : std_logic;
SIGNAL nx40727z24 : std_logic;
SIGNAL nx40727z23 : std_logic;
SIGNAL nx40727z22 : std_logic;
SIGNAL nx40727z21 : std_logic;
SIGNAL nx40727z20 : std_logic;
SIGNAL nx40727z19 : std_logic;
SIGNAL nx40727z18 : std_logic;
SIGNAL nx40727z17 : std_logic;
SIGNAL nx40727z16 : std_logic;
SIGNAL nx40727z15 : std_logic;
SIGNAL nx40727z2 : std_logic;
SIGNAL nx40727z1 : std_logic;
SIGNAL reg_r_edge_aregout : std_logic;
SIGNAL nx17193z1 : std_logic;
SIGNAL r5_direction_a0_a_afeeder_combout : std_logic;
SIGNAL ix63886z52923_acombout : std_logic;
SIGNAL nx16196z1 : std_logic;
SIGNAL r5_direction_a1_a_afeeder_combout : std_logic;
SIGNAL ix62889z52923_acombout : std_logic;
SIGNAL r5_direction_a2_a_afeeder_combout : std_logic;
SIGNAL ix61892z52923_acombout : std_logic;
SIGNAL nx46359z1 : std_logic;
SIGNAL nx47356z1 : std_logic;
SIGNAL nx45944z1 : std_logic;
SIGNAL reg_r_mode_0_aregout : std_logic;
SIGNAL i_reset_a_wirecell_combout : std_logic;
SIGNAL reg_r_mode_1_aregout : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z13 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_10_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z11 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_11_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z9 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_12_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z7 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_13_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z5 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_14_a : std_logic;
SIGNAL modgen_counter_pixel_counter_anx23078z3 : std_logic;
SIGNAL modgen_counter_pixel_counter_ainc_d_15_a : std_logic;
SIGNAL add2_magnitude : std_logic_vector(9 DOWNTO 0);
SIGNAL conv_table_0_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_1_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i1_magnitude : std_logic_vector(7 DOWNTO 0);
SIGNAL last_pixel_complete : std_logic_vector(1 DOWNTO 0);
SIGNAL r1 : std_logic_vector(10 DOWNTO 0);
SIGNAL r3_magnitude : std_logic_vector(9 DOWNTO 0);
SIGNAL r6 : std_logic_vector(12 DOWNTO 0);
SIGNAL valid_wren : std_logic_vector(2 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL add1 : std_logic_vector(8 DOWNTO 0);
SIGNAL add3 : std_logic_vector(10 DOWNTO 0);
SIGNAL conv_table_0_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_0_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_1_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_2_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_2_2_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i2_magnitude : std_logic_vector(7 DOWNTO 0);
SIGNAL i4 : std_logic_vector(7 DOWNTO 0);
SIGNAL max1_magnitude : std_logic_vector(7 DOWNTO 0);
SIGNAL max2_magnitude : std_logic_vector(9 DOWNTO 0);
SIGNAL r2_direction : std_logic_vector(2 DOWNTO 0);
SIGNAL r3_direction : std_logic_vector(2 DOWNTO 0);
SIGNAL r4 : std_logic_vector(10 DOWNTO 1);
SIGNAL r5_magnitude : std_logic_vector(9 DOWNTO 0);
SIGNAL row_index : std_logic_vector(2 DOWNTO 1);
SIGNAL valid_bits_stage2 : std_logic_vector(2 DOWNTO 0);
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL modgen_counter_pixel_counter_aq : std_logic_vector(16 DOWNTO 0);
SIGNAL add4 : std_logic_vector(12 DOWNTO 0);
SIGNAL conv_table_1_0_a : std_logic_vector(7 DOWNTO 0);
SIGNAL conv_table_2_1_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i3 : std_logic_vector(7 DOWNTO 0);
SIGNAL max2_direction : std_logic_vector(2 DOWNTO 0);
SIGNAL r2_magnitude : std_logic_vector(9 DOWNTO 0);
SIGNAL r5_direction : std_logic_vector(2 DOWNTO 0);
SIGNAL valid_bits_stage1 : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_1_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_pixel_counter_aq(7) & modgen_counter_pixel_counter_aq(6) & modgen_counter_pixel_counter_aq(5) & modgen_counter_pixel_counter_aq(4) & 
modgen_counter_pixel_counter_aq(3) & modgen_counter_pixel_counter_aq(2) & modgen_counter_pixel_counter_aq(1) & modgen_counter_pixel_counter_aq(0));

mem_aix64056z29481_aauto_generated_aq_a(0) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
mem_aix64056z29481_aauto_generated_aq_a(1) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
mem_aix64056z29481_aauto_generated_aq_a(2) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
mem_aix64056z29481_aauto_generated_aq_a(3) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
mem_aix64056z29481_aauto_generated_aq_a(4) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
mem_aix64056z29481_aauto_generated_aq_a(5) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
mem_aix64056z29481_aauto_generated_aq_a(6) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
mem_aix64056z29481_aauto_generated_aq_a(7) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_pixel_counter_aq(7) & modgen_counter_pixel_counter_aq(6) & modgen_counter_pixel_counter_aq(5) & modgen_counter_pixel_counter_aq(4) & 
modgen_counter_pixel_counter_aq(3) & modgen_counter_pixel_counter_aq(2) & modgen_counter_pixel_counter_aq(1) & modgen_counter_pixel_counter_aq(0));

mem_1_aix64056z29483_aauto_generated_aq_a(0) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
mem_1_aix64056z29483_aauto_generated_aq_a(1) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
mem_1_aix64056z29483_aauto_generated_aq_a(2) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
mem_1_aix64056z29483_aauto_generated_aq_a(3) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
mem_1_aix64056z29483_aauto_generated_aq_a(4) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
mem_1_aix64056z29483_aauto_generated_aq_a(5) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
mem_1_aix64056z29483_aauto_generated_aq_a(6) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
mem_1_aix64056z29483_aauto_generated_aq_a(7) <= mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_pixel_counter_aq(7) & modgen_counter_pixel_counter_aq(6) & modgen_counter_pixel_counter_aq(5) & modgen_counter_pixel_counter_aq(4) & 
modgen_counter_pixel_counter_aq(3) & modgen_counter_pixel_counter_aq(2) & modgen_counter_pixel_counter_aq(1) & modgen_counter_pixel_counter_aq(0));

mem_0_aix64056z29482_aauto_generated_aq_a(0) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
mem_0_aix64056z29482_aauto_generated_aq_a(1) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
mem_0_aix64056z29482_aauto_generated_aq_a(2) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
mem_0_aix64056z29482_aauto_generated_aq_a(3) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
mem_0_aix64056z29482_aauto_generated_aq_a(4) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
mem_0_aix64056z29482_aauto_generated_aq_a(5) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
mem_0_aix64056z29482_aauto_generated_aq_a(6) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
mem_0_aix64056z29482_aauto_generated_aq_a(7) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);

-- Location: LCFF_X28_Y23_N17
modgen_counter_pixel_counter_areg_q_16_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_16_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(16));

-- Location: LCCOMB_X28_Y23_N20
ix22195z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z6 = (modgen_counter_pixel_counter_aq(13)) # ((modgen_counter_pixel_counter_aq(12)) # ((modgen_counter_pixel_counter_aq(10)) # (modgen_counter_pixel_counter_aq(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(13),
	datab => modgen_counter_pixel_counter_aq(12),
	datac => modgen_counter_pixel_counter_aq(10),
	datad => modgen_counter_pixel_counter_aq(11),
	combout => nx22195z6);

-- Location: LCCOMB_X32_Y23_N10
ix22195z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z5 = (modgen_counter_pixel_counter_aq(15)) # ((modgen_counter_pixel_counter_aq(14)) # ((modgen_counter_pixel_counter_aq(16)) # (nx22195z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(15),
	datab => modgen_counter_pixel_counter_aq(14),
	datac => modgen_counter_pixel_counter_aq(16),
	datad => nx22195z6,
	combout => nx22195z5);

-- Location: LCFF_X29_Y22_N19
reg_r6_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(9),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(9));

-- Location: LCFF_X29_Y22_N15
reg_r6_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(7),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(7));

-- Location: LCFF_X29_Y22_N9
reg_r6_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(4),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(4));

-- Location: LCFF_X29_Y22_N5
reg_r6_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(2),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(2));

-- Location: LCFF_X29_Y23_N7
reg_r6_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => add4(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(0));

-- Location: LCCOMB_X29_Y23_N10
add5_add13_3_ix40727z52936 : cycloneii_lcell_comb
-- Equation(s):
-- add5_3_a = (r6(3) & ((GND) # (!nx40727z13))) # (!r6(3) & (nx40727z13 $ (GND)))
-- nx40727z12 = CARRY((r6(3)) # (!nx40727z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(3),
	datad => VCC,
	cin => nx40727z13,
	combout => add5_3_a,
	cout => nx40727z12);

-- Location: LCCOMB_X29_Y23_N12
add5_add13_3_ix40727z52935 : cycloneii_lcell_comb
-- Equation(s):
-- add5_4_a = (r6(4) & (nx40727z12 & VCC)) # (!r6(4) & (!nx40727z12))
-- nx40727z11 = CARRY((!r6(4) & !nx40727z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(4),
	datad => VCC,
	cin => nx40727z12,
	combout => add5_4_a,
	cout => nx40727z11);

-- Location: LCCOMB_X29_Y23_N20
add5_add13_3_ix40727z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add5_8_a = (r6(8) & (nx40727z8 & VCC)) # (!r6(8) & (!nx40727z8))
-- nx40727z7 = CARRY((!r6(8) & !nx40727z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(8),
	datad => VCC,
	cin => nx40727z8,
	combout => add5_8_a,
	cout => nx40727z7);

-- Location: LCCOMB_X29_Y23_N22
add5_add13_3_ix40727z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add5_9_a = (r6(9) & (nx40727z7 $ (GND))) # (!r6(9) & (!nx40727z7 & VCC))
-- nx40727z6 = CARRY((r6(9) & !nx40727z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(9),
	datad => VCC,
	cin => nx40727z7,
	combout => add5_9_a,
	cout => nx40727z6);

-- Location: LCCOMB_X29_Y23_N26
add5_add13_3_ix40727z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add5_11_a = (r6(11) & (nx40727z5 $ (GND))) # (!r6(11) & (!nx40727z5 & VCC))
-- nx40727z4 = CARRY((r6(11) & !nx40727z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(11),
	datad => VCC,
	cin => nx40727z5,
	combout => add5_11_a,
	cout => nx40727z4);

-- Location: LCCOMB_X29_Y23_N28
add5_add13_3_ix40727z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add5_12_a = (r6(12) & (!nx40727z4)) # (!r6(12) & ((nx40727z4) # (GND)))
-- add5_13_a = CARRY((!nx40727z4) # (!r6(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(12),
	datad => VCC,
	cin => nx40727z4,
	combout => add5_12_a,
	cout => add5_13_a);

-- Location: LCCOMB_X29_Y23_N30
ix40727z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z3 = !add5_13_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add5_13_a,
	combout => nx40727z3);

-- Location: LCFF_X30_Y23_N21
reg_r7_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(9),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_12_a);

-- Location: LCFF_X30_Y23_N17
reg_r7_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_10_a);

-- Location: LCFF_X30_Y23_N11
reg_r7_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_7_a);

-- Location: LCFF_X30_Y23_N9
reg_r7_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_6_a);

-- Location: LCFF_X30_Y23_N7
reg_r7_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_5_a);

-- Location: LCFF_X33_Y23_N21
reg_r2_magnitude_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(9),
	sdata => r3_magnitude(9),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(9));

-- Location: LCFF_X35_Y23_N23
reg_r2_magnitude_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(2),
	sdata => r3_magnitude(2),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(2));

-- Location: LCCOMB_X28_Y23_N14
modgen_counter_pixel_counter_aix23078z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_15_a = (modgen_counter_pixel_counter_aq(15) & (!modgen_counter_pixel_counter_anx23078z3)) # (!modgen_counter_pixel_counter_aq(15) & ((modgen_counter_pixel_counter_anx23078z3) # (GND)))
-- modgen_counter_pixel_counter_anx23078z1 = CARRY((!modgen_counter_pixel_counter_anx23078z3) # (!modgen_counter_pixel_counter_aq(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(15),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z3,
	combout => modgen_counter_pixel_counter_ainc_d_15_a,
	cout => modgen_counter_pixel_counter_anx23078z1);

-- Location: LCCOMB_X28_Y23_N16
modgen_counter_pixel_counter_aix23078z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_16_a = modgen_counter_pixel_counter_aq(16) $ (!modgen_counter_pixel_counter_anx23078z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(16),
	cin => modgen_counter_pixel_counter_anx23078z1,
	combout => modgen_counter_pixel_counter_ainc_d_16_a);

-- Location: LCFF_X30_Y22_N9
reg_r4_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(9),
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(9));

-- Location: LCFF_X30_Y22_N3
reg_r4_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a7_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(7));

-- Location: LCFF_X30_Y22_N15
reg_r4_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a5_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(5));

-- Location: LCFF_X30_Y22_N27
reg_r4_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a3_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(3));

-- Location: LCCOMB_X29_Y22_N4
add4_add11_2_ix21429z52933 : cycloneii_lcell_comb
-- Equation(s):
-- add4(2) = (r4(1) & ((r4(2) & (nx21429z11 & VCC)) # (!r4(2) & (!nx21429z11)))) # (!r4(1) & ((r4(2) & (!nx21429z11)) # (!r4(2) & ((nx21429z11) # (GND)))))
-- nx21429z10 = CARRY((r4(1) & (!r4(2) & !nx21429z11)) # (!r4(1) & ((!nx21429z11) # (!r4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(1),
	datab => r4(2),
	datad => VCC,
	cin => nx21429z11,
	combout => add4(2),
	cout => nx21429z10);

-- Location: LCCOMB_X29_Y22_N8
add4_add11_2_ix21429z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add4(4) = (r4(3) & ((r4(4) & (nx21429z9 & VCC)) # (!r4(4) & (!nx21429z9)))) # (!r4(3) & ((r4(4) & (!nx21429z9)) # (!r4(4) & ((nx21429z9) # (GND)))))
-- nx21429z8 = CARRY((r4(3) & (!r4(4) & !nx21429z9)) # (!r4(3) & ((!nx21429z9) # (!r4(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(3),
	datab => r4(4),
	datad => VCC,
	cin => nx21429z9,
	combout => add4(4),
	cout => nx21429z8);

-- Location: LCCOMB_X29_Y22_N14
add4_add11_2_ix21429z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add4(7) = ((r4(7) $ (r4(6) $ (!nx21429z6)))) # (GND)
-- nx21429z5 = CARRY((r4(7) & ((r4(6)) # (!nx21429z6))) # (!r4(7) & (r4(6) & !nx21429z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(7),
	datab => r4(6),
	datad => VCC,
	cin => nx21429z6,
	combout => add4(7),
	cout => nx21429z5);

-- Location: LCCOMB_X29_Y22_N18
add4_add11_2_ix21429z52926 : cycloneii_lcell_comb
-- Equation(s):
-- add4(9) = ((r4(9) $ (r4(8) $ (!nx21429z4)))) # (GND)
-- nx21429z3 = CARRY((r4(9) & ((r4(8)) # (!nx21429z4))) # (!r4(9) & (r4(8) & !nx21429z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(9),
	datab => r4(8),
	datad => VCC,
	cin => nx21429z4,
	combout => add4(9),
	cout => nx21429z3);

-- Location: LCFF_X34_Y23_N15
reg_r5_magnitude_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a9_a_afeeder_combout,
	sdata => r3_magnitude(9),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(9));

-- Location: LCFF_X34_Y23_N11
reg_r5_magnitude_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a7_a_afeeder_combout,
	sdata => r3_magnitude(7),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(7));

-- Location: LCFF_X34_Y23_N25
reg_r5_magnitude_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a4_a_afeeder_combout,
	sdata => r3_magnitude(4),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(4));

-- Location: LCFF_X34_Y23_N19
reg_r5_magnitude_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a3_a_afeeder_combout,
	sdata => r3_magnitude(3),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(3));

-- Location: LCFF_X34_Y23_N21
reg_r5_magnitude_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a2_a_afeeder_combout,
	sdata => r3_magnitude(2),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(2));

-- Location: LCCOMB_X33_Y22_N10
ix28963z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z3 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_2_2_a(7) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_2_2_a(7),
	datad => valid_bits_stage1(0),
	combout => nx28963z3);

-- Location: LCCOMB_X33_Y21_N16
ix28963z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z6 = (valid_bits_stage1(0) & (((conv_table_1_0_a(7))))) # (!valid_bits_stage1(0) & (conv_table_2_1_a(7) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_2_1_a(7),
	datac => conv_table_1_0_a(7),
	datad => valid_bits_stage1(1),
	combout => nx28963z6);

-- Location: LCCOMB_X31_Y24_N24
ix28963z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z13 = (!valid_bits_stage1(0) & (!valid_bits_stage1(2) & (conv_table_2_2_a(5) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => valid_bits_stage1(2),
	datac => conv_table_2_2_a(5),
	datad => valid_bits_stage1(1),
	combout => nx28963z13);

-- Location: LCFF_X32_Y21_N25
reg_conv_table_0_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(5));

-- Location: LCCOMB_X32_Y21_N4
ix28963z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z14 = (valid_bits_stage1(0) & (conv_table_0_2_a(5))) # (!valid_bits_stage1(0) & (((conv_table_0_0_a(5) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_2_a(5),
	datab => conv_table_0_0_a(5),
	datac => valid_bits_stage1(1),
	datad => valid_bits_stage1(0),
	combout => nx28963z14);

-- Location: LCCOMB_X31_Y24_N30
ix28963z52942 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(5) = (nx28963z13) # ((nx28963z14) # ((nx42053z2 & conv_table_2_0_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z13,
	datab => nx42053z2,
	datac => conv_table_2_0_a(5),
	datad => nx28963z14,
	combout => i1_magnitude(5));

-- Location: LCFF_X30_Y21_N5
reg_conv_table_2_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx52409z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(4),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(4));

-- Location: LCCOMB_X33_Y21_N24
ix28963z52950 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z18 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_2_2_a(4) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_2_2_a(4),
	datad => valid_bits_stage1(0),
	combout => nx28963z18);

-- Location: LCFF_X33_Y21_N5
reg_conv_table_0_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(4));

-- Location: LCCOMB_X33_Y21_N4
ix28963z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z19 = (valid_bits_stage1(0) & (conv_table_0_2_a(4))) # (!valid_bits_stage1(0) & (((conv_table_0_0_a(4) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_0_2_a(4),
	datac => conv_table_0_0_a(4),
	datad => valid_bits_stage1(1),
	combout => nx28963z19);

-- Location: LCCOMB_X33_Y21_N22
ix28963z52949 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(4) = (nx28963z18) # ((nx28963z19) # ((conv_table_2_0_a(4) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z18,
	datab => conv_table_2_0_a(4),
	datac => nx28963z19,
	datad => nx42053z2,
	combout => i1_magnitude(4));

-- Location: LCFF_X33_Y21_N15
reg_conv_table_1_0_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(4));

-- Location: LCFF_X31_Y21_N19
reg_conv_table_0_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(3));

-- Location: LCFF_X31_Y21_N15
reg_conv_table_0_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(3));

-- Location: LCCOMB_X31_Y21_N24
ix28963z52960 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z25 = (conv_table_0_1_a(3) & (!valid_bits_stage1(0) & (!valid_bits_stage1(2) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_1_a(3),
	datab => valid_bits_stage1(0),
	datac => valid_bits_stage1(2),
	datad => valid_bits_stage1(1),
	combout => nx28963z25);

-- Location: LCCOMB_X31_Y21_N2
ix28963z52961 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z26 = (valid_bits_stage1(0) & (conv_table_1_0_a(3))) # (!valid_bits_stage1(0) & (((conv_table_2_1_a(3) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_0_a(3),
	datab => valid_bits_stage1(0),
	datac => conv_table_2_1_a(3),
	datad => valid_bits_stage1(1),
	combout => nx28963z26);

-- Location: LCCOMB_X32_Y24_N12
ix28963z52959 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(3) = (nx28963z26) # ((nx28963z25) # ((conv_table_1_2_a(3) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_2_a(3),
	datab => nx42053z2,
	datac => nx28963z26,
	datad => nx28963z25,
	combout => i2_magnitude(3));

-- Location: LCCOMB_X31_Y24_N12
ix28963z52968 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z31 = (valid_bits_stage1(0) & (((conv_table_1_0_a(2))))) # (!valid_bits_stage1(0) & (conv_table_2_1_a(2) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_0_a(2),
	datad => valid_bits_stage1(1),
	combout => nx28963z31);

-- Location: LCFF_X31_Y23_N11
reg_conv_table_0_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(1));

-- Location: LCFF_X31_Y23_N29
reg_conv_table_0_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(1));

-- Location: LCCOMB_X31_Y23_N10
ix28963z52972 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z34 = (valid_bits_stage1(0) & (conv_table_0_2_a(1))) # (!valid_bits_stage1(0) & (((conv_table_0_0_a(1) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_2_a(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_0_a(1),
	datad => valid_bits_stage1(1),
	combout => nx28963z34);

-- Location: LCFF_X31_Y23_N25
reg_conv_table_0_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(1));

-- Location: LCCOMB_X31_Y23_N26
ix28963z52974 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z35 = (conv_table_0_1_a(1) & (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_1_a(1),
	datab => valid_bits_stage1(1),
	datac => valid_bits_stage1(0),
	datad => valid_bits_stage1(2),
	combout => nx28963z35);

-- Location: LCFF_X30_Y21_N11
reg_conv_table_2_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60535z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(1),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(1));

-- Location: LCCOMB_X31_Y23_N8
ix28963z52975 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z36 = (valid_bits_stage1(0) & (((conv_table_1_0_a(1))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_2_1_a(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => conv_table_1_0_a(1),
	datac => valid_bits_stage1(0),
	datad => conv_table_2_1_a(1),
	combout => nx28963z36);

-- Location: LCCOMB_X31_Y23_N6
ix28963z52973 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(1) = (nx28963z35) # ((nx28963z36) # ((conv_table_1_2_a(1) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_2_a(1),
	datab => nx28963z35,
	datac => nx28963z36,
	datad => nx42053z2,
	combout => i2_magnitude(1));

-- Location: LCCOMB_X33_Y22_N12
ix28963z52982 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z41 = (valid_bits_stage1(0) & (((conv_table_0_2_a(0))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_0_0_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => conv_table_0_2_a(0),
	datac => conv_table_0_0_a(0),
	datad => valid_bits_stage1(0),
	combout => nx28963z41);

-- Location: LCCOMB_X33_Y23_N20
ix4840z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(9) = (nx4840z1 & (r3_magnitude(9))) # (!nx4840z1 & ((r2_magnitude(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_magnitude(9),
	datac => r2_magnitude(9),
	datad => nx4840z1,
	combout => max2_magnitude(9));

-- Location: LCCOMB_X33_Y22_N18
ix42053z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z3 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_0_2_a(7) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_0_2_a(7),
	datad => valid_bits_stage1(0),
	combout => nx42053z3);

-- Location: LCCOMB_X33_Y22_N2
ix42053z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z4 = (valid_bits_stage1(0) & (((conv_table_0_1_a(7))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_2_0_a(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(7),
	datad => conv_table_2_0_a(7),
	combout => nx42053z4);

-- Location: LCCOMB_X34_Y22_N8
ix42053z52925 : cycloneii_lcell_comb
-- Equation(s):
-- i4(7) = (nx42053z3) # ((nx42053z4) # ((conv_table_2_2_a(7) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(7),
	datab => nx42053z3,
	datac => nx42053z2,
	datad => nx42053z4,
	combout => i4(7));

-- Location: LCCOMB_X32_Y21_N22
ix42053z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z8 = (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & (conv_table_0_2_a(6) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_2_a(6),
	datad => valid_bits_stage1(2),
	combout => nx42053z8);

-- Location: LCCOMB_X32_Y21_N6
ix42053z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z9 = (valid_bits_stage1(0) & (((conv_table_0_1_a(6))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_2_0_a(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(6),
	datad => conv_table_2_0_a(6),
	combout => nx42053z9);

-- Location: LCCOMB_X32_Y21_N10
ix42053z52933 : cycloneii_lcell_comb
-- Equation(s):
-- i4(6) = (nx42053z9) # ((nx42053z8) # ((nx42053z2 & conv_table_2_2_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z9,
	datab => nx42053z2,
	datac => conv_table_2_2_a(6),
	datad => nx42053z8,
	combout => i4(6));

-- Location: LCCOMB_X32_Y21_N24
ix42053z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z13 = (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & (conv_table_0_2_a(5) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_2_a(5),
	datad => valid_bits_stage1(2),
	combout => nx42053z13);

-- Location: LCCOMB_X31_Y21_N30
ix42053z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z14 = (valid_bits_stage1(0) & (((conv_table_0_1_a(5))))) # (!valid_bits_stage1(0) & (conv_table_2_0_a(5) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(5),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(5),
	datad => valid_bits_stage1(1),
	combout => nx42053z14);

-- Location: LCCOMB_X31_Y21_N28
ix42053z52940 : cycloneii_lcell_comb
-- Equation(s):
-- i4(5) = (nx42053z14) # ((nx42053z13) # ((conv_table_2_2_a(5) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(5),
	datab => nx42053z14,
	datac => nx42053z2,
	datad => nx42053z13,
	combout => i4(5));

-- Location: LCCOMB_X33_Y21_N10
ix42053z52949 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z19 = (valid_bits_stage1(0) & (((conv_table_0_1_a(4))))) # (!valid_bits_stage1(0) & (conv_table_2_0_a(4) & (valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(4),
	datab => valid_bits_stage1(1),
	datac => conv_table_0_1_a(4),
	datad => valid_bits_stage1(0),
	combout => nx42053z19);

-- Location: LCCOMB_X33_Y21_N26
ix42053z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z20 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_1_2_a(4) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_1_2_a(4),
	datad => valid_bits_stage1(0),
	combout => nx42053z20);

-- Location: LCCOMB_X33_Y21_N14
ix42053z52952 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z21 = (valid_bits_stage1(0) & (conv_table_0_0_a(4))) # (!valid_bits_stage1(0) & (((conv_table_1_0_a(4) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_0_0_a(4),
	datac => conv_table_1_0_a(4),
	datad => valid_bits_stage1(1),
	combout => nx42053z21);

-- Location: LCCOMB_X33_Y21_N6
ix42053z52950 : cycloneii_lcell_comb
-- Equation(s):
-- i3(4) = (nx42053z20) # ((nx42053z21) # ((conv_table_2_1_a(4) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(4),
	datab => nx42053z20,
	datac => nx42053z21,
	datad => nx42053z2,
	combout => i3(4));

-- Location: LCCOMB_X31_Y21_N18
ix42053z52955 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z23 = (!valid_bits_stage1(2) & (!valid_bits_stage1(1) & (conv_table_0_2_a(3) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(1),
	datac => conv_table_0_2_a(3),
	datad => valid_bits_stage1(0),
	combout => nx42053z23);

-- Location: LCCOMB_X31_Y21_N14
ix42053z52956 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z24 = (valid_bits_stage1(0) & (((conv_table_0_1_a(3))))) # (!valid_bits_stage1(0) & (conv_table_2_0_a(3) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(3),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(3),
	datad => valid_bits_stage1(1),
	combout => nx42053z24);

-- Location: LCCOMB_X31_Y21_N16
ix42053z52954 : cycloneii_lcell_comb
-- Equation(s):
-- i4(3) = (nx42053z24) # ((nx42053z23) # ((conv_table_2_2_a(3) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(3),
	datab => nx42053z24,
	datac => nx42053z2,
	datad => nx42053z23,
	combout => i4(3));

-- Location: LCCOMB_X31_Y21_N6
ix42053z52959 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z26 = (valid_bits_stage1(0) & (conv_table_0_0_a(3))) # (!valid_bits_stage1(0) & (((conv_table_1_0_a(3) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_0_a(3),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_0_a(3),
	datad => valid_bits_stage1(1),
	combout => nx42053z26);

-- Location: LCCOMB_X31_Y24_N20
ix42053z52965 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z30 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_1_2_a(2) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_1_2_a(2),
	datad => valid_bits_stage1(0),
	combout => nx42053z30);

-- Location: LCCOMB_X31_Y24_N18
ix42053z52966 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z31 = (valid_bits_stage1(0) & (((conv_table_0_0_a(2))))) # (!valid_bits_stage1(0) & (conv_table_1_0_a(2) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_0_a(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_0_a(2),
	datad => valid_bits_stage1(1),
	combout => nx42053z31);

-- Location: LCCOMB_X31_Y24_N28
ix42053z52964 : cycloneii_lcell_comb
-- Equation(s):
-- i3(2) = (nx42053z31) # ((nx42053z30) # ((conv_table_2_1_a(2) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(2),
	datab => nx42053z31,
	datac => nx42053z30,
	datad => nx42053z2,
	combout => i3(2));

-- Location: LCCOMB_X31_Y23_N28
ix42053z52969 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z33 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_0_2_a(1) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_0_2_a(1),
	datad => valid_bits_stage1(0),
	combout => nx42053z33);

-- Location: LCCOMB_X31_Y23_N24
ix42053z52970 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z34 = (valid_bits_stage1(0) & (((conv_table_0_1_a(1))))) # (!valid_bits_stage1(0) & (conv_table_2_0_a(1) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(1),
	datad => valid_bits_stage1(1),
	combout => nx42053z34);

-- Location: LCCOMB_X32_Y22_N6
ix42053z52968 : cycloneii_lcell_comb
-- Equation(s):
-- i4(1) = (nx42053z34) # ((nx42053z33) # ((conv_table_2_2_a(1) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(1),
	datab => nx42053z2,
	datac => nx42053z34,
	datad => nx42053z33,
	combout => i4(1));

-- Location: LCCOMB_X32_Y24_N14
ix28963z52926 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(7) = (not_rtlc0_copy_n346 & (i2_magnitude(7))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i2_magnitude(7),
	datac => i1_magnitude(7),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(7));

-- Location: LCCOMB_X32_Y24_N4
ix28963z52988 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(4) = (not_rtlc0_copy_n346 & (i2_magnitude(4))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i2_magnitude(4),
	datac => i1_magnitude(4),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(4));

-- Location: LCCOMB_X32_Y24_N6
ix28963z52990 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(3) = (not_rtlc0_copy_n346 & (i2_magnitude(3))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(3),
	datab => i1_magnitude(3),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(3));

-- Location: LCCOMB_X35_Y23_N22
ix63397z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(2) = (nx4840z1 & (r3_magnitude(2))) # (!nx4840z1 & ((r2_magnitude(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(2),
	datac => r2_magnitude(2),
	datad => nx4840z1,
	combout => max2_magnitude(2));

-- Location: LCFF_X31_Y22_N31
reg_r1_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r1_a8_a_afeeder_combout,
	sdata => nx42053z1,
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(8));

-- Location: LCFF_X31_Y22_N17
reg_r1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(6),
	sdata => add1(6),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(6));

-- Location: LCCOMB_X32_Y23_N12
ix22195z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z7 = (modgen_counter_pixel_counter_aq(15)) # ((modgen_counter_pixel_counter_aq(14)) # ((modgen_counter_pixel_counter_aq(9)) # (nx22195z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(15),
	datab => modgen_counter_pixel_counter_aq(14),
	datac => modgen_counter_pixel_counter_aq(9),
	datad => nx22195z6,
	combout => nx22195z7);

-- Location: LCCOMB_X30_Y21_N4
ix52409z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx52409z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(4)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(4),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(4),
	combout => nx52409z1);

-- Location: LCFF_X31_Y21_N9
reg_conv_table_1_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(3));

-- Location: LCFF_X31_Y23_N1
reg_conv_table_1_1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(1));

-- Location: LCCOMB_X30_Y21_N10
ix60535z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60535z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(1))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_index(1),
	datab => mem_aix64056z29481_aauto_generated_aq_a(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx60535z1);

-- Location: M4K_X26_Y22
mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => valid_wren(0),
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: M4K_X26_Y21
mem_0_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => valid_wren(1),
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X28_Y22_N6
ix60779z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx60779z3 = (modgen_counter_pixel_counter_aq(6) & (modgen_counter_pixel_counter_aq(7) & (i_valid_acombout & modgen_counter_pixel_counter_aq(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(6),
	datab => modgen_counter_pixel_counter_aq(7),
	datac => i_valid_acombout,
	datad => modgen_counter_pixel_counter_aq(5),
	combout => nx60779z3);

-- Location: LCCOMB_X28_Y22_N20
ix54114z52923 : cycloneii_lcell_comb
-- Equation(s):
-- valid_wren(1) = (i_valid_acombout & row_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => row_index(1),
	combout => valid_wren(1));

-- Location: LCCOMB_X28_Y22_N22
ix54113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- valid_wren(2) = (row_index(2) & i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_index(2),
	datac => i_valid_acombout,
	combout => valid_wren(2));

-- Location: LCCOMB_X28_Y22_N8
ix51243z52923 : cycloneii_lcell_comb
-- Equation(s):
-- valid_wren(0) = (i_valid_acombout & !nx59782z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_valid_acombout,
	datad => nx59782z2,
	combout => valid_wren(0));

-- Location: LCCOMB_X34_Y23_N14
r5_magnitude_a9_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a9_a_afeeder_combout = r2_magnitude(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(9),
	combout => r5_magnitude_a9_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N10
r5_magnitude_a7_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a7_a_afeeder_combout = r2_magnitude(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(7),
	combout => r5_magnitude_a7_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N24
r5_magnitude_a4_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a4_a_afeeder_combout = r2_magnitude(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(4),
	combout => r5_magnitude_a4_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N18
r5_magnitude_a3_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a3_a_afeeder_combout = r2_magnitude(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(3),
	combout => r5_magnitude_a3_a_afeeder_combout);

-- Location: LCCOMB_X34_Y23_N20
r5_magnitude_a2_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a2_a_afeeder_combout = r2_magnitude(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_magnitude(2),
	combout => r5_magnitude_a2_a_afeeder_combout);

-- Location: LCCOMB_X30_Y22_N26
r4_a3_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a3_a_afeeder_combout = add3(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3(3),
	combout => r4_a3_a_afeeder_combout);

-- Location: LCCOMB_X30_Y22_N14
r4_a5_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a5_a_afeeder_combout = add3(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3(5),
	combout => r4_a5_a_afeeder_combout);

-- Location: LCCOMB_X30_Y22_N2
r4_a7_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a7_a_afeeder_combout = add3(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3(7),
	combout => r4_a7_a_afeeder_combout);

-- Location: LCCOMB_X31_Y22_N30
r1_a8_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r1_a8_a_afeeder_combout = add3(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3(8),
	combout => r1_a8_a_afeeder_combout);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_clock_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_clock,
	combout => i_clock_acombout);

-- Location: CLKCTRL_G3
i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

-- Location: LCCOMB_X28_Y24_N16
modgen_counter_pixel_counter_aix23078z52940 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_0_a = modgen_counter_pixel_counter_aq(0) $ (VCC)
-- modgen_counter_pixel_counter_anx23078z31 = CARRY(modgen_counter_pixel_counter_aq(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(0),
	datad => VCC,
	combout => modgen_counter_pixel_counter_ainc_d_0_a,
	cout => modgen_counter_pixel_counter_anx23078z31);

-- Location: LCCOMB_X28_Y24_N18
modgen_counter_pixel_counter_aix23078z52939 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_1_a = (modgen_counter_pixel_counter_aq(1) & (!modgen_counter_pixel_counter_anx23078z31)) # (!modgen_counter_pixel_counter_aq(1) & ((modgen_counter_pixel_counter_anx23078z31) # (GND)))
-- modgen_counter_pixel_counter_anx23078z29 = CARRY((!modgen_counter_pixel_counter_anx23078z31) # (!modgen_counter_pixel_counter_aq(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(1),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z31,
	combout => modgen_counter_pixel_counter_ainc_d_1_a,
	cout => modgen_counter_pixel_counter_anx23078z29);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_reset_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_reset,
	combout => i_reset_acombout);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_valid_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_valid,
	combout => i_valid_acombout);

-- Location: LCCOMB_X32_Y21_N2
modgen_counter_pixel_counter_aix22081z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_anx22081z1 = (i_reset_acombout) # (i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datac => i_valid_acombout,
	combout => modgen_counter_pixel_counter_anx22081z1);

-- Location: LCFF_X28_Y24_N19
modgen_counter_pixel_counter_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_1_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(1));

-- Location: LCCOMB_X28_Y24_N20
modgen_counter_pixel_counter_aix23078z52938 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_2_a = (modgen_counter_pixel_counter_aq(2) & (modgen_counter_pixel_counter_anx23078z29 $ (GND))) # (!modgen_counter_pixel_counter_aq(2) & (!modgen_counter_pixel_counter_anx23078z29 & VCC))
-- modgen_counter_pixel_counter_anx23078z27 = CARRY((modgen_counter_pixel_counter_aq(2) & !modgen_counter_pixel_counter_anx23078z29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(2),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z29,
	combout => modgen_counter_pixel_counter_ainc_d_2_a,
	cout => modgen_counter_pixel_counter_anx23078z27);

-- Location: LCCOMB_X28_Y24_N22
modgen_counter_pixel_counter_aix23078z52937 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_3_a = (modgen_counter_pixel_counter_aq(3) & (!modgen_counter_pixel_counter_anx23078z27)) # (!modgen_counter_pixel_counter_aq(3) & ((modgen_counter_pixel_counter_anx23078z27) # (GND)))
-- modgen_counter_pixel_counter_anx23078z25 = CARRY((!modgen_counter_pixel_counter_anx23078z27) # (!modgen_counter_pixel_counter_aq(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(3),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z27,
	combout => modgen_counter_pixel_counter_ainc_d_3_a,
	cout => modgen_counter_pixel_counter_anx23078z25);

-- Location: LCFF_X28_Y24_N23
modgen_counter_pixel_counter_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_3_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(3));

-- Location: LCCOMB_X28_Y24_N24
modgen_counter_pixel_counter_aix23078z52936 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_4_a = (modgen_counter_pixel_counter_aq(4) & (modgen_counter_pixel_counter_anx23078z25 $ (GND))) # (!modgen_counter_pixel_counter_aq(4) & (!modgen_counter_pixel_counter_anx23078z25 & VCC))
-- modgen_counter_pixel_counter_anx23078z23 = CARRY((modgen_counter_pixel_counter_aq(4) & !modgen_counter_pixel_counter_anx23078z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(4),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z25,
	combout => modgen_counter_pixel_counter_ainc_d_4_a,
	cout => modgen_counter_pixel_counter_anx23078z23);

-- Location: LCCOMB_X28_Y24_N26
modgen_counter_pixel_counter_aix23078z52935 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_5_a = (modgen_counter_pixel_counter_aq(5) & (!modgen_counter_pixel_counter_anx23078z23)) # (!modgen_counter_pixel_counter_aq(5) & ((modgen_counter_pixel_counter_anx23078z23) # (GND)))
-- modgen_counter_pixel_counter_anx23078z21 = CARRY((!modgen_counter_pixel_counter_anx23078z23) # (!modgen_counter_pixel_counter_aq(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(5),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z23,
	combout => modgen_counter_pixel_counter_ainc_d_5_a,
	cout => modgen_counter_pixel_counter_anx23078z21);

-- Location: LCFF_X28_Y24_N27
modgen_counter_pixel_counter_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_5_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(5));

-- Location: LCFF_X28_Y24_N21
modgen_counter_pixel_counter_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_2_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(2));

-- Location: LCCOMB_X28_Y22_N26
ix22195z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z4 = (modgen_counter_pixel_counter_aq(4)) # ((modgen_counter_pixel_counter_aq(5)) # ((modgen_counter_pixel_counter_aq(3)) # (modgen_counter_pixel_counter_aq(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(4),
	datab => modgen_counter_pixel_counter_aq(5),
	datac => modgen_counter_pixel_counter_aq(3),
	datad => modgen_counter_pixel_counter_aq(2),
	combout => nx22195z4);

-- Location: LCCOMB_X28_Y24_N28
modgen_counter_pixel_counter_aix23078z52934 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_6_a = (modgen_counter_pixel_counter_aq(6) & (modgen_counter_pixel_counter_anx23078z21 $ (GND))) # (!modgen_counter_pixel_counter_aq(6) & (!modgen_counter_pixel_counter_anx23078z21 & VCC))
-- modgen_counter_pixel_counter_anx23078z19 = CARRY((modgen_counter_pixel_counter_aq(6) & !modgen_counter_pixel_counter_anx23078z21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(6),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z21,
	combout => modgen_counter_pixel_counter_ainc_d_6_a,
	cout => modgen_counter_pixel_counter_anx23078z19);

-- Location: LCFF_X28_Y24_N29
modgen_counter_pixel_counter_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_6_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(6));

-- Location: LCCOMB_X28_Y24_N30
modgen_counter_pixel_counter_aix23078z52933 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_7_a = (modgen_counter_pixel_counter_aq(7) & (!modgen_counter_pixel_counter_anx23078z19)) # (!modgen_counter_pixel_counter_aq(7) & ((modgen_counter_pixel_counter_anx23078z19) # (GND)))
-- modgen_counter_pixel_counter_anx23078z17 = CARRY((!modgen_counter_pixel_counter_anx23078z19) # (!modgen_counter_pixel_counter_aq(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(7),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z19,
	combout => modgen_counter_pixel_counter_ainc_d_7_a,
	cout => modgen_counter_pixel_counter_anx23078z17);

-- Location: LCFF_X28_Y24_N31
modgen_counter_pixel_counter_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_7_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(7));

-- Location: LCCOMB_X28_Y22_N0
ix22195z52926 : cycloneii_lcell_comb
-- Equation(s):
-- a_3_a = (modgen_counter_pixel_counter_aq(6)) # (modgen_counter_pixel_counter_aq(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(6),
	datac => modgen_counter_pixel_counter_aq(7),
	combout => a_3_a);

-- Location: LCCOMB_X32_Y23_N0
ix22195z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z3 = (modgen_counter_pixel_counter_aq(8)) # ((nx22195z4) # ((a_3_a) # (modgen_counter_pixel_counter_aq(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(8),
	datab => nx22195z4,
	datac => a_3_a,
	datad => modgen_counter_pixel_counter_aq(1),
	combout => nx22195z3);

-- Location: LCCOMB_X28_Y23_N0
modgen_counter_pixel_counter_aix23078z52932 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_8_a = (modgen_counter_pixel_counter_aq(8) & (modgen_counter_pixel_counter_anx23078z17 $ (GND))) # (!modgen_counter_pixel_counter_aq(8) & (!modgen_counter_pixel_counter_anx23078z17 & VCC))
-- modgen_counter_pixel_counter_anx23078z15 = CARRY((modgen_counter_pixel_counter_aq(8) & !modgen_counter_pixel_counter_anx23078z17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(8),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z17,
	combout => modgen_counter_pixel_counter_ainc_d_8_a,
	cout => modgen_counter_pixel_counter_anx23078z15);

-- Location: LCFF_X28_Y23_N1
modgen_counter_pixel_counter_areg_q_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_8_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(8));

-- Location: LCCOMB_X28_Y23_N2
modgen_counter_pixel_counter_aix23078z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_9_a = (modgen_counter_pixel_counter_aq(9) & (!modgen_counter_pixel_counter_anx23078z15)) # (!modgen_counter_pixel_counter_aq(9) & ((modgen_counter_pixel_counter_anx23078z15) # (GND)))
-- modgen_counter_pixel_counter_anx23078z13 = CARRY((!modgen_counter_pixel_counter_anx23078z15) # (!modgen_counter_pixel_counter_aq(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(9),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z15,
	combout => modgen_counter_pixel_counter_ainc_d_9_a,
	cout => modgen_counter_pixel_counter_anx23078z13);

-- Location: LCFF_X28_Y23_N3
modgen_counter_pixel_counter_areg_q_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_9_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(9));

-- Location: LCCOMB_X32_Y23_N4
ix22195z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z2 = (i_reset_acombout) # ((!nx22195z5 & ((!modgen_counter_pixel_counter_aq(9)) # (!nx22195z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx22195z5,
	datab => nx22195z3,
	datac => modgen_counter_pixel_counter_aq(9),
	datad => i_reset_acombout,
	combout => nx22195z2);

-- Location: LCFF_X28_Y24_N25
modgen_counter_pixel_counter_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_4_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(4));

-- Location: LCCOMB_X28_Y22_N30
ix22195z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z9 = (modgen_counter_pixel_counter_aq(6)) # ((modgen_counter_pixel_counter_aq(7)) # ((modgen_counter_pixel_counter_aq(4)) # (modgen_counter_pixel_counter_aq(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(6),
	datab => modgen_counter_pixel_counter_aq(7),
	datac => modgen_counter_pixel_counter_aq(4),
	datad => modgen_counter_pixel_counter_aq(5),
	combout => nx22195z9);

-- Location: LCCOMB_X28_Y22_N16
ix22195z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z8 = (modgen_counter_pixel_counter_aq(1)) # ((nx22195z9) # ((modgen_counter_pixel_counter_aq(3)) # (modgen_counter_pixel_counter_aq(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(1),
	datab => nx22195z9,
	datac => modgen_counter_pixel_counter_aq(3),
	datad => modgen_counter_pixel_counter_aq(2),
	combout => nx22195z8);

-- Location: LCCOMB_X32_Y22_N10
ix22195z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx22195z1 = (nx22195z7 & (!nx22195z2 & (i_valid_acombout & nx22195z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx22195z7,
	datab => nx22195z2,
	datac => i_valid_acombout,
	datad => nx22195z8,
	combout => nx22195z1);

-- Location: LCFF_X32_Y22_N11
reg_valid_bits_stage1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22195z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage1(0));

-- Location: LCFF_X32_Y22_N9
reg_valid_bits_stage1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage1(0),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage1(1));

-- Location: LCFF_X32_Y22_N3
reg_valid_bits_stage1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage1(1),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage1(2));

-- Location: LCFF_X27_Y23_N9
reg_valid_bits_stage1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage1(2),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage1(3));

-- Location: LCFF_X27_Y23_N5
reg_valid_bits_stage2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage1(3),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage2(0));

-- Location: LCFF_X27_Y23_N15
reg_valid_bits_stage2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage2(0),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage2(1));

-- Location: LCFF_X27_Y23_N19
reg_valid_bits_stage2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage2(1),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_bits_stage2(2));

-- Location: LCFF_X27_Y23_N17
reg_valid_bits_stage2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_bits_stage2(2),
	sclr => nx22195z2,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_valid_bits_stage2_3_aregout);

-- Location: LCCOMB_X30_Y22_N28
ix20426z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx20426z1 = (!valid_bits_stage1(0) & (!i_reset_acombout & add3(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => i_reset_acombout,
	datad => add3(10),
	combout => nx20426z1);

-- Location: LCFF_X30_Y22_N29
reg_r1_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20426z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(10));

-- Location: LCCOMB_X32_Y22_N2
ix42053z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z2 = (!valid_bits_stage1(1) & (valid_bits_stage1(2) & !valid_bits_stage1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_bits_stage1(1),
	datac => valid_bits_stage1(2),
	datad => valid_bits_stage1(0),
	combout => nx42053z2);

-- Location: LCCOMB_X28_Y22_N24
ix60779z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx60779z4 = (modgen_counter_pixel_counter_aq(4) & (modgen_counter_pixel_counter_aq(2) & (modgen_counter_pixel_counter_aq(3) & modgen_counter_pixel_counter_aq(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(4),
	datab => modgen_counter_pixel_counter_aq(2),
	datac => modgen_counter_pixel_counter_aq(3),
	datad => modgen_counter_pixel_counter_aq(1),
	combout => nx60779z4);

-- Location: LCFF_X28_Y24_N17
modgen_counter_pixel_counter_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_0_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(0));

-- Location: LCCOMB_X28_Y22_N18
ix60779z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx60779z2 = (nx60779z3 & (nx60779z4 & modgen_counter_pixel_counter_aq(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60779z3,
	datac => nx60779z4,
	datad => modgen_counter_pixel_counter_aq(0),
	combout => nx60779z2);

-- Location: LCCOMB_X28_Y22_N2
ix60779z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60779z1 = (nx60779z2 & (row_index(1))) # (!nx60779z2 & ((row_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_index(1),
	datac => row_index(2),
	datad => nx60779z2,
	combout => nx60779z1);

-- Location: LCFF_X28_Y22_N3
reg_row_index_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx60779z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_index(2));

-- Location: LCCOMB_X28_Y22_N12
ix58785z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58785z1 = (nx60779z2 & (!row_index(2))) # (!nx60779z2 & ((nx59782z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_index(2),
	datac => nx59782z2,
	datad => nx60779z2,
	combout => nx58785z1);

-- Location: LCFF_X28_Y22_N13
reg_row_index_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx58785z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx59782z2);

-- Location: LCCOMB_X28_Y23_N22
ix59782z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59782z1 = (nx60779z2 & ((!nx59782z2))) # (!nx60779z2 & (row_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60779z2,
	datac => row_index(1),
	datad => nx59782z2,
	combout => nx59782z1);

-- Location: LCFF_X28_Y23_N23
reg_row_index_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx59782z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_index(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(0),
	combout => i_pixel_acombout(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(1),
	combout => i_pixel_acombout(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(2),
	combout => i_pixel_acombout(2));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(3),
	combout => i_pixel_acombout(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(4),
	combout => i_pixel_acombout(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(5),
	combout => i_pixel_acombout(5));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(6),
	combout => i_pixel_acombout(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(7),
	combout => i_pixel_acombout(7));

-- Location: M4K_X26_Y23
mem_1_aix64056z29483_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:mem_1|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => valid_wren(2),
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => mem_1_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X30_Y21_N28
ix50415z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50415z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(6)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(6),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(6),
	combout => nx50415z1);

-- Location: LCCOMB_X32_Y21_N26
ix59688z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59688z1 = (i_reset_acombout) # (i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datac => i_valid_acombout,
	combout => nx59688z1);

-- Location: LCFF_X30_Y21_N29
reg_conv_table_2_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx50415z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(6),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(6));

-- Location: LCFF_X31_Y23_N17
reg_conv_table_1_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(6));

-- Location: LCCOMB_X31_Y23_N16
ix42053z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z11 = (valid_bits_stage1(0) & (conv_table_0_0_a(6))) # (!valid_bits_stage1(0) & (((conv_table_1_0_a(6) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_0_a(6),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_0_a(6),
	datad => valid_bits_stage1(1),
	combout => nx42053z11);

-- Location: LCFF_X31_Y23_N19
reg_conv_table_2_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(6));

-- Location: LCFF_X32_Y21_N21
reg_conv_table_1_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(6));

-- Location: LCCOMB_X32_Y21_N20
ix42053z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z10 = (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & (conv_table_1_2_a(6) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_2_a(6),
	datad => valid_bits_stage1(2),
	combout => nx42053z10);

-- Location: LCCOMB_X32_Y21_N0
ix42053z52936 : cycloneii_lcell_comb
-- Equation(s):
-- i3(6) = (nx42053z11) # ((nx42053z10) # ((conv_table_2_1_a(6) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(6),
	datab => nx42053z2,
	datac => nx42053z11,
	datad => nx42053z10,
	combout => i3(6));

-- Location: LCCOMB_X30_Y21_N0
ix51412z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx51412z1 = (row_index(1) & (mem_1_aix64056z29483_aauto_generated_aq_a(5))) # (!row_index(1) & ((mem_0_aix64056z29482_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z29483_aauto_generated_aq_a(5),
	datab => row_index(1),
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(5),
	combout => nx51412z1);

-- Location: LCFF_X30_Y21_N1
reg_conv_table_2_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx51412z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(5),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(5));

-- Location: LCFF_X31_Y21_N5
reg_conv_table_1_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(5));

-- Location: LCFF_X32_Y21_N19
reg_conv_table_0_0_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(5));

-- Location: LCCOMB_X32_Y21_N18
ix42053z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z16 = (valid_bits_stage1(0) & (((conv_table_0_0_a(5))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & (conv_table_1_0_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => conv_table_1_0_a(5),
	datac => conv_table_0_0_a(5),
	datad => valid_bits_stage1(0),
	combout => nx42053z16);

-- Location: LCFF_X31_Y24_N25
reg_conv_table_2_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(5));

-- Location: LCFF_X32_Y21_N13
reg_conv_table_1_2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(5));

-- Location: LCCOMB_X32_Y21_N12
ix42053z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z15 = (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & (conv_table_1_2_a(5) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_2_a(5),
	datad => valid_bits_stage1(2),
	combout => nx42053z15);

-- Location: LCCOMB_X32_Y21_N14
ix42053z52943 : cycloneii_lcell_comb
-- Equation(s):
-- i3(5) = (nx42053z16) # ((nx42053z15) # ((conv_table_2_1_a(5) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(5),
	datab => nx42053z16,
	datac => nx42053z2,
	datad => nx42053z15,
	combout => i3(5));

-- Location: LCFF_X33_Y21_N25
reg_conv_table_2_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(4));

-- Location: LCFF_X33_Y21_N27
reg_conv_table_1_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(4));

-- Location: LCFF_X33_Y21_N31
reg_conv_table_0_2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(4));

-- Location: LCCOMB_X33_Y21_N30
ix42053z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z18 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_0_2_a(4) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_0_2_a(4),
	datad => valid_bits_stage1(0),
	combout => nx42053z18);

-- Location: LCCOMB_X33_Y21_N12
ix42053z52947 : cycloneii_lcell_comb
-- Equation(s):
-- i4(4) = (nx42053z19) # ((nx42053z18) # ((conv_table_2_2_a(4) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z19,
	datab => conv_table_2_2_a(4),
	datac => nx42053z18,
	datad => nx42053z2,
	combout => i4(4));

-- Location: LCCOMB_X30_Y21_N26
ix58541z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58541z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(3))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_index(1),
	datab => mem_aix64056z29481_aauto_generated_aq_a(3),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx58541z1);

-- Location: LCFF_X30_Y21_N27
reg_conv_table_2_1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx58541z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(3),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(3));

-- Location: LCFF_X31_Y21_N21
reg_conv_table_2_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(3));

-- Location: LCFF_X31_Y21_N23
reg_conv_table_1_2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(3));

-- Location: LCCOMB_X31_Y21_N22
ix42053z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z25 = (!valid_bits_stage1(2) & (!valid_bits_stage1(1) & (conv_table_1_2_a(3) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(1),
	datac => conv_table_1_2_a(3),
	datad => valid_bits_stage1(0),
	combout => nx42053z25);

-- Location: LCCOMB_X31_Y21_N0
ix42053z52957 : cycloneii_lcell_comb
-- Equation(s):
-- i3(3) = (nx42053z26) # ((nx42053z25) # ((conv_table_2_1_a(3) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z26,
	datab => conv_table_2_1_a(3),
	datac => nx42053z2,
	datad => nx42053z25,
	combout => i3(3));

-- Location: LCCOMB_X30_Y21_N14
ix59538z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59538z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(2))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(2),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx59538z1);

-- Location: LCFF_X30_Y21_N15
reg_conv_table_2_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx59538z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(2),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(2));

-- Location: LCFF_X31_Y24_N3
reg_conv_table_1_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(2));

-- Location: LCFF_X31_Y24_N23
reg_conv_table_0_1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(2));

-- Location: LCCOMB_X31_Y24_N22
ix42053z52963 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z29 = (valid_bits_stage1(0) & (((conv_table_0_1_a(2))))) # (!valid_bits_stage1(0) & (conv_table_2_0_a(2) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(2),
	datad => valid_bits_stage1(1),
	combout => nx42053z29);

-- Location: LCFF_X31_Y24_N27
reg_conv_table_2_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(2));

-- Location: LCFF_X31_Y24_N21
reg_conv_table_1_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(2));

-- Location: LCFF_X31_Y24_N11
reg_conv_table_0_2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(2));

-- Location: LCCOMB_X31_Y24_N10
ix42053z52962 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z28 = (!valid_bits_stage1(2) & (!valid_bits_stage1(0) & (conv_table_0_2_a(2) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_2_a(2),
	datad => valid_bits_stage1(1),
	combout => nx42053z28);

-- Location: LCCOMB_X31_Y24_N6
ix42053z52961 : cycloneii_lcell_comb
-- Equation(s):
-- i4(2) = (nx42053z29) # ((nx42053z28) # ((conv_table_2_2_a(2) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(2),
	datab => nx42053z29,
	datac => nx42053z28,
	datad => nx42053z2,
	combout => i4(2));

-- Location: LCFF_X31_Y23_N5
reg_conv_table_2_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(1));

-- Location: LCFF_X31_Y23_N31
reg_conv_table_1_2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(1));

-- Location: LCCOMB_X31_Y23_N30
ix42053z52972 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z35 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_1_2_a(1) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_1_2_a(1),
	datad => valid_bits_stage1(0),
	combout => nx42053z35);

-- Location: LCCOMB_X30_Y21_N24
ix55400z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx55400z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(1)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(1),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx55400z1);

-- Location: LCFF_X30_Y21_N25
reg_conv_table_2_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55400z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(1),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(1));

-- Location: LCFF_X31_Y23_N13
reg_conv_table_1_0_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(1));

-- Location: LCCOMB_X31_Y23_N12
ix42053z52973 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z36 = (valid_bits_stage1(0) & (conv_table_0_0_a(1))) # (!valid_bits_stage1(0) & (((conv_table_1_0_a(1) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_0_a(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_0_a(1),
	datad => valid_bits_stage1(1),
	combout => nx42053z36);

-- Location: LCCOMB_X32_Y22_N0
ix42053z52971 : cycloneii_lcell_comb
-- Equation(s):
-- i3(1) = (nx42053z35) # ((nx42053z36) # ((conv_table_2_1_a(1) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(1),
	datab => nx42053z2,
	datac => nx42053z35,
	datad => nx42053z36,
	combout => i3(1));

-- Location: LCCOMB_X30_Y21_N6
ix56397z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56397z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(0)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_index(1),
	datab => mem_0_aix64056z29482_aauto_generated_aq_a(0),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx56397z1);

-- Location: LCFF_X30_Y21_N7
reg_conv_table_2_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56397z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(0),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(0));

-- Location: LCFF_X33_Y22_N27
reg_conv_table_1_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(0));

-- Location: LCFF_X33_Y22_N13
reg_conv_table_0_0_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(0));

-- Location: LCCOMB_X33_Y22_N26
ix42053z52977 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z39 = (valid_bits_stage1(0) & (((conv_table_0_0_a(0))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_1_0_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => conv_table_0_0_a(0),
	datac => conv_table_1_0_a(0),
	datad => valid_bits_stage1(0),
	combout => nx42053z39);

-- Location: LCFF_X33_Y22_N31
reg_conv_table_2_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(0));

-- Location: LCFF_X33_Y22_N21
reg_conv_table_1_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(0));

-- Location: LCCOMB_X33_Y22_N20
ix42053z52976 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z38 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_1_2_a(0) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_1_2_a(0),
	datad => valid_bits_stage1(0),
	combout => nx42053z38);

-- Location: LCCOMB_X32_Y22_N4
ix42053z52975 : cycloneii_lcell_comb
-- Equation(s):
-- i3(0) = (nx42053z39) # ((nx42053z38) # ((conv_table_2_1_a(0) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(0),
	datab => nx42053z2,
	datac => nx42053z39,
	datad => nx42053z38,
	combout => i3(0));

-- Location: LCCOMB_X32_Y22_N14
add1_add8_1_ix42053z52974 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z37 = CARRY((i4(0) & i3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(0),
	datab => i3(0),
	datad => VCC,
	cout => nx42053z37);

-- Location: LCCOMB_X32_Y22_N16
add1_add8_1_ix42053z52967 : cycloneii_lcell_comb
-- Equation(s):
-- add1(1) = (i4(1) & ((i3(1) & (nx42053z37 & VCC)) # (!i3(1) & (!nx42053z37)))) # (!i4(1) & ((i3(1) & (!nx42053z37)) # (!i3(1) & ((nx42053z37) # (GND)))))
-- nx42053z32 = CARRY((i4(1) & (!i3(1) & !nx42053z37)) # (!i4(1) & ((!nx42053z37) # (!i3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(1),
	datab => i3(1),
	datad => VCC,
	cin => nx42053z37,
	combout => add1(1),
	cout => nx42053z32);

-- Location: LCCOMB_X32_Y22_N18
add1_add8_1_ix42053z52960 : cycloneii_lcell_comb
-- Equation(s):
-- add1(2) = ((i3(2) $ (i4(2) $ (!nx42053z32)))) # (GND)
-- nx42053z27 = CARRY((i3(2) & ((i4(2)) # (!nx42053z32))) # (!i3(2) & (i4(2) & !nx42053z32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(2),
	datab => i4(2),
	datad => VCC,
	cin => nx42053z32,
	combout => add1(2),
	cout => nx42053z27);

-- Location: LCCOMB_X32_Y22_N20
add1_add8_1_ix42053z52953 : cycloneii_lcell_comb
-- Equation(s):
-- add1(3) = (i4(3) & ((i3(3) & (nx42053z27 & VCC)) # (!i3(3) & (!nx42053z27)))) # (!i4(3) & ((i3(3) & (!nx42053z27)) # (!i3(3) & ((nx42053z27) # (GND)))))
-- nx42053z22 = CARRY((i4(3) & (!i3(3) & !nx42053z27)) # (!i4(3) & ((!nx42053z27) # (!i3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(3),
	datab => i3(3),
	datad => VCC,
	cin => nx42053z27,
	combout => add1(3),
	cout => nx42053z22);

-- Location: LCCOMB_X32_Y22_N22
add1_add8_1_ix42053z52946 : cycloneii_lcell_comb
-- Equation(s):
-- add1(4) = ((i3(4) $ (i4(4) $ (!nx42053z22)))) # (GND)
-- nx42053z17 = CARRY((i3(4) & ((i4(4)) # (!nx42053z22))) # (!i3(4) & (i4(4) & !nx42053z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(4),
	datab => i4(4),
	datad => VCC,
	cin => nx42053z22,
	combout => add1(4),
	cout => nx42053z17);

-- Location: LCCOMB_X32_Y22_N24
add1_add8_1_ix42053z52939 : cycloneii_lcell_comb
-- Equation(s):
-- add1(5) = (i4(5) & ((i3(5) & (nx42053z17 & VCC)) # (!i3(5) & (!nx42053z17)))) # (!i4(5) & ((i3(5) & (!nx42053z17)) # (!i3(5) & ((nx42053z17) # (GND)))))
-- nx42053z12 = CARRY((i4(5) & (!i3(5) & !nx42053z17)) # (!i4(5) & ((!nx42053z17) # (!i3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(5),
	datab => i3(5),
	datad => VCC,
	cin => nx42053z17,
	combout => add1(5),
	cout => nx42053z12);

-- Location: LCCOMB_X32_Y22_N26
add1_add8_1_ix42053z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add1(6) = ((i4(6) $ (i3(6) $ (!nx42053z12)))) # (GND)
-- nx42053z7 = CARRY((i4(6) & ((i3(6)) # (!nx42053z12))) # (!i4(6) & (i3(6) & !nx42053z12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(6),
	datab => i3(6),
	datad => VCC,
	cin => nx42053z12,
	combout => add1(6),
	cout => nx42053z7);

-- Location: LCCOMB_X31_Y22_N4
add3_add11_0_ix35831z52934 : cycloneii_lcell_comb
-- Equation(s):
-- add3(0) = (add1(0) & (r1(0) $ (VCC))) # (!add1(0) & (r1(0) & VCC))
-- nx35831z11 = CARRY((add1(0) & r1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add1(0),
	datab => r1(0),
	datad => VCC,
	combout => add3(0),
	cout => nx35831z11);

-- Location: LCFF_X33_Y22_N15
reg_conv_table_0_2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(0));

-- Location: LCCOMB_X33_Y22_N14
ix42053z52979 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z40 = (!valid_bits_stage1(1) & (!valid_bits_stage1(0) & (conv_table_0_2_a(0) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_2_a(0),
	datad => valid_bits_stage1(2),
	combout => nx42053z40);

-- Location: LCCOMB_X30_Y21_N20
ix61532z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61532z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(0))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_index(1),
	datab => mem_aix64056z29481_aauto_generated_aq_a(0),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx61532z1);

-- Location: LCFF_X30_Y21_N21
reg_conv_table_2_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx61532z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(0),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(0));

-- Location: LCFF_X33_Y22_N23
reg_conv_table_1_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(0));

-- Location: LCFF_X33_Y22_N5
reg_conv_table_0_1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(0));

-- Location: LCCOMB_X33_Y22_N4
ix42053z52980 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z41 = (valid_bits_stage1(0) & (((conv_table_0_1_a(0))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & ((conv_table_2_0_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(0),
	datad => conv_table_2_0_a(0),
	combout => nx42053z41);

-- Location: LCCOMB_X32_Y22_N12
ix42053z52978 : cycloneii_lcell_comb
-- Equation(s):
-- i4(0) = (nx42053z40) # ((nx42053z41) # ((conv_table_2_2_a(0) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_2_a(0),
	datab => nx42053z2,
	datac => nx42053z40,
	datad => nx42053z41,
	combout => i4(0));

-- Location: LCCOMB_X31_Y22_N24
add1_add8_1_ix35831z52935 : cycloneii_lcell_comb
-- Equation(s):
-- add1(0) = i4(0) $ (i3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i4(0),
	datad => i3(0),
	combout => add1(0));

-- Location: LCFF_X31_Y22_N5
reg_r1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(0),
	sdata => add1(0),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(0));

-- Location: LCCOMB_X31_Y22_N6
add3_add11_0_ix35831z52933 : cycloneii_lcell_comb
-- Equation(s):
-- add3(1) = (add1(1) & ((r1(1) & (nx35831z11 & VCC)) # (!r1(1) & (!nx35831z11)))) # (!add1(1) & ((r1(1) & (!nx35831z11)) # (!r1(1) & ((nx35831z11) # (GND)))))
-- nx35831z10 = CARRY((add1(1) & (!r1(1) & !nx35831z11)) # (!add1(1) & ((!nx35831z11) # (!r1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(1),
	datab => r1(1),
	datad => VCC,
	cin => nx35831z11,
	combout => add3(1),
	cout => nx35831z10);

-- Location: LCFF_X31_Y22_N7
reg_r1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(1),
	sdata => add1(1),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(1));

-- Location: LCCOMB_X31_Y22_N8
add3_add11_0_ix35831z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add3(2) = ((add1(2) $ (r1(2) $ (!nx35831z10)))) # (GND)
-- nx35831z9 = CARRY((add1(2) & ((r1(2)) # (!nx35831z10))) # (!add1(2) & (r1(2) & !nx35831z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(2),
	datab => r1(2),
	datad => VCC,
	cin => nx35831z10,
	combout => add3(2),
	cout => nx35831z9);

-- Location: LCFF_X31_Y22_N9
reg_r1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(2),
	sdata => add1(2),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(2));

-- Location: LCCOMB_X31_Y22_N10
add3_add11_0_ix35831z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add3(3) = (add1(3) & ((r1(3) & (nx35831z9 & VCC)) # (!r1(3) & (!nx35831z9)))) # (!add1(3) & ((r1(3) & (!nx35831z9)) # (!r1(3) & ((nx35831z9) # (GND)))))
-- nx35831z8 = CARRY((add1(3) & (!r1(3) & !nx35831z9)) # (!add1(3) & ((!nx35831z9) # (!r1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(3),
	datab => r1(3),
	datad => VCC,
	cin => nx35831z9,
	combout => add3(3),
	cout => nx35831z8);

-- Location: LCFF_X31_Y22_N11
reg_r1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(3),
	sdata => add1(3),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(3));

-- Location: LCCOMB_X31_Y22_N12
add3_add11_0_ix35831z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add3(4) = ((add1(4) $ (r1(4) $ (!nx35831z8)))) # (GND)
-- nx35831z7 = CARRY((add1(4) & ((r1(4)) # (!nx35831z8))) # (!add1(4) & (r1(4) & !nx35831z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(4),
	datab => r1(4),
	datad => VCC,
	cin => nx35831z8,
	combout => add3(4),
	cout => nx35831z7);

-- Location: LCFF_X31_Y22_N13
reg_r1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(4),
	sdata => add1(4),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(4));

-- Location: LCCOMB_X31_Y22_N14
add3_add11_0_ix35831z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add3(5) = (add1(5) & ((r1(5) & (nx35831z7 & VCC)) # (!r1(5) & (!nx35831z7)))) # (!add1(5) & ((r1(5) & (!nx35831z7)) # (!r1(5) & ((nx35831z7) # (GND)))))
-- nx35831z6 = CARRY((add1(5) & (!r1(5) & !nx35831z7)) # (!add1(5) & ((!nx35831z7) # (!r1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(5),
	datab => r1(5),
	datad => VCC,
	cin => nx35831z7,
	combout => add3(5),
	cout => nx35831z6);

-- Location: LCFF_X31_Y22_N15
reg_r1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(5),
	sdata => add1(5),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(5));

-- Location: LCCOMB_X31_Y22_N16
add3_add11_0_ix35831z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add3(6) = ((r1(6) $ (add1(6) $ (!nx35831z6)))) # (GND)
-- nx35831z5 = CARRY((r1(6) & ((add1(6)) # (!nx35831z6))) # (!r1(6) & (add1(6) & !nx35831z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(6),
	datab => add1(6),
	datad => VCC,
	cin => nx35831z6,
	combout => add3(6),
	cout => nx35831z5);

-- Location: LCCOMB_X31_Y22_N18
add3_add11_0_ix35831z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add3(7) = (add1(7) & ((r1(7) & (nx35831z5 & VCC)) # (!r1(7) & (!nx35831z5)))) # (!add1(7) & ((r1(7) & (!nx35831z5)) # (!r1(7) & ((nx35831z5) # (GND)))))
-- nx35831z4 = CARRY((add1(7) & (!r1(7) & !nx35831z5)) # (!add1(7) & ((!nx35831z5) # (!r1(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(7),
	datab => r1(7),
	datad => VCC,
	cin => nx35831z5,
	combout => add3(7),
	cout => nx35831z4);

-- Location: LCCOMB_X30_Y21_N16
ix49418z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx49418z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(7)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(7),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx49418z1);

-- Location: LCFF_X30_Y21_N17
reg_conv_table_2_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx49418z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(7),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(7));

-- Location: LCFF_X33_Y21_N17
reg_conv_table_1_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(7));

-- Location: LCFF_X33_Y21_N3
reg_conv_table_0_0_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(7));

-- Location: LCCOMB_X33_Y21_N2
ix42053z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z6 = (valid_bits_stage1(0) & (((conv_table_0_0_a(7))))) # (!valid_bits_stage1(0) & (conv_table_1_0_a(7) & (valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_0_a(7),
	datab => valid_bits_stage1(1),
	datac => conv_table_0_0_a(7),
	datad => valid_bits_stage1(0),
	combout => nx42053z6);

-- Location: LCFF_X33_Y22_N11
reg_conv_table_2_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_2_a(7));

-- Location: LCFF_X33_Y21_N9
reg_conv_table_1_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_2_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_2_a(7));

-- Location: LCCOMB_X33_Y21_N8
ix42053z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z5 = (!valid_bits_stage1(0) & (!valid_bits_stage1(2) & (conv_table_1_2_a(7) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => valid_bits_stage1(2),
	datac => conv_table_1_2_a(7),
	datad => valid_bits_stage1(1),
	combout => nx42053z5);

-- Location: LCCOMB_X33_Y21_N0
ix42053z52929 : cycloneii_lcell_comb
-- Equation(s):
-- i3(7) = (nx42053z6) # ((nx42053z5) # ((conv_table_2_1_a(7) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(7),
	datab => nx42053z6,
	datac => nx42053z5,
	datad => nx42053z2,
	combout => i3(7));

-- Location: LCCOMB_X32_Y22_N28
add1_add8_1_ix42053z52924 : cycloneii_lcell_comb
-- Equation(s):
-- add1(7) = (i4(7) & ((i3(7) & (nx42053z7 & VCC)) # (!i3(7) & (!nx42053z7)))) # (!i4(7) & ((i3(7) & (!nx42053z7)) # (!i3(7) & ((nx42053z7) # (GND)))))
-- add1(8) = CARRY((i4(7) & (!i3(7) & !nx42053z7)) # (!i4(7) & ((!nx42053z7) # (!i3(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(7),
	datab => i3(7),
	datad => VCC,
	cin => nx42053z7,
	combout => add1(7),
	cout => add1(8));

-- Location: LCFF_X31_Y22_N19
reg_r1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(7),
	sdata => add1(7),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(7));

-- Location: LCCOMB_X31_Y22_N20
ix35831z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx35831z3 = !nx35831z4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx35831z4,
	combout => nx35831z3);

-- Location: LCCOMB_X32_Y22_N30
add1_a8_a_a0 : cycloneii_lcell_comb
-- Equation(s):
-- add1_a8_a_a0_combout = !add1(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add1(8),
	combout => add1_a8_a_a0_combout);

-- Location: LCCOMB_X30_Y22_N4
add3_add11_0_ix35831z52925_a1 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_ix35831z52925_a1_cout = CARRY(add1_a8_a_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => add1_a8_a_a0_combout,
	datad => VCC,
	cout => add3_add11_0_ix35831z52925_a1_cout);

-- Location: LCCOMB_X30_Y22_N6
add3_add11_0_ix35831z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add3(8) = (r1(8) & ((nx35831z3 & (add3_add11_0_ix35831z52925_a1_cout & VCC)) # (!nx35831z3 & (!add3_add11_0_ix35831z52925_a1_cout)))) # (!r1(8) & ((nx35831z3 & (!add3_add11_0_ix35831z52925_a1_cout)) # (!nx35831z3 & ((add3_add11_0_ix35831z52925_a1_cout) # 
-- (GND)))))
-- nx35831z2 = CARRY((r1(8) & (!nx35831z3 & !add3_add11_0_ix35831z52925_a1_cout)) # (!r1(8) & ((!add3_add11_0_ix35831z52925_a1_cout) # (!nx35831z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(8),
	datab => nx35831z3,
	datad => VCC,
	cin => add3_add11_0_ix35831z52925_a1_cout,
	combout => add3(8),
	cout => nx35831z2);

-- Location: LCCOMB_X30_Y22_N8
add3_add11_0_ix35831z52924 : cycloneii_lcell_comb
-- Equation(s):
-- add3(9) = (r1(9) & (nx35831z2 $ (GND))) # (!r1(9) & (!nx35831z2 & VCC))
-- nx35831z1 = CARRY((r1(9) & !nx35831z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r1(9),
	datad => VCC,
	cin => nx35831z2,
	combout => add3(9),
	cout => nx35831z1);

-- Location: LCCOMB_X30_Y22_N22
ix43050z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx43050z1 = (!valid_bits_stage1(0) & (add3(9) & !i_reset_acombout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datac => add3(9),
	datad => i_reset_acombout,
	combout => nx43050z1);

-- Location: LCFF_X30_Y22_N23
reg_r1_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43050z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1(9));

-- Location: LCCOMB_X30_Y22_N10
add3_add11_0_ix35831z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add3(10) = nx35831z1 $ (r1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r1(10),
	cin => nx35831z1,
	combout => add3(10));

-- Location: LCCOMB_X27_Y23_N8
ix35831z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx35831z12 = (valid_bits_stage1(3)) # (i_reset_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_bits_stage1(3),
	datad => i_reset_acombout,
	combout => nx35831z12);

-- Location: LCFF_X30_Y22_N11
reg_r4_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3(10),
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(10));

-- Location: LCCOMB_X30_Y22_N24
r4_a8_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a8_a_afeeder_combout = add3(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3(8),
	combout => r4_a8_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N25
reg_r4_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a8_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(8));

-- Location: LCCOMB_X30_Y22_N12
r4_a6_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a6_a_afeeder_combout = add3(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3(6),
	combout => r4_a6_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N13
reg_r4_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a6_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(6));

-- Location: LCCOMB_X30_Y22_N0
r4_a4_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a4_a_afeeder_combout = add3(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3(4),
	combout => r4_a4_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N1
reg_r4_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a4_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(4));

-- Location: LCCOMB_X30_Y22_N20
r4_a2_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a2_a_afeeder_combout = add3(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3(2),
	combout => r4_a2_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N21
reg_r4_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a2_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(2));

-- Location: LCCOMB_X30_Y22_N30
r4_a1_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r4_a1_a_afeeder_combout = add3(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3(1),
	combout => r4_a1_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N31
reg_r4_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r4_a1_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4(1));

-- Location: LCCOMB_X29_Y22_N2
add4_add11_2_ix21429z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx21429z11 = CARRY((add4(0) & r4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add4(0),
	datab => r4(1),
	datad => VCC,
	cout => nx21429z11);

-- Location: LCCOMB_X29_Y22_N6
add4_add11_2_ix21429z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add4(3) = ((r4(3) $ (r4(2) $ (!nx21429z10)))) # (GND)
-- nx21429z9 = CARRY((r4(3) & ((r4(2)) # (!nx21429z10))) # (!r4(3) & (r4(2) & !nx21429z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(3),
	datab => r4(2),
	datad => VCC,
	cin => nx21429z10,
	combout => add4(3),
	cout => nx21429z9);

-- Location: LCCOMB_X29_Y22_N10
add4_add11_2_ix21429z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add4(5) = ((r4(5) $ (r4(4) $ (!nx21429z8)))) # (GND)
-- nx21429z7 = CARRY((r4(5) & ((r4(4)) # (!nx21429z8))) # (!r4(5) & (r4(4) & !nx21429z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(5),
	datab => r4(4),
	datad => VCC,
	cin => nx21429z8,
	combout => add4(5),
	cout => nx21429z7);

-- Location: LCCOMB_X29_Y22_N12
add4_add11_2_ix21429z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add4(6) = (r4(5) & ((r4(6) & (nx21429z7 & VCC)) # (!r4(6) & (!nx21429z7)))) # (!r4(5) & ((r4(6) & (!nx21429z7)) # (!r4(6) & ((nx21429z7) # (GND)))))
-- nx21429z6 = CARRY((r4(5) & (!r4(6) & !nx21429z7)) # (!r4(5) & ((!nx21429z7) # (!r4(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(5),
	datab => r4(6),
	datad => VCC,
	cin => nx21429z7,
	combout => add4(6),
	cout => nx21429z6);

-- Location: LCCOMB_X29_Y22_N16
add4_add11_2_ix21429z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add4(8) = (r4(7) & ((r4(8) & (nx21429z5 & VCC)) # (!r4(8) & (!nx21429z5)))) # (!r4(7) & ((r4(8) & (!nx21429z5)) # (!r4(8) & ((nx21429z5) # (GND)))))
-- nx21429z4 = CARRY((r4(7) & (!r4(8) & !nx21429z5)) # (!r4(7) & ((!nx21429z5) # (!r4(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(7),
	datab => r4(8),
	datad => VCC,
	cin => nx21429z5,
	combout => add4(8),
	cout => nx21429z4);

-- Location: LCCOMB_X29_Y22_N20
add4_add11_2_ix21429z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add4(10) = (r4(9) & ((r4(10) & (nx21429z3 & VCC)) # (!r4(10) & (!nx21429z3)))) # (!r4(9) & ((r4(10) & (!nx21429z3)) # (!r4(10) & ((nx21429z3) # (GND)))))
-- nx21429z2 = CARRY((r4(9) & (!r4(10) & !nx21429z3)) # (!r4(9) & ((!nx21429z3) # (!r4(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4(9),
	datab => r4(10),
	datad => VCC,
	cin => nx21429z3,
	combout => add4(10),
	cout => nx21429z2);

-- Location: LCCOMB_X29_Y22_N22
add4_add11_2_ix21429z52924 : cycloneii_lcell_comb
-- Equation(s):
-- add4(11) = (r4(10) & (nx21429z2 $ (GND))) # (!r4(10) & (!nx21429z2 & VCC))
-- add4(12) = CARRY((r4(10) & !nx21429z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r4(10),
	datad => VCC,
	cin => nx21429z2,
	combout => add4(11),
	cout => add4(12));

-- Location: LCCOMB_X29_Y22_N24
ix21429z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx21429z1 = add4(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add4(12),
	combout => nx21429z1);

-- Location: LCCOMB_X27_Y23_N14
ix21429z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx21429z12 = (valid_bits_stage2(1)) # (i_reset_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_bits_stage2(1),
	datad => i_reset_acombout,
	combout => nx21429z12);

-- Location: LCFF_X29_Y22_N25
reg_r6_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21429z1,
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(12));

-- Location: LCFF_X29_Y22_N23
reg_r6_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(11),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(11));

-- Location: LCFF_X29_Y22_N21
reg_r6_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(10),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(10));

-- Location: LCFF_X29_Y22_N17
reg_r6_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(8),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(8));

-- Location: LCFF_X29_Y22_N13
reg_r6_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(6),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(6));

-- Location: LCFF_X29_Y22_N11
reg_r6_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(5),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(5));

-- Location: LCFF_X29_Y22_N7
reg_r6_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(3),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(3));

-- Location: LCCOMB_X30_Y22_N16
add4_a0_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- add4_a0_a_afeeder_combout = add3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3(0),
	combout => add4_a0_a_afeeder_combout);

-- Location: LCFF_X30_Y22_N17
reg_r4_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_a0_a_afeeder_combout,
	sclr => i_reset_acombout,
	ena => nx35831z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add4(0));

-- Location: LCCOMB_X28_Y22_N28
add4_add11_2_ix58515z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add4(1) = r4(1) $ (add4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r4(1),
	datad => add4(0),
	combout => add4(1));

-- Location: LCFF_X28_Y22_N29
reg_r6_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4(1),
	sclr => i_reset_acombout,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6(1));

-- Location: LCCOMB_X29_Y23_N6
add5_add13_3_ix40727z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z14 = CARRY((r6(0)) # (r6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6(0),
	datab => r6(1),
	datad => VCC,
	cout => nx40727z14);

-- Location: LCCOMB_X29_Y23_N8
add5_add13_3_ix40727z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z13 = CARRY((!r6(2) & !nx40727z14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(2),
	datad => VCC,
	cin => nx40727z14,
	cout => nx40727z13);

-- Location: LCCOMB_X29_Y23_N14
add5_add13_3_ix40727z52934 : cycloneii_lcell_comb
-- Equation(s):
-- add5_5_a = (r6(5) & ((GND) # (!nx40727z11))) # (!r6(5) & (nx40727z11 $ (GND)))
-- nx40727z10 = CARRY((r6(5)) # (!nx40727z11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(5),
	datad => VCC,
	cin => nx40727z11,
	combout => add5_5_a,
	cout => nx40727z10);

-- Location: LCCOMB_X29_Y23_N16
add5_add13_3_ix40727z52933 : cycloneii_lcell_comb
-- Equation(s):
-- add5_6_a = (r6(6) & (nx40727z10 & VCC)) # (!r6(6) & (!nx40727z10))
-- nx40727z9 = CARRY((!r6(6) & !nx40727z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(6),
	datad => VCC,
	cin => nx40727z10,
	combout => add5_6_a,
	cout => nx40727z9);

-- Location: LCCOMB_X29_Y23_N18
add5_add13_3_ix40727z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add5_7_a = (r6(7) & (nx40727z9 $ (GND))) # (!r6(7) & (!nx40727z9 & VCC))
-- nx40727z8 = CARRY((r6(7) & !nx40727z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6(7),
	datad => VCC,
	cin => nx40727z9,
	combout => add5_7_a,
	cout => nx40727z8);

-- Location: LCCOMB_X29_Y23_N24
add5_add13_3_ix40727z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add5_10_a = (r6(10) & (!nx40727z6)) # (!r6(10) & ((nx40727z6) # (GND)))
-- nx40727z5 = CARRY((!nx40727z6) # (!r6(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r6(10),
	datad => VCC,
	cin => nx40727z6,
	combout => add5_10_a,
	cout => nx40727z5);

-- Location: LCCOMB_X31_Y22_N26
ix42053z52923_a1 : cycloneii_lcell_comb
-- Equation(s):
-- ix42053z52923_a1_cout = CARRY(add1_a8_a_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => add1_a8_a_a0_combout,
	datad => VCC,
	cout => ix42053z52923_a1_cout);

-- Location: LCCOMB_X31_Y22_N28
ix42053z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx42053z1 = ix42053z52923_a1_cout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix42053z52923_a1_cout,
	combout => nx42053z1);

-- Location: LCCOMB_X31_Y23_N18
ix28963z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z8 = (!valid_bits_stage1(2) & (!valid_bits_stage1(0) & (conv_table_2_2_a(6) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_2_2_a(6),
	datad => valid_bits_stage1(1),
	combout => nx28963z8);

-- Location: LCFF_X31_Y23_N15
reg_conv_table_0_0_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(6));

-- Location: LCFF_X32_Y21_N23
reg_conv_table_0_2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(6));

-- Location: LCCOMB_X31_Y23_N14
ix28963z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z9 = (valid_bits_stage1(0) & (((conv_table_0_2_a(6))))) # (!valid_bits_stage1(0) & (valid_bits_stage1(1) & (conv_table_0_0_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_0_a(6),
	datad => conv_table_0_2_a(6),
	combout => nx28963z9);

-- Location: LCCOMB_X31_Y23_N20
ix28963z52935 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(6) = (nx28963z8) # ((nx28963z9) # ((nx42053z2 & conv_table_2_0_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z2,
	datab => nx28963z8,
	datac => nx28963z9,
	datad => conv_table_2_0_a(6),
	combout => i1_magnitude(6));

-- Location: LCCOMB_X30_Y21_N22
ix55550z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx55550z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(6))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(6),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(6),
	combout => nx55550z1);

-- Location: LCFF_X30_Y21_N23
reg_conv_table_2_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55550z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(6),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(6));

-- Location: LCCOMB_X31_Y22_N2
ix28963z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z11 = (valid_bits_stage1(0) & (conv_table_1_0_a(6))) # (!valid_bits_stage1(0) & (((valid_bits_stage1(1) & conv_table_2_1_a(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_0_a(6),
	datab => valid_bits_stage1(0),
	datac => valid_bits_stage1(1),
	datad => conv_table_2_1_a(6),
	combout => nx28963z11);

-- Location: LCFF_X32_Y21_N17
reg_conv_table_1_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(6));

-- Location: LCFF_X32_Y21_N7
reg_conv_table_0_1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(6));

-- Location: LCCOMB_X31_Y22_N0
ix28963z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z10 = (!valid_bits_stage1(2) & (!valid_bits_stage1(0) & (!valid_bits_stage1(1) & conv_table_0_1_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(0),
	datac => valid_bits_stage1(1),
	datad => conv_table_0_1_a(6),
	combout => nx28963z10);

-- Location: LCCOMB_X31_Y22_N22
ix28963z52938 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(6) = (nx28963z11) # ((nx28963z10) # ((nx42053z2 & conv_table_1_2_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z2,
	datab => nx28963z11,
	datac => conv_table_1_2_a(6),
	datad => nx28963z10,
	combout => i2_magnitude(6));

-- Location: LCFF_X33_Y22_N19
reg_conv_table_0_2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_2_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_2_a(7));

-- Location: LCCOMB_X33_Y22_N8
ix28963z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z4 = (valid_bits_stage1(0) & (((conv_table_0_2_a(7))))) # (!valid_bits_stage1(0) & (conv_table_0_0_a(7) & (valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_0_0_a(7),
	datac => valid_bits_stage1(1),
	datad => conv_table_0_2_a(7),
	combout => nx28963z4);

-- Location: LCCOMB_X33_Y22_N16
ix28963z52927 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(7) = (nx28963z3) # ((nx28963z4) # ((conv_table_2_0_a(7) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z3,
	datab => conv_table_2_0_a(7),
	datac => nx42053z2,
	datad => nx28963z4,
	combout => i1_magnitude(7));

-- Location: LCCOMB_X30_Y21_N18
ix54553z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54553z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(7))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(7),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx54553z1);

-- Location: LCFF_X30_Y21_N19
reg_conv_table_2_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54553z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(7),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(7));

-- Location: LCFF_X32_Y21_N29
reg_conv_table_1_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(7));

-- Location: LCFF_X33_Y22_N3
reg_conv_table_0_1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(7));

-- Location: LCCOMB_X30_Y22_N18
ix28963z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z5 = (!valid_bits_stage1(2) & (conv_table_0_1_a(7) & (!valid_bits_stage1(1) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => conv_table_0_1_a(7),
	datac => valid_bits_stage1(1),
	datad => valid_bits_stage1(0),
	combout => nx28963z5);

-- Location: LCCOMB_X32_Y21_N30
ix28963z52930 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(7) = (nx28963z6) # ((nx28963z5) # ((conv_table_1_2_a(7) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z6,
	datab => conv_table_1_2_a(7),
	datac => nx28963z5,
	datad => nx42053z2,
	combout => i2_magnitude(7));

-- Location: LCCOMB_X31_Y21_N4
ix28963z52947 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z16 = (valid_bits_stage1(0) & (((conv_table_1_0_a(5))))) # (!valid_bits_stage1(0) & (conv_table_2_1_a(5) & ((valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_1_a(5),
	datab => valid_bits_stage1(0),
	datac => conv_table_1_0_a(5),
	datad => valid_bits_stage1(1),
	combout => nx28963z16);

-- Location: LCCOMB_X30_Y21_N2
ix56547z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56547z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(5))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(5),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx56547z1);

-- Location: LCFF_X30_Y21_N3
reg_conv_table_2_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56547z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(5),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(5));

-- Location: LCFF_X32_Y21_N9
reg_conv_table_1_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(5));

-- Location: LCFF_X31_Y21_N31
reg_conv_table_0_1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(5));

-- Location: LCCOMB_X31_Y21_N26
ix28963z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z15 = (!valid_bits_stage1(2) & (!valid_bits_stage1(0) & (conv_table_0_1_a(5) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_1_a(5),
	datad => valid_bits_stage1(1),
	combout => nx28963z15);

-- Location: LCCOMB_X31_Y21_N12
ix28963z52945 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(5) = (nx28963z16) # ((nx28963z15) # ((nx42053z2 & conv_table_1_2_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z2,
	datab => conv_table_1_2_a(5),
	datac => nx28963z16,
	datad => nx28963z15,
	combout => i2_magnitude(5));

-- Location: LCCOMB_X30_Y21_N30
ix57544z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57544z1 = (row_index(1) & (mem_aix64056z29481_aauto_generated_aq_a(4))) # (!row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(4),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(4),
	combout => nx57544z1);

-- Location: LCFF_X30_Y21_N31
reg_conv_table_2_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx57544z1,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(4),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_1_a(4));

-- Location: LCFF_X33_Y21_N21
reg_conv_table_1_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_1_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_1_a(4));

-- Location: LCFF_X33_Y21_N11
reg_conv_table_0_1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_1_a(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_1_a(4));

-- Location: LCCOMB_X33_Y21_N28
ix28963z52953 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z20 = (!valid_bits_stage1(0) & (conv_table_0_1_a(4) & (!valid_bits_stage1(1) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_0_1_a(4),
	datac => valid_bits_stage1(1),
	datad => valid_bits_stage1(2),
	combout => nx28963z20);

-- Location: LCCOMB_X33_Y21_N18
ix28963z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z21 = (valid_bits_stage1(0) & (conv_table_1_0_a(4))) # (!valid_bits_stage1(0) & (((conv_table_2_1_a(4) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_0_a(4),
	datab => conv_table_2_1_a(4),
	datac => valid_bits_stage1(0),
	datad => valid_bits_stage1(1),
	combout => nx28963z21);

-- Location: LCCOMB_X32_Y24_N0
ix28963z52952 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(4) = (nx28963z20) # ((nx28963z21) # ((conv_table_1_2_a(4) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_2_a(4),
	datab => nx42053z2,
	datac => nx28963z20,
	datad => nx28963z21,
	combout => i2_magnitude(4));

-- Location: LCCOMB_X31_Y21_N20
ix28963z52957 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z23 = (!valid_bits_stage1(2) & (!valid_bits_stage1(1) & (conv_table_2_2_a(3) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(1),
	datac => conv_table_2_2_a(3),
	datad => valid_bits_stage1(0),
	combout => nx28963z23);

-- Location: LCCOMB_X30_Y21_N8
ix53406z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx53406z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(3)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_index(1),
	datab => mem_0_aix64056z29482_aauto_generated_aq_a(3),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx53406z1);

-- Location: LCFF_X30_Y21_N9
reg_conv_table_2_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53406z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(3),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(3));

-- Location: LCFF_X31_Y21_N7
reg_conv_table_1_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(3));

-- Location: LCFF_X31_Y21_N11
reg_conv_table_0_0_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(3));

-- Location: LCCOMB_X31_Y21_N10
ix28963z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z24 = (valid_bits_stage1(0) & (conv_table_0_2_a(3))) # (!valid_bits_stage1(0) & (((conv_table_0_0_a(3) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_2_a(3),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_0_a(3),
	datad => valid_bits_stage1(1),
	combout => nx28963z24);

-- Location: LCCOMB_X32_Y24_N2
ix28963z52956 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(3) = (nx28963z23) # ((nx28963z24) # ((conv_table_2_0_a(3) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_2_0_a(3),
	datab => nx42053z2,
	datac => nx28963z23,
	datad => nx28963z24,
	combout => i1_magnitude(3));

-- Location: LCCOMB_X31_Y24_N0
ix28963z52967 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z30 = (conv_table_0_1_a(2) & (!valid_bits_stage1(0) & (!valid_bits_stage1(2) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_1_a(2),
	datab => valid_bits_stage1(0),
	datac => valid_bits_stage1(2),
	datad => valid_bits_stage1(1),
	combout => nx28963z30);

-- Location: LCCOMB_X31_Y24_N16
ix28963z52966 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(2) = (nx28963z31) # ((nx28963z30) # ((nx42053z2 & conv_table_1_2_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z31,
	datab => nx42053z2,
	datac => conv_table_1_2_a(2),
	datad => nx28963z30,
	combout => i2_magnitude(2));

-- Location: LCCOMB_X31_Y23_N4
ix28963z52971 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z33 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_2_2_a(1) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_2_2_a(1),
	datad => valid_bits_stage1(0),
	combout => nx28963z33);

-- Location: LCCOMB_X31_Y23_N2
ix28963z52970 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(1) = (nx28963z34) # ((nx28963z33) # ((conv_table_2_0_a(1) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z34,
	datab => conv_table_2_0_a(1),
	datac => nx28963z33,
	datad => nx42053z2,
	combout => i1_magnitude(1));

-- Location: LCCOMB_X33_Y22_N28
ix28963z52978 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z38 = (!valid_bits_stage1(0) & (conv_table_0_1_a(0) & (!valid_bits_stage1(1) & !valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_0_1_a(0),
	datac => valid_bits_stage1(1),
	datad => valid_bits_stage1(2),
	combout => nx28963z38);

-- Location: LCCOMB_X32_Y22_N8
ix28963z52979 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z39 = (valid_bits_stage1(0) & (conv_table_1_0_a(0))) # (!valid_bits_stage1(0) & (((valid_bits_stage1(1) & conv_table_2_1_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(0),
	datab => conv_table_1_0_a(0),
	datac => valid_bits_stage1(1),
	datad => conv_table_2_1_a(0),
	combout => nx28963z39);

-- Location: LCCOMB_X33_Y22_N6
ix28963z52977 : cycloneii_lcell_comb
-- Equation(s):
-- i2_magnitude(0) = (nx28963z38) # ((nx28963z39) # ((conv_table_1_2_a(0) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_1_2_a(0),
	datab => nx28963z38,
	datac => nx42053z2,
	datad => nx28963z39,
	combout => i2_magnitude(0));

-- Location: LCCOMB_X32_Y24_N16
ix28963z52976 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z37 = CARRY((!i1_magnitude(0) & i2_magnitude(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_magnitude(0),
	datab => i2_magnitude(0),
	datad => VCC,
	cout => nx28963z37);

-- Location: LCCOMB_X32_Y24_N18
ix28963z52969 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z32 = CARRY((i2_magnitude(1) & (i1_magnitude(1) & !nx28963z37)) # (!i2_magnitude(1) & ((i1_magnitude(1)) # (!nx28963z37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(1),
	datab => i1_magnitude(1),
	datad => VCC,
	cin => nx28963z37,
	cout => nx28963z32);

-- Location: LCCOMB_X32_Y24_N20
ix28963z52962 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z27 = CARRY((i1_magnitude(2) & (i2_magnitude(2) & !nx28963z32)) # (!i1_magnitude(2) & ((i2_magnitude(2)) # (!nx28963z32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_magnitude(2),
	datab => i2_magnitude(2),
	datad => VCC,
	cin => nx28963z32,
	cout => nx28963z27);

-- Location: LCCOMB_X32_Y24_N22
ix28963z52955 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z22 = CARRY((i2_magnitude(3) & (i1_magnitude(3) & !nx28963z27)) # (!i2_magnitude(3) & ((i1_magnitude(3)) # (!nx28963z27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(3),
	datab => i1_magnitude(3),
	datad => VCC,
	cin => nx28963z27,
	cout => nx28963z22);

-- Location: LCCOMB_X32_Y24_N24
ix28963z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z17 = CARRY((i1_magnitude(4) & (i2_magnitude(4) & !nx28963z22)) # (!i1_magnitude(4) & ((i2_magnitude(4)) # (!nx28963z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_magnitude(4),
	datab => i2_magnitude(4),
	datad => VCC,
	cin => nx28963z22,
	cout => nx28963z17);

-- Location: LCCOMB_X32_Y24_N26
ix28963z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z12 = CARRY((i1_magnitude(5) & ((!nx28963z17) # (!i2_magnitude(5)))) # (!i1_magnitude(5) & (!i2_magnitude(5) & !nx28963z17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1_magnitude(5),
	datab => i2_magnitude(5),
	datad => VCC,
	cin => nx28963z17,
	cout => nx28963z12);

-- Location: LCCOMB_X32_Y24_N28
ix28963z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z7 = CARRY((i2_magnitude(6) & ((!nx28963z12) # (!i1_magnitude(6)))) # (!i2_magnitude(6) & (!i1_magnitude(6) & !nx28963z12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(6),
	datab => i1_magnitude(6),
	datad => VCC,
	cin => nx28963z12,
	cout => nx28963z7);

-- Location: LCCOMB_X32_Y24_N30
ix28963z52933 : cycloneii_lcell_comb
-- Equation(s):
-- not_rtlc0_copy_n346 = (i1_magnitude(7) & (nx28963z7 & i2_magnitude(7))) # (!i1_magnitude(7) & ((nx28963z7) # (i2_magnitude(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1_magnitude(7),
	datad => i2_magnitude(7),
	cin => nx28963z7,
	combout => not_rtlc0_copy_n346);

-- Location: LCCOMB_X32_Y24_N8
ix28963z52984 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(6) = (not_rtlc0_copy_n346 & ((i2_magnitude(6)))) # (!not_rtlc0_copy_n346 & (i1_magnitude(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i1_magnitude(6),
	datac => i2_magnitude(6),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(6));

-- Location: LCCOMB_X32_Y24_N10
ix28963z52986 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(5) = (not_rtlc0_copy_n346 & ((i2_magnitude(5)))) # (!not_rtlc0_copy_n346 & (i1_magnitude(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1_magnitude(5),
	datac => i2_magnitude(5),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(5));

-- Location: LCCOMB_X30_Y21_N12
ix54403z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54403z1 = (row_index(1) & ((mem_1_aix64056z29483_aauto_generated_aq_a(2)))) # (!row_index(1) & (mem_0_aix64056z29482_aauto_generated_aq_a(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(2),
	datab => row_index(1),
	datad => mem_1_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx54403z1);

-- Location: LCFF_X30_Y21_N13
reg_conv_table_2_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54403z1,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(2),
	sclr => i_reset_acombout,
	sload => row_index(2),
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_2_0_a(2));

-- Location: LCFF_X31_Y24_N13
reg_conv_table_1_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_2_0_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_1_0_a(2));

-- Location: LCFF_X31_Y24_N19
reg_conv_table_0_0_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => conv_table_1_0_a(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx59688z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => conv_table_0_0_a(2));

-- Location: LCCOMB_X31_Y24_N4
ix28963z52965 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z29 = (valid_bits_stage1(0) & (conv_table_0_2_a(2))) # (!valid_bits_stage1(0) & (((conv_table_0_0_a(2) & valid_bits_stage1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conv_table_0_2_a(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_0_0_a(2),
	datad => valid_bits_stage1(1),
	combout => nx28963z29);

-- Location: LCCOMB_X31_Y24_N26
ix28963z52964 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z28 = (!valid_bits_stage1(2) & (!valid_bits_stage1(0) & (conv_table_2_2_a(2) & !valid_bits_stage1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(2),
	datab => valid_bits_stage1(0),
	datac => conv_table_2_2_a(2),
	datad => valid_bits_stage1(1),
	combout => nx28963z28);

-- Location: LCCOMB_X31_Y24_N14
ix28963z52963 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(2) = (nx28963z29) # ((nx28963z28) # ((nx42053z2 & conv_table_2_0_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42053z2,
	datab => conv_table_2_0_a(2),
	datac => nx28963z29,
	datad => nx28963z28,
	combout => i1_magnitude(2));

-- Location: LCCOMB_X31_Y24_N8
ix28963z52992 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(2) = (not_rtlc0_copy_n346 & (i2_magnitude(2))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i2_magnitude(2),
	datac => i1_magnitude(2),
	datad => not_rtlc0_copy_n346,
	combout => max1_magnitude(2));

-- Location: LCCOMB_X31_Y23_N22
ix28963z52994 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(1) = (not_rtlc0_copy_n346 & (i2_magnitude(1))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(1),
	datac => not_rtlc0_copy_n346,
	datad => i1_magnitude(1),
	combout => max1_magnitude(1));

-- Location: LCCOMB_X33_Y22_N30
ix28963z52981 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z40 = (!valid_bits_stage1(1) & (!valid_bits_stage1(2) & (conv_table_2_2_a(0) & !valid_bits_stage1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(2),
	datac => conv_table_2_2_a(0),
	datad => valid_bits_stage1(0),
	combout => nx28963z40);

-- Location: LCCOMB_X33_Y22_N24
ix28963z52980 : cycloneii_lcell_comb
-- Equation(s):
-- i1_magnitude(0) = (nx28963z41) # ((nx28963z40) # ((conv_table_2_0_a(0) & nx42053z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28963z41,
	datab => conv_table_2_0_a(0),
	datac => nx42053z2,
	datad => nx28963z40,
	combout => i1_magnitude(0));

-- Location: LCCOMB_X33_Y22_N0
ix28963z52996 : cycloneii_lcell_comb
-- Equation(s):
-- max1_magnitude(0) = (not_rtlc0_copy_n346 & (i2_magnitude(0))) # (!not_rtlc0_copy_n346 & ((i1_magnitude(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2_magnitude(0),
	datac => not_rtlc0_copy_n346,
	datad => i1_magnitude(0),
	combout => max1_magnitude(0));

-- Location: LCCOMB_X32_Y23_N14
add2_magnitude_add9_4_ix28963z52995 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z48 = CARRY((add1(0) & max1_magnitude(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add1(0),
	datab => max1_magnitude(0),
	datad => VCC,
	cout => nx28963z48);

-- Location: LCCOMB_X32_Y23_N16
add2_magnitude_add9_4_ix28963z52993 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(1) = (add1(1) & ((max1_magnitude(1) & (nx28963z48 & VCC)) # (!max1_magnitude(1) & (!nx28963z48)))) # (!add1(1) & ((max1_magnitude(1) & (!nx28963z48)) # (!max1_magnitude(1) & ((nx28963z48) # (GND)))))
-- nx28963z47 = CARRY((add1(1) & (!max1_magnitude(1) & !nx28963z48)) # (!add1(1) & ((!nx28963z48) # (!max1_magnitude(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(1),
	datab => max1_magnitude(1),
	datad => VCC,
	cin => nx28963z48,
	combout => add2_magnitude(1),
	cout => nx28963z47);

-- Location: LCCOMB_X32_Y23_N18
add2_magnitude_add9_4_ix28963z52991 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(2) = ((add1(2) $ (max1_magnitude(2) $ (!nx28963z47)))) # (GND)
-- nx28963z46 = CARRY((add1(2) & ((max1_magnitude(2)) # (!nx28963z47))) # (!add1(2) & (max1_magnitude(2) & !nx28963z47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(2),
	datab => max1_magnitude(2),
	datad => VCC,
	cin => nx28963z47,
	combout => add2_magnitude(2),
	cout => nx28963z46);

-- Location: LCCOMB_X32_Y23_N20
add2_magnitude_add9_4_ix28963z52989 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(3) = (max1_magnitude(3) & ((add1(3) & (nx28963z46 & VCC)) # (!add1(3) & (!nx28963z46)))) # (!max1_magnitude(3) & ((add1(3) & (!nx28963z46)) # (!add1(3) & ((nx28963z46) # (GND)))))
-- nx28963z45 = CARRY((max1_magnitude(3) & (!add1(3) & !nx28963z46)) # (!max1_magnitude(3) & ((!nx28963z46) # (!add1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max1_magnitude(3),
	datab => add1(3),
	datad => VCC,
	cin => nx28963z46,
	combout => add2_magnitude(3),
	cout => nx28963z45);

-- Location: LCCOMB_X32_Y23_N22
add2_magnitude_add9_4_ix28963z52987 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(4) = ((max1_magnitude(4) $ (add1(4) $ (!nx28963z45)))) # (GND)
-- nx28963z44 = CARRY((max1_magnitude(4) & ((add1(4)) # (!nx28963z45))) # (!max1_magnitude(4) & (add1(4) & !nx28963z45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max1_magnitude(4),
	datab => add1(4),
	datad => VCC,
	cin => nx28963z45,
	combout => add2_magnitude(4),
	cout => nx28963z44);

-- Location: LCCOMB_X32_Y23_N24
add2_magnitude_add9_4_ix28963z52985 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(5) = (add1(5) & ((max1_magnitude(5) & (nx28963z44 & VCC)) # (!max1_magnitude(5) & (!nx28963z44)))) # (!add1(5) & ((max1_magnitude(5) & (!nx28963z44)) # (!max1_magnitude(5) & ((nx28963z44) # (GND)))))
-- nx28963z43 = CARRY((add1(5) & (!max1_magnitude(5) & !nx28963z44)) # (!add1(5) & ((!nx28963z44) # (!max1_magnitude(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(5),
	datab => max1_magnitude(5),
	datad => VCC,
	cin => nx28963z44,
	combout => add2_magnitude(5),
	cout => nx28963z43);

-- Location: LCCOMB_X32_Y23_N26
add2_magnitude_add9_4_ix28963z52983 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(6) = ((add1(6) $ (max1_magnitude(6) $ (!nx28963z43)))) # (GND)
-- nx28963z42 = CARRY((add1(6) & ((max1_magnitude(6)) # (!nx28963z43))) # (!add1(6) & (max1_magnitude(6) & !nx28963z43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add1(6),
	datab => max1_magnitude(6),
	datad => VCC,
	cin => nx28963z43,
	combout => add2_magnitude(6),
	cout => nx28963z42);

-- Location: LCCOMB_X32_Y23_N28
add2_magnitude_add9_4_ix28963z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(7) = (max1_magnitude(7) & ((add1(7) & (nx28963z42 & VCC)) # (!add1(7) & (!nx28963z42)))) # (!max1_magnitude(7) & ((add1(7) & (!nx28963z42)) # (!add1(7) & ((nx28963z42) # (GND)))))
-- nx28963z2 = CARRY((max1_magnitude(7) & (!add1(7) & !nx28963z42)) # (!max1_magnitude(7) & ((!nx28963z42) # (!add1(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => max1_magnitude(7),
	datab => add1(7),
	datad => VCC,
	cin => nx28963z42,
	combout => add2_magnitude(7),
	cout => nx28963z2);

-- Location: LCCOMB_X32_Y23_N30
ix28963z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx28963z1 = !nx28963z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx28963z2,
	combout => nx28963z1);

-- Location: LCCOMB_X32_Y23_N6
ix28963z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(9) = (nx42053z1 & nx28963z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx42053z1,
	datad => nx28963z1,
	combout => add2_magnitude(9));

-- Location: LCFF_X32_Y23_N7
reg_r3_magnitude_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(9),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(9));

-- Location: LCFF_X32_Y23_N29
reg_r3_magnitude_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(7),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(7));

-- Location: LCCOMB_X33_Y23_N22
ix2846z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(7) = (nx4840z1 & (r3_magnitude(7))) # (!nx4840z1 & ((r2_magnitude(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_magnitude(7),
	datac => r2_magnitude(7),
	datad => nx4840z1,
	combout => max2_magnitude(7));

-- Location: LCFF_X33_Y23_N23
reg_r2_magnitude_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(7),
	sdata => r3_magnitude(7),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(7));

-- Location: LCFF_X32_Y23_N27
reg_r3_magnitude_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(6),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(6));

-- Location: LCCOMB_X33_Y23_N26
ix852z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(5) = (nx4840z1 & (r3_magnitude(5))) # (!nx4840z1 & ((r2_magnitude(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(5),
	datac => r2_magnitude(5),
	datad => nx4840z1,
	combout => max2_magnitude(5));

-- Location: LCFF_X32_Y23_N25
reg_r3_magnitude_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(5),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(5));

-- Location: LCFF_X33_Y23_N27
reg_r2_magnitude_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(5),
	sdata => r3_magnitude(5),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(5));

-- Location: LCCOMB_X33_Y23_N28
ix65391z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(4) = (nx4840z1 & (r3_magnitude(4))) # (!nx4840z1 & ((r2_magnitude(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(4),
	datac => r2_magnitude(4),
	datad => nx4840z1,
	combout => max2_magnitude(4));

-- Location: LCFF_X32_Y23_N23
reg_r3_magnitude_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(4),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(4));

-- Location: LCFF_X33_Y23_N29
reg_r2_magnitude_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(4),
	sdata => r3_magnitude(4),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(4));

-- Location: LCCOMB_X35_Y23_N12
ix64394z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(3) = (nx4840z1 & (r3_magnitude(3))) # (!nx4840z1 & ((r2_magnitude(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(3),
	datac => r2_magnitude(3),
	datad => nx4840z1,
	combout => max2_magnitude(3));

-- Location: LCFF_X32_Y23_N21
reg_r3_magnitude_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(3),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(3));

-- Location: LCFF_X35_Y23_N13
reg_r2_magnitude_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(3),
	sdata => r3_magnitude(3),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(3));

-- Location: LCFF_X32_Y23_N19
reg_r3_magnitude_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(2),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(2));

-- Location: LCCOMB_X33_Y23_N30
ix62400z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(1) = (nx4840z1 & (r3_magnitude(1))) # (!nx4840z1 & ((r2_magnitude(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(1),
	datac => r2_magnitude(1),
	datad => nx4840z1,
	combout => max2_magnitude(1));

-- Location: LCFF_X32_Y23_N17
reg_r3_magnitude_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(1),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(1));

-- Location: LCFF_X33_Y23_N31
reg_r2_magnitude_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(1),
	sdata => r3_magnitude(1),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(1));

-- Location: LCCOMB_X32_Y23_N2
add2_magnitude_add9_4_ix37936z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(0) = add1(0) $ (max1_magnitude(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add1(0),
	datad => max1_magnitude(0),
	combout => add2_magnitude(0));

-- Location: LCFF_X32_Y23_N3
reg_r3_magnitude_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(0),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(0));

-- Location: LCCOMB_X35_Y23_N16
ix61403z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(0) = (nx4840z1 & (r3_magnitude(0))) # (!nx4840z1 & ((r2_magnitude(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_magnitude(0),
	datac => r2_magnitude(0),
	datad => nx4840z1,
	combout => max2_magnitude(0));

-- Location: LCFF_X35_Y23_N17
reg_r2_magnitude_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(0),
	sdata => r3_magnitude(0),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(0));

-- Location: LCCOMB_X33_Y23_N0
ix4840z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z10 = CARRY((r3_magnitude(0) & !r2_magnitude(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(0),
	datab => r2_magnitude(0),
	datad => VCC,
	cout => nx4840z10);

-- Location: LCCOMB_X33_Y23_N2
ix4840z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z9 = CARRY((r3_magnitude(1) & (r2_magnitude(1) & !nx4840z10)) # (!r3_magnitude(1) & ((r2_magnitude(1)) # (!nx4840z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(1),
	datab => r2_magnitude(1),
	datad => VCC,
	cin => nx4840z10,
	cout => nx4840z9);

-- Location: LCCOMB_X33_Y23_N4
ix4840z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z8 = CARRY((r2_magnitude(2) & (r3_magnitude(2) & !nx4840z9)) # (!r2_magnitude(2) & ((r3_magnitude(2)) # (!nx4840z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_magnitude(2),
	datab => r3_magnitude(2),
	datad => VCC,
	cin => nx4840z9,
	cout => nx4840z8);

-- Location: LCCOMB_X33_Y23_N6
ix4840z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z7 = CARRY((r3_magnitude(3) & (r2_magnitude(3) & !nx4840z8)) # (!r3_magnitude(3) & ((r2_magnitude(3)) # (!nx4840z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(3),
	datab => r2_magnitude(3),
	datad => VCC,
	cin => nx4840z8,
	cout => nx4840z7);

-- Location: LCCOMB_X33_Y23_N8
ix4840z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z6 = CARRY((r3_magnitude(4) & ((!nx4840z7) # (!r2_magnitude(4)))) # (!r3_magnitude(4) & (!r2_magnitude(4) & !nx4840z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(4),
	datab => r2_magnitude(4),
	datad => VCC,
	cin => nx4840z7,
	cout => nx4840z6);

-- Location: LCCOMB_X33_Y23_N10
ix4840z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z5 = CARRY((r3_magnitude(5) & (r2_magnitude(5) & !nx4840z6)) # (!r3_magnitude(5) & ((r2_magnitude(5)) # (!nx4840z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(5),
	datab => r2_magnitude(5),
	datad => VCC,
	cin => nx4840z6,
	cout => nx4840z5);

-- Location: LCCOMB_X33_Y23_N12
ix4840z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z4 = CARRY((r2_magnitude(6) & (r3_magnitude(6) & !nx4840z5)) # (!r2_magnitude(6) & ((r3_magnitude(6)) # (!nx4840z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_magnitude(6),
	datab => r3_magnitude(6),
	datad => VCC,
	cin => nx4840z5,
	cout => nx4840z4);

-- Location: LCCOMB_X33_Y23_N14
ix4840z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z3 = CARRY((r3_magnitude(7) & (r2_magnitude(7) & !nx4840z4)) # (!r3_magnitude(7) & ((r2_magnitude(7)) # (!nx4840z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(7),
	datab => r2_magnitude(7),
	datad => VCC,
	cin => nx4840z4,
	cout => nx4840z3);

-- Location: LCCOMB_X33_Y23_N16
ix4840z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z2 = CARRY((r3_magnitude(8) & ((!nx4840z3) # (!r2_magnitude(8)))) # (!r3_magnitude(8) & (!r2_magnitude(8) & !nx4840z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(8),
	datab => r2_magnitude(8),
	datad => VCC,
	cin => nx4840z3,
	cout => nx4840z2);

-- Location: LCCOMB_X33_Y23_N18
ix4840z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx4840z1 = (r2_magnitude(9) & (r3_magnitude(9) & nx4840z2)) # (!r2_magnitude(9) & ((r3_magnitude(9)) # (nx4840z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_magnitude(9),
	datab => r3_magnitude(9),
	cin => nx4840z2,
	combout => nx4840z1);

-- Location: LCCOMB_X35_Y23_N2
ix3843z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(8) = (nx4840z1 & (r3_magnitude(8))) # (!nx4840z1 & ((r2_magnitude(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(8),
	datac => r2_magnitude(8),
	datad => nx4840z1,
	combout => max2_magnitude(8));

-- Location: LCCOMB_X32_Y23_N8
ix29960z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add2_magnitude(8) = nx42053z1 $ (nx28963z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx42053z1,
	datad => nx28963z1,
	combout => add2_magnitude(8));

-- Location: LCFF_X32_Y23_N9
reg_r3_magnitude_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_magnitude(8),
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_magnitude(8));

-- Location: LCFF_X35_Y23_N3
reg_r2_magnitude_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(8),
	sdata => r3_magnitude(8),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(8));

-- Location: LCCOMB_X34_Y23_N0
r5_magnitude_a8_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a8_a_afeeder_combout = r2_magnitude(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2_magnitude(8),
	combout => r5_magnitude_a8_a_afeeder_combout);

-- Location: LCCOMB_X27_Y23_N4
ix34503z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34503z1 = (valid_bits_stage2(0)) # (i_reset_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_bits_stage2(0),
	datad => i_reset_acombout,
	combout => nx34503z1);

-- Location: LCFF_X34_Y23_N1
reg_r5_magnitude_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a8_a_afeeder_combout,
	sdata => r3_magnitude(8),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(8));

-- Location: LCFF_X30_Y23_N19
reg_r7_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(8),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_11_a);

-- Location: LCCOMB_X33_Y23_N24
ix1849z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_magnitude(6) = (nx4840z1 & (r3_magnitude(6))) # (!nx4840z1 & ((r2_magnitude(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_magnitude(6),
	datac => r2_magnitude(6),
	datad => nx4840z1,
	combout => max2_magnitude(6));

-- Location: LCFF_X33_Y23_N25
reg_r2_magnitude_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_magnitude(6),
	sdata => r3_magnitude(6),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_magnitude(6));

-- Location: LCCOMB_X34_Y23_N4
r5_magnitude_a6_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a6_a_afeeder_combout = r2_magnitude(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(6),
	combout => r5_magnitude_a6_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N5
reg_r5_magnitude_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a6_a_afeeder_combout,
	sdata => r3_magnitude(6),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(6));

-- Location: LCFF_X30_Y23_N15
reg_r7_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_9_a);

-- Location: LCCOMB_X34_Y23_N22
r5_magnitude_a5_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a5_a_afeeder_combout = r2_magnitude(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(5),
	combout => r5_magnitude_a5_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N23
reg_r5_magnitude_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a5_a_afeeder_combout,
	sdata => r3_magnitude(5),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(5));

-- Location: LCFF_X30_Y23_N13
reg_r7_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_8_a);

-- Location: LCCOMB_X34_Y23_N30
r5_magnitude_a1_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a1_a_afeeder_combout = r2_magnitude(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_magnitude(1),
	combout => r5_magnitude_a1_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N31
reg_r5_magnitude_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a1_a_afeeder_combout,
	sdata => r3_magnitude(1),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(1));

-- Location: LCFF_X30_Y23_N5
reg_r7_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_4_a);

-- Location: LCCOMB_X34_Y23_N8
r5_magnitude_a0_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_magnitude_a0_a_afeeder_combout = r2_magnitude(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_magnitude(0),
	combout => r5_magnitude_a0_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N9
reg_r5_magnitude_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_magnitude_a0_a_afeeder_combout,
	sdata => r3_magnitude(0),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_magnitude(0));

-- Location: LCFF_X30_Y23_N3
reg_r7_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r5_magnitude(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx21429z12,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_3_a);

-- Location: LCCOMB_X30_Y23_N2
ix40727z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z24 = CARRY((!add5_3_a & r7_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add5_3_a,
	datab => r7_3_a,
	datad => VCC,
	cout => nx40727z24);

-- Location: LCCOMB_X30_Y23_N4
ix40727z52947 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z23 = CARRY((add5_4_a & ((!nx40727z24) # (!r7_4_a))) # (!add5_4_a & (!r7_4_a & !nx40727z24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add5_4_a,
	datab => r7_4_a,
	datad => VCC,
	cin => nx40727z24,
	cout => nx40727z23);

-- Location: LCCOMB_X30_Y23_N6
ix40727z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z22 = CARRY((r7_5_a & ((!nx40727z23) # (!add5_5_a))) # (!r7_5_a & (!add5_5_a & !nx40727z23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_5_a,
	datab => add5_5_a,
	datad => VCC,
	cin => nx40727z23,
	cout => nx40727z22);

-- Location: LCCOMB_X30_Y23_N8
ix40727z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z21 = CARRY((r7_6_a & (add5_6_a & !nx40727z22)) # (!r7_6_a & ((add5_6_a) # (!nx40727z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_6_a,
	datab => add5_6_a,
	datad => VCC,
	cin => nx40727z22,
	cout => nx40727z21);

-- Location: LCCOMB_X30_Y23_N10
ix40727z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z20 = CARRY((r7_7_a & ((!nx40727z21) # (!add5_7_a))) # (!r7_7_a & (!add5_7_a & !nx40727z21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_7_a,
	datab => add5_7_a,
	datad => VCC,
	cin => nx40727z21,
	cout => nx40727z20);

-- Location: LCCOMB_X30_Y23_N12
ix40727z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z19 = CARRY((add5_8_a & ((!nx40727z20) # (!r7_8_a))) # (!add5_8_a & (!r7_8_a & !nx40727z20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add5_8_a,
	datab => r7_8_a,
	datad => VCC,
	cin => nx40727z20,
	cout => nx40727z19);

-- Location: LCCOMB_X30_Y23_N14
ix40727z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z18 = CARRY((add5_9_a & (r7_9_a & !nx40727z19)) # (!add5_9_a & ((r7_9_a) # (!nx40727z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add5_9_a,
	datab => r7_9_a,
	datad => VCC,
	cin => nx40727z19,
	cout => nx40727z18);

-- Location: LCCOMB_X30_Y23_N16
ix40727z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z17 = CARRY((r7_10_a & (add5_10_a & !nx40727z18)) # (!r7_10_a & ((add5_10_a) # (!nx40727z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_10_a,
	datab => add5_10_a,
	datad => VCC,
	cin => nx40727z18,
	cout => nx40727z17);

-- Location: LCCOMB_X30_Y23_N18
ix40727z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z16 = CARRY((add5_11_a & (r7_11_a & !nx40727z17)) # (!add5_11_a & ((r7_11_a) # (!nx40727z17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add5_11_a,
	datab => r7_11_a,
	datad => VCC,
	cin => nx40727z17,
	cout => nx40727z16);

-- Location: LCCOMB_X30_Y23_N20
ix40727z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z15 = CARRY((r7_12_a & (add5_12_a & !nx40727z16)) # (!r7_12_a & ((add5_12_a) # (!nx40727z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_12_a,
	datab => add5_12_a,
	datad => VCC,
	cin => nx40727z16,
	cout => nx40727z15);

-- Location: LCCOMB_X30_Y23_N22
ix40727z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z2 = (!nx40727z3 & !nx40727z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx40727z3,
	cin => nx40727z15,
	combout => nx40727z2);

-- Location: LCCOMB_X30_Y23_N24
ix40727z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx40727z1 = (valid_bits_stage2(2) & nx40727z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_bits_stage2(2),
	datad => nx40727z2,
	combout => nx40727z1);

-- Location: LCFF_X30_Y23_N25
reg_r_edge : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx40727z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_r_edge_aregout);

-- Location: LCCOMB_X28_Y23_N30
ix17193z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx17193z1 = (valid_bits_stage1(0) & (((!not_rtlc0_copy_n346)))) # (!valid_bits_stage1(0) & (!valid_bits_stage1(1) & ((not_rtlc0_copy_n346) # (!valid_bits_stage1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datac => not_rtlc0_copy_n346,
	datad => valid_bits_stage1(2),
	combout => nx17193z1);

-- Location: LCFF_X28_Y23_N31
reg_r3_direction_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx17193z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_direction(0));

-- Location: LCCOMB_X35_Y23_N24
ix48926z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_direction(0) = (nx4840z1 & (r3_direction(0))) # (!nx4840z1 & ((r2_direction(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_direction(0),
	datac => r2_direction(0),
	datad => nx4840z1,
	combout => max2_direction(0));

-- Location: LCFF_X35_Y23_N25
reg_r2_direction_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_direction(0),
	sdata => r3_direction(0),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_direction(0));

-- Location: LCCOMB_X34_Y23_N16
r5_direction_a0_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_direction_a0_a_afeeder_combout = r2_direction(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_direction(0),
	combout => r5_direction_a0_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N17
reg_r5_direction_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_direction_a0_a_afeeder_combout,
	sdata => r3_direction(0),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_direction(0));

-- Location: LCCOMB_X30_Y23_N0
ix63886z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix63886z52923_acombout = (reg_r_edge_aregout & r5_direction(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_r_edge_aregout,
	datad => r5_direction(0),
	combout => ix63886z52923_acombout);

-- Location: LCCOMB_X35_Y23_N18
ix47929z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_direction(1) = (nx4840z1 & (r3_direction(1))) # (!nx4840z1 & ((r2_direction(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_direction(1),
	datac => r2_direction(1),
	datad => nx4840z1,
	combout => max2_direction(1));

-- Location: LCCOMB_X28_Y23_N24
ix16196z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx16196z1 = (!valid_bits_stage1(0) & ((valid_bits_stage1(1)) # (!valid_bits_stage1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_bits_stage1(1),
	datab => valid_bits_stage1(0),
	datad => valid_bits_stage1(2),
	combout => nx16196z1);

-- Location: LCFF_X28_Y23_N25
reg_r3_direction_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx16196z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_direction(1));

-- Location: LCFF_X35_Y23_N19
reg_r2_direction_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_direction(1),
	sdata => r3_direction(1),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_direction(1));

-- Location: LCCOMB_X34_Y23_N26
r5_direction_a1_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_direction_a1_a_afeeder_combout = r2_direction(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_direction(1),
	combout => r5_direction_a1_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N27
reg_r5_direction_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_direction_a1_a_afeeder_combout,
	sdata => r3_direction(1),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_direction(1));

-- Location: LCCOMB_X36_Y23_N16
ix62889z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix62889z52923_acombout = (reg_r_edge_aregout & r5_direction(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_r_edge_aregout,
	datad => r5_direction(1),
	combout => ix62889z52923_acombout);

-- Location: LCFF_X32_Y24_N31
reg_r3_direction_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => not_rtlc0_copy_n346,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_direction(2));

-- Location: LCCOMB_X35_Y23_N4
ix46932z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_direction(2) = (nx4840z1 & (r3_direction(2))) # (!nx4840z1 & ((r2_direction(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_direction(2),
	datac => r2_direction(2),
	datad => nx4840z1,
	combout => max2_direction(2));

-- Location: LCFF_X35_Y23_N5
reg_r2_direction_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_direction(2),
	sdata => r3_direction(2),
	sclr => i_reset_acombout,
	sload => valid_bits_stage1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_direction(2));

-- Location: LCCOMB_X34_Y23_N12
r5_direction_a2_a_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_direction_a2_a_afeeder_combout = r2_direction(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_direction(2),
	combout => r5_direction_a2_a_afeeder_combout);

-- Location: LCFF_X34_Y23_N13
reg_r5_direction_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_direction_a2_a_afeeder_combout,
	sdata => r3_direction(2),
	sclr => i_reset_acombout,
	sload => nx4840z1,
	ena => nx34503z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_direction(2));

-- Location: LCCOMB_X36_Y23_N2
ix61892z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix61892z52923_acombout = (reg_r_edge_aregout & r5_direction(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_r_edge_aregout,
	datad => r5_direction(2),
	combout => ix61892z52923_acombout);

-- Location: LCCOMB_X28_Y23_N28
ix46359z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx46359z1 = (last_pixel_complete(0)) # ((modgen_counter_pixel_counter_aq(16) & valid_bits_stage1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(16),
	datac => last_pixel_complete(0),
	datad => valid_bits_stage1(3),
	combout => nx46359z1);

-- Location: LCFF_X28_Y23_N29
reg_last_pixel_complete_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46359z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_pixel_complete(0));

-- Location: LCCOMB_X28_Y23_N26
ix47356z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx47356z1 = (last_pixel_complete(1)) # ((reg_valid_bits_stage2_3_aregout & last_pixel_complete(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_valid_bits_stage2_3_aregout,
	datac => last_pixel_complete(1),
	datad => last_pixel_complete(0),
	combout => nx47356z1);

-- Location: LCFF_X28_Y23_N27
reg_last_pixel_complete_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx47356z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_pixel_complete(1));

-- Location: LCCOMB_X28_Y23_N18
ix45944z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx45944z1 = (nx59688z1) # ((reg_r_mode_1_aregout & (!last_pixel_complete(1) & reg_r_mode_0_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_r_mode_1_aregout,
	datab => last_pixel_complete(1),
	datac => reg_r_mode_0_aregout,
	datad => nx59688z1,
	combout => nx45944z1);

-- Location: LCFF_X28_Y23_N19
reg_r_mode_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45944z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_r_mode_0_aregout);

-- Location: LCCOMB_X30_Y23_N26
i_reset_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- i_reset_a_wirecell_combout = !i_reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_reset_acombout,
	combout => i_reset_a_wirecell_combout);

-- Location: LCFF_X30_Y23_N27
reg_r_mode_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_reset_a_wirecell_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_r_mode_1_aregout);

-- Location: LCCOMB_X28_Y23_N4
modgen_counter_pixel_counter_aix23078z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_10_a = (modgen_counter_pixel_counter_aq(10) & (modgen_counter_pixel_counter_anx23078z13 $ (GND))) # (!modgen_counter_pixel_counter_aq(10) & (!modgen_counter_pixel_counter_anx23078z13 & VCC))
-- modgen_counter_pixel_counter_anx23078z11 = CARRY((modgen_counter_pixel_counter_aq(10) & !modgen_counter_pixel_counter_anx23078z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(10),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z13,
	combout => modgen_counter_pixel_counter_ainc_d_10_a,
	cout => modgen_counter_pixel_counter_anx23078z11);

-- Location: LCFF_X28_Y23_N5
modgen_counter_pixel_counter_areg_q_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_10_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(10));

-- Location: LCCOMB_X28_Y23_N6
modgen_counter_pixel_counter_aix23078z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_11_a = (modgen_counter_pixel_counter_aq(11) & (!modgen_counter_pixel_counter_anx23078z11)) # (!modgen_counter_pixel_counter_aq(11) & ((modgen_counter_pixel_counter_anx23078z11) # (GND)))
-- modgen_counter_pixel_counter_anx23078z9 = CARRY((!modgen_counter_pixel_counter_anx23078z11) # (!modgen_counter_pixel_counter_aq(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(11),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z11,
	combout => modgen_counter_pixel_counter_ainc_d_11_a,
	cout => modgen_counter_pixel_counter_anx23078z9);

-- Location: LCFF_X28_Y23_N7
modgen_counter_pixel_counter_areg_q_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_11_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(11));

-- Location: LCCOMB_X28_Y23_N8
modgen_counter_pixel_counter_aix23078z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_12_a = (modgen_counter_pixel_counter_aq(12) & (modgen_counter_pixel_counter_anx23078z9 $ (GND))) # (!modgen_counter_pixel_counter_aq(12) & (!modgen_counter_pixel_counter_anx23078z9 & VCC))
-- modgen_counter_pixel_counter_anx23078z7 = CARRY((modgen_counter_pixel_counter_aq(12) & !modgen_counter_pixel_counter_anx23078z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_pixel_counter_aq(12),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z9,
	combout => modgen_counter_pixel_counter_ainc_d_12_a,
	cout => modgen_counter_pixel_counter_anx23078z7);

-- Location: LCFF_X28_Y23_N9
modgen_counter_pixel_counter_areg_q_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_12_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(12));

-- Location: LCCOMB_X28_Y23_N10
modgen_counter_pixel_counter_aix23078z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_13_a = (modgen_counter_pixel_counter_aq(13) & (!modgen_counter_pixel_counter_anx23078z7)) # (!modgen_counter_pixel_counter_aq(13) & ((modgen_counter_pixel_counter_anx23078z7) # (GND)))
-- modgen_counter_pixel_counter_anx23078z5 = CARRY((!modgen_counter_pixel_counter_anx23078z7) # (!modgen_counter_pixel_counter_aq(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(13),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z7,
	combout => modgen_counter_pixel_counter_ainc_d_13_a,
	cout => modgen_counter_pixel_counter_anx23078z5);

-- Location: LCFF_X28_Y23_N11
modgen_counter_pixel_counter_areg_q_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_13_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(13));

-- Location: LCCOMB_X28_Y23_N12
modgen_counter_pixel_counter_aix23078z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_pixel_counter_ainc_d_14_a = (modgen_counter_pixel_counter_aq(14) & (modgen_counter_pixel_counter_anx23078z5 $ (GND))) # (!modgen_counter_pixel_counter_aq(14) & (!modgen_counter_pixel_counter_anx23078z5 & VCC))
-- modgen_counter_pixel_counter_anx23078z3 = CARRY((modgen_counter_pixel_counter_aq(14) & !modgen_counter_pixel_counter_anx23078z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_pixel_counter_aq(14),
	datad => VCC,
	cin => modgen_counter_pixel_counter_anx23078z5,
	combout => modgen_counter_pixel_counter_ainc_d_14_a,
	cout => modgen_counter_pixel_counter_anx23078z3);

-- Location: LCFF_X28_Y23_N13
modgen_counter_pixel_counter_areg_q_14_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_14_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(14));

-- Location: LCFF_X28_Y23_N15
modgen_counter_pixel_counter_areg_q_15_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_pixel_counter_ainc_d_15_a,
	sclr => i_reset_acombout,
	ena => modgen_counter_pixel_counter_anx22081z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_pixel_counter_aq(15));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(2));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(5));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(6));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(7));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a8_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(8));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a9_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(9));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a10_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(10));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a11_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(11));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a12_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(12));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a13_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(13));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a14_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(14));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a15_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(15));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a16_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(16));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a17_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(17));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(0));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(1));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(2));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(3));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(4));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(5));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(0));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(1));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(2));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(0));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(1));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(2));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(3));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(0));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(1));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(2));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(3));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(1));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(0));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(1));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(2));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(0));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(1));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_valid_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_valid_bits_stage2_3_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_edge_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_r_edge_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ix63886z52923_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ix62889z52923_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ix61892z52923_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_r_mode_0_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_r_mode_1_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(0));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(2));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(3));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(5));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => modgen_counter_pixel_counter_aq(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a8_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a9_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a10_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a11_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a12_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a13_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a14_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a15_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a16_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a17_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));
END structure;


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
  chip : entity work.kirsch_chip
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

