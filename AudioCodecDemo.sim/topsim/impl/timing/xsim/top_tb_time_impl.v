// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Mar 23 11:18:40 2021
// Host        : localhost.localdomain running 64-bit unknown
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/jesse/Xilinx_stuff/AudioCodecDemo/AudioCodecDemo.sim/topsim/impl/timing/xsim/top_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module i2c_configurator
   (clk_data_reg_0,
    \FSM_sequential_i2c_sm_reg[3]_0 ,
    clk_data_reg_1,
    ac_scl_TRI,
    ac_sda_TRI,
    CLK,
    ac_scl_OBUFT_inst_i_2,
    ac_sda_OBUFT_inst_i_2,
    btn_IBUF,
    clk_data);
  output clk_data_reg_0;
  output \FSM_sequential_i2c_sm_reg[3]_0 ;
  output clk_data_reg_1;
  output ac_scl_TRI;
  output ac_sda_TRI;
  input CLK;
  input ac_scl_OBUFT_inst_i_2;
  input ac_sda_OBUFT_inst_i_2;
  input [0:0]btn_IBUF;
  input clk_data;

  wire CLK;
  wire \FSM_sequential_i2c_sm[3]_i_10_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_1_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_3_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_4_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_5_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_6_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_7_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_8_n_0 ;
  wire \FSM_sequential_i2c_sm[3]_i_9_n_0 ;
  wire \FSM_sequential_i2c_sm_reg[3]_0 ;
  wire ac_scl_OBUFT_inst_i_2;
  wire ac_scl_TRI;
  wire ac_sda_OBUFT_inst_i_2;
  wire ac_sda_TRI;
  wire active_reg;
  wire active_reg0_carry__0_i_1_n_0;
  wire active_reg0_carry__0_i_2_n_0;
  wire active_reg0_carry__0_i_3_n_0;
  wire active_reg0_carry__0_i_4_n_0;
  wire active_reg0_carry__0_n_0;
  wire active_reg0_carry__1_i_1_n_0;
  wire active_reg0_carry__1_i_2_n_0;
  wire active_reg0_carry__1_i_3_n_0;
  wire active_reg0_carry__1_i_4_n_0;
  wire active_reg0_carry__1_n_0;
  wire active_reg0_carry__2_i_1_n_0;
  wire active_reg0_carry__2_i_2_n_0;
  wire active_reg0_carry__2_i_3_n_0;
  wire active_reg0_carry__2_i_4_n_0;
  wire active_reg0_carry__2_n_0;
  wire active_reg0_carry_i_1_n_0;
  wire active_reg0_carry_i_2_n_0;
  wire active_reg0_carry_i_3_n_0;
  wire active_reg0_carry_i_4_n_0;
  wire active_reg0_carry_i_5_n_0;
  wire active_reg0_carry_i_6_n_0;
  wire active_reg0_carry_n_0;
  wire \active_reg[2]_i_3_n_0 ;
  wire \active_reg_reg_n_0_[10] ;
  wire \active_reg_reg_n_0_[11] ;
  wire \active_reg_reg_n_0_[12] ;
  wire \active_reg_reg_n_0_[13] ;
  wire \active_reg_reg_n_0_[14] ;
  wire \active_reg_reg_n_0_[15] ;
  wire \active_reg_reg_n_0_[2] ;
  wire \active_reg_reg_n_0_[3] ;
  wire \active_reg_reg_n_0_[4] ;
  wire \active_reg_reg_n_0_[5] ;
  wire \active_reg_reg_n_0_[6] ;
  wire \active_reg_reg_n_0_[7] ;
  wire \active_reg_reg_n_0_[8] ;
  wire \active_reg_reg_n_0_[9] ;
  wire [0:0]btn_IBUF;
  wire clk_data;
  wire clk_data_i_1_n_0;
  wire clk_data_reg_0;
  wire clk_data_reg_1;
  wire cnt2;
  wire \cnt2[0]_i_1_n_0 ;
  wire \cnt2[0]_i_2_n_0 ;
  wire \cnt2[1]_i_1_n_0 ;
  wire \cnt2[1]_i_2_n_0 ;
  wire \cnt2[2]_i_1_n_0 ;
  wire \cnt2[2]_i_2_n_0 ;
  wire \cnt2[3]_i_2_n_0 ;
  wire \cnt2[3]_i_3_n_0 ;
  wire \cnt2[3]_i_4_n_0 ;
  wire \cnt2_reg_n_0_[0] ;
  wire \cnt2_reg_n_0_[1] ;
  wire \cnt2_reg_n_0_[2] ;
  wire \cnt2_reg_n_0_[3] ;
  wire \cnt[0]__0_i_1_n_0 ;
  wire \cnt[1]__0_i_1_n_0 ;
  wire \cnt[2]__0_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[5]_i_3_n_0 ;
  wire \cnt[5]_i_4_n_0 ;
  wire [2:0]cnt_prev;
  wire \cnt_reg[0]__0_n_0 ;
  wire \cnt_reg[1]__0_n_0 ;
  wire \cnt_reg[2]__0_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire [3:0]i2c_sm;
  wire [3:0]i2c_sm__0;
  wire [4:0]p_0_in;
  wire [5:0]p_1_in;
  wire [3:0]prevState;
  wire \prevState[0]_i_1_n_0 ;
  wire \prevState[2]_i_1_n_0 ;
  wire \regN[0]_i_2_n_0 ;
  wire [31:0]regN_reg;
  wire \regN_reg[0]_i_1_n_0 ;
  wire \regN_reg[0]_i_1_n_4 ;
  wire \regN_reg[0]_i_1_n_5 ;
  wire \regN_reg[0]_i_1_n_6 ;
  wire \regN_reg[0]_i_1_n_7 ;
  wire \regN_reg[12]_i_1_n_0 ;
  wire \regN_reg[12]_i_1_n_4 ;
  wire \regN_reg[12]_i_1_n_5 ;
  wire \regN_reg[12]_i_1_n_6 ;
  wire \regN_reg[12]_i_1_n_7 ;
  wire \regN_reg[16]_i_1_n_0 ;
  wire \regN_reg[16]_i_1_n_4 ;
  wire \regN_reg[16]_i_1_n_5 ;
  wire \regN_reg[16]_i_1_n_6 ;
  wire \regN_reg[16]_i_1_n_7 ;
  wire \regN_reg[20]_i_1_n_0 ;
  wire \regN_reg[20]_i_1_n_4 ;
  wire \regN_reg[20]_i_1_n_5 ;
  wire \regN_reg[20]_i_1_n_6 ;
  wire \regN_reg[20]_i_1_n_7 ;
  wire \regN_reg[24]_i_1_n_0 ;
  wire \regN_reg[24]_i_1_n_4 ;
  wire \regN_reg[24]_i_1_n_5 ;
  wire \regN_reg[24]_i_1_n_6 ;
  wire \regN_reg[24]_i_1_n_7 ;
  wire \regN_reg[28]_i_1_n_4 ;
  wire \regN_reg[28]_i_1_n_5 ;
  wire \regN_reg[28]_i_1_n_6 ;
  wire \regN_reg[28]_i_1_n_7 ;
  wire \regN_reg[4]_i_1_n_0 ;
  wire \regN_reg[4]_i_1_n_4 ;
  wire \regN_reg[4]_i_1_n_5 ;
  wire \regN_reg[4]_i_1_n_6 ;
  wire \regN_reg[4]_i_1_n_7 ;
  wire \regN_reg[8]_i_1_n_0 ;
  wire \regN_reg[8]_i_1_n_4 ;
  wire \regN_reg[8]_i_1_n_5 ;
  wire \regN_reg[8]_i_1_n_6 ;
  wire \regN_reg[8]_i_1_n_7 ;
  wire [13:0]\registers[0]_0 ;
  wire run_cnt;
  wire [4:4]run_cnt_reg;
  wire \run_cnt_reg_n_0_[0] ;
  wire \run_cnt_reg_n_0_[1] ;
  wire \run_cnt_reg_n_0_[2] ;
  wire \run_cnt_reg_n_0_[3] ;
  wire scl_out_tristate_oe_i_1_n_0;
  wire scl_out_tristate_oe_i_2_n_0;
  wire scl_out_tristate_oe_i_3_n_0;
  wire scl_out_tristate_oe_i_4_n_0;
  wire scl_out_tristate_oe_reg_n_0;
  wire sda_out__0;
  wire sda_out_tristate_oe_i_10_n_0;
  wire sda_out_tristate_oe_i_11_n_0;
  wire sda_out_tristate_oe_i_12_n_0;
  wire sda_out_tristate_oe_i_13_n_0;
  wire sda_out_tristate_oe_i_14_n_0;
  wire sda_out_tristate_oe_i_15_n_0;
  wire sda_out_tristate_oe_i_16_n_0;
  wire sda_out_tristate_oe_i_17_n_0;
  wire sda_out_tristate_oe_i_18_n_0;
  wire sda_out_tristate_oe_i_19_n_0;
  wire sda_out_tristate_oe_i_1_n_0;
  wire sda_out_tristate_oe_i_20_n_0;
  wire sda_out_tristate_oe_i_21_n_0;
  wire sda_out_tristate_oe_i_22_n_0;
  wire sda_out_tristate_oe_i_23_n_0;
  wire sda_out_tristate_oe_i_24_n_0;
  wire sda_out_tristate_oe_i_2_n_0;
  wire sda_out_tristate_oe_i_3_n_0;
  wire sda_out_tristate_oe_i_4_n_0;
  wire sda_out_tristate_oe_i_5_n_0;
  wire sda_out_tristate_oe_i_7_n_0;
  wire sda_out_tristate_oe_i_8_n_0;
  wire sda_out_tristate_oe_i_9_n_0;
  wire sda_out_tristate_oe_reg_n_0;
  wire [2:0]NLW_active_reg0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_active_reg0_carry_O_UNCONNECTED;
  wire [2:0]NLW_active_reg0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_active_reg0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_active_reg0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_active_reg0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_active_reg0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_active_reg0_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_regN_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_regN_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_regN_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0000FEFF)) 
    \FSM_sequential_i2c_sm[0]_i_1 
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[1]),
        .I2(i2c_sm[3]),
        .I3(run_cnt_reg),
        .I4(i2c_sm[0]),
        .O(i2c_sm__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000F0F02)) 
    \FSM_sequential_i2c_sm[1]_i_1 
       (.I0(run_cnt_reg),
        .I1(i2c_sm[2]),
        .I2(i2c_sm[3]),
        .I3(i2c_sm[1]),
        .I4(i2c_sm[0]),
        .O(i2c_sm__0[1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "161" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_i2c_sm[2]_i_1 
       (.I0(i2c_sm[0]),
        .I1(i2c_sm[1]),
        .I2(i2c_sm[2]),
        .I3(i2c_sm[3]),
        .O(i2c_sm__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
    \FSM_sequential_i2c_sm[3]_i_1 
       (.I0(\FSM_sequential_i2c_sm[3]_i_3_n_0 ),
        .I1(i2c_sm[3]),
        .I2(\FSM_sequential_i2c_sm[3]_i_4_n_0 ),
        .I3(i2c_sm[0]),
        .I4(\FSM_sequential_i2c_sm[3]_i_5_n_0 ),
        .I5(\FSM_sequential_i2c_sm[3]_i_6_n_0 ),
        .O(\FSM_sequential_i2c_sm[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \FSM_sequential_i2c_sm[3]_i_10 
       (.I0(i2c_sm[1]),
        .I1(\cnt2_reg_n_0_[2] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .I3(\cnt2_reg_n_0_[0] ),
        .I4(\cnt2_reg_n_0_[1] ),
        .I5(i2c_sm[2]),
        .O(\FSM_sequential_i2c_sm[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00FFC002)) 
    \FSM_sequential_i2c_sm[3]_i_2 
       (.I0(run_cnt_reg),
        .I1(i2c_sm[2]),
        .I2(i2c_sm[1]),
        .I3(i2c_sm[0]),
        .I4(i2c_sm[3]),
        .O(i2c_sm__0[3]));
  LUT6 #(
    .INIT(64'h0000830000008000)) 
    \FSM_sequential_i2c_sm[3]_i_3 
       (.I0(\active_reg[2]_i_3_n_0 ),
        .I1(\cnt2[3]_i_4_n_0 ),
        .I2(\cnt2_reg_n_0_[0] ),
        .I3(\cnt2_reg_n_0_[1] ),
        .I4(\cnt2[1]_i_2_n_0 ),
        .I5(\FSM_sequential_i2c_sm[3]_i_7_n_0 ),
        .O(\FSM_sequential_i2c_sm[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_i2c_sm[3]_i_4 
       (.I0(i2c_sm[1]),
        .I1(i2c_sm[2]),
        .O(\FSM_sequential_i2c_sm[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000400044444000)) 
    \FSM_sequential_i2c_sm[3]_i_5 
       (.I0(i2c_sm[3]),
        .I1(\cnt2[3]_i_4_n_0 ),
        .I2(\FSM_sequential_i2c_sm[3]_i_8_n_0 ),
        .I3(\cnt2_reg_n_0_[0] ),
        .I4(\FSM_sequential_i2c_sm[3]_i_9_n_0 ),
        .I5(\cnt2[1]_i_2_n_0 ),
        .O(\FSM_sequential_i2c_sm[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F011DD)) 
    \FSM_sequential_i2c_sm[3]_i_6 
       (.I0(i2c_sm[1]),
        .I1(i2c_sm[2]),
        .I2(\FSM_sequential_i2c_sm[3]_i_10_n_0 ),
        .I3(i2c_sm[3]),
        .I4(i2c_sm[0]),
        .I5(\cnt2[3]_i_4_n_0 ),
        .O(\FSM_sequential_i2c_sm[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h115F)) 
    \FSM_sequential_i2c_sm[3]_i_7 
       (.I0(i2c_sm[3]),
        .I1(i2c_sm[0]),
        .I2(i2c_sm[2]),
        .I3(i2c_sm[1]),
        .O(\FSM_sequential_i2c_sm[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C20000000)) 
    \FSM_sequential_i2c_sm[3]_i_8 
       (.I0(i2c_sm[1]),
        .I1(\cnt2_reg_n_0_[2] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .I3(i2c_sm[2]),
        .I4(i2c_sm[0]),
        .I5(\cnt2_reg_n_0_[1] ),
        .O(\FSM_sequential_i2c_sm[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_i2c_sm[3]_i_9 
       (.I0(i2c_sm[1]),
        .I1(\cnt2_reg_n_0_[0] ),
        .I2(\cnt2_reg_n_0_[1] ),
        .I3(i2c_sm[0]),
        .I4(i2c_sm[2]),
        .O(\FSM_sequential_i2c_sm[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i2c_sm_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_i2c_sm[3]_i_1_n_0 ),
        .D(i2c_sm__0[0]),
        .Q(i2c_sm[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i2c_sm_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_i2c_sm[3]_i_1_n_0 ),
        .D(i2c_sm__0[1]),
        .Q(i2c_sm[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i2c_sm_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_i2c_sm[3]_i_1_n_0 ),
        .D(i2c_sm__0[2]),
        .Q(i2c_sm[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_i2c_sm_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_i2c_sm[3]_i_1_n_0 ),
        .D(i2c_sm__0[3]),
        .Q(i2c_sm[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    ac_scl_OBUFT_inst_i_1
       (.I0(scl_out_tristate_oe_reg_n_0),
        .I1(ac_scl_OBUFT_inst_i_2),
        .O(ac_scl_TRI));
  LUT6 #(
    .INIT(64'hFFFF55FF505040A0)) 
    ac_scl_OBUFT_inst_i_3
       (.I0(i2c_sm[3]),
        .I1(scl_out_tristate_oe_i_4_n_0),
        .I2(clk_data_reg_0),
        .I3(i2c_sm[0]),
        .I4(\FSM_sequential_i2c_sm[3]_i_4_n_0 ),
        .I5(ac_scl_OBUFT_inst_i_2),
        .O(\FSM_sequential_i2c_sm_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    ac_sda_OBUFT_inst_i_1
       (.I0(sda_out_tristate_oe_reg_n_0),
        .I1(ac_sda_OBUFT_inst_i_2),
        .O(ac_sda_TRI));
  LUT6 #(
    .INIT(64'hFFFF0FFF00FF0F80)) 
    ac_sda_OBUFT_inst_i_3
       (.I0(sda_out_tristate_oe_i_19_n_0),
        .I1(clk_data_reg_0),
        .I2(i2c_sm[0]),
        .I3(i2c_sm[3]),
        .I4(\FSM_sequential_i2c_sm[3]_i_4_n_0 ),
        .I5(ac_sda_OBUFT_inst_i_2),
        .O(clk_data_reg_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 active_reg0_carry
       (.CI(1'b0),
        .CO({active_reg0_carry_n_0,NLW_active_reg0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,active_reg0_carry_i_1_n_0,active_reg0_carry_i_2_n_0}),
        .O(NLW_active_reg0_carry_O_UNCONNECTED[3:0]),
        .S({active_reg0_carry_i_3_n_0,active_reg0_carry_i_4_n_0,active_reg0_carry_i_5_n_0,active_reg0_carry_i_6_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 active_reg0_carry__0
       (.CI(active_reg0_carry_n_0),
        .CO({active_reg0_carry__0_n_0,NLW_active_reg0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_active_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S({active_reg0_carry__0_i_1_n_0,active_reg0_carry__0_i_2_n_0,active_reg0_carry__0_i_3_n_0,active_reg0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__0_i_1
       (.I0(regN_reg[14]),
        .I1(regN_reg[15]),
        .O(active_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__0_i_2
       (.I0(regN_reg[12]),
        .I1(regN_reg[13]),
        .O(active_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__0_i_3
       (.I0(regN_reg[10]),
        .I1(regN_reg[11]),
        .O(active_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__0_i_4
       (.I0(regN_reg[8]),
        .I1(regN_reg[9]),
        .O(active_reg0_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 active_reg0_carry__1
       (.CI(active_reg0_carry__0_n_0),
        .CO({active_reg0_carry__1_n_0,NLW_active_reg0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_active_reg0_carry__1_O_UNCONNECTED[3:0]),
        .S({active_reg0_carry__1_i_1_n_0,active_reg0_carry__1_i_2_n_0,active_reg0_carry__1_i_3_n_0,active_reg0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__1_i_1
       (.I0(regN_reg[22]),
        .I1(regN_reg[23]),
        .O(active_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__1_i_2
       (.I0(regN_reg[20]),
        .I1(regN_reg[21]),
        .O(active_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__1_i_3
       (.I0(regN_reg[18]),
        .I1(regN_reg[19]),
        .O(active_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__1_i_4
       (.I0(regN_reg[16]),
        .I1(regN_reg[17]),
        .O(active_reg0_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 active_reg0_carry__2
       (.CI(active_reg0_carry__1_n_0),
        .CO({active_reg0_carry__2_n_0,NLW_active_reg0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({regN_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_active_reg0_carry__2_O_UNCONNECTED[3:0]),
        .S({active_reg0_carry__2_i_1_n_0,active_reg0_carry__2_i_2_n_0,active_reg0_carry__2_i_3_n_0,active_reg0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__2_i_1
       (.I0(regN_reg[30]),
        .I1(regN_reg[31]),
        .O(active_reg0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__2_i_2
       (.I0(regN_reg[28]),
        .I1(regN_reg[29]),
        .O(active_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__2_i_3
       (.I0(regN_reg[26]),
        .I1(regN_reg[27]),
        .O(active_reg0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry__2_i_4
       (.I0(regN_reg[24]),
        .I1(regN_reg[25]),
        .O(active_reg0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    active_reg0_carry_i_1
       (.I0(regN_reg[2]),
        .I1(regN_reg[3]),
        .O(active_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    active_reg0_carry_i_2
       (.I0(regN_reg[0]),
        .I1(regN_reg[1]),
        .O(active_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry_i_3
       (.I0(regN_reg[6]),
        .I1(regN_reg[7]),
        .O(active_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    active_reg0_carry_i_4
       (.I0(regN_reg[4]),
        .I1(regN_reg[5]),
        .O(active_reg0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    active_reg0_carry_i_5
       (.I0(regN_reg[3]),
        .I1(regN_reg[2]),
        .O(active_reg0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    active_reg0_carry_i_6
       (.I0(regN_reg[1]),
        .I1(regN_reg[0]),
        .O(active_reg0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08BA)) 
    \active_reg[10]_i_1 
       (.I0(regN_reg[0]),
        .I1(regN_reg[3]),
        .I2(regN_reg[2]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h25CE)) 
    \active_reg[11]_i_1 
       (.I0(regN_reg[1]),
        .I1(regN_reg[0]),
        .I2(regN_reg[3]),
        .I3(regN_reg[2]),
        .O(\registers[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4B20)) 
    \active_reg[12]_i_1 
       (.I0(regN_reg[0]),
        .I1(regN_reg[1]),
        .I2(regN_reg[3]),
        .I3(regN_reg[2]),
        .O(\registers[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1900)) 
    \active_reg[13]_i_1 
       (.I0(regN_reg[2]),
        .I1(regN_reg[3]),
        .I2(regN_reg[0]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h3A02)) 
    \active_reg[14]_i_1 
       (.I0(regN_reg[1]),
        .I1(regN_reg[2]),
        .I2(regN_reg[3]),
        .I3(regN_reg[0]),
        .O(\registers[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h13E4)) 
    \active_reg[15]_i_1 
       (.I0(regN_reg[3]),
        .I1(regN_reg[1]),
        .I2(regN_reg[0]),
        .I3(regN_reg[2]),
        .O(\registers[0]_0 [0]));
  LUT6 #(
    .INIT(64'hF000F000B000F000)) 
    \active_reg[2]_i_1 
       (.I0(prevState[1]),
        .I1(prevState[0]),
        .I2(active_reg0_carry__2_n_0),
        .I3(\active_reg[2]_i_3_n_0 ),
        .I4(prevState[3]),
        .I5(prevState[2]),
        .O(active_reg));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \active_reg[2]_i_2 
       (.I0(regN_reg[1]),
        .I1(regN_reg[2]),
        .I2(regN_reg[3]),
        .I3(regN_reg[0]),
        .O(\registers[0]_0 [13]));
  (* \PinAttr:I0:HOLD_DETOUR  = "161" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \active_reg[2]_i_3 
       (.I0(i2c_sm[3]),
        .I1(i2c_sm[0]),
        .I2(i2c_sm[1]),
        .I3(i2c_sm[2]),
        .O(\active_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \active_reg[3]_i_1 
       (.I0(regN_reg[2]),
        .I1(regN_reg[3]),
        .I2(regN_reg[1]),
        .I3(regN_reg[0]),
        .O(\registers[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF085)) 
    \active_reg[4]_i_1 
       (.I0(regN_reg[3]),
        .I1(regN_reg[0]),
        .I2(regN_reg[2]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h288F)) 
    \active_reg[5]_i_1 
       (.I0(regN_reg[0]),
        .I1(regN_reg[2]),
        .I2(regN_reg[3]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h92E9)) 
    \active_reg[6]_i_1 
       (.I0(regN_reg[1]),
        .I1(regN_reg[0]),
        .I2(regN_reg[2]),
        .I3(regN_reg[3]),
        .O(\registers[0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \active_reg[7]_i_1 
       (.I0(regN_reg[2]),
        .I1(regN_reg[3]),
        .I2(regN_reg[1]),
        .O(\registers[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \active_reg[8]_i_1 
       (.I0(regN_reg[2]),
        .I1(regN_reg[3]),
        .I2(regN_reg[0]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2838)) 
    \active_reg[9]_i_1 
       (.I0(regN_reg[0]),
        .I1(regN_reg[3]),
        .I2(regN_reg[2]),
        .I3(regN_reg[1]),
        .O(\registers[0]_0 [6]));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[10] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [5]),
        .Q(\active_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[11] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [4]),
        .Q(\active_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[12] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [3]),
        .Q(\active_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[13] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [2]),
        .Q(\active_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[14] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [1]),
        .Q(\active_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[15] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [0]),
        .Q(\active_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[2] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [13]),
        .Q(\active_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \active_reg_reg[3] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [12]),
        .Q(\active_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \active_reg_reg[4] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [11]),
        .Q(\active_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \active_reg_reg[5] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [10]),
        .Q(\active_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \active_reg_reg[6] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [9]),
        .Q(\active_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[7] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [8]),
        .Q(\active_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[8] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [7]),
        .Q(\active_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_reg_reg[9] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\registers[0]_0 [6]),
        .Q(\active_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    clk_data_i_1
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(btn_IBUF),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt[5]_i_3_n_0 ),
        .I4(clk_data_reg_0),
        .O(clk_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_data_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clk_data_i_1_n_0),
        .Q(clk_data_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA80AAAA2AAAAA)) 
    \cnt2[0]_i_1 
       (.I0(\cnt2[0]_i_2_n_0 ),
        .I1(i2c_sm[2]),
        .I2(i2c_sm[1]),
        .I3(\cnt2_reg_n_0_[2] ),
        .I4(\cnt2_reg_n_0_[3] ),
        .I5(\cnt2_reg_n_0_[1] ),
        .O(\cnt2[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt2[0]_i_2 
       (.I0(\cnt2[3]_i_4_n_0 ),
        .I1(\cnt2_reg_n_0_[0] ),
        .O(\cnt2[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF80000FFFFF80000)) 
    \cnt2[1]_i_1 
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[1]),
        .I2(\cnt2[1]_i_2_n_0 ),
        .I3(\cnt2[3]_i_4_n_0 ),
        .I4(\cnt2_reg_n_0_[1] ),
        .I5(\cnt2_reg_n_0_[0] ),
        .O(\cnt2[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt2[1]_i_2 
       (.I0(\cnt2_reg_n_0_[3] ),
        .I1(\cnt2_reg_n_0_[2] ),
        .O(\cnt2[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFDF2020DF5D2020)) 
    \cnt2[2]_i_1 
       (.I0(\cnt2_reg_n_0_[1] ),
        .I1(\cnt2[3]_i_4_n_0 ),
        .I2(\cnt2_reg_n_0_[0] ),
        .I3(\cnt2[2]_i_2_n_0 ),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\cnt2_reg_n_0_[3] ),
        .O(\cnt2[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt2[2]_i_2 
       (.I0(i2c_sm[1]),
        .I1(i2c_sm[2]),
        .O(\cnt2[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3042)) 
    \cnt2[3]_i_1 
       (.I0(i2c_sm[1]),
        .I1(i2c_sm[3]),
        .I2(i2c_sm[0]),
        .I3(i2c_sm[2]),
        .O(cnt2));
  LUT6 #(
    .INIT(64'hEFBEFFBEBAAAAAAA)) 
    \cnt2[3]_i_2 
       (.I0(\cnt2[3]_i_3_n_0 ),
        .I1(\cnt2[3]_i_4_n_0 ),
        .I2(\cnt2_reg_n_0_[0] ),
        .I3(\cnt2_reg_n_0_[1] ),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\cnt2_reg_n_0_[3] ),
        .O(\cnt2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBF00BF00000000)) 
    \cnt2[3]_i_3 
       (.I0(\cnt2_reg_n_0_[2] ),
        .I1(i2c_sm[1]),
        .I2(i2c_sm[2]),
        .I3(\cnt2_reg_n_0_[0] ),
        .I4(\cnt2[3]_i_4_n_0 ),
        .I5(\cnt2_reg_n_0_[3] ),
        .O(\cnt2[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFFFDFDFDFD)) 
    \cnt2[3]_i_4 
       (.I0(\cnt_reg[2]__0_n_0 ),
        .I1(\cnt_reg[0]__0_n_0 ),
        .I2(\cnt_reg[1]__0_n_0 ),
        .I3(cnt_prev[0]),
        .I4(cnt_prev[1]),
        .I5(cnt_prev[2]),
        .O(\cnt2[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt2_reg[0] 
       (.C(CLK),
        .CE(cnt2),
        .D(\cnt2[0]_i_1_n_0 ),
        .Q(\cnt2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt2_reg[1] 
       (.C(CLK),
        .CE(cnt2),
        .D(\cnt2[1]_i_1_n_0 ),
        .Q(\cnt2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt2_reg[2] 
       (.C(CLK),
        .CE(cnt2),
        .D(\cnt2[2]_i_1_n_0 ),
        .Q(\cnt2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt2_reg[3] 
       (.C(CLK),
        .CE(cnt2),
        .D(\cnt2[3]_i_2_n_0 ),
        .Q(\cnt2_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h23)) 
    \cnt[0]__0_i_1 
       (.I0(\cnt_reg[1]__0_n_0 ),
        .I1(\cnt_reg[0]__0_n_0 ),
        .I2(\cnt_reg[2]__0_n_0 ),
        .O(\cnt[0]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[0]_i_1__0 
       (.I0(btn_IBUF),
        .I1(\cnt_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]__0_i_1 
       (.I0(\cnt_reg[1]__0_n_0 ),
        .I1(\cnt_reg[0]__0_n_0 ),
        .O(\cnt[1]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(btn_IBUF),
        .I2(\cnt_reg_n_0_[1] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \cnt[2]__0_i_1 
       (.I0(\cnt_reg[1]__0_n_0 ),
        .I1(\cnt_reg[0]__0_n_0 ),
        .I2(\cnt_reg[2]__0_n_0 ),
        .O(\cnt[2]__0_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(btn_IBUF),
        .I3(\cnt_reg_n_0_[2] ),
        .O(p_1_in[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(btn_IBUF),
        .I4(\cnt_reg_n_0_[3] ),
        .O(p_1_in[3]));
  (* \PinAttr:I3:HOLD_DETOUR  = "155" *) 
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(btn_IBUF),
        .I5(\cnt_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \cnt[5]_i_1 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(btn_IBUF),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt[5]_i_3_n_0 ),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \cnt[5]_i_2 
       (.I0(\cnt[5]_i_4_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(btn_IBUF),
        .I3(\cnt_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \cnt[5]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(btn_IBUF),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \cnt[5]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(btn_IBUF),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\cnt[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prev_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]__0_n_0 ),
        .Q(cnt_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prev_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[1]__0_n_0 ),
        .Q(cnt_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_prev_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[2]__0_n_0 ),
        .Q(cnt_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0]__0 
       (.C(clk_data),
        .CE(1'b1),
        .D(\cnt[0]__0_i_1_n_0 ),
        .Q(\cnt_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1]__0 
       (.C(clk_data),
        .CE(1'b1),
        .D(\cnt[1]__0_i_1_n_0 ),
        .Q(\cnt_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2]__0 
       (.C(clk_data),
        .CE(1'b1),
        .D(\cnt[2]__0_i_1_n_0 ),
        .Q(\cnt_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\cnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \prevState[0]_i_1 
       (.I0(i2c_sm[1]),
        .I1(i2c_sm[3]),
        .I2(i2c_sm[0]),
        .O(\prevState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prevState[2]_i_1 
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[3]),
        .O(\prevState[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prevState_reg[0] 
       (.C(clk_data),
        .CE(1'b1),
        .D(\prevState[0]_i_1_n_0 ),
        .Q(prevState[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prevState_reg[1] 
       (.C(clk_data),
        .CE(1'b1),
        .D(i2c_sm[1]),
        .Q(prevState[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prevState_reg[2] 
       (.C(clk_data),
        .CE(1'b1),
        .D(\prevState[2]_i_1_n_0 ),
        .Q(prevState[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prevState_reg[3] 
       (.C(clk_data),
        .CE(1'b1),
        .D(i2c_sm[3]),
        .Q(prevState[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \regN[0]_i_2 
       (.I0(regN_reg[0]),
        .O(\regN[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \regN_reg[0] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[0]_i_1_n_7 ),
        .Q(regN_reg[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\regN_reg[0]_i_1_n_0 ,\NLW_regN_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\regN_reg[0]_i_1_n_4 ,\regN_reg[0]_i_1_n_5 ,\regN_reg[0]_i_1_n_6 ,\regN_reg[0]_i_1_n_7 }),
        .S({regN_reg[3:1],\regN[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[10] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[8]_i_1_n_5 ),
        .Q(regN_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[11] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[8]_i_1_n_4 ),
        .Q(regN_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[12] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[12]_i_1_n_7 ),
        .Q(regN_reg[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[12]_i_1 
       (.CI(\regN_reg[8]_i_1_n_0 ),
        .CO({\regN_reg[12]_i_1_n_0 ,\NLW_regN_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[12]_i_1_n_4 ,\regN_reg[12]_i_1_n_5 ,\regN_reg[12]_i_1_n_6 ,\regN_reg[12]_i_1_n_7 }),
        .S(regN_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[13] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[12]_i_1_n_6 ),
        .Q(regN_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[14] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[12]_i_1_n_5 ),
        .Q(regN_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[15] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[12]_i_1_n_4 ),
        .Q(regN_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[16] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[16]_i_1_n_7 ),
        .Q(regN_reg[16]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[16]_i_1 
       (.CI(\regN_reg[12]_i_1_n_0 ),
        .CO({\regN_reg[16]_i_1_n_0 ,\NLW_regN_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[16]_i_1_n_4 ,\regN_reg[16]_i_1_n_5 ,\regN_reg[16]_i_1_n_6 ,\regN_reg[16]_i_1_n_7 }),
        .S(regN_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[17] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[16]_i_1_n_6 ),
        .Q(regN_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[18] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[16]_i_1_n_5 ),
        .Q(regN_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[19] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[16]_i_1_n_4 ),
        .Q(regN_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[1] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[0]_i_1_n_6 ),
        .Q(regN_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[20] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[20]_i_1_n_7 ),
        .Q(regN_reg[20]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[20]_i_1 
       (.CI(\regN_reg[16]_i_1_n_0 ),
        .CO({\regN_reg[20]_i_1_n_0 ,\NLW_regN_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[20]_i_1_n_4 ,\regN_reg[20]_i_1_n_5 ,\regN_reg[20]_i_1_n_6 ,\regN_reg[20]_i_1_n_7 }),
        .S(regN_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[21] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[20]_i_1_n_6 ),
        .Q(regN_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[22] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[20]_i_1_n_5 ),
        .Q(regN_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[23] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[20]_i_1_n_4 ),
        .Q(regN_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[24] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[24]_i_1_n_7 ),
        .Q(regN_reg[24]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[24]_i_1 
       (.CI(\regN_reg[20]_i_1_n_0 ),
        .CO({\regN_reg[24]_i_1_n_0 ,\NLW_regN_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[24]_i_1_n_4 ,\regN_reg[24]_i_1_n_5 ,\regN_reg[24]_i_1_n_6 ,\regN_reg[24]_i_1_n_7 }),
        .S(regN_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[25] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[24]_i_1_n_6 ),
        .Q(regN_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[26] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[24]_i_1_n_5 ),
        .Q(regN_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[27] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[24]_i_1_n_4 ),
        .Q(regN_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[28] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[28]_i_1_n_7 ),
        .Q(regN_reg[28]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[28]_i_1 
       (.CI(\regN_reg[24]_i_1_n_0 ),
        .CO(\NLW_regN_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[28]_i_1_n_4 ,\regN_reg[28]_i_1_n_5 ,\regN_reg[28]_i_1_n_6 ,\regN_reg[28]_i_1_n_7 }),
        .S(regN_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[29] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[28]_i_1_n_6 ),
        .Q(regN_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[2] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[0]_i_1_n_5 ),
        .Q(regN_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[30] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[28]_i_1_n_5 ),
        .Q(regN_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[31] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[28]_i_1_n_4 ),
        .Q(regN_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[3] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[0]_i_1_n_4 ),
        .Q(regN_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[4] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[4]_i_1_n_7 ),
        .Q(regN_reg[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[4]_i_1 
       (.CI(\regN_reg[0]_i_1_n_0 ),
        .CO({\regN_reg[4]_i_1_n_0 ,\NLW_regN_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[4]_i_1_n_4 ,\regN_reg[4]_i_1_n_5 ,\regN_reg[4]_i_1_n_6 ,\regN_reg[4]_i_1_n_7 }),
        .S(regN_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[5] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[4]_i_1_n_6 ),
        .Q(regN_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[6] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[4]_i_1_n_5 ),
        .Q(regN_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[7] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[4]_i_1_n_4 ),
        .Q(regN_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[8] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[8]_i_1_n_7 ),
        .Q(regN_reg[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \regN_reg[8]_i_1 
       (.CI(\regN_reg[4]_i_1_n_0 ),
        .CO({\regN_reg[8]_i_1_n_0 ,\NLW_regN_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\regN_reg[8]_i_1_n_4 ,\regN_reg[8]_i_1_n_5 ,\regN_reg[8]_i_1_n_6 ,\regN_reg[8]_i_1_n_7 }),
        .S(regN_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \regN_reg[9] 
       (.C(clk_data),
        .CE(active_reg),
        .D(\regN_reg[8]_i_1_n_6 ),
        .Q(regN_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \run_cnt[0]_i_1 
       (.I0(\run_cnt_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \run_cnt[1]_i_1 
       (.I0(\run_cnt_reg_n_0_[0] ),
        .I1(\run_cnt_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \run_cnt[2]_i_1 
       (.I0(\run_cnt_reg_n_0_[1] ),
        .I1(\run_cnt_reg_n_0_[0] ),
        .I2(\run_cnt_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \run_cnt[3]_i_1 
       (.I0(\run_cnt_reg_n_0_[2] ),
        .I1(\run_cnt_reg_n_0_[0] ),
        .I2(\run_cnt_reg_n_0_[1] ),
        .I3(\run_cnt_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0800000000000800)) 
    \run_cnt[4]_i_1 
       (.I0(\cnt2_reg_n_0_[1] ),
        .I1(\cnt2_reg_n_0_[2] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .I3(\active_reg[2]_i_3_n_0 ),
        .I4(\cnt2_reg_n_0_[0] ),
        .I5(\cnt2[3]_i_4_n_0 ),
        .O(run_cnt));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \run_cnt[4]_i_2 
       (.I0(\run_cnt_reg_n_0_[3] ),
        .I1(\run_cnt_reg_n_0_[1] ),
        .I2(\run_cnt_reg_n_0_[0] ),
        .I3(\run_cnt_reg_n_0_[2] ),
        .I4(run_cnt_reg),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \run_cnt_reg[0] 
       (.C(CLK),
        .CE(run_cnt),
        .D(p_0_in[0]),
        .Q(\run_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \run_cnt_reg[1] 
       (.C(CLK),
        .CE(run_cnt),
        .D(p_0_in[1]),
        .Q(\run_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \run_cnt_reg[2] 
       (.C(CLK),
        .CE(run_cnt),
        .D(p_0_in[2]),
        .Q(\run_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \run_cnt_reg[3] 
       (.C(CLK),
        .CE(run_cnt),
        .D(p_0_in[3]),
        .Q(\run_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \run_cnt_reg[4] 
       (.C(CLK),
        .CE(run_cnt),
        .D(p_0_in[4]),
        .Q(run_cnt_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0301FFFF03010000)) 
    scl_out_tristate_oe_i_1
       (.I0(\cnt_reg[0]__0_n_0 ),
        .I1(\cnt_reg[1]__0_n_0 ),
        .I2(\cnt_reg[2]__0_n_0 ),
        .I3(scl_out_tristate_oe_i_2_n_0),
        .I4(scl_out_tristate_oe_i_3_n_0),
        .I5(scl_out_tristate_oe_reg_n_0),
        .O(scl_out_tristate_oe_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    scl_out_tristate_oe_i_2
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[1]),
        .I2(i2c_sm[3]),
        .O(scl_out_tristate_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'h505050505050EAA0)) 
    scl_out_tristate_oe_i_3
       (.I0(i2c_sm[3]),
        .I1(scl_out_tristate_oe_i_4_n_0),
        .I2(clk_data_reg_0),
        .I3(i2c_sm[0]),
        .I4(i2c_sm[1]),
        .I5(i2c_sm[2]),
        .O(scl_out_tristate_oe_i_3_n_0));
  LUT3 #(
    .INIT(8'hEB)) 
    scl_out_tristate_oe_i_4
       (.I0(\cnt_reg[2]__0_n_0 ),
        .I1(\cnt_reg[1]__0_n_0 ),
        .I2(\cnt_reg[0]__0_n_0 ),
        .O(scl_out_tristate_oe_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_out_tristate_oe_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl_out_tristate_oe_i_1_n_0),
        .Q(scl_out_tristate_oe_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    sda_out_tristate_oe_i_1
       (.I0(sda_out_tristate_oe_i_2_n_0),
        .I1(sda_out_tristate_oe_i_3_n_0),
        .I2(sda_out_tristate_oe_i_4_n_0),
        .I3(sda_out_tristate_oe_i_5_n_0),
        .I4(sda_out__0),
        .I5(sda_out_tristate_oe_reg_n_0),
        .O(sda_out_tristate_oe_i_1_n_0));
  LUT5 #(
    .INIT(32'hA000C000)) 
    sda_out_tristate_oe_i_10
       (.I0(\active_reg_reg_n_0_[9] ),
        .I1(\active_reg_reg_n_0_[7] ),
        .I2(i2c_sm[2]),
        .I3(i2c_sm[0]),
        .I4(\cnt2_reg_n_0_[1] ),
        .O(sda_out_tristate_oe_i_10_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    sda_out_tristate_oe_i_11
       (.I0(i2c_sm[1]),
        .I1(\cnt2_reg_n_0_[0] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_11_n_0));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    sda_out_tristate_oe_i_12
       (.I0(\cnt2_reg_n_0_[1] ),
        .I1(i2c_sm[0]),
        .I2(i2c_sm[2]),
        .I3(\active_reg_reg_n_0_[8] ),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\active_reg_reg_n_0_[12] ),
        .O(sda_out_tristate_oe_i_12_n_0));
  LUT6 #(
    .INIT(64'h8000000000000080)) 
    sda_out_tristate_oe_i_13
       (.I0(sda_out_tristate_oe_i_21_n_0),
        .I1(\active_reg_reg_n_0_[4] ),
        .I2(\cnt2_reg_n_0_[2] ),
        .I3(\cnt2_reg_n_0_[3] ),
        .I4(\cnt2_reg_n_0_[0] ),
        .I5(i2c_sm[1]),
        .O(sda_out_tristate_oe_i_13_n_0));
  LUT5 #(
    .INIT(32'h45400000)) 
    sda_out_tristate_oe_i_14
       (.I0(\cnt2_reg_n_0_[2] ),
        .I1(\active_reg_reg_n_0_[11] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .I3(\active_reg_reg_n_0_[3] ),
        .I4(\FSM_sequential_i2c_sm[3]_i_9_n_0 ),
        .O(sda_out_tristate_oe_i_14_n_0));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    sda_out_tristate_oe_i_15
       (.I0(\cnt2_reg_n_0_[1] ),
        .I1(i2c_sm[0]),
        .I2(i2c_sm[2]),
        .I3(\active_reg_reg_n_0_[10] ),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\active_reg_reg_n_0_[14] ),
        .O(sda_out_tristate_oe_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF88C88888)) 
    sda_out_tristate_oe_i_16
       (.I0(sda_out_tristate_oe_i_22_n_0),
        .I1(sda_out_tristate_oe_i_21_n_0),
        .I2(\cnt2_reg_n_0_[0] ),
        .I3(i2c_sm[1]),
        .I4(sda_out_tristate_oe_i_23_n_0),
        .I5(sda_out_tristate_oe_i_24_n_0),
        .O(sda_out_tristate_oe_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sda_out_tristate_oe_i_17
       (.I0(\cnt_reg[2]__0_n_0 ),
        .I1(\cnt_reg[0]__0_n_0 ),
        .I2(\cnt_reg[1]__0_n_0 ),
        .I3(i2c_sm[3]),
        .I4(i2c_sm[1]),
        .I5(i2c_sm[2]),
        .O(sda_out_tristate_oe_i_17_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    sda_out_tristate_oe_i_18
       (.I0(i2c_sm[1]),
        .I1(\cnt2_reg_n_0_[0] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_18_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    sda_out_tristate_oe_i_19
       (.I0(\cnt_reg[2]__0_n_0 ),
        .I1(\cnt_reg[1]__0_n_0 ),
        .I2(\cnt_reg[0]__0_n_0 ),
        .O(sda_out_tristate_oe_i_19_n_0));
  LUT6 #(
    .INIT(64'h0000000000F08800)) 
    sda_out_tristate_oe_i_2
       (.I0(sda_out_tristate_oe_i_7_n_0),
        .I1(\active_reg_reg_n_0_[7] ),
        .I2(sda_out_tristate_oe_i_8_n_0),
        .I3(\cnt2_reg_n_0_[0] ),
        .I4(i2c_sm[1]),
        .I5(\cnt2[1]_i_2_n_0 ),
        .O(sda_out_tristate_oe_i_2_n_0));
  LUT5 #(
    .INIT(32'hA000C000)) 
    sda_out_tristate_oe_i_20
       (.I0(\active_reg_reg_n_0_[5] ),
        .I1(\active_reg_reg_n_0_[3] ),
        .I2(i2c_sm[2]),
        .I3(i2c_sm[0]),
        .I4(\cnt2_reg_n_0_[1] ),
        .O(sda_out_tristate_oe_i_20_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    sda_out_tristate_oe_i_21
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[0]),
        .I2(\cnt2_reg_n_0_[1] ),
        .O(sda_out_tristate_oe_i_21_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    sda_out_tristate_oe_i_22
       (.I0(\cnt2_reg_n_0_[0] ),
        .I1(\active_reg_reg_n_0_[15] ),
        .I2(\cnt2_reg_n_0_[3] ),
        .I3(\cnt2_reg_n_0_[2] ),
        .I4(i2c_sm[1]),
        .O(sda_out_tristate_oe_i_22_n_0));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    sda_out_tristate_oe_i_23
       (.I0(\active_reg_reg_n_0_[5] ),
        .I1(\cnt2_reg_n_0_[3] ),
        .I2(\active_reg_reg_n_0_[13] ),
        .I3(\cnt2_reg_n_0_[2] ),
        .I4(\active_reg_reg_n_0_[9] ),
        .O(sda_out_tristate_oe_i_23_n_0));
  LUT6 #(
    .INIT(64'h0100100000001000)) 
    sda_out_tristate_oe_i_24
       (.I0(i2c_sm[0]),
        .I1(i2c_sm[2]),
        .I2(\cnt2_reg_n_0_[1] ),
        .I3(i2c_sm[1]),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\cnt2_reg_n_0_[0] ),
        .O(sda_out_tristate_oe_i_24_n_0));
  LUT6 #(
    .INIT(64'hAA00AA00000C0000)) 
    sda_out_tristate_oe_i_3
       (.I0(sda_out_tristate_oe_i_9_n_0),
        .I1(sda_out_tristate_oe_i_10_n_0),
        .I2(\cnt2_reg_n_0_[0] ),
        .I3(\cnt2_reg_n_0_[3] ),
        .I4(i2c_sm[1]),
        .I5(\cnt2_reg_n_0_[2] ),
        .O(sda_out_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFAFFF8)) 
    sda_out_tristate_oe_i_4
       (.I0(sda_out_tristate_oe_i_11_n_0),
        .I1(sda_out_tristate_oe_i_12_n_0),
        .I2(sda_out_tristate_oe_i_13_n_0),
        .I3(sda_out_tristate_oe_i_14_n_0),
        .I4(sda_out_tristate_oe_i_15_n_0),
        .I5(sda_out_tristate_oe_i_16_n_0),
        .O(sda_out_tristate_oe_i_4_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAAAAAAAEAAA)) 
    sda_out_tristate_oe_i_5
       (.I0(sda_out_tristate_oe_i_17_n_0),
        .I1(sda_out_tristate_oe_i_18_n_0),
        .I2(sda_out_tristate_oe_i_7_n_0),
        .I3(\active_reg_reg_n_0_[2] ),
        .I4(\cnt2_reg_n_0_[2] ),
        .I5(\active_reg_reg_n_0_[6] ),
        .O(sda_out_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'h00FF00FF00FFFF80)) 
    sda_out_tristate_oe_i_6
       (.I0(sda_out_tristate_oe_i_19_n_0),
        .I1(clk_data_reg_0),
        .I2(i2c_sm[0]),
        .I3(i2c_sm[3]),
        .I4(i2c_sm[1]),
        .I5(i2c_sm[2]),
        .O(sda_out__0));
  LUT3 #(
    .INIT(8'h80)) 
    sda_out_tristate_oe_i_7
       (.I0(i2c_sm[2]),
        .I1(i2c_sm[0]),
        .I2(\cnt2_reg_n_0_[1] ),
        .O(sda_out_tristate_oe_i_7_n_0));
  LUT5 #(
    .INIT(32'hA000C000)) 
    sda_out_tristate_oe_i_8
       (.I0(\active_reg_reg_n_0_[13] ),
        .I1(\active_reg_reg_n_0_[11] ),
        .I2(i2c_sm[2]),
        .I3(i2c_sm[0]),
        .I4(\cnt2_reg_n_0_[1] ),
        .O(sda_out_tristate_oe_i_8_n_0));
  LUT5 #(
    .INIT(32'h0CA000A0)) 
    sda_out_tristate_oe_i_9
       (.I0(sda_out_tristate_oe_i_20_n_0),
        .I1(\active_reg_reg_n_0_[15] ),
        .I2(i2c_sm[1]),
        .I3(\cnt2_reg_n_0_[0] ),
        .I4(sda_out_tristate_oe_i_7_n_0),
        .O(sda_out_tristate_oe_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sda_out_tristate_oe_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_out_tristate_oe_i_1_n_0),
        .Q(sda_out_tristate_oe_reg_n_0),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "4631da76" *) 
(* NotValidForBitStream *)
module top
   (btn,
    sw,
    led6_r,
    sysclk,
    ac_bclk,
    ac_mclk,
    ac_muten,
    ac_pbdat,
    ac_pblrc,
    ac_recdat,
    ac_reclrc,
    ac_scl,
    ac_sda);
  input [3:0]btn;
  input [3:0]sw;
  output led6_r;
  input sysclk;
  output ac_bclk;
  output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  input ac_recdat;
  output ac_reclrc;
  output ac_scl;
  inout ac_sda;

  wire ac_bclk;
  wire ac_mclk;
  wire ac_mclk_OBUF;
  wire ac_muten;
  wire ac_muten_OBUF;
  wire ac_pbdat;
  wire ac_pblrc;
  wire ac_reclrc;
  wire ac_scl;
  wire ac_scl_OBUFT_inst_i_2_n_0;
  wire ac_scl_TRI;
  wire ac_sda;
  wire ac_sda_OBUFT_inst_i_2_n_0;
  wire ac_sda_TRI;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire clk_data;
  wire clk_mclk_i_1_n_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire i2cConf_n_0;
  wire i2cConf_n_1;
  wire i2cConf_n_2;
  wire led6_r;
  wire led6_r_OBUF;
  wire [3:0]sw;
  wire sysclk;
  wire sysclk_IBUF;
  wire sysclk_IBUF_BUFG;

initial begin
 $sdf_annotate("top_tb_time_impl.sdf",,,,"tool_control");
end
  OBUFT ac_bclk_OBUF_inst
       (.I(1'b0),
        .O(ac_bclk),
        .T(1'b1));
  OBUF ac_mclk_OBUF_inst
       (.I(ac_mclk_OBUF),
        .O(ac_mclk));
  OBUF ac_muten_OBUF_inst
       (.I(ac_muten_OBUF),
        .O(ac_muten));
  OBUFT ac_pbdat_OBUF_inst
       (.I(1'b0),
        .O(ac_pbdat),
        .T(1'b1));
  OBUFT ac_pblrc_OBUF_inst
       (.I(1'b0),
        .O(ac_pblrc),
        .T(1'b1));
  OBUFT ac_reclrc_OBUF_inst
       (.I(1'b0),
        .O(ac_reclrc),
        .T(1'b1));
  OBUFT ac_scl_OBUFT_inst
       (.I(1'b0),
        .O(ac_scl),
        .T(ac_scl_TRI));
  FDRE #(
    .INIT(1'b1)) 
    ac_scl_OBUFT_inst_i_2
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(i2cConf_n_1),
        .Q(ac_scl_OBUFT_inst_i_2_n_0),
        .R(1'b0));
  OBUFT ac_sda_OBUFT_inst
       (.I(1'b0),
        .O(ac_sda),
        .T(ac_sda_TRI));
  FDRE #(
    .INIT(1'b1)) 
    ac_sda_OBUFT_inst_i_2
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(i2cConf_n_2),
        .Q(ac_sda_OBUFT_inst_i_2_n_0),
        .R(1'b0));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF));
  (* \PinAttr:I2:HOLD_DETOUR  = "178" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    clk_mclk_i_1
       (.I0(btn_IBUF),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(ac_mclk_OBUF),
        .O(clk_mclk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_mclk_reg
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_mclk_i_1_n_0),
        .Q(ac_mclk_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(btn_IBUF),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(btn_IBUF),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(btn_IBUF),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  BUFG \cnt_reg[2]__0_i_2 
       (.I(i2cConf_n_0),
        .O(clk_data));
  i2c_configurator i2cConf
       (.CLK(sysclk_IBUF_BUFG),
        .\FSM_sequential_i2c_sm_reg[3]_0 (i2cConf_n_1),
        .ac_scl_OBUFT_inst_i_2(ac_scl_OBUFT_inst_i_2_n_0),
        .ac_scl_TRI(ac_scl_TRI),
        .ac_sda_OBUFT_inst_i_2(ac_sda_OBUFT_inst_i_2_n_0),
        .ac_sda_TRI(ac_sda_TRI),
        .btn_IBUF(btn_IBUF),
        .clk_data(clk_data),
        .clk_data_reg_0(i2cConf_n_0),
        .clk_data_reg_1(i2cConf_n_2));
  OBUF led6_r_OBUF_inst
       (.I(led6_r_OBUF),
        .O(led6_r));
  LUT1 #(
    .INIT(2'h1)) 
    led6_r_OBUF_inst_i_1
       (.I0(ac_muten_OBUF),
        .O(led6_r_OBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(ac_muten_OBUF));
  BUFG sysclk_IBUF_BUFG_inst
       (.I(sysclk_IBUF),
        .O(sysclk_IBUF_BUFG));
  IBUF sysclk_IBUF_inst
       (.I(sysclk),
        .O(sysclk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
