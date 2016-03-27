//
// Verilog description for cell kirsch, 
// Sat Mar 26 22:52:53 2016
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire pixel_counter_16_, pixel_counter_7_, pixel_counter_6_, pixel_counter_5_, 
         pixel_counter_4_, pixel_counter_3_, pixel_counter_2_, pixel_counter_1_, 
         pixel_counter_0_;
    wire [1:0]last_pixel_complete;
    wire [2:1]row_index;
    wire [3:0]valid_bits_stage1;
    wire [2:0]valid_bits_stage2;
    wire [10:0]r1;
    wire [10:1]r4;
    wire [12:0]r6;
    wire r7_12_, r7_11_, r7_10_, r7_9_, r7_8_, r7_7_, r7_6_, r7_5_, r7_4_, r7_3_
         ;
    wire [8:0]add1;
    wire [10:0]add3;
    wire [12:0]add4;
    wire add5_13_, add5_12_, add5_11_, add5_10_, add5_9_, add5_8_, add5_7_, 
         add5_6_, add5_5_, add5_4_, add5_3_;
    wire [7:0]mem_out_0_;
    wire [7:0]mem_out_1_;
    wire [7:0]mem_out_2_;
    wire [7:0]conv_table_0__0_;
    wire [7:0]conv_table_0__1_;
    wire [7:0]conv_table_0__2_;
    wire [7:0]conv_table_1__0_;
    wire [7:0]conv_table_1__1_;
    wire [7:0]conv_table_1__2_;
    wire [7:0]conv_table_2__0_;
    wire [7:0]conv_table_2__1_;
    wire [7:0]conv_table_2__2_;
    wire [9:0]r2_magnitude;
    wire [2:0]r2_direction;
    wire [9:0]r3_magnitude;
    wire [2:0]r3_direction;
    wire [9:0]r5_magnitude;
    wire [2:0]r5_direction;
    wire [9:0]add2_magnitude;
    wire nx4840z1, nx40727z2, not_rtlc0_copy_n346, nx35831z11, nx35831z10, 
         nx35831z9, nx35831z8, nx35831z7, nx35831z6, nx35831z5, nx35831z4, 
         nx35831z2, nx35831z1, nx4840z10, nx4840z9, nx4840z8, nx4840z7, nx4840z6, 
         nx4840z5, nx4840z4, nx4840z3, nx4840z2, nx40727z24, nx40727z23, 
         nx40727z22, nx40727z21, nx40727z20, nx40727z19, nx40727z18, nx40727z17, 
         nx40727z16, nx40727z15, nx28963z37, nx28963z32, nx28963z27, nx28963z22, 
         nx28963z17, nx28963z12, nx28963z7, nx42053z37, nx42053z32, nx42053z27, 
         nx42053z22, nx42053z17, nx42053z12, nx42053z7, nx21429z11, nx21429z10, 
         nx21429z9, nx21429z8, nx21429z7, nx21429z6, nx21429z5, nx21429z4, 
         nx21429z3, nx21429z2, nx28963z48, nx28963z47, nx28963z46, nx28963z45, 
         nx28963z44, nx28963z43, nx28963z42, nx28963z2, nx40727z14, nx40727z13, 
         nx40727z12, nx40727z11, nx40727z10, nx40727z9, nx40727z8, nx40727z7, 
         nx40727z6, nx40727z5, nx40727z4, GND;
    wire [2:0]valid_wren;
    wire [7:0]i3;
    wire [7:0]i4;
    wire PWR, nx16196z1, nx42053z2, nx60779z2, nx22195z2, nx22195z3, nx40727z1, 
         nx46941z1, nx22195z7, nx22195z8;
    wire [7:0]i1_magnitude;
    wire [7:0]i2_magnitude;
    wire [7:0]max1_magnitude;
    wire [9:0]max2_magnitude;
    wire [2:0]max2_direction;
    wire nx56397z1, nx55400z1, nx54403z1, nx53406z1, nx52409z1, nx51412z1, 
         nx50415z1, nx49418z1, nx61532z1, nx60535z1, nx59538z1, nx58541z1, 
         nx57544z1, nx56547z1, nx55550z1, nx54553z1, nx34503z1, nx17193z1, 
         nx45944z1, nx43050z1, nx20426z1, nx46359z1, nx47356z1, nx59782z1, 
         nx60779z1, nx28963z40, nx28963z33, nx28963z28, nx28963z23, nx28963z18, 
         nx28963z13, nx28963z8, nx28963z3, nx28963z38, nx28963z35, nx28963z30, 
         nx28963z25, nx28963z20, nx28963z15, nx28963z10, nx28963z5, nx42053z38, 
         nx42053z35, nx42053z30, nx42053z25, nx42053z20, nx42053z15, nx42053z10, 
         nx42053z5, nx42053z40, nx42053z33, nx42053z28, nx42053z23, nx42053z18, 
         nx42053z13, nx42053z8, nx42053z3, a_3_, nx22195z6, nx35831z12, 
         nx21429z12, nx59688z1, nx60779z3, nx60779z4, nx28963z41, nx28963z39, 
         nx28963z34, nx28963z36, nx28963z29, nx28963z31, nx28963z24, nx28963z26, 
         nx28963z19, nx28963z21, nx28963z14, nx28963z16, nx28963z9, nx28963z11, 
         nx28963z4, nx28963z6, nx42053z41, nx42053z39, nx42053z34, nx42053z36, 
         nx42053z29, nx42053z31, nx42053z24, nx42053z26, nx42053z19, nx42053z21, 
         nx42053z14, nx42053z16, nx42053z9, nx42053z11, nx42053z4, nx42053z6, 
         nx22195z4, nx22195z5, nx22195z9, nx22195z1, nx59782z2, nx58785z1, 
         nx35831z3, nx42053z1, nx21429z1, nx28963z1, nx40727z3;
    wire [1418:0] xmplr_dummy ;




    modgen_counter_17_0 modgen_counter_pixel_counter (.clock (i_clock), .q ({
                        pixel_counter_16_,o_row[7],o_row[6],o_row[5],o_row[4],
                        o_row[3],o_row[2],o_row[1],o_row[0],pixel_counter_7_,
                        pixel_counter_6_,pixel_counter_5_,pixel_counter_4_,
                        pixel_counter_3_,pixel_counter_2_,pixel_counter_1_,
                        pixel_counter_0_}), .sclear (i_reset), .cnt_en (i_valid)
                        ) ;
    ram_dq_8_0 mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               mem_out_0_[7],mem_out_0_[6],mem_out_0_[5],mem_out_0_[4],
               mem_out_0_[3],mem_out_0_[2],mem_out_0_[1],mem_out_0_[0]}), .addr1 (
               {pixel_counter_7_,pixel_counter_6_,pixel_counter_5_,
               pixel_counter_4_,pixel_counter_3_,pixel_counter_2_,
               pixel_counter_1_,pixel_counter_0_}), .wr_clk1 (i_clock), .wr_ena1 (
               valid_wren[0])) ;
    ram_dq_8_1 mem_0 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               mem_out_1_[7],mem_out_1_[6],mem_out_1_[5],mem_out_1_[4],
               mem_out_1_[3],mem_out_1_[2],mem_out_1_[1],mem_out_1_[0]}), .addr1 (
               {pixel_counter_7_,pixel_counter_6_,pixel_counter_5_,
               pixel_counter_4_,pixel_counter_3_,pixel_counter_2_,
               pixel_counter_1_,pixel_counter_0_}), .wr_clk1 (i_clock), .wr_ena1 (
               valid_wren[1])) ;
    ram_dq_8_2 mem_1 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               mem_out_2_[7],mem_out_2_[6],mem_out_2_[5],mem_out_2_[4],
               mem_out_2_[3],mem_out_2_[2],mem_out_2_[1],mem_out_2_[0]}), .addr1 (
               {pixel_counter_7_,pixel_counter_6_,pixel_counter_5_,
               pixel_counter_4_,pixel_counter_3_,pixel_counter_2_,
               pixel_counter_1_,pixel_counter_0_}), .wr_clk1 (i_clock), .wr_ena1 (
               valid_wren[2])) ;
    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    assign nx46941z1 = ~i_reset ;
    TRI debug_led_red_triBus2_0_ (.out (debug_led_red[0]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_1_ (.out (debug_led_red[1]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_2_ (.out (debug_led_red[2]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_3_ (.out (debug_led_red[3]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_4_ (.out (debug_led_red[4]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_5_ (.out (debug_led_red[5]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_6_ (.out (debug_led_red[6]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_7_ (.out (debug_led_red[7]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_8_ (.out (debug_led_red[8]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_9_ (.out (debug_led_red[9]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_red_triBus2_10_ (.out (debug_led_red[10]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_11_ (.out (debug_led_red[11]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_12_ (.out (debug_led_red[12]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_13_ (.out (debug_led_red[13]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_14_ (.out (debug_led_red[14]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_15_ (.out (debug_led_red[15]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_16_ (.out (debug_led_red[16]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_red_triBus2_17_ (.out (debug_led_red[17]), .in (GND), .oe (GND
        )) ;
    TRI debug_led_grn_triBus3_0_ (.out (debug_led_grn[0]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_grn_triBus3_1_ (.out (debug_led_grn[1]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_grn_triBus3_2_ (.out (debug_led_grn[2]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_grn_triBus3_3_ (.out (debug_led_grn[3]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_grn_triBus3_4_ (.out (debug_led_grn[4]), .in (GND), .oe (GND)
        ) ;
    TRI debug_led_grn_triBus3_5_ (.out (debug_led_grn[5]), .in (GND), .oe (GND)
        ) ;
    TRI debug_num_0_triBus4_0_ (.out (debug_num_0[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_0_triBus4_1_ (.out (debug_num_0[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_0_triBus4_2_ (.out (debug_num_0[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_0_triBus4_3_ (.out (debug_num_0[3]), .in (GND), .oe (GND)) ;
    TRI debug_num_1_triBus5_0_ (.out (debug_num_1[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_1_triBus5_1_ (.out (debug_num_1[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_1_triBus5_2_ (.out (debug_num_1[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_1_triBus5_3_ (.out (debug_num_1[3]), .in (GND), .oe (GND)) ;
    TRI debug_num_2_triBus6_0_ (.out (debug_num_2[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_2_triBus6_1_ (.out (debug_num_2[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_2_triBus6_2_ (.out (debug_num_2[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_2_triBus6_3_ (.out (debug_num_2[3]), .in (GND), .oe (GND)) ;
    TRI debug_num_3_triBus7_0_ (.out (debug_num_3[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_3_triBus7_1_ (.out (debug_num_3[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_3_triBus7_2_ (.out (debug_num_3[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_3_triBus7_3_ (.out (debug_num_3[3]), .in (GND), .oe (GND)) ;
    TRI debug_num_4_triBus8_0_ (.out (debug_num_4[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_4_triBus8_1_ (.out (debug_num_4[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_4_triBus8_2_ (.out (debug_num_4[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_4_triBus8_3_ (.out (debug_num_4[3]), .in (GND), .oe (GND)) ;
    TRI debug_num_5_triBus9_0_ (.out (debug_num_5[0]), .in (GND), .oe (GND)) ;
    TRI debug_num_5_triBus9_1_ (.out (debug_num_5[1]), .in (GND), .oe (GND)) ;
    TRI debug_num_5_triBus9_2_ (.out (debug_num_5[2]), .in (GND), .oe (GND)) ;
    TRI debug_num_5_triBus9_3_ (.out (debug_num_5[3]), .in (GND), .oe (GND)) ;
    cycloneii_lcell_comb ix28963z52933 (.combout (not_rtlc0_copy_n346), .dataa (
                         i1_magnitude[7]), .datab (i2_magnitude[7]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z7)) ;
                         defparam ix28963z52933.lut_mask = 16'hd4d4;
                         defparam ix28963z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52934 (.cout (nx28963z7), .dataa (
                         i1_magnitude[6]), .datab (i2_magnitude[6]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z12)) ;
                         defparam ix28963z52934.lut_mask = 16'h00d4;
                         defparam ix28963z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52941 (.cout (nx28963z12), .dataa (
                         i1_magnitude[5]), .datab (i2_magnitude[5]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z17)) ;
                         defparam ix28963z52941.lut_mask = 16'h00d4;
                         defparam ix28963z52941.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52948 (.cout (nx28963z17), .dataa (
                         i1_magnitude[4]), .datab (i2_magnitude[4]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z22)) ;
                         defparam ix28963z52948.lut_mask = 16'h00d4;
                         defparam ix28963z52948.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52955 (.cout (nx28963z22), .dataa (
                         i1_magnitude[3]), .datab (i2_magnitude[3]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z27)) ;
                         defparam ix28963z52955.lut_mask = 16'h00d4;
                         defparam ix28963z52955.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52962 (.cout (nx28963z27), .dataa (
                         i1_magnitude[2]), .datab (i2_magnitude[2]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z32)) ;
                         defparam ix28963z52962.lut_mask = 16'h00d4;
                         defparam ix28963z52962.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52969 (.cout (nx28963z32), .dataa (
                         i1_magnitude[1]), .datab (i2_magnitude[1]), .datac (
                         1'b1), .datad (PWR), .cin (nx28963z37)) ;
                         defparam ix28963z52969.lut_mask = 16'h00d4;
                         defparam ix28963z52969.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52976 (.cout (nx28963z37), .dataa (
                         i2_magnitude[0]), .datab (i1_magnitude[0]), .datac (
                         1'b1), .datad (PWR)) ;
                         defparam ix28963z52976.lut_mask = 16'h0022;
    cycloneii_lcell_comb ix40727z52924 (.combout (nx40727z2), .dataa (nx40727z3)
                         , .datab (1'b1), .datac (1'b1), .datad (PWR), .cin (
                         nx40727z15)) ;
                         defparam ix40727z52924.lut_mask = 16'h5050;
                         defparam ix40727z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52939 (.cout (nx40727z15), .dataa (add5_12_), .datab (
                         r7_12_), .datac (1'b1), .datad (PWR), .cin (nx40727z16)
                         ) ;
                         defparam ix40727z52939.lut_mask = 16'h00d4;
                         defparam ix40727z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52940 (.cout (nx40727z16), .dataa (add5_11_), .datab (
                         r7_11_), .datac (1'b1), .datad (PWR), .cin (nx40727z17)
                         ) ;
                         defparam ix40727z52940.lut_mask = 16'h00d4;
                         defparam ix40727z52940.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52941 (.cout (nx40727z17), .dataa (add5_10_), .datab (
                         r7_10_), .datac (1'b1), .datad (PWR), .cin (nx40727z18)
                         ) ;
                         defparam ix40727z52941.lut_mask = 16'h00d4;
                         defparam ix40727z52941.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52942 (.cout (nx40727z18), .dataa (add5_9_), .datab (
                         r7_9_), .datac (1'b1), .datad (PWR), .cin (nx40727z19)
                         ) ;
                         defparam ix40727z52942.lut_mask = 16'h00d4;
                         defparam ix40727z52942.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52943 (.cout (nx40727z19), .dataa (add5_8_), .datab (
                         r7_8_), .datac (1'b1), .datad (PWR), .cin (nx40727z20)
                         ) ;
                         defparam ix40727z52943.lut_mask = 16'h00d4;
                         defparam ix40727z52943.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52944 (.cout (nx40727z20), .dataa (add5_7_), .datab (
                         r7_7_), .datac (1'b1), .datad (PWR), .cin (nx40727z21)
                         ) ;
                         defparam ix40727z52944.lut_mask = 16'h00d4;
                         defparam ix40727z52944.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52945 (.cout (nx40727z21), .dataa (add5_6_), .datab (
                         r7_6_), .datac (1'b1), .datad (PWR), .cin (nx40727z22)
                         ) ;
                         defparam ix40727z52945.lut_mask = 16'h00d4;
                         defparam ix40727z52945.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52946 (.cout (nx40727z22), .dataa (add5_5_), .datab (
                         r7_5_), .datac (1'b1), .datad (PWR), .cin (nx40727z23)
                         ) ;
                         defparam ix40727z52946.lut_mask = 16'h00d4;
                         defparam ix40727z52946.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52947 (.cout (nx40727z23), .dataa (add5_4_), .datab (
                         r7_4_), .datac (1'b1), .datad (PWR), .cin (nx40727z24)
                         ) ;
                         defparam ix40727z52947.lut_mask = 16'h00d4;
                         defparam ix40727z52947.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix40727z52948 (.cout (nx40727z24), .dataa (r7_3_), .datab (
                         add5_3_), .datac (1'b1), .datad (PWR)) ;
                         defparam ix40727z52948.lut_mask = 16'h0022;
    cycloneii_lcell_comb ix4840z52924 (.combout (nx4840z1), .dataa (
                         r2_magnitude[9]), .datab (r3_magnitude[9]), .datac (
                         1'b1), .datad (PWR), .cin (nx4840z2)) ;
                         defparam ix4840z52924.lut_mask = 16'hd4d4;
                         defparam ix4840z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52925 (.cout (nx4840z2), .dataa (r2_magnitude[8]
                         ), .datab (r3_magnitude[8]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z3)) ;
                         defparam ix4840z52925.lut_mask = 16'h00d4;
                         defparam ix4840z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52926 (.cout (nx4840z3), .dataa (r2_magnitude[7]
                         ), .datab (r3_magnitude[7]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z4)) ;
                         defparam ix4840z52926.lut_mask = 16'h00d4;
                         defparam ix4840z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52927 (.cout (nx4840z4), .dataa (r2_magnitude[6]
                         ), .datab (r3_magnitude[6]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z5)) ;
                         defparam ix4840z52927.lut_mask = 16'h00d4;
                         defparam ix4840z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52928 (.cout (nx4840z5), .dataa (r2_magnitude[5]
                         ), .datab (r3_magnitude[5]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z6)) ;
                         defparam ix4840z52928.lut_mask = 16'h00d4;
                         defparam ix4840z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52929 (.cout (nx4840z6), .dataa (r2_magnitude[4]
                         ), .datab (r3_magnitude[4]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z7)) ;
                         defparam ix4840z52929.lut_mask = 16'h00d4;
                         defparam ix4840z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52930 (.cout (nx4840z7), .dataa (r2_magnitude[3]
                         ), .datab (r3_magnitude[3]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z8)) ;
                         defparam ix4840z52930.lut_mask = 16'h00d4;
                         defparam ix4840z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52931 (.cout (nx4840z8), .dataa (r2_magnitude[2]
                         ), .datab (r3_magnitude[2]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z9)) ;
                         defparam ix4840z52931.lut_mask = 16'h00d4;
                         defparam ix4840z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52932 (.cout (nx4840z9), .dataa (r2_magnitude[1]
                         ), .datab (r3_magnitude[1]), .datac (1'b1), .datad (PWR
                         ), .cin (nx4840z10)) ;
                         defparam ix4840z52932.lut_mask = 16'h00d4;
                         defparam ix4840z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix4840z52933 (.cout (nx4840z10), .dataa (
                         r3_magnitude[0]), .datab (r2_magnitude[0]), .datac (
                         1'b1), .datad (PWR)) ;
                         defparam ix4840z52933.lut_mask = 16'h0022;
    cycloneii_lcell_ff reg_valid_bits_stage2_3_ (.regout (o_valid), .datain (
                       valid_bits_stage2[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage2_2_ (.regout (valid_bits_stage2[2])
                       , .datain (valid_bits_stage2[1]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage2_1_ (.regout (valid_bits_stage2[1])
                       , .datain (valid_bits_stage2[0]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage2_0_ (.regout (valid_bits_stage2[0])
                       , .datain (valid_bits_stage1[3]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage1_3_ (.regout (valid_bits_stage1[3])
                       , .datain (valid_bits_stage1[2]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage1_2_ (.regout (valid_bits_stage1[2])
                       , .datain (valid_bits_stage1[1]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage1_1_ (.regout (valid_bits_stage1[1])
                       , .datain (valid_bits_stage1[0]), .sdata (1'b0), .clk (
                       i_clock), .ena (1'b1), .aclr (1'b0), .sclr (nx22195z2), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_valid_bits_stage1_0_ (.regout (valid_bits_stage1[0])
                       , .datain (nx22195z1), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_row_index_2_ (.regout (row_index[2]), .datain (
                       nx60779z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_row_index_1_ (.regout (row_index[1]), .datain (
                       nx59782z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_row_index_0_ (.regout (nx59782z2), .datain (nx58785z1
                       ), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r_mode_1_ (.regout (o_mode[1]), .datain (nx46941z1), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r_mode_0_ (.regout (o_mode[0]), .datain (nx45944z1), 
                       .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r_edge (.regout (o_edge), .datain (nx40727z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_9_ (.regout (r7_9_), .datain (r5_magnitude[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_8_ (.regout (r7_8_), .datain (r5_magnitude[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_7_ (.regout (r7_7_), .datain (r5_magnitude[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_6_ (.regout (r7_6_), .datain (r5_magnitude[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_5_ (.regout (r7_5_), .datain (r5_magnitude[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_4_ (.regout (r7_4_), .datain (r5_magnitude[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_3_ (.regout (r7_3_), .datain (r5_magnitude[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_12_ (.regout (r7_12_), .datain (r5_magnitude[9]), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_11_ (.regout (r7_11_), .datain (r5_magnitude[8]), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r7_10_ (.regout (r7_10_), .datain (r5_magnitude[7]), 
                       .sdata (1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_9_ (.regout (r6[9]), .datain (add4[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_8_ (.regout (r6[8]), .datain (add4[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_7_ (.regout (r6[7]), .datain (add4[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_6_ (.regout (r6[6]), .datain (add4[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_5_ (.regout (r6[5]), .datain (add4[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_4_ (.regout (r6[4]), .datain (add4[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_3_ (.regout (r6[3]), .datain (add4[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_2_ (.regout (r6[2]), .datain (add4[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_12_ (.regout (r6[12]), .datain (nx21429z1), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_11_ (.regout (r6[11]), .datain (add4[11]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_10_ (.regout (r6[10]), .datain (add4[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_1_ (.regout (r6[1]), .datain (add4[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r6_0_ (.regout (r6[0]), .datain (add4[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx21429z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r5_magnitude_9_ (.regout (r5_magnitude[9]), .datain (
                       r2_magnitude[9]), .sdata (r3_magnitude[9]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_8_ (.regout (r5_magnitude[8]), .datain (
                       r2_magnitude[8]), .sdata (r3_magnitude[8]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_7_ (.regout (r5_magnitude[7]), .datain (
                       r2_magnitude[7]), .sdata (r3_magnitude[7]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_6_ (.regout (r5_magnitude[6]), .datain (
                       r2_magnitude[6]), .sdata (r3_magnitude[6]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_5_ (.regout (r5_magnitude[5]), .datain (
                       r2_magnitude[5]), .sdata (r3_magnitude[5]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_4_ (.regout (r5_magnitude[4]), .datain (
                       r2_magnitude[4]), .sdata (r3_magnitude[4]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_3_ (.regout (r5_magnitude[3]), .datain (
                       r2_magnitude[3]), .sdata (r3_magnitude[3]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_2_ (.regout (r5_magnitude[2]), .datain (
                       r2_magnitude[2]), .sdata (r3_magnitude[2]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_1_ (.regout (r5_magnitude[1]), .datain (
                       r2_magnitude[1]), .sdata (r3_magnitude[1]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_magnitude_0_ (.regout (r5_magnitude[0]), .datain (
                       r2_magnitude[0]), .sdata (r3_magnitude[0]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_direction_2_ (.regout (r5_direction[2]), .datain (
                       r2_direction[2]), .sdata (r3_direction[2]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_direction_1_ (.regout (r5_direction[1]), .datain (
                       r2_direction[1]), .sdata (r3_direction[1]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r5_direction_0_ (.regout (r5_direction[0]), .datain (
                       r2_direction[0]), .sdata (r3_direction[0]), .clk (i_clock
                       ), .ena (nx34503z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       nx4840z1)) ;
    cycloneii_lcell_ff reg_r4_9_ (.regout (r4[9]), .datain (add3[9]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_8_ (.regout (r4[8]), .datain (add3[8]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_7_ (.regout (r4[7]), .datain (add3[7]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_6_ (.regout (r4[6]), .datain (add3[6]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_5_ (.regout (r4[5]), .datain (add3[5]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_4_ (.regout (r4[4]), .datain (add3[4]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_3_ (.regout (r4[3]), .datain (add3[3]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_2_ (.regout (r4[2]), .datain (add3[2]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_10_ (.regout (r4[10]), .datain (add3[10]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_1_ (.regout (r4[1]), .datain (add3[1]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r4_0_ (.regout (add4[0]), .datain (add3[0]), .sdata (
                       1'b0), .clk (i_clock), .ena (nx35831z12), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_9_ (.regout (r3_magnitude[9]), .datain (
                       add2_magnitude[9]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_8_ (.regout (r3_magnitude[8]), .datain (
                       add2_magnitude[8]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_7_ (.regout (r3_magnitude[7]), .datain (
                       add2_magnitude[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_6_ (.regout (r3_magnitude[6]), .datain (
                       add2_magnitude[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_5_ (.regout (r3_magnitude[5]), .datain (
                       add2_magnitude[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_4_ (.regout (r3_magnitude[4]), .datain (
                       add2_magnitude[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_3_ (.regout (r3_magnitude[3]), .datain (
                       add2_magnitude[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_2_ (.regout (r3_magnitude[2]), .datain (
                       add2_magnitude[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_1_ (.regout (r3_magnitude[1]), .datain (
                       add2_magnitude[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_magnitude_0_ (.regout (r3_magnitude[0]), .datain (
                       add2_magnitude[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_direction_2_ (.regout (r3_direction[2]), .datain (
                       not_rtlc0_copy_n346), .sdata (1'b0), .clk (i_clock), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_direction_1_ (.regout (r3_direction[1]), .datain (
                       nx16196z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r3_direction_0_ (.regout (r3_direction[0]), .datain (
                       nx17193z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r2_magnitude_9_ (.regout (r2_magnitude[9]), .datain (
                       max2_magnitude[9]), .sdata (r3_magnitude[9]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_8_ (.regout (r2_magnitude[8]), .datain (
                       max2_magnitude[8]), .sdata (r3_magnitude[8]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_7_ (.regout (r2_magnitude[7]), .datain (
                       max2_magnitude[7]), .sdata (r3_magnitude[7]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_6_ (.regout (r2_magnitude[6]), .datain (
                       max2_magnitude[6]), .sdata (r3_magnitude[6]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_5_ (.regout (r2_magnitude[5]), .datain (
                       max2_magnitude[5]), .sdata (r3_magnitude[5]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_4_ (.regout (r2_magnitude[4]), .datain (
                       max2_magnitude[4]), .sdata (r3_magnitude[4]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_3_ (.regout (r2_magnitude[3]), .datain (
                       max2_magnitude[3]), .sdata (r3_magnitude[3]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_2_ (.regout (r2_magnitude[2]), .datain (
                       max2_magnitude[2]), .sdata (r3_magnitude[2]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_1_ (.regout (r2_magnitude[1]), .datain (
                       max2_magnitude[1]), .sdata (r3_magnitude[1]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_magnitude_0_ (.regout (r2_magnitude[0]), .datain (
                       max2_magnitude[0]), .sdata (r3_magnitude[0]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_direction_2_ (.regout (r2_direction[2]), .datain (
                       max2_direction[2]), .sdata (r3_direction[2]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_direction_1_ (.regout (r2_direction[1]), .datain (
                       max2_direction[1]), .sdata (r3_direction[1]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r2_direction_0_ (.regout (r2_direction[0]), .datain (
                       max2_direction[0]), .sdata (r3_direction[0]), .clk (
                       i_clock), .ena (PWR), .aclr (1'b0), .sclr (i_reset), .sload (
                       valid_bits_stage1[1])) ;
    cycloneii_lcell_ff reg_r1_9_ (.regout (r1[9]), .datain (nx43050z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_8_ (.regout (r1[8]), .datain (add3[8]), .sdata (
                       nx42053z1), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_7_ (.regout (r1[7]), .datain (add3[7]), .sdata (
                       add1[7]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_6_ (.regout (r1[6]), .datain (add3[6]), .sdata (
                       add1[6]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_5_ (.regout (r1[5]), .datain (add3[5]), .sdata (
                       add1[5]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_4_ (.regout (r1[4]), .datain (add3[4]), .sdata (
                       add1[4]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_3_ (.regout (r1[3]), .datain (add3[3]), .sdata (
                       add1[3]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_2_ (.regout (r1[2]), .datain (add3[2]), .sdata (
                       add1[2]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_10_ (.regout (r1[10]), .datain (nx20426z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r1_1_ (.regout (r1[1]), .datain (add3[1]), .sdata (
                       add1[1]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_r1_0_ (.regout (r1[0]), .datain (add3[0]), .sdata (
                       add1[0]), .clk (i_clock), .ena (PWR), .aclr (1'b0), .sclr (
                       i_reset), .sload (valid_bits_stage1[0])) ;
    cycloneii_lcell_ff reg_last_pixel_complete_1_ (.regout (
                       last_pixel_complete[1]), .datain (nx47356z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_last_pixel_complete_0_ (.regout (
                       last_pixel_complete[0]), .datain (nx46359z1), .sdata (
                       1'b0), .clk (i_clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       i_reset), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_conv_table_2__2__7_ (.regout (conv_table_2__2_[7]), .datain (
                       i_pixel[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__6_ (.regout (conv_table_2__2_[6]), .datain (
                       i_pixel[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__5_ (.regout (conv_table_2__2_[5]), .datain (
                       i_pixel[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__4_ (.regout (conv_table_2__2_[4]), .datain (
                       i_pixel[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__3_ (.regout (conv_table_2__2_[3]), .datain (
                       i_pixel[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__2_ (.regout (conv_table_2__2_[2]), .datain (
                       i_pixel[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__1_ (.regout (conv_table_2__2_[1]), .datain (
                       i_pixel[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__2__0_ (.regout (conv_table_2__2_[0]), .datain (
                       i_pixel[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_2__1__7_ (.regout (conv_table_2__1_[7]), .datain (
                       nx54553z1), .sdata (mem_out_1_[7]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__6_ (.regout (conv_table_2__1_[6]), .datain (
                       nx55550z1), .sdata (mem_out_1_[6]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__5_ (.regout (conv_table_2__1_[5]), .datain (
                       nx56547z1), .sdata (mem_out_1_[5]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__4_ (.regout (conv_table_2__1_[4]), .datain (
                       nx57544z1), .sdata (mem_out_1_[4]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__3_ (.regout (conv_table_2__1_[3]), .datain (
                       nx58541z1), .sdata (mem_out_1_[3]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__2_ (.regout (conv_table_2__1_[2]), .datain (
                       nx59538z1), .sdata (mem_out_1_[2]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__1_ (.regout (conv_table_2__1_[1]), .datain (
                       nx60535z1), .sdata (mem_out_1_[1]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__1__0_ (.regout (conv_table_2__1_[0]), .datain (
                       nx61532z1), .sdata (mem_out_1_[0]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__7_ (.regout (conv_table_2__0_[7]), .datain (
                       nx49418z1), .sdata (mem_out_0_[7]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__6_ (.regout (conv_table_2__0_[6]), .datain (
                       nx50415z1), .sdata (mem_out_0_[6]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__5_ (.regout (conv_table_2__0_[5]), .datain (
                       nx51412z1), .sdata (mem_out_0_[5]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__4_ (.regout (conv_table_2__0_[4]), .datain (
                       nx52409z1), .sdata (mem_out_0_[4]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__3_ (.regout (conv_table_2__0_[3]), .datain (
                       nx53406z1), .sdata (mem_out_0_[3]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__2_ (.regout (conv_table_2__0_[2]), .datain (
                       nx54403z1), .sdata (mem_out_0_[2]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__1_ (.regout (conv_table_2__0_[1]), .datain (
                       nx55400z1), .sdata (mem_out_0_[1]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_2__0__0_ (.regout (conv_table_2__0_[0]), .datain (
                       nx56397z1), .sdata (mem_out_0_[0]), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (
                       row_index[2])) ;
    cycloneii_lcell_ff reg_conv_table_1__2__7_ (.regout (conv_table_1__2_[7]), .datain (
                       conv_table_2__2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__6_ (.regout (conv_table_1__2_[6]), .datain (
                       conv_table_2__2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__5_ (.regout (conv_table_1__2_[5]), .datain (
                       conv_table_2__2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__4_ (.regout (conv_table_1__2_[4]), .datain (
                       conv_table_2__2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__3_ (.regout (conv_table_1__2_[3]), .datain (
                       conv_table_2__2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__2_ (.regout (conv_table_1__2_[2]), .datain (
                       conv_table_2__2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__1_ (.regout (conv_table_1__2_[1]), .datain (
                       conv_table_2__2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__2__0_ (.regout (conv_table_1__2_[0]), .datain (
                       conv_table_2__2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__7_ (.regout (conv_table_1__1_[7]), .datain (
                       conv_table_2__1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__6_ (.regout (conv_table_1__1_[6]), .datain (
                       conv_table_2__1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__5_ (.regout (conv_table_1__1_[5]), .datain (
                       conv_table_2__1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__4_ (.regout (conv_table_1__1_[4]), .datain (
                       conv_table_2__1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__3_ (.regout (conv_table_1__1_[3]), .datain (
                       conv_table_2__1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__2_ (.regout (conv_table_1__1_[2]), .datain (
                       conv_table_2__1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__1_ (.regout (conv_table_1__1_[1]), .datain (
                       conv_table_2__1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__1__0_ (.regout (conv_table_1__1_[0]), .datain (
                       conv_table_2__1_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__7_ (.regout (conv_table_1__0_[7]), .datain (
                       conv_table_2__0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__6_ (.regout (conv_table_1__0_[6]), .datain (
                       conv_table_2__0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__5_ (.regout (conv_table_1__0_[5]), .datain (
                       conv_table_2__0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__4_ (.regout (conv_table_1__0_[4]), .datain (
                       conv_table_2__0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__3_ (.regout (conv_table_1__0_[3]), .datain (
                       conv_table_2__0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__2_ (.regout (conv_table_1__0_[2]), .datain (
                       conv_table_2__0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__1_ (.regout (conv_table_1__0_[1]), .datain (
                       conv_table_2__0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_1__0__0_ (.regout (conv_table_1__0_[0]), .datain (
                       conv_table_2__0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__7_ (.regout (conv_table_0__2_[7]), .datain (
                       conv_table_1__2_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__6_ (.regout (conv_table_0__2_[6]), .datain (
                       conv_table_1__2_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__5_ (.regout (conv_table_0__2_[5]), .datain (
                       conv_table_1__2_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__4_ (.regout (conv_table_0__2_[4]), .datain (
                       conv_table_1__2_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__3_ (.regout (conv_table_0__2_[3]), .datain (
                       conv_table_1__2_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__2_ (.regout (conv_table_0__2_[2]), .datain (
                       conv_table_1__2_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__1_ (.regout (conv_table_0__2_[1]), .datain (
                       conv_table_1__2_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__2__0_ (.regout (conv_table_0__2_[0]), .datain (
                       conv_table_1__2_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__7_ (.regout (conv_table_0__1_[7]), .datain (
                       conv_table_1__1_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__6_ (.regout (conv_table_0__1_[6]), .datain (
                       conv_table_1__1_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__5_ (.regout (conv_table_0__1_[5]), .datain (
                       conv_table_1__1_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__4_ (.regout (conv_table_0__1_[4]), .datain (
                       conv_table_1__1_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__3_ (.regout (conv_table_0__1_[3]), .datain (
                       conv_table_1__1_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__2_ (.regout (conv_table_0__1_[2]), .datain (
                       conv_table_1__1_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__1_ (.regout (conv_table_0__1_[1]), .datain (
                       conv_table_1__1_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__1__0_ (.regout (conv_table_0__1_[0]), .datain (
                       conv_table_1__1_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__7_ (.regout (conv_table_0__0_[7]), .datain (
                       conv_table_1__0_[7]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__6_ (.regout (conv_table_0__0_[6]), .datain (
                       conv_table_1__0_[6]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__5_ (.regout (conv_table_0__0_[5]), .datain (
                       conv_table_1__0_[5]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__4_ (.regout (conv_table_0__0_[4]), .datain (
                       conv_table_1__0_[4]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__3_ (.regout (conv_table_0__0_[3]), .datain (
                       conv_table_1__0_[3]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__2_ (.regout (conv_table_0__0_[2]), .datain (
                       conv_table_1__0_[2]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__1_ (.regout (conv_table_0__0_[1]), .datain (
                       conv_table_1__0_[1]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_conv_table_0__0__0_ (.regout (conv_table_0__0_[0]), .datain (
                       conv_table_1__0_[0]), .sdata (1'b0), .clk (i_clock), .ena (
                       nx59688z1), .aclr (1'b0), .sclr (i_reset), .sload (1'b0)
                       ) ;
    cycloneii_lcell_comb ix40727z52925 (.combout (nx40727z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (PWR), .cin (add5_13_)) ;
                         defparam ix40727z52925.lut_mask = 16'hf0f0;
                         defparam ix40727z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix28963z52924 (.combout (nx28963z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (PWR), .cin (nx28963z2)) ;
                         defparam ix28963z52924.lut_mask = 16'hf0f0;
                         defparam ix28963z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix21429z52923 (.combout (nx21429z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (PWR), .cin (add4[12])) ;
                         defparam ix21429z52923.lut_mask = 16'hf0f0;
                         defparam ix21429z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix42053z52923 (.combout (nx42053z1), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (PWR), .cin (add1[8])) ;
                         defparam ix42053z52923.lut_mask = 16'hf0f0;
                         defparam ix42053z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix35831z52926 (.combout (nx35831z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (PWR), .cin (nx35831z4)) ;
                         defparam ix35831z52926.lut_mask = 16'hf0f0;
                         defparam ix35831z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52927 (.combout (add5_12_), .cout (
                         add5_13_), .dataa (r6[12]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx40727z4)) ;
                         defparam add5_add13_3_ix40727z52927.lut_mask = 16'h5aa0;
                         defparam add5_add13_3_ix40727z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52928 (.combout (add5_11_), .cout (
                         nx40727z4), .dataa (r6[11]), .datab (1'b1), .datac (
                         1'b1), .datad (PWR), .cin (nx40727z5)) ;
                         defparam add5_add13_3_ix40727z52928.lut_mask = 16'h5aa0;
                         defparam add5_add13_3_ix40727z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52929 (.combout (add5_10_), .cout (
                         nx40727z5), .dataa (r6[10]), .datab (1'b1), .datac (
                         1'b1), .datad (PWR), .cin (nx40727z6)) ;
                         defparam add5_add13_3_ix40727z52929.lut_mask = 16'h5aa0;
                         defparam add5_add13_3_ix40727z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52930 (.combout (add5_9_), .cout (
                         nx40727z6), .dataa (r6[9]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx40727z7)) ;
                         defparam add5_add13_3_ix40727z52930.lut_mask = 16'h5aa0;
                         defparam add5_add13_3_ix40727z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52931 (.combout (add5_8_), .cout (
                         nx40727z7), .dataa (r6[8]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx40727z8)) ;
                         defparam add5_add13_3_ix40727z52931.lut_mask = 16'ha5fa;
                         defparam add5_add13_3_ix40727z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52932 (.combout (add5_7_), .cout (
                         nx40727z8), .dataa (r6[7]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx40727z9)) ;
                         defparam add5_add13_3_ix40727z52932.lut_mask = 16'h5aa0;
                         defparam add5_add13_3_ix40727z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52933 (.combout (add5_6_), .cout (
                         nx40727z9), .dataa (r6[6]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx40727z10)) ;
                         defparam add5_add13_3_ix40727z52933.lut_mask = 16'ha5fa;
                         defparam add5_add13_3_ix40727z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52934 (.combout (add5_5_), .cout (
                         nx40727z10), .dataa (r6[5]), .datab (1'b1), .datac (
                         1'b1), .datad (PWR), .cin (nx40727z11)) ;
                         defparam add5_add13_3_ix40727z52934.lut_mask = 16'ha5fa;
                         defparam add5_add13_3_ix40727z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52935 (.combout (add5_4_), .cout (
                         nx40727z11), .dataa (r6[4]), .datab (1'b1), .datac (
                         1'b1), .datad (PWR), .cin (nx40727z12)) ;
                         defparam add5_add13_3_ix40727z52935.lut_mask = 16'ha5fa;
                         defparam add5_add13_3_ix40727z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52936 (.combout (add5_3_), .cout (
                         nx40727z12), .dataa (r6[3]), .datab (1'b1), .datac (
                         1'b1), .datad (PWR), .cin (nx40727z13)) ;
                         defparam add5_add13_3_ix40727z52936.lut_mask = 16'ha5fa;
                         defparam add5_add13_3_ix40727z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52937 (.cout (nx40727z13), .dataa (
                         r6[2]), .datab (1'b1), .datac (1'b1), .datad (PWR), .cin (
                         nx40727z14)) ;
                         defparam add5_add13_3_ix40727z52937.lut_mask = 16'h00fa;
                         defparam add5_add13_3_ix40727z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb add5_add13_3_ix40727z52938 (.cout (nx40727z14), .dataa (
                         r6[1]), .datab (r6[0]), .datac (1'b1), .datad (PWR)) ;
                         defparam add5_add13_3_ix40727z52938.lut_mask = 16'h00ee;
    cycloneii_lcell_comb add4_add11_2_ix21429z52924 (.combout (add4[11]), .cout (
                         add4[12]), .dataa (r4[10]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx21429z2)) ;
                         defparam add4_add11_2_ix21429z52924.lut_mask = 16'h5aa0;
                         defparam add4_add11_2_ix21429z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52925 (.combout (add4[10]), .cout (
                         nx21429z2), .dataa (r4[9]), .datab (r4[10]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z3)) ;
                         defparam add4_add11_2_ix21429z52925.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52926 (.combout (add4[9]), .cout (
                         nx21429z3), .dataa (r4[8]), .datab (r4[9]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z4)) ;
                         defparam add4_add11_2_ix21429z52926.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52927 (.combout (add4[8]), .cout (
                         nx21429z4), .dataa (r4[7]), .datab (r4[8]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z5)) ;
                         defparam add4_add11_2_ix21429z52927.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52928 (.combout (add4[7]), .cout (
                         nx21429z5), .dataa (r4[6]), .datab (r4[7]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z6)) ;
                         defparam add4_add11_2_ix21429z52928.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52929 (.combout (add4[6]), .cout (
                         nx21429z6), .dataa (r4[5]), .datab (r4[6]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z7)) ;
                         defparam add4_add11_2_ix21429z52929.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52930 (.combout (add4[5]), .cout (
                         nx21429z7), .dataa (r4[4]), .datab (r4[5]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z8)) ;
                         defparam add4_add11_2_ix21429z52930.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52931 (.combout (add4[4]), .cout (
                         nx21429z8), .dataa (r4[3]), .datab (r4[4]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z9)) ;
                         defparam add4_add11_2_ix21429z52931.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52932 (.combout (add4[3]), .cout (
                         nx21429z9), .dataa (r4[2]), .datab (r4[3]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z10)) ;
                         defparam add4_add11_2_ix21429z52932.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52933 (.combout (add4[2]), .cout (
                         nx21429z10), .dataa (r4[1]), .datab (r4[2]), .datac (
                         1'b1), .datad (PWR), .cin (nx21429z11)) ;
                         defparam add4_add11_2_ix21429z52933.lut_mask = 16'h96e8;
                         defparam add4_add11_2_ix21429z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb add4_add11_2_ix21429z52934 (.cout (nx21429z11), .dataa (
                         r4[1]), .datab (add4[0]), .datac (1'b1), .datad (PWR)
                         ) ;
                         defparam add4_add11_2_ix21429z52934.lut_mask = 16'h0088;
    cycloneii_lcell_comb add4_add11_2_ix58515z52923 (.combout (add4[1]), .dataa (
                         1'b1), .datab (1'b1), .datac (add4[0]), .datad (r4[1])
                         ) ;
                         defparam add4_add11_2_ix58515z52923.lut_mask = 16'h0ff0;
    cycloneii_lcell_comb add3_add11_0_ix35831z52923 (.combout (add3[10]), .dataa (
                         r1[10]), .datab (1'b1), .datac (1'b1), .datad (PWR), .cin (
                         nx35831z1)) ;
                         defparam add3_add11_0_ix35831z52923.lut_mask = 16'h5a5a;
                         defparam add3_add11_0_ix35831z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52924 (.combout (add3[9]), .cout (
                         nx35831z1), .dataa (r1[9]), .datab (1'b1), .datac (1'b1
                         ), .datad (PWR), .cin (nx35831z2)) ;
                         defparam add3_add11_0_ix35831z52924.lut_mask = 16'h5aa0;
                         defparam add3_add11_0_ix35831z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52925 (.combout (add3[8]), .cout (
                         nx35831z2), .dataa (r1[8]), .datab (nx35831z3), .datac (
                         1'b1), .datad (PWR), .cin (add1[8])) ;
                         defparam add3_add11_0_ix35831z52925.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52927 (.combout (add3[7]), .cout (
                         nx35831z4), .dataa (r1[7]), .datab (add1[7]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z5)) ;
                         defparam add3_add11_0_ix35831z52927.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52928 (.combout (add3[6]), .cout (
                         nx35831z5), .dataa (r1[6]), .datab (add1[6]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z6)) ;
                         defparam add3_add11_0_ix35831z52928.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52929 (.combout (add3[5]), .cout (
                         nx35831z6), .dataa (r1[5]), .datab (add1[5]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z7)) ;
                         defparam add3_add11_0_ix35831z52929.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52930 (.combout (add3[4]), .cout (
                         nx35831z7), .dataa (r1[4]), .datab (add1[4]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z8)) ;
                         defparam add3_add11_0_ix35831z52930.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52931 (.combout (add3[3]), .cout (
                         nx35831z8), .dataa (r1[3]), .datab (add1[3]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z9)) ;
                         defparam add3_add11_0_ix35831z52931.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52932 (.combout (add3[2]), .cout (
                         nx35831z9), .dataa (r1[2]), .datab (add1[2]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z10)) ;
                         defparam add3_add11_0_ix35831z52932.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52933 (.combout (add3[1]), .cout (
                         nx35831z10), .dataa (r1[1]), .datab (add1[1]), .datac (
                         1'b1), .datad (PWR), .cin (nx35831z11)) ;
                         defparam add3_add11_0_ix35831z52933.lut_mask = 16'h96e8;
                         defparam add3_add11_0_ix35831z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb add3_add11_0_ix35831z52934 (.combout (add3[0]), .cout (
                         nx35831z11), .dataa (add1[0]), .datab (r1[0]), .datac (
                         1'b1), .datad (PWR)) ;
                         defparam add3_add11_0_ix35831z52934.lut_mask = 16'h6688;
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52925 (.combout (
                         add2_magnitude[7]), .cout (nx28963z2), .dataa (
                         max1_magnitude[7]), .datab (add1[7]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z42)) ;
                         defparam add2_magnitude_add9_4_ix28963z52925.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52983 (.combout (
                         add2_magnitude[6]), .cout (nx28963z42), .dataa (
                         max1_magnitude[6]), .datab (add1[6]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z43)) ;
                         defparam add2_magnitude_add9_4_ix28963z52983.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52983.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52985 (.combout (
                         add2_magnitude[5]), .cout (nx28963z43), .dataa (
                         max1_magnitude[5]), .datab (add1[5]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z44)) ;
                         defparam add2_magnitude_add9_4_ix28963z52985.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52985.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52987 (.combout (
                         add2_magnitude[4]), .cout (nx28963z44), .dataa (
                         max1_magnitude[4]), .datab (add1[4]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z45)) ;
                         defparam add2_magnitude_add9_4_ix28963z52987.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52987.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52989 (.combout (
                         add2_magnitude[3]), .cout (nx28963z45), .dataa (
                         max1_magnitude[3]), .datab (add1[3]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z46)) ;
                         defparam add2_magnitude_add9_4_ix28963z52989.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52989.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52991 (.combout (
                         add2_magnitude[2]), .cout (nx28963z46), .dataa (
                         max1_magnitude[2]), .datab (add1[2]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z47)) ;
                         defparam add2_magnitude_add9_4_ix28963z52991.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52991.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52993 (.combout (
                         add2_magnitude[1]), .cout (nx28963z47), .dataa (
                         max1_magnitude[1]), .datab (add1[1]), .datac (1'b1), .datad (
                         PWR), .cin (nx28963z48)) ;
                         defparam add2_magnitude_add9_4_ix28963z52993.lut_mask = 16'h96e8;
                         defparam add2_magnitude_add9_4_ix28963z52993.sum_lutc_input = "cin";
    cycloneii_lcell_comb add2_magnitude_add9_4_ix28963z52995 (.cout (nx28963z48)
                         , .dataa (add1[0]), .datab (max1_magnitude[0]), .datac (
                         1'b1), .datad (PWR)) ;
                         defparam add2_magnitude_add9_4_ix28963z52995.lut_mask = 16'h0088;
    cycloneii_lcell_comb add2_magnitude_add9_4_ix37936z52923 (.combout (
                         add2_magnitude[0]), .dataa (1'b1), .datab (1'b1), .datac (
                         max1_magnitude[0]), .datad (add1[0])) ;
                         defparam add2_magnitude_add9_4_ix37936z52923.lut_mask = 16'h0ff0;
    cycloneii_lcell_comb add1_add8_1_ix42053z52924 (.combout (add1[7]), .cout (
                         add1[8]), .dataa (i4[7]), .datab (i3[7]), .datac (1'b1)
                         , .datad (PWR), .cin (nx42053z7)) ;
                         defparam add1_add8_1_ix42053z52924.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52924.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52932 (.combout (add1[6]), .cout (
                         nx42053z7), .dataa (i4[6]), .datab (i3[6]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z12)) ;
                         defparam add1_add8_1_ix42053z52932.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52939 (.combout (add1[5]), .cout (
                         nx42053z12), .dataa (i4[5]), .datab (i3[5]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z17)) ;
                         defparam add1_add8_1_ix42053z52939.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52946 (.combout (add1[4]), .cout (
                         nx42053z17), .dataa (i4[4]), .datab (i3[4]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z22)) ;
                         defparam add1_add8_1_ix42053z52946.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52946.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52953 (.combout (add1[3]), .cout (
                         nx42053z22), .dataa (i4[3]), .datab (i3[3]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z27)) ;
                         defparam add1_add8_1_ix42053z52953.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52953.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52960 (.combout (add1[2]), .cout (
                         nx42053z27), .dataa (i4[2]), .datab (i3[2]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z32)) ;
                         defparam add1_add8_1_ix42053z52960.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52960.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52967 (.combout (add1[1]), .cout (
                         nx42053z32), .dataa (i4[1]), .datab (i3[1]), .datac (
                         1'b1), .datad (PWR), .cin (nx42053z37)) ;
                         defparam add1_add8_1_ix42053z52967.lut_mask = 16'h96e8;
                         defparam add1_add8_1_ix42053z52967.sum_lutc_input = "cin";
    cycloneii_lcell_comb add1_add8_1_ix42053z52974 (.cout (nx42053z37), .dataa (
                         i3[0]), .datab (i4[0]), .datac (1'b1), .datad (PWR)) ;
                         defparam add1_add8_1_ix42053z52974.lut_mask = 16'h0088;
    cycloneii_lcell_comb add1_add8_1_ix35831z52935 (.combout (add1[0]), .dataa (
                         1'b1), .datab (1'b1), .datac (i4[0]), .datad (i3[0])) ;
                         defparam add1_add8_1_ix35831z52935.lut_mask = 16'h0ff0;
    cycloneii_lcell_comb ix22195z52923 (.combout (nx22195z1), .dataa (i_valid), 
                         .datab (nx22195z2), .datac (nx22195z7), .datad (
                         nx22195z8)) ;
                         defparam ix22195z52923.lut_mask = 16'h2000;
    cycloneii_lcell_comb ix22195z52932 (.combout (nx22195z9), .dataa (
                         pixel_counter_7_), .datab (pixel_counter_6_), .datac (
                         pixel_counter_5_), .datad (pixel_counter_4_)) ;
                         defparam ix22195z52932.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix22195z52928 (.combout (nx22195z5), .dataa (o_row[7])
                         , .datab (o_row[6]), .datac (pixel_counter_16_), .datad (
                         nx22195z6)) ;
                         defparam ix22195z52928.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix22195z52927 (.combout (nx22195z4), .dataa (
                         pixel_counter_5_), .datab (pixel_counter_4_), .datac (
                         pixel_counter_3_), .datad (pixel_counter_2_)) ;
                         defparam ix22195z52927.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix42053z52931 (.combout (nx42053z6), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[7]), .datad (conv_table_1__0_[7])) ;
                         defparam ix42053z52931.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52928 (.combout (nx42053z4), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[7]), .datad (conv_table_2__0_[7])) ;
                         defparam ix42053z52928.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52938 (.combout (nx42053z11), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[6]), .datad (conv_table_1__0_[6])) ;
                         defparam ix42053z52938.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52935 (.combout (nx42053z9), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[6]), .datad (conv_table_2__0_[6])) ;
                         defparam ix42053z52935.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52945 (.combout (nx42053z16), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[5]), .datad (conv_table_1__0_[5])) ;
                         defparam ix42053z52945.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52942 (.combout (nx42053z14), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[5]), .datad (conv_table_2__0_[5])) ;
                         defparam ix42053z52942.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52952 (.combout (nx42053z21), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[4]), .datad (conv_table_1__0_[4])) ;
                         defparam ix42053z52952.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52949 (.combout (nx42053z19), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[4]), .datad (conv_table_2__0_[4])) ;
                         defparam ix42053z52949.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52959 (.combout (nx42053z26), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[3]), .datad (conv_table_1__0_[3])) ;
                         defparam ix42053z52959.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52956 (.combout (nx42053z24), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[3]), .datad (conv_table_2__0_[3])) ;
                         defparam ix42053z52956.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52966 (.combout (nx42053z31), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[2]), .datad (conv_table_1__0_[2])) ;
                         defparam ix42053z52966.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52963 (.combout (nx42053z29), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[2]), .datad (conv_table_2__0_[2])) ;
                         defparam ix42053z52963.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52973 (.combout (nx42053z36), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[1]), .datad (conv_table_1__0_[1])) ;
                         defparam ix42053z52973.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52970 (.combout (nx42053z34), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[1]), .datad (conv_table_2__0_[1])) ;
                         defparam ix42053z52970.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52977 (.combout (nx42053z39), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[0]), .datad (conv_table_1__0_[0])) ;
                         defparam ix42053z52977.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix42053z52980 (.combout (nx42053z41), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__1_[0]), .datad (conv_table_2__0_[0])) ;
                         defparam ix42053z52980.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52932 (.combout (nx28963z6), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[7]), .datad (conv_table_2__1_[7])) ;
                         defparam ix28963z52932.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52929 (.combout (nx28963z4), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[7]), .datad (conv_table_0__2_[7])) ;
                         defparam ix28963z52929.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52940 (.combout (nx28963z11), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[6]), .datad (conv_table_2__1_[6])) ;
                         defparam ix28963z52940.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52937 (.combout (nx28963z9), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[6]), .datad (conv_table_0__2_[6])) ;
                         defparam ix28963z52937.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52947 (.combout (nx28963z16), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[5]), .datad (conv_table_2__1_[5])) ;
                         defparam ix28963z52947.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52944 (.combout (nx28963z14), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[5]), .datad (conv_table_0__2_[5])) ;
                         defparam ix28963z52944.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52954 (.combout (nx28963z21), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[4]), .datad (conv_table_2__1_[4])) ;
                         defparam ix28963z52954.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52951 (.combout (nx28963z19), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[4]), .datad (conv_table_0__2_[4])) ;
                         defparam ix28963z52951.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52961 (.combout (nx28963z26), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[3]), .datad (conv_table_2__1_[3])) ;
                         defparam ix28963z52961.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52958 (.combout (nx28963z24), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[3]), .datad (conv_table_0__2_[3])) ;
                         defparam ix28963z52958.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52968 (.combout (nx28963z31), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[2]), .datad (conv_table_2__1_[2])) ;
                         defparam ix28963z52968.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52965 (.combout (nx28963z29), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[2]), .datad (conv_table_0__2_[2])) ;
                         defparam ix28963z52965.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52975 (.combout (nx28963z36), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[1]), .datad (conv_table_2__1_[1])) ;
                         defparam ix28963z52975.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52972 (.combout (nx28963z34), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[1]), .datad (conv_table_0__2_[1])) ;
                         defparam ix28963z52972.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix28963z52979 (.combout (nx28963z39), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_1__0_[0]), .datad (conv_table_2__1_[0])) ;
                         defparam ix28963z52979.lut_mask = 16'he2c0;
    cycloneii_lcell_comb ix28963z52982 (.combout (nx28963z41), .dataa (
                         valid_bits_stage1[1]), .datab (valid_bits_stage1[0]), .datac (
                         conv_table_0__0_[0]), .datad (conv_table_0__2_[0])) ;
                         defparam ix28963z52982.lut_mask = 16'hec20;
    cycloneii_lcell_comb ix60779z52926 (.combout (nx60779z4), .dataa (
                         pixel_counter_4_), .datab (pixel_counter_3_), .datac (
                         pixel_counter_2_), .datad (pixel_counter_1_)) ;
                         defparam ix60779z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix60779z52925 (.combout (nx60779z3), .dataa (i_valid), 
                         .datab (pixel_counter_7_), .datac (pixel_counter_6_), .datad (
                         pixel_counter_5_)) ;
                         defparam ix60779z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix59688z52923 (.combout (nx59688z1), .dataa (i_reset), 
                         .datab (i_valid), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix59688z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix21429z52935 (.combout (nx21429z12), .dataa (i_reset)
                         , .datab (valid_bits_stage2[1]), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix21429z52935.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix35831z52936 (.combout (nx35831z12), .dataa (i_reset)
                         , .datab (valid_bits_stage1[3]), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix35831z52936.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix22195z52929 (.combout (nx22195z6), .dataa (o_row[5])
                         , .datab (o_row[4]), .datac (o_row[3]), .datad (
                         o_row[2])) ;
                         defparam ix22195z52929.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix22195z52926 (.combout (a_3_), .dataa (
                         pixel_counter_7_), .datab (pixel_counter_6_), .datac (
                         1'b1), .datad (1'b1)) ;
                         defparam ix22195z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix42053z52927 (.combout (nx42053z3), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[7])) ;
                         defparam ix42053z52927.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52934 (.combout (nx42053z8), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[6])) ;
                         defparam ix42053z52934.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52941 (.combout (nx42053z13), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[5])) ;
                         defparam ix42053z52941.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52948 (.combout (nx42053z18), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[4])) ;
                         defparam ix42053z52948.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52955 (.combout (nx42053z23), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[3])) ;
                         defparam ix42053z52955.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52962 (.combout (nx42053z28), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[2])) ;
                         defparam ix42053z52962.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52969 (.combout (nx42053z33), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[1])) ;
                         defparam ix42053z52969.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52979 (.combout (nx42053z40), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__2_[0])) ;
                         defparam ix42053z52979.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52930 (.combout (nx42053z5), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[7])) ;
                         defparam ix42053z52930.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52937 (.combout (nx42053z10), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[6])) ;
                         defparam ix42053z52937.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52944 (.combout (nx42053z15), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[5])) ;
                         defparam ix42053z52944.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52951 (.combout (nx42053z20), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[4])) ;
                         defparam ix42053z52951.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52958 (.combout (nx42053z25), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[3])) ;
                         defparam ix42053z52958.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52965 (.combout (nx42053z30), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[2])) ;
                         defparam ix42053z52965.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52972 (.combout (nx42053z35), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[1])) ;
                         defparam ix42053z52972.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix42053z52976 (.combout (nx42053z38), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_1__2_[0])) ;
                         defparam ix42053z52976.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52931 (.combout (nx28963z5), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[7])) ;
                         defparam ix28963z52931.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52939 (.combout (nx28963z10), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[6])) ;
                         defparam ix28963z52939.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52946 (.combout (nx28963z15), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[5])) ;
                         defparam ix28963z52946.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52953 (.combout (nx28963z20), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[4])) ;
                         defparam ix28963z52953.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52960 (.combout (nx28963z25), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[3])) ;
                         defparam ix28963z52960.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52967 (.combout (nx28963z30), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[2])) ;
                         defparam ix28963z52967.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52974 (.combout (nx28963z35), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[1])) ;
                         defparam ix28963z52974.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52978 (.combout (nx28963z38), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_0__1_[0])) ;
                         defparam ix28963z52978.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52928 (.combout (nx28963z3), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[7])) ;
                         defparam ix28963z52928.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52936 (.combout (nx28963z8), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[6])) ;
                         defparam ix28963z52936.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52943 (.combout (nx28963z13), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[5])) ;
                         defparam ix28963z52943.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52950 (.combout (nx28963z18), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[4])) ;
                         defparam ix28963z52950.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52957 (.combout (nx28963z23), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[3])) ;
                         defparam ix28963z52957.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52964 (.combout (nx28963z28), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[2])) ;
                         defparam ix28963z52964.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52971 (.combout (nx28963z33), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[1])) ;
                         defparam ix28963z52971.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix28963z52981 (.combout (nx28963z40), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (conv_table_2__2_[0])) ;
                         defparam ix28963z52981.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix60779z52923 (.combout (nx60779z1), .dataa (
                         row_index[2]), .datab (row_index[1]), .datac (nx60779z2
                         ), .datad (1'b1)) ;
                         defparam ix60779z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix59782z52923 (.combout (nx59782z1), .dataa (
                         row_index[1]), .datab (nx59782z2), .datac (nx60779z2), 
                         .datad (1'b1)) ;
                         defparam ix59782z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix58785z52923 (.combout (nx58785z1), .dataa (
                         row_index[2]), .datab (nx59782z2), .datac (nx60779z2), 
                         .datad (1'b1)) ;
                         defparam ix58785z52923.lut_mask = 16'h5c5c;
    cycloneii_lcell_comb ix47356z52923 (.combout (nx47356z1), .dataa (o_valid), 
                         .datab (last_pixel_complete[1]), .datac (
                         last_pixel_complete[0]), .datad (1'b1)) ;
                         defparam ix47356z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix46359z52923 (.combout (nx46359z1), .dataa (
                         pixel_counter_16_), .datab (last_pixel_complete[0]), .datac (
                         valid_bits_stage1[3]), .datad (1'b1)) ;
                         defparam ix46359z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix20426z52923 (.combout (nx20426z1), .dataa (i_reset), 
                         .datab (valid_bits_stage1[0]), .datac (add3[10]), .datad (
                         1'b1)) ;
                         defparam ix20426z52923.lut_mask = 16'h1010;
    cycloneii_lcell_comb ix43050z52923 (.combout (nx43050z1), .dataa (i_reset), 
                         .datab (valid_bits_stage1[0]), .datac (add3[9]), .datad (
                         1'b1)) ;
                         defparam ix43050z52923.lut_mask = 16'h1010;
    cycloneii_lcell_comb ix45944z52923 (.combout (nx45944z1), .dataa (o_mode[1])
                         , .datab (o_mode[0]), .datac (last_pixel_complete[1]), 
                         .datad (nx59688z1)) ;
                         defparam ix45944z52923.lut_mask = 16'hff08;
    cycloneii_lcell_comb ix17193z52923 (.combout (nx17193z1), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (not_rtlc0_copy_n346)) ;
                         defparam ix17193z52923.lut_mask = 16'h03f1;
    cycloneii_lcell_comb ix34503z52923 (.combout (nx34503z1), .dataa (i_reset), 
                         .datab (valid_bits_stage2[0]), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix34503z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix54553z52923 (.combout (nx54553z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[7]), .datac (
                         mem_out_2_[7]), .datad (1'b1)) ;
                         defparam ix54553z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix55550z52923 (.combout (nx55550z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[6]), .datac (
                         mem_out_2_[6]), .datad (1'b1)) ;
                         defparam ix55550z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix56547z52923 (.combout (nx56547z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[5]), .datac (
                         mem_out_2_[5]), .datad (1'b1)) ;
                         defparam ix56547z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix57544z52923 (.combout (nx57544z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[4]), .datac (
                         mem_out_2_[4]), .datad (1'b1)) ;
                         defparam ix57544z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix58541z52923 (.combout (nx58541z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[3]), .datac (
                         mem_out_2_[3]), .datad (1'b1)) ;
                         defparam ix58541z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix59538z52923 (.combout (nx59538z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[2]), .datac (
                         mem_out_2_[2]), .datad (1'b1)) ;
                         defparam ix59538z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix60535z52923 (.combout (nx60535z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[1]), .datac (
                         mem_out_2_[1]), .datad (1'b1)) ;
                         defparam ix60535z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix61532z52923 (.combout (nx61532z1), .dataa (
                         row_index[1]), .datab (mem_out_0_[0]), .datac (
                         mem_out_2_[0]), .datad (1'b1)) ;
                         defparam ix61532z52923.lut_mask = 16'hd8d8;
    cycloneii_lcell_comb ix49418z52923 (.combout (nx49418z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[7]), .datac (
                         mem_out_2_[7]), .datad (1'b1)) ;
                         defparam ix49418z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix50415z52923 (.combout (nx50415z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[6]), .datac (
                         mem_out_2_[6]), .datad (1'b1)) ;
                         defparam ix50415z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix51412z52923 (.combout (nx51412z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[5]), .datac (
                         mem_out_2_[5]), .datad (1'b1)) ;
                         defparam ix51412z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix52409z52923 (.combout (nx52409z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[4]), .datac (
                         mem_out_2_[4]), .datad (1'b1)) ;
                         defparam ix52409z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix53406z52923 (.combout (nx53406z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[3]), .datac (
                         mem_out_2_[3]), .datad (1'b1)) ;
                         defparam ix53406z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix54403z52923 (.combout (nx54403z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[2]), .datac (
                         mem_out_2_[2]), .datad (1'b1)) ;
                         defparam ix54403z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix55400z52923 (.combout (nx55400z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[1]), .datac (
                         mem_out_2_[1]), .datad (1'b1)) ;
                         defparam ix55400z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix56397z52923 (.combout (nx56397z1), .dataa (
                         row_index[1]), .datab (mem_out_1_[0]), .datac (
                         mem_out_2_[0]), .datad (1'b1)) ;
                         defparam ix56397z52923.lut_mask = 16'he4e4;
    cycloneii_lcell_comb ix48926z52923 (.combout (max2_direction[0]), .dataa (
                         r2_direction[0]), .datab (r3_direction[0]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix48926z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix47929z52923 (.combout (max2_direction[1]), .dataa (
                         r2_direction[1]), .datab (r3_direction[1]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix47929z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix46932z52923 (.combout (max2_direction[2]), .dataa (
                         r2_direction[2]), .datab (r3_direction[2]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix46932z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix61403z52923 (.combout (max2_magnitude[0]), .dataa (
                         r2_magnitude[0]), .datab (r3_magnitude[0]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix61403z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix62400z52923 (.combout (max2_magnitude[1]), .dataa (
                         r2_magnitude[1]), .datab (r3_magnitude[1]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix62400z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix63397z52923 (.combout (max2_magnitude[2]), .dataa (
                         r2_magnitude[2]), .datab (r3_magnitude[2]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix63397z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix64394z52923 (.combout (max2_magnitude[3]), .dataa (
                         r2_magnitude[3]), .datab (r3_magnitude[3]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix64394z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix65391z52923 (.combout (max2_magnitude[4]), .dataa (
                         r2_magnitude[4]), .datab (r3_magnitude[4]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix65391z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix852z52923 (.combout (max2_magnitude[5]), .dataa (
                         r2_magnitude[5]), .datab (r3_magnitude[5]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix852z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix1849z52923 (.combout (max2_magnitude[6]), .dataa (
                         r2_magnitude[6]), .datab (r3_magnitude[6]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix1849z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix2846z52923 (.combout (max2_magnitude[7]), .dataa (
                         r2_magnitude[7]), .datab (r3_magnitude[7]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix2846z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix3843z52923 (.combout (max2_magnitude[8]), .dataa (
                         r2_magnitude[8]), .datab (r3_magnitude[8]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix3843z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix4840z52923 (.combout (max2_magnitude[9]), .dataa (
                         r2_magnitude[9]), .datab (r3_magnitude[9]), .datac (
                         nx4840z1), .datad (1'b1)) ;
                         defparam ix4840z52923.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52996 (.combout (max1_magnitude[0]), .dataa (
                         i1_magnitude[0]), .datab (i2_magnitude[0]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52996.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52994 (.combout (max1_magnitude[1]), .dataa (
                         i1_magnitude[1]), .datab (i2_magnitude[1]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52994.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52992 (.combout (max1_magnitude[2]), .dataa (
                         i1_magnitude[2]), .datab (i2_magnitude[2]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52992.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52990 (.combout (max1_magnitude[3]), .dataa (
                         i1_magnitude[3]), .datab (i2_magnitude[3]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52990.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52988 (.combout (max1_magnitude[4]), .dataa (
                         i1_magnitude[4]), .datab (i2_magnitude[4]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52988.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52986 (.combout (max1_magnitude[5]), .dataa (
                         i1_magnitude[5]), .datab (i2_magnitude[5]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52986.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52984 (.combout (max1_magnitude[6]), .dataa (
                         i1_magnitude[6]), .datab (i2_magnitude[6]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52984.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52926 (.combout (max1_magnitude[7]), .dataa (
                         i1_magnitude[7]), .datab (i2_magnitude[7]), .datac (
                         not_rtlc0_copy_n346), .datad (1'b1)) ;
                         defparam ix28963z52926.lut_mask = 16'hcaca;
    cycloneii_lcell_comb ix28963z52977 (.combout (i2_magnitude[0]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[0]), .datac (
                         nx28963z38), .datad (nx28963z39)) ;
                         defparam ix28963z52977.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52973 (.combout (i2_magnitude[1]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[1]), .datac (
                         nx28963z35), .datad (nx28963z36)) ;
                         defparam ix28963z52973.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52966 (.combout (i2_magnitude[2]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[2]), .datac (
                         nx28963z30), .datad (nx28963z31)) ;
                         defparam ix28963z52966.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52959 (.combout (i2_magnitude[3]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[3]), .datac (
                         nx28963z25), .datad (nx28963z26)) ;
                         defparam ix28963z52959.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52952 (.combout (i2_magnitude[4]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[4]), .datac (
                         nx28963z20), .datad (nx28963z21)) ;
                         defparam ix28963z52952.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52945 (.combout (i2_magnitude[5]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[5]), .datac (
                         nx28963z15), .datad (nx28963z16)) ;
                         defparam ix28963z52945.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52938 (.combout (i2_magnitude[6]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[6]), .datac (
                         nx28963z10), .datad (nx28963z11)) ;
                         defparam ix28963z52938.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52930 (.combout (i2_magnitude[7]), .dataa (
                         nx42053z2), .datab (conv_table_1__2_[7]), .datac (
                         nx28963z5), .datad (nx28963z6)) ;
                         defparam ix28963z52930.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52980 (.combout (i1_magnitude[0]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[0]), .datac (
                         nx28963z40), .datad (nx28963z41)) ;
                         defparam ix28963z52980.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52970 (.combout (i1_magnitude[1]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[1]), .datac (
                         nx28963z33), .datad (nx28963z34)) ;
                         defparam ix28963z52970.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52963 (.combout (i1_magnitude[2]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[2]), .datac (
                         nx28963z28), .datad (nx28963z29)) ;
                         defparam ix28963z52963.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52956 (.combout (i1_magnitude[3]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[3]), .datac (
                         nx28963z23), .datad (nx28963z24)) ;
                         defparam ix28963z52956.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52949 (.combout (i1_magnitude[4]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[4]), .datac (
                         nx28963z18), .datad (nx28963z19)) ;
                         defparam ix28963z52949.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52942 (.combout (i1_magnitude[5]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[5]), .datac (
                         nx28963z13), .datad (nx28963z14)) ;
                         defparam ix28963z52942.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52935 (.combout (i1_magnitude[6]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[6]), .datac (
                         nx28963z8), .datad (nx28963z9)) ;
                         defparam ix28963z52935.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix28963z52927 (.combout (i1_magnitude[7]), .dataa (
                         nx42053z2), .datab (conv_table_2__0_[7]), .datac (
                         nx28963z3), .datad (nx28963z4)) ;
                         defparam ix28963z52927.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix22195z52931 (.combout (nx22195z8), .dataa (
                         pixel_counter_3_), .datab (pixel_counter_2_), .datac (
                         pixel_counter_1_), .datad (nx22195z9)) ;
                         defparam ix22195z52931.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix22195z52930 (.combout (nx22195z7), .dataa (o_row[7])
                         , .datab (o_row[6]), .datac (o_row[1]), .datad (
                         nx22195z6)) ;
                         defparam ix22195z52930.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix40727z52923 (.combout (nx40727z1), .dataa (
                         valid_bits_stage2[2]), .datab (nx40727z2), .datac (1'b1
                         ), .datad (1'b1)) ;
                         defparam ix40727z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix22195z52925 (.combout (nx22195z3), .dataa (o_row[0])
                         , .datab (pixel_counter_1_), .datac (a_3_), .datad (
                         nx22195z4)) ;
                         defparam ix22195z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix22195z52924 (.combout (nx22195z2), .dataa (i_reset), 
                         .datab (o_row[1]), .datac (nx22195z3), .datad (
                         nx22195z5)) ;
                         defparam ix22195z52924.lut_mask = 16'haabf;
    cycloneii_lcell_comb ix60779z52924 (.combout (nx60779z2), .dataa (
                         pixel_counter_0_), .datab (nx60779z3), .datac (
                         nx60779z4), .datad (1'b1)) ;
                         defparam ix60779z52924.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix42053z52926 (.combout (nx42053z2), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (1'b1)) ;
                         defparam ix42053z52926.lut_mask = 16'h0202;
    cycloneii_lcell_comb ix16196z52923 (.combout (nx16196z1), .dataa (
                         valid_bits_stage1[2]), .datab (valid_bits_stage1[1]), .datac (
                         valid_bits_stage1[0]), .datad (1'b1)) ;
                         defparam ix16196z52923.lut_mask = 16'h0d0d;
    cycloneii_lcell_comb ix42053z52978 (.combout (i4[0]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[0]), .datac (nx42053z40), .datad (
                         nx42053z41)) ;
                         defparam ix42053z52978.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52968 (.combout (i4[1]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[1]), .datac (nx42053z33), .datad (
                         nx42053z34)) ;
                         defparam ix42053z52968.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52961 (.combout (i4[2]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[2]), .datac (nx42053z28), .datad (
                         nx42053z29)) ;
                         defparam ix42053z52961.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52954 (.combout (i4[3]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[3]), .datac (nx42053z23), .datad (
                         nx42053z24)) ;
                         defparam ix42053z52954.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52947 (.combout (i4[4]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[4]), .datac (nx42053z18), .datad (
                         nx42053z19)) ;
                         defparam ix42053z52947.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52940 (.combout (i4[5]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[5]), .datac (nx42053z13), .datad (
                         nx42053z14)) ;
                         defparam ix42053z52940.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52933 (.combout (i4[6]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[6]), .datac (nx42053z8), .datad (
                         nx42053z9)) ;
                         defparam ix42053z52933.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52925 (.combout (i4[7]), .dataa (nx42053z2), .datab (
                         conv_table_2__2_[7]), .datac (nx42053z3), .datad (
                         nx42053z4)) ;
                         defparam ix42053z52925.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52975 (.combout (i3[0]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[0]), .datac (nx42053z38), .datad (
                         nx42053z39)) ;
                         defparam ix42053z52975.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52971 (.combout (i3[1]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[1]), .datac (nx42053z35), .datad (
                         nx42053z36)) ;
                         defparam ix42053z52971.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52964 (.combout (i3[2]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[2]), .datac (nx42053z30), .datad (
                         nx42053z31)) ;
                         defparam ix42053z52964.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52957 (.combout (i3[3]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[3]), .datac (nx42053z25), .datad (
                         nx42053z26)) ;
                         defparam ix42053z52957.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52950 (.combout (i3[4]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[4]), .datac (nx42053z20), .datad (
                         nx42053z21)) ;
                         defparam ix42053z52950.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52943 (.combout (i3[5]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[5]), .datac (nx42053z15), .datad (
                         nx42053z16)) ;
                         defparam ix42053z52943.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52936 (.combout (i3[6]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[6]), .datac (nx42053z10), .datad (
                         nx42053z11)) ;
                         defparam ix42053z52936.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix42053z52929 (.combout (i3[7]), .dataa (nx42053z2), .datab (
                         conv_table_2__1_[7]), .datac (nx42053z5), .datad (
                         nx42053z6)) ;
                         defparam ix42053z52929.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix51243z52923 (.combout (valid_wren[0]), .dataa (
                         i_valid), .datab (nx59782z2), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix51243z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix54114z52923 (.combout (valid_wren[1]), .dataa (
                         i_valid), .datab (row_index[1]), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix54114z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix54113z52923 (.combout (valid_wren[2]), .dataa (
                         i_valid), .datab (row_index[2]), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix54113z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix63886z52923 (.combout (o_dir[0]), .dataa (o_edge), .datab (
                         r5_direction[0]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix63886z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix62889z52923 (.combout (o_dir[1]), .dataa (o_edge), .datab (
                         r5_direction[1]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix62889z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix61892z52923 (.combout (o_dir[2]), .dataa (o_edge), .datab (
                         r5_direction[2]), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix61892z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix28963z52923 (.combout (add2_magnitude[9]), .dataa (
                         nx42053z1), .datab (nx28963z1), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix28963z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix29960z52923 (.combout (add2_magnitude[8]), .dataa (
                         nx42053z1), .datab (nx28963z1), .datac (1'b1), .datad (
                         1'b1)) ;
                         defparam ix29960z52923.lut_mask = 16'h6666;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire ena1_rename101;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename101), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29483.width_a = 8;
               defparam ix64056z29483.widthad_a = 8;
               defparam ix64056z29483.numwords_a = 256;
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29483.address_aclr_a = "NONE";
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               defparam ix64056z29483.indata_aclr_a = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               defparam ix64056z29483.width_byteena_a = 1;
               defparam ix64056z29483.width_b = 8;
               defparam ix64056z29483.widthad_b = 8;
               defparam ix64056z29483.numwords_b = 256;
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               defparam ix64056z29483.indata_aclr_b = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               defparam ix64056z29483.width_byteena_b = 1;
               defparam ix64056z29483.address_aclr_b = "NONE";
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               defparam ix64056z29483.byte_size = 8;
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29483.ram_block_type = "AUTO";
               defparam ix64056z29483.init_file = "UNUSED";
               defparam ix64056z29483.init_file_layout = "UNUSED";
               defparam ix64056z29483.maximum_depth = 0;
               defparam ix64056z29483.intended_device_family = "Cyclone II";
               defparam ix64056z29483.lpm_hint = "UNUSED";
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign ena1_rename101 = 1'b1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire ena1_rename71;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename71), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29482.width_a = 8;
               defparam ix64056z29482.widthad_a = 8;
               defparam ix64056z29482.numwords_a = 256;
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29482.address_aclr_a = "NONE";
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               defparam ix64056z29482.indata_aclr_a = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               defparam ix64056z29482.width_byteena_a = 1;
               defparam ix64056z29482.width_b = 8;
               defparam ix64056z29482.widthad_b = 8;
               defparam ix64056z29482.numwords_b = 256;
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               defparam ix64056z29482.indata_aclr_b = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               defparam ix64056z29482.width_byteena_b = 1;
               defparam ix64056z29482.address_aclr_b = "NONE";
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               defparam ix64056z29482.byte_size = 8;
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29482.ram_block_type = "AUTO";
               defparam ix64056z29482.init_file = "UNUSED";
               defparam ix64056z29482.init_file_layout = "UNUSED";
               defparam ix64056z29482.maximum_depth = 0;
               defparam ix64056z29482.intended_device_family = "Cyclone II";
               defparam ix64056z29482.lpm_hint = "UNUSED";
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign ena1_rename71 = 1'b1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire ena1_rename41;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .clock0 (wr_clk1), .clocken0 (
               ena1_rename41), .q_a ({rd_data1[7],rd_data1[6],rd_data1[5],
               rd_data1[4],rd_data1[3],rd_data1[2],rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29481.width_a = 8;
               defparam ix64056z29481.widthad_a = 8;
               defparam ix64056z29481.numwords_a = 256;
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29481.address_aclr_a = "NONE";
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               defparam ix64056z29481.indata_aclr_a = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               defparam ix64056z29481.width_byteena_a = 1;
               defparam ix64056z29481.width_b = 8;
               defparam ix64056z29481.widthad_b = 8;
               defparam ix64056z29481.numwords_b = 256;
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               defparam ix64056z29481.indata_aclr_b = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               defparam ix64056z29481.width_byteena_b = 1;
               defparam ix64056z29481.address_aclr_b = "NONE";
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               defparam ix64056z29481.byte_size = 8;
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29481.ram_block_type = "AUTO";
               defparam ix64056z29481.init_file = "UNUSED";
               defparam ix64056z29481.init_file_layout = "UNUSED";
               defparam ix64056z29481.maximum_depth = 0;
               defparam ix64056z29481.intended_device_family = "Cyclone II";
               defparam ix64056z29481.lpm_hint = "UNUSED";
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign ena1_rename41 = 1'b1 ;
endmodule


module modgen_counter_17_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [16:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [16:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx22081z1, inc_d_0_, nx23078z31, inc_d_1_, nx23078z29, inc_d_2_, 
         nx23078z27, inc_d_3_, nx23078z25, inc_d_4_, nx23078z23, inc_d_5_, 
         nx23078z21, inc_d_6_, nx23078z19, inc_d_7_, nx23078z17, inc_d_8_, 
         nx23078z15, inc_d_9_, nx23078z13, inc_d_10_, nx23078z11, inc_d_11_, 
         nx23078z9, inc_d_12_, nx23078z7, inc_d_13_, nx23078z5, inc_d_14_, 
         nx23078z3, inc_d_15_, nx23078z1, inc_d_16_, 
         nx_modgen_counter_17_0_vcc_net;
    wire [124:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (inc_d_9_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (inc_d_8_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (inc_d_7_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (inc_d_6_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (inc_d_5_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (inc_d_4_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (inc_d_3_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (inc_d_2_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_16_ (.regout (q[16]), .datain (inc_d_16_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (inc_d_15_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (inc_d_14_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (inc_d_13_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (inc_d_12_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (inc_d_11_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (inc_d_10_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (inc_d_1_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (inc_d_0_), .sdata (
                       1'b0), .clk (clock), .ena (nx22081z1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix23078z52923 (.combout (inc_d_16_), .dataa (q[16]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z1)) ;
                         defparam ix23078z52923.lut_mask = 16'h5a5a;
                         defparam ix23078z52923.sum_lutc_input = "cin";
    assign nx_modgen_counter_17_0_vcc_net = 1'b1 ;
    cycloneii_lcell_comb ix23078z52938 (.combout (inc_d_2_), .cout (nx23078z27)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z29)) ;
                         defparam ix23078z52938.lut_mask = 16'h5aa0;
                         defparam ix23078z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52925 (.combout (inc_d_15_), .cout (nx23078z1)
                         , .dataa (q[15]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z3)) ;
                         defparam ix23078z52925.lut_mask = 16'h5aa0;
                         defparam ix23078z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52926 (.combout (inc_d_14_), .cout (nx23078z3)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z5)) ;
                         defparam ix23078z52926.lut_mask = 16'h5aa0;
                         defparam ix23078z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52927 (.combout (inc_d_13_), .cout (nx23078z5)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z7)) ;
                         defparam ix23078z52927.lut_mask = 16'h5aa0;
                         defparam ix23078z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52928 (.combout (inc_d_12_), .cout (nx23078z7)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z9)) ;
                         defparam ix23078z52928.lut_mask = 16'h5aa0;
                         defparam ix23078z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52929 (.combout (inc_d_11_), .cout (nx23078z9)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z11)) ;
                         defparam ix23078z52929.lut_mask = 16'h5aa0;
                         defparam ix23078z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52930 (.combout (inc_d_10_), .cout (nx23078z11)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z13)) ;
                         defparam ix23078z52930.lut_mask = 16'h5aa0;
                         defparam ix23078z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52939 (.combout (inc_d_1_), .cout (nx23078z29)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z31)) ;
                         defparam ix23078z52939.lut_mask = 16'h5aa0;
                         defparam ix23078z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52931 (.combout (inc_d_9_), .cout (nx23078z13)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z15)) ;
                         defparam ix23078z52931.lut_mask = 16'h5aa0;
                         defparam ix23078z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52932 (.combout (inc_d_8_), .cout (nx23078z15)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z17)) ;
                         defparam ix23078z52932.lut_mask = 16'h5aa0;
                         defparam ix23078z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52933 (.combout (inc_d_7_), .cout (nx23078z17)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z19)) ;
                         defparam ix23078z52933.lut_mask = 16'h5aa0;
                         defparam ix23078z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52934 (.combout (inc_d_6_), .cout (nx23078z19)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z21)) ;
                         defparam ix23078z52934.lut_mask = 16'h5aa0;
                         defparam ix23078z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52935 (.combout (inc_d_5_), .cout (nx23078z21)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z23)) ;
                         defparam ix23078z52935.lut_mask = 16'h5aa0;
                         defparam ix23078z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52936 (.combout (inc_d_4_), .cout (nx23078z23)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z25)) ;
                         defparam ix23078z52936.lut_mask = 16'h5aa0;
                         defparam ix23078z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52937 (.combout (inc_d_3_), .cout (nx23078z25)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net), .cin (nx23078z27)) ;
                         defparam ix23078z52937.lut_mask = 16'h5aa0;
                         defparam ix23078z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23078z52940 (.combout (inc_d_0_), .cout (nx23078z31)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_17_0_vcc_net)) ;
                         defparam ix23078z52940.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (cnt_en), .datab (
                         sclear), .datac (1'b1), .datad (1'b1)) ;
                         defparam ix22081z52923.lut_mask = 16'heeee;
endmodule

