-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Mar 23 11:17:53 2021
-- Host        : localhost.localdomain running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jesse/Xilinx_stuff/AudioCodecDemo/AudioCodecDemo.sim/topsim/synth/func/xsim/top_tb_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i2c_configurator is
  port (
    clk_data_reg_0 : out STD_LOGIC;
    \FSM_sequential_i2c_sm_reg[3]_0\ : out STD_LOGIC;
    clk_data_reg_1 : out STD_LOGIC;
    ac_scl_TRI : out STD_LOGIC;
    ac_sda_TRI : out STD_LOGIC;
    CLK : in STD_LOGIC;
    ac_scl_OBUFT_inst_i_2 : in STD_LOGIC;
    ac_sda_OBUFT_inst_i_2 : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_data : in STD_LOGIC
  );
end i2c_configurator;

architecture STRUCTURE of i2c_configurator is
  signal \FSM_sequential_i2c_sm[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2c_sm[3]_i_9_n_0\ : STD_LOGIC;
  signal active_reg : STD_LOGIC;
  signal \active_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \active_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \active_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \active_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \active_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \active_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \active_reg0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__2_n_0\ : STD_LOGIC;
  signal \active_reg0_carry__2_n_1\ : STD_LOGIC;
  signal \active_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \active_reg0_carry__2_n_3\ : STD_LOGIC;
  signal active_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal active_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal active_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal active_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal active_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal active_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal active_reg0_carry_n_0 : STD_LOGIC;
  signal active_reg0_carry_n_1 : STD_LOGIC;
  signal active_reg0_carry_n_2 : STD_LOGIC;
  signal active_reg0_carry_n_3 : STD_LOGIC;
  signal \active_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \active_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal clk_data_i_1_n_0 : STD_LOGIC;
  signal \^clk_data_reg_0\ : STD_LOGIC;
  signal cnt2 : STD_LOGIC;
  signal \cnt2[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt2[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt2[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt2[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt2[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt2[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt2[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt2[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt2[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt2_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt2_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt2_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt2_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal cnt_prev : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_reg[0]__0_n_0\ : STD_LOGIC;
  signal \cnt_reg[1]__0_n_0\ : STD_LOGIC;
  signal \cnt_reg[2]__0_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal i2c_sm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i2c_sm__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal prevState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \prevState[0]_i_1_n_0\ : STD_LOGIC;
  signal \prevState[2]_i_1_n_0\ : STD_LOGIC;
  signal \regN[0]_i_2_n_0\ : STD_LOGIC;
  signal regN_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \regN_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \regN_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \registers[0]_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal run_cnt : STD_LOGIC;
  signal run_cnt_reg : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \run_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \run_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \run_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \run_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal scl_out_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal scl_out_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal scl_out_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal scl_out_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal scl_out_tristate_oe_reg_n_0 : STD_LOGIC;
  signal \sda_out__0\ : STD_LOGIC;
  signal sda_out_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_11_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_12_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_13_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_14_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_15_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_16_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_17_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_18_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_19_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_20_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_21_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_22_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_23_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_24_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_7_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_9_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_reg_n_0 : STD_LOGIC;
  signal NLW_active_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_active_reg0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_active_reg0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_active_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_regN_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[3]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[3]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_i2c_sm[3]_i_9\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_sm_reg[0]\ : label is "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_sm_reg[1]\ : label is "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_sm_reg[2]\ : label is "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2c_sm_reg[3]\ : label is "rw:0011,ack1:0100,addr1:0010,iSTATE:1010,start:0001,idle:0000,stop:1001,data:0111,ack3:1000,ack2:0110,addr2:0101";
  attribute SOFT_HLUTNM of \active_reg[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \active_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \active_reg[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \active_reg[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_reg[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \active_reg[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \active_reg[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \active_reg[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \active_reg[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \active_reg[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \active_reg[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \active_reg[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_reg[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \active_reg[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \active_reg[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt2[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt2[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt[0]__0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[2]__0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[5]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \prevState[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \prevState[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \run_cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \run_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \run_cnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \run_cnt[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of scl_out_tristate_oe_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of scl_out_tristate_oe_i_4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_11 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_14 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_18 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_19 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_20 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_21 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_22 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_7 : label is "soft_lutpair4";
begin
  clk_data_reg_0 <= \^clk_data_reg_0\;
\FSM_sequential_i2c_sm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEFF"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(1),
      I2 => i2c_sm(3),
      I3 => run_cnt_reg(4),
      I4 => i2c_sm(0),
      O => \i2c_sm__0\(0)
    );
\FSM_sequential_i2c_sm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0F02"
    )
        port map (
      I0 => run_cnt_reg(4),
      I1 => i2c_sm(2),
      I2 => i2c_sm(3),
      I3 => i2c_sm(1),
      I4 => i2c_sm(0),
      O => \i2c_sm__0\(1)
    );
\FSM_sequential_i2c_sm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => i2c_sm(0),
      I1 => i2c_sm(1),
      I2 => i2c_sm(2),
      I3 => i2c_sm(3),
      O => \i2c_sm__0\(2)
    );
\FSM_sequential_i2c_sm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAAB"
    )
        port map (
      I0 => \FSM_sequential_i2c_sm[3]_i_3_n_0\,
      I1 => i2c_sm(3),
      I2 => \FSM_sequential_i2c_sm[3]_i_4_n_0\,
      I3 => i2c_sm(0),
      I4 => \FSM_sequential_i2c_sm[3]_i_5_n_0\,
      I5 => \FSM_sequential_i2c_sm[3]_i_6_n_0\,
      O => \FSM_sequential_i2c_sm[3]_i_1_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => \cnt2_reg_n_0_[2]\,
      I2 => \cnt2_reg_n_0_[3]\,
      I3 => \cnt2_reg_n_0_[0]\,
      I4 => \cnt2_reg_n_0_[1]\,
      I5 => i2c_sm(2),
      O => \FSM_sequential_i2c_sm[3]_i_10_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFC002"
    )
        port map (
      I0 => run_cnt_reg(4),
      I1 => i2c_sm(2),
      I2 => i2c_sm(1),
      I3 => i2c_sm(0),
      I4 => i2c_sm(3),
      O => \i2c_sm__0\(3)
    );
\FSM_sequential_i2c_sm[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000830000008000"
    )
        port map (
      I0 => \active_reg[2]_i_3_n_0\,
      I1 => \cnt2[3]_i_4_n_0\,
      I2 => \cnt2_reg_n_0_[0]\,
      I3 => \cnt2_reg_n_0_[1]\,
      I4 => \cnt2[1]_i_2_n_0\,
      I5 => \FSM_sequential_i2c_sm[3]_i_7_n_0\,
      O => \FSM_sequential_i2c_sm[3]_i_3_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => i2c_sm(2),
      O => \FSM_sequential_i2c_sm[3]_i_4_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400044444000"
    )
        port map (
      I0 => i2c_sm(3),
      I1 => \cnt2[3]_i_4_n_0\,
      I2 => \FSM_sequential_i2c_sm[3]_i_8_n_0\,
      I3 => \cnt2_reg_n_0_[0]\,
      I4 => \FSM_sequential_i2c_sm[3]_i_9_n_0\,
      I5 => \cnt2[1]_i_2_n_0\,
      O => \FSM_sequential_i2c_sm[3]_i_5_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F011DD"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => i2c_sm(2),
      I2 => \FSM_sequential_i2c_sm[3]_i_10_n_0\,
      I3 => i2c_sm(3),
      I4 => i2c_sm(0),
      I5 => \cnt2[3]_i_4_n_0\,
      O => \FSM_sequential_i2c_sm[3]_i_6_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"115F"
    )
        port map (
      I0 => i2c_sm(3),
      I1 => i2c_sm(0),
      I2 => i2c_sm(2),
      I3 => i2c_sm(1),
      O => \FSM_sequential_i2c_sm[3]_i_7_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C20000000"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => \cnt2_reg_n_0_[2]\,
      I2 => \cnt2_reg_n_0_[3]\,
      I3 => i2c_sm(2),
      I4 => i2c_sm(0),
      I5 => \cnt2_reg_n_0_[1]\,
      O => \FSM_sequential_i2c_sm[3]_i_8_n_0\
    );
\FSM_sequential_i2c_sm[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => \cnt2_reg_n_0_[0]\,
      I2 => \cnt2_reg_n_0_[1]\,
      I3 => i2c_sm(0),
      I4 => i2c_sm(2),
      O => \FSM_sequential_i2c_sm[3]_i_9_n_0\
    );
\FSM_sequential_i2c_sm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_i2c_sm[3]_i_1_n_0\,
      D => \i2c_sm__0\(0),
      Q => i2c_sm(0),
      R => '0'
    );
\FSM_sequential_i2c_sm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_i2c_sm[3]_i_1_n_0\,
      D => \i2c_sm__0\(1),
      Q => i2c_sm(1),
      R => '0'
    );
\FSM_sequential_i2c_sm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_i2c_sm[3]_i_1_n_0\,
      D => \i2c_sm__0\(2),
      Q => i2c_sm(2),
      R => '0'
    );
\FSM_sequential_i2c_sm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_i2c_sm[3]_i_1_n_0\,
      D => \i2c_sm__0\(3),
      Q => i2c_sm(3),
      R => '0'
    );
ac_scl_OBUFT_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => scl_out_tristate_oe_reg_n_0,
      I1 => ac_scl_OBUFT_inst_i_2,
      O => ac_scl_TRI
    );
ac_scl_OBUFT_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55FF505040A0"
    )
        port map (
      I0 => i2c_sm(3),
      I1 => scl_out_tristate_oe_i_4_n_0,
      I2 => \^clk_data_reg_0\,
      I3 => i2c_sm(0),
      I4 => \FSM_sequential_i2c_sm[3]_i_4_n_0\,
      I5 => ac_scl_OBUFT_inst_i_2,
      O => \FSM_sequential_i2c_sm_reg[3]_0\
    );
ac_sda_OBUFT_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_tristate_oe_reg_n_0,
      I1 => ac_sda_OBUFT_inst_i_2,
      O => ac_sda_TRI
    );
ac_sda_OBUFT_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00FF0F80"
    )
        port map (
      I0 => sda_out_tristate_oe_i_19_n_0,
      I1 => \^clk_data_reg_0\,
      I2 => i2c_sm(0),
      I3 => i2c_sm(3),
      I4 => \FSM_sequential_i2c_sm[3]_i_4_n_0\,
      I5 => ac_sda_OBUFT_inst_i_2,
      O => clk_data_reg_1
    );
active_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => active_reg0_carry_n_0,
      CO(2) => active_reg0_carry_n_1,
      CO(1) => active_reg0_carry_n_2,
      CO(0) => active_reg0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => active_reg0_carry_i_1_n_0,
      DI(0) => active_reg0_carry_i_2_n_0,
      O(3 downto 0) => NLW_active_reg0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => active_reg0_carry_i_3_n_0,
      S(2) => active_reg0_carry_i_4_n_0,
      S(1) => active_reg0_carry_i_5_n_0,
      S(0) => active_reg0_carry_i_6_n_0
    );
\active_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => active_reg0_carry_n_0,
      CO(3) => \active_reg0_carry__0_n_0\,
      CO(2) => \active_reg0_carry__0_n_1\,
      CO(1) => \active_reg0_carry__0_n_2\,
      CO(0) => \active_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_active_reg0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \active_reg0_carry__0_i_1_n_0\,
      S(2) => \active_reg0_carry__0_i_2_n_0\,
      S(1) => \active_reg0_carry__0_i_3_n_0\,
      S(0) => \active_reg0_carry__0_i_4_n_0\
    );
\active_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(14),
      I1 => regN_reg(15),
      O => \active_reg0_carry__0_i_1_n_0\
    );
\active_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(12),
      I1 => regN_reg(13),
      O => \active_reg0_carry__0_i_2_n_0\
    );
\active_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(10),
      I1 => regN_reg(11),
      O => \active_reg0_carry__0_i_3_n_0\
    );
\active_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(8),
      I1 => regN_reg(9),
      O => \active_reg0_carry__0_i_4_n_0\
    );
\active_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \active_reg0_carry__0_n_0\,
      CO(3) => \active_reg0_carry__1_n_0\,
      CO(2) => \active_reg0_carry__1_n_1\,
      CO(1) => \active_reg0_carry__1_n_2\,
      CO(0) => \active_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_active_reg0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \active_reg0_carry__1_i_1_n_0\,
      S(2) => \active_reg0_carry__1_i_2_n_0\,
      S(1) => \active_reg0_carry__1_i_3_n_0\,
      S(0) => \active_reg0_carry__1_i_4_n_0\
    );
\active_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(22),
      I1 => regN_reg(23),
      O => \active_reg0_carry__1_i_1_n_0\
    );
\active_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(20),
      I1 => regN_reg(21),
      O => \active_reg0_carry__1_i_2_n_0\
    );
\active_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(18),
      I1 => regN_reg(19),
      O => \active_reg0_carry__1_i_3_n_0\
    );
\active_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(16),
      I1 => regN_reg(17),
      O => \active_reg0_carry__1_i_4_n_0\
    );
\active_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \active_reg0_carry__1_n_0\,
      CO(3) => \active_reg0_carry__2_n_0\,
      CO(2) => \active_reg0_carry__2_n_1\,
      CO(1) => \active_reg0_carry__2_n_2\,
      CO(0) => \active_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => regN_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_active_reg0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \active_reg0_carry__2_i_1_n_0\,
      S(2) => \active_reg0_carry__2_i_2_n_0\,
      S(1) => \active_reg0_carry__2_i_3_n_0\,
      S(0) => \active_reg0_carry__2_i_4_n_0\
    );
\active_reg0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(30),
      I1 => regN_reg(31),
      O => \active_reg0_carry__2_i_1_n_0\
    );
\active_reg0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(28),
      I1 => regN_reg(29),
      O => \active_reg0_carry__2_i_2_n_0\
    );
\active_reg0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(26),
      I1 => regN_reg(27),
      O => \active_reg0_carry__2_i_3_n_0\
    );
\active_reg0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(24),
      I1 => regN_reg(25),
      O => \active_reg0_carry__2_i_4_n_0\
    );
active_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => regN_reg(2),
      I1 => regN_reg(3),
      O => active_reg0_carry_i_1_n_0
    );
active_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => regN_reg(0),
      I1 => regN_reg(1),
      O => active_reg0_carry_i_2_n_0
    );
active_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(6),
      I1 => regN_reg(7),
      O => active_reg0_carry_i_3_n_0
    );
active_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(4),
      I1 => regN_reg(5),
      O => active_reg0_carry_i_4_n_0
    );
active_reg0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => regN_reg(3),
      I1 => regN_reg(2),
      O => active_reg0_carry_i_5_n_0
    );
active_reg0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => regN_reg(1),
      I1 => regN_reg(0),
      O => active_reg0_carry_i_6_n_0
    );
\active_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08BA"
    )
        port map (
      I0 => regN_reg(0),
      I1 => regN_reg(3),
      I2 => regN_reg(2),
      I3 => regN_reg(1),
      O => \registers[0]_0\(5)
    );
\active_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"25CE"
    )
        port map (
      I0 => regN_reg(1),
      I1 => regN_reg(0),
      I2 => regN_reg(3),
      I3 => regN_reg(2),
      O => \registers[0]_0\(4)
    );
\active_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B20"
    )
        port map (
      I0 => regN_reg(0),
      I1 => regN_reg(1),
      I2 => regN_reg(3),
      I3 => regN_reg(2),
      O => \registers[0]_0\(3)
    );
\active_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1900"
    )
        port map (
      I0 => regN_reg(2),
      I1 => regN_reg(3),
      I2 => regN_reg(0),
      I3 => regN_reg(1),
      O => \registers[0]_0\(2)
    );
\active_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A02"
    )
        port map (
      I0 => regN_reg(1),
      I1 => regN_reg(2),
      I2 => regN_reg(3),
      I3 => regN_reg(0),
      O => \registers[0]_0\(1)
    );
\active_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"13E4"
    )
        port map (
      I0 => regN_reg(3),
      I1 => regN_reg(1),
      I2 => regN_reg(0),
      I3 => regN_reg(2),
      O => \registers[0]_0\(0)
    );
\active_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000B000F000"
    )
        port map (
      I0 => prevState(1),
      I1 => prevState(0),
      I2 => \active_reg0_carry__2_n_0\,
      I3 => \active_reg[2]_i_3_n_0\,
      I4 => prevState(3),
      I5 => prevState(2),
      O => active_reg
    );
\active_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3020"
    )
        port map (
      I0 => regN_reg(1),
      I1 => regN_reg(2),
      I2 => regN_reg(3),
      I3 => regN_reg(0),
      O => \registers[0]_0\(13)
    );
\active_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => i2c_sm(3),
      I1 => i2c_sm(0),
      I2 => i2c_sm(1),
      I3 => i2c_sm(2),
      O => \active_reg[2]_i_3_n_0\
    );
\active_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => regN_reg(2),
      I1 => regN_reg(3),
      I2 => regN_reg(1),
      I3 => regN_reg(0),
      O => \registers[0]_0\(12)
    );
\active_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F085"
    )
        port map (
      I0 => regN_reg(3),
      I1 => regN_reg(0),
      I2 => regN_reg(2),
      I3 => regN_reg(1),
      O => \registers[0]_0\(11)
    );
\active_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"288F"
    )
        port map (
      I0 => regN_reg(0),
      I1 => regN_reg(2),
      I2 => regN_reg(3),
      I3 => regN_reg(1),
      O => \registers[0]_0\(10)
    );
\active_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"92E9"
    )
        port map (
      I0 => regN_reg(1),
      I1 => regN_reg(0),
      I2 => regN_reg(2),
      I3 => regN_reg(3),
      O => \registers[0]_0\(9)
    );
\active_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => regN_reg(2),
      I1 => regN_reg(3),
      I2 => regN_reg(1),
      O => \registers[0]_0\(8)
    );
\active_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => regN_reg(2),
      I1 => regN_reg(3),
      I2 => regN_reg(0),
      I3 => regN_reg(1),
      O => \registers[0]_0\(7)
    );
\active_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2838"
    )
        port map (
      I0 => regN_reg(0),
      I1 => regN_reg(3),
      I2 => regN_reg(2),
      I3 => regN_reg(1),
      O => \registers[0]_0\(6)
    );
\active_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(5),
      Q => \active_reg_reg_n_0_[10]\,
      R => '0'
    );
\active_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(4),
      Q => \active_reg_reg_n_0_[11]\,
      R => '0'
    );
\active_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(3),
      Q => \active_reg_reg_n_0_[12]\,
      R => '0'
    );
\active_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(2),
      Q => \active_reg_reg_n_0_[13]\,
      R => '0'
    );
\active_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(1),
      Q => \active_reg_reg_n_0_[14]\,
      R => '0'
    );
\active_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(0),
      Q => \active_reg_reg_n_0_[15]\,
      R => '0'
    );
\active_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(13),
      Q => \active_reg_reg_n_0_[2]\,
      R => '0'
    );
\active_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(12),
      Q => \active_reg_reg_n_0_[3]\,
      R => '0'
    );
\active_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(11),
      Q => \active_reg_reg_n_0_[4]\,
      R => '0'
    );
\active_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(10),
      Q => \active_reg_reg_n_0_[5]\,
      R => '0'
    );
\active_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(9),
      Q => \active_reg_reg_n_0_[6]\,
      R => '0'
    );
\active_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(8),
      Q => \active_reg_reg_n_0_[7]\,
      R => '0'
    );
\active_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(7),
      Q => \active_reg_reg_n_0_[8]\,
      R => '0'
    );
\active_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \registers[0]_0\(6),
      Q => \active_reg_reg_n_0_[9]\,
      R => '0'
    );
clk_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => btn_IBUF(0),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt[5]_i_3_n_0\,
      I4 => \^clk_data_reg_0\,
      O => clk_data_i_1_n_0
    );
clk_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => clk_data_i_1_n_0,
      Q => \^clk_data_reg_0\,
      R => '0'
    );
\cnt2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA80AAAA2AAAAA"
    )
        port map (
      I0 => \cnt2[0]_i_2_n_0\,
      I1 => i2c_sm(2),
      I2 => i2c_sm(1),
      I3 => \cnt2_reg_n_0_[2]\,
      I4 => \cnt2_reg_n_0_[3]\,
      I5 => \cnt2_reg_n_0_[1]\,
      O => \cnt2[0]_i_1_n_0\
    );
\cnt2[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt2[3]_i_4_n_0\,
      I1 => \cnt2_reg_n_0_[0]\,
      O => \cnt2[0]_i_2_n_0\
    );
\cnt2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80000FFFFF80000"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(1),
      I2 => \cnt2[1]_i_2_n_0\,
      I3 => \cnt2[3]_i_4_n_0\,
      I4 => \cnt2_reg_n_0_[1]\,
      I5 => \cnt2_reg_n_0_[0]\,
      O => \cnt2[1]_i_1_n_0\
    );
\cnt2[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cnt2_reg_n_0_[3]\,
      I1 => \cnt2_reg_n_0_[2]\,
      O => \cnt2[1]_i_2_n_0\
    );
\cnt2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF2020DF5D2020"
    )
        port map (
      I0 => \cnt2_reg_n_0_[1]\,
      I1 => \cnt2[3]_i_4_n_0\,
      I2 => \cnt2_reg_n_0_[0]\,
      I3 => \cnt2[2]_i_2_n_0\,
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \cnt2_reg_n_0_[3]\,
      O => \cnt2[2]_i_1_n_0\
    );
\cnt2[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => i2c_sm(2),
      O => \cnt2[2]_i_2_n_0\
    );
\cnt2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3042"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => i2c_sm(3),
      I2 => i2c_sm(0),
      I3 => i2c_sm(2),
      O => cnt2
    );
\cnt2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBEFFBEBAAAAAAA"
    )
        port map (
      I0 => \cnt2[3]_i_3_n_0\,
      I1 => \cnt2[3]_i_4_n_0\,
      I2 => \cnt2_reg_n_0_[0]\,
      I3 => \cnt2_reg_n_0_[1]\,
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \cnt2_reg_n_0_[3]\,
      O => \cnt2[3]_i_2_n_0\
    );
\cnt2[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF00BF00000000"
    )
        port map (
      I0 => \cnt2_reg_n_0_[2]\,
      I1 => i2c_sm(1),
      I2 => i2c_sm(2),
      I3 => \cnt2_reg_n_0_[0]\,
      I4 => \cnt2[3]_i_4_n_0\,
      I5 => \cnt2_reg_n_0_[3]\,
      O => \cnt2[3]_i_3_n_0\
    );
\cnt2[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFFFDFDFDFD"
    )
        port map (
      I0 => \cnt_reg[2]__0_n_0\,
      I1 => \cnt_reg[0]__0_n_0\,
      I2 => \cnt_reg[1]__0_n_0\,
      I3 => cnt_prev(0),
      I4 => cnt_prev(1),
      I5 => cnt_prev(2),
      O => \cnt2[3]_i_4_n_0\
    );
\cnt2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt2,
      D => \cnt2[0]_i_1_n_0\,
      Q => \cnt2_reg_n_0_[0]\,
      R => '0'
    );
\cnt2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt2,
      D => \cnt2[1]_i_1_n_0\,
      Q => \cnt2_reg_n_0_[1]\,
      R => '0'
    );
\cnt2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt2,
      D => \cnt2[2]_i_1_n_0\,
      Q => \cnt2_reg_n_0_[2]\,
      R => '0'
    );
\cnt2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => cnt2,
      D => \cnt2[3]_i_2_n_0\,
      Q => \cnt2_reg_n_0_[3]\,
      R => '0'
    );
\cnt[0]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"23"
    )
        port map (
      I0 => \cnt_reg[1]__0_n_0\,
      I1 => \cnt_reg[0]__0_n_0\,
      I2 => \cnt_reg[2]__0_n_0\,
      O => \cnt[0]__0_i_1_n_0\
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => btn_IBUF(0),
      I1 => \cnt_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\cnt[1]__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg[1]__0_n_0\,
      I1 => \cnt_reg[0]__0_n_0\,
      O => \cnt[1]__0_i_1_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => btn_IBUF(0),
      I2 => \cnt_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\cnt[2]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => \cnt_reg[1]__0_n_0\,
      I1 => \cnt_reg[0]__0_n_0\,
      I2 => \cnt_reg[2]__0_n_0\,
      O => \cnt[2]__0_i_1_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => btn_IBUF(0),
      I3 => \cnt_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => btn_IBUF(0),
      I4 => \cnt_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => btn_IBUF(0),
      I5 => \cnt_reg_n_0_[4]\,
      O => p_1_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => btn_IBUF(0),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt[5]_i_3_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \cnt[5]_i_4_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => btn_IBUF(0),
      I3 => \cnt_reg_n_0_[5]\,
      O => p_1_in(5)
    );
\cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => btn_IBUF(0),
      I4 => \cnt_reg_n_0_[0]\,
      O => \cnt[5]_i_3_n_0\
    );
\cnt[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => btn_IBUF(0),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => \cnt[5]_i_4_n_0\
    );
\cnt_prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]__0_n_0\,
      Q => cnt_prev(0),
      R => '0'
    );
\cnt_prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[1]__0_n_0\,
      Q => cnt_prev(1),
      R => '0'
    );
\cnt_prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[2]__0_n_0\,
      Q => cnt_prev(2),
      R => '0'
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(0),
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[5]_i_1_n_0\
    );
\cnt_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => \cnt[0]__0_i_1_n_0\,
      Q => \cnt_reg[0]__0_n_0\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[5]_i_1_n_0\
    );
\cnt_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => \cnt[1]__0_i_1_n_0\,
      Q => \cnt_reg[1]__0_n_0\,
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[5]_i_1_n_0\
    );
\cnt_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => \cnt[2]__0_i_1_n_0\,
      Q => \cnt_reg[2]__0_n_0\,
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(3),
      Q => \cnt_reg_n_0_[3]\,
      R => \cnt[5]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(4),
      Q => \cnt_reg_n_0_[4]\,
      R => \cnt[5]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(5),
      Q => \cnt_reg_n_0_[5]\,
      R => \cnt[5]_i_1_n_0\
    );
\prevState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => i2c_sm(3),
      I2 => i2c_sm(0),
      O => \prevState[0]_i_1_n_0\
    );
\prevState[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(3),
      O => \prevState[2]_i_1_n_0\
    );
\prevState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => \prevState[0]_i_1_n_0\,
      Q => prevState(0),
      R => '0'
    );
\prevState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => i2c_sm(1),
      Q => prevState(1),
      R => '0'
    );
\prevState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => \prevState[2]_i_1_n_0\,
      Q => prevState(2),
      R => '0'
    );
\prevState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => '1',
      D => i2c_sm(3),
      Q => prevState(3),
      R => '0'
    );
\regN[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => regN_reg(0),
      O => \regN[0]_i_2_n_0\
    );
\regN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[0]_i_1_n_7\,
      Q => regN_reg(0),
      R => '0'
    );
\regN_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \regN_reg[0]_i_1_n_0\,
      CO(2) => \regN_reg[0]_i_1_n_1\,
      CO(1) => \regN_reg[0]_i_1_n_2\,
      CO(0) => \regN_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \regN_reg[0]_i_1_n_4\,
      O(2) => \regN_reg[0]_i_1_n_5\,
      O(1) => \regN_reg[0]_i_1_n_6\,
      O(0) => \regN_reg[0]_i_1_n_7\,
      S(3 downto 1) => regN_reg(3 downto 1),
      S(0) => \regN[0]_i_2_n_0\
    );
\regN_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[8]_i_1_n_5\,
      Q => regN_reg(10),
      R => '0'
    );
\regN_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[8]_i_1_n_4\,
      Q => regN_reg(11),
      R => '0'
    );
\regN_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[12]_i_1_n_7\,
      Q => regN_reg(12),
      R => '0'
    );
\regN_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[8]_i_1_n_0\,
      CO(3) => \regN_reg[12]_i_1_n_0\,
      CO(2) => \regN_reg[12]_i_1_n_1\,
      CO(1) => \regN_reg[12]_i_1_n_2\,
      CO(0) => \regN_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[12]_i_1_n_4\,
      O(2) => \regN_reg[12]_i_1_n_5\,
      O(1) => \regN_reg[12]_i_1_n_6\,
      O(0) => \regN_reg[12]_i_1_n_7\,
      S(3 downto 0) => regN_reg(15 downto 12)
    );
\regN_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[12]_i_1_n_6\,
      Q => regN_reg(13),
      R => '0'
    );
\regN_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[12]_i_1_n_5\,
      Q => regN_reg(14),
      R => '0'
    );
\regN_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[12]_i_1_n_4\,
      Q => regN_reg(15),
      R => '0'
    );
\regN_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[16]_i_1_n_7\,
      Q => regN_reg(16),
      R => '0'
    );
\regN_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[12]_i_1_n_0\,
      CO(3) => \regN_reg[16]_i_1_n_0\,
      CO(2) => \regN_reg[16]_i_1_n_1\,
      CO(1) => \regN_reg[16]_i_1_n_2\,
      CO(0) => \regN_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[16]_i_1_n_4\,
      O(2) => \regN_reg[16]_i_1_n_5\,
      O(1) => \regN_reg[16]_i_1_n_6\,
      O(0) => \regN_reg[16]_i_1_n_7\,
      S(3 downto 0) => regN_reg(19 downto 16)
    );
\regN_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[16]_i_1_n_6\,
      Q => regN_reg(17),
      R => '0'
    );
\regN_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[16]_i_1_n_5\,
      Q => regN_reg(18),
      R => '0'
    );
\regN_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[16]_i_1_n_4\,
      Q => regN_reg(19),
      R => '0'
    );
\regN_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[0]_i_1_n_6\,
      Q => regN_reg(1),
      R => '0'
    );
\regN_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[20]_i_1_n_7\,
      Q => regN_reg(20),
      R => '0'
    );
\regN_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[16]_i_1_n_0\,
      CO(3) => \regN_reg[20]_i_1_n_0\,
      CO(2) => \regN_reg[20]_i_1_n_1\,
      CO(1) => \regN_reg[20]_i_1_n_2\,
      CO(0) => \regN_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[20]_i_1_n_4\,
      O(2) => \regN_reg[20]_i_1_n_5\,
      O(1) => \regN_reg[20]_i_1_n_6\,
      O(0) => \regN_reg[20]_i_1_n_7\,
      S(3 downto 0) => regN_reg(23 downto 20)
    );
\regN_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[20]_i_1_n_6\,
      Q => regN_reg(21),
      R => '0'
    );
\regN_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[20]_i_1_n_5\,
      Q => regN_reg(22),
      R => '0'
    );
\regN_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[20]_i_1_n_4\,
      Q => regN_reg(23),
      R => '0'
    );
\regN_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[24]_i_1_n_7\,
      Q => regN_reg(24),
      R => '0'
    );
\regN_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[20]_i_1_n_0\,
      CO(3) => \regN_reg[24]_i_1_n_0\,
      CO(2) => \regN_reg[24]_i_1_n_1\,
      CO(1) => \regN_reg[24]_i_1_n_2\,
      CO(0) => \regN_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[24]_i_1_n_4\,
      O(2) => \regN_reg[24]_i_1_n_5\,
      O(1) => \regN_reg[24]_i_1_n_6\,
      O(0) => \regN_reg[24]_i_1_n_7\,
      S(3 downto 0) => regN_reg(27 downto 24)
    );
\regN_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[24]_i_1_n_6\,
      Q => regN_reg(25),
      R => '0'
    );
\regN_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[24]_i_1_n_5\,
      Q => regN_reg(26),
      R => '0'
    );
\regN_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[24]_i_1_n_4\,
      Q => regN_reg(27),
      R => '0'
    );
\regN_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[28]_i_1_n_7\,
      Q => regN_reg(28),
      R => '0'
    );
\regN_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[24]_i_1_n_0\,
      CO(3) => \NLW_regN_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \regN_reg[28]_i_1_n_1\,
      CO(1) => \regN_reg[28]_i_1_n_2\,
      CO(0) => \regN_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[28]_i_1_n_4\,
      O(2) => \regN_reg[28]_i_1_n_5\,
      O(1) => \regN_reg[28]_i_1_n_6\,
      O(0) => \regN_reg[28]_i_1_n_7\,
      S(3 downto 0) => regN_reg(31 downto 28)
    );
\regN_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[28]_i_1_n_6\,
      Q => regN_reg(29),
      R => '0'
    );
\regN_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[0]_i_1_n_5\,
      Q => regN_reg(2),
      R => '0'
    );
\regN_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[28]_i_1_n_5\,
      Q => regN_reg(30),
      R => '0'
    );
\regN_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[28]_i_1_n_4\,
      Q => regN_reg(31),
      R => '0'
    );
\regN_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[0]_i_1_n_4\,
      Q => regN_reg(3),
      R => '0'
    );
\regN_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[4]_i_1_n_7\,
      Q => regN_reg(4),
      R => '0'
    );
\regN_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[0]_i_1_n_0\,
      CO(3) => \regN_reg[4]_i_1_n_0\,
      CO(2) => \regN_reg[4]_i_1_n_1\,
      CO(1) => \regN_reg[4]_i_1_n_2\,
      CO(0) => \regN_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[4]_i_1_n_4\,
      O(2) => \regN_reg[4]_i_1_n_5\,
      O(1) => \regN_reg[4]_i_1_n_6\,
      O(0) => \regN_reg[4]_i_1_n_7\,
      S(3 downto 0) => regN_reg(7 downto 4)
    );
\regN_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[4]_i_1_n_6\,
      Q => regN_reg(5),
      R => '0'
    );
\regN_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[4]_i_1_n_5\,
      Q => regN_reg(6),
      R => '0'
    );
\regN_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[4]_i_1_n_4\,
      Q => regN_reg(7),
      R => '0'
    );
\regN_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[8]_i_1_n_7\,
      Q => regN_reg(8),
      R => '0'
    );
\regN_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \regN_reg[4]_i_1_n_0\,
      CO(3) => \regN_reg[8]_i_1_n_0\,
      CO(2) => \regN_reg[8]_i_1_n_1\,
      CO(1) => \regN_reg[8]_i_1_n_2\,
      CO(0) => \regN_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \regN_reg[8]_i_1_n_4\,
      O(2) => \regN_reg[8]_i_1_n_5\,
      O(1) => \regN_reg[8]_i_1_n_6\,
      O(0) => \regN_reg[8]_i_1_n_7\,
      S(3 downto 0) => regN_reg(11 downto 8)
    );
\regN_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_data,
      CE => active_reg,
      D => \regN_reg[8]_i_1_n_6\,
      Q => regN_reg(9),
      R => '0'
    );
\run_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \run_cnt_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\run_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \run_cnt_reg_n_0_[0]\,
      I1 => \run_cnt_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\run_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \run_cnt_reg_n_0_[1]\,
      I1 => \run_cnt_reg_n_0_[0]\,
      I2 => \run_cnt_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\run_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \run_cnt_reg_n_0_[2]\,
      I1 => \run_cnt_reg_n_0_[0]\,
      I2 => \run_cnt_reg_n_0_[1]\,
      I3 => \run_cnt_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\run_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000800"
    )
        port map (
      I0 => \cnt2_reg_n_0_[1]\,
      I1 => \cnt2_reg_n_0_[2]\,
      I2 => \cnt2_reg_n_0_[3]\,
      I3 => \active_reg[2]_i_3_n_0\,
      I4 => \cnt2_reg_n_0_[0]\,
      I5 => \cnt2[3]_i_4_n_0\,
      O => run_cnt
    );
\run_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \run_cnt_reg_n_0_[3]\,
      I1 => \run_cnt_reg_n_0_[1]\,
      I2 => \run_cnt_reg_n_0_[0]\,
      I3 => \run_cnt_reg_n_0_[2]\,
      I4 => run_cnt_reg(4),
      O => p_0_in(4)
    );
\run_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => run_cnt,
      D => p_0_in(0),
      Q => \run_cnt_reg_n_0_[0]\,
      R => '0'
    );
\run_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => run_cnt,
      D => p_0_in(1),
      Q => \run_cnt_reg_n_0_[1]\,
      R => '0'
    );
\run_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => run_cnt,
      D => p_0_in(2),
      Q => \run_cnt_reg_n_0_[2]\,
      R => '0'
    );
\run_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => run_cnt,
      D => p_0_in(3),
      Q => \run_cnt_reg_n_0_[3]\,
      R => '0'
    );
\run_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => run_cnt,
      D => p_0_in(4),
      Q => run_cnt_reg(4),
      R => '0'
    );
scl_out_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0301FFFF03010000"
    )
        port map (
      I0 => \cnt_reg[0]__0_n_0\,
      I1 => \cnt_reg[1]__0_n_0\,
      I2 => \cnt_reg[2]__0_n_0\,
      I3 => scl_out_tristate_oe_i_2_n_0,
      I4 => scl_out_tristate_oe_i_3_n_0,
      I5 => scl_out_tristate_oe_reg_n_0,
      O => scl_out_tristate_oe_i_1_n_0
    );
scl_out_tristate_oe_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(1),
      I2 => i2c_sm(3),
      O => scl_out_tristate_oe_i_2_n_0
    );
scl_out_tristate_oe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505050505050EAA0"
    )
        port map (
      I0 => i2c_sm(3),
      I1 => scl_out_tristate_oe_i_4_n_0,
      I2 => \^clk_data_reg_0\,
      I3 => i2c_sm(0),
      I4 => i2c_sm(1),
      I5 => i2c_sm(2),
      O => scl_out_tristate_oe_i_3_n_0
    );
scl_out_tristate_oe_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \cnt_reg[2]__0_n_0\,
      I1 => \cnt_reg[1]__0_n_0\,
      I2 => \cnt_reg[0]__0_n_0\,
      O => scl_out_tristate_oe_i_4_n_0
    );
scl_out_tristate_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => scl_out_tristate_oe_i_1_n_0,
      Q => scl_out_tristate_oe_reg_n_0,
      R => '0'
    );
sda_out_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => sda_out_tristate_oe_i_2_n_0,
      I1 => sda_out_tristate_oe_i_3_n_0,
      I2 => sda_out_tristate_oe_i_4_n_0,
      I3 => sda_out_tristate_oe_i_5_n_0,
      I4 => \sda_out__0\,
      I5 => sda_out_tristate_oe_reg_n_0,
      O => sda_out_tristate_oe_i_1_n_0
    );
sda_out_tristate_oe_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => \active_reg_reg_n_0_[9]\,
      I1 => \active_reg_reg_n_0_[7]\,
      I2 => i2c_sm(2),
      I3 => i2c_sm(0),
      I4 => \cnt2_reg_n_0_[1]\,
      O => sda_out_tristate_oe_i_10_n_0
    );
sda_out_tristate_oe_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => \cnt2_reg_n_0_[0]\,
      I2 => \cnt2_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_11_n_0
    );
sda_out_tristate_oe_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => \cnt2_reg_n_0_[1]\,
      I1 => i2c_sm(0),
      I2 => i2c_sm(2),
      I3 => \active_reg_reg_n_0_[8]\,
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \active_reg_reg_n_0_[12]\,
      O => sda_out_tristate_oe_i_12_n_0
    );
sda_out_tristate_oe_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000080"
    )
        port map (
      I0 => sda_out_tristate_oe_i_21_n_0,
      I1 => \active_reg_reg_n_0_[4]\,
      I2 => \cnt2_reg_n_0_[2]\,
      I3 => \cnt2_reg_n_0_[3]\,
      I4 => \cnt2_reg_n_0_[0]\,
      I5 => i2c_sm(1),
      O => sda_out_tristate_oe_i_13_n_0
    );
sda_out_tristate_oe_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \cnt2_reg_n_0_[2]\,
      I1 => \active_reg_reg_n_0_[11]\,
      I2 => \cnt2_reg_n_0_[3]\,
      I3 => \active_reg_reg_n_0_[3]\,
      I4 => \FSM_sequential_i2c_sm[3]_i_9_n_0\,
      O => sda_out_tristate_oe_i_14_n_0
    );
sda_out_tristate_oe_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000008000"
    )
        port map (
      I0 => \cnt2_reg_n_0_[1]\,
      I1 => i2c_sm(0),
      I2 => i2c_sm(2),
      I3 => \active_reg_reg_n_0_[10]\,
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \active_reg_reg_n_0_[14]\,
      O => sda_out_tristate_oe_i_15_n_0
    );
sda_out_tristate_oe_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88C88888"
    )
        port map (
      I0 => sda_out_tristate_oe_i_22_n_0,
      I1 => sda_out_tristate_oe_i_21_n_0,
      I2 => \cnt2_reg_n_0_[0]\,
      I3 => i2c_sm(1),
      I4 => sda_out_tristate_oe_i_23_n_0,
      I5 => sda_out_tristate_oe_i_24_n_0,
      O => sda_out_tristate_oe_i_16_n_0
    );
sda_out_tristate_oe_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cnt_reg[2]__0_n_0\,
      I1 => \cnt_reg[0]__0_n_0\,
      I2 => \cnt_reg[1]__0_n_0\,
      I3 => i2c_sm(3),
      I4 => i2c_sm(1),
      I5 => i2c_sm(2),
      O => sda_out_tristate_oe_i_17_n_0
    );
sda_out_tristate_oe_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => i2c_sm(1),
      I1 => \cnt2_reg_n_0_[0]\,
      I2 => \cnt2_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_18_n_0
    );
sda_out_tristate_oe_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \cnt_reg[2]__0_n_0\,
      I1 => \cnt_reg[1]__0_n_0\,
      I2 => \cnt_reg[0]__0_n_0\,
      O => sda_out_tristate_oe_i_19_n_0
    );
sda_out_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F08800"
    )
        port map (
      I0 => sda_out_tristate_oe_i_7_n_0,
      I1 => \active_reg_reg_n_0_[7]\,
      I2 => sda_out_tristate_oe_i_8_n_0,
      I3 => \cnt2_reg_n_0_[0]\,
      I4 => i2c_sm(1),
      I5 => \cnt2[1]_i_2_n_0\,
      O => sda_out_tristate_oe_i_2_n_0
    );
sda_out_tristate_oe_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => \active_reg_reg_n_0_[5]\,
      I1 => \active_reg_reg_n_0_[3]\,
      I2 => i2c_sm(2),
      I3 => i2c_sm(0),
      I4 => \cnt2_reg_n_0_[1]\,
      O => sda_out_tristate_oe_i_20_n_0
    );
sda_out_tristate_oe_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(0),
      I2 => \cnt2_reg_n_0_[1]\,
      O => sda_out_tristate_oe_i_21_n_0
    );
sda_out_tristate_oe_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \cnt2_reg_n_0_[0]\,
      I1 => \active_reg_reg_n_0_[15]\,
      I2 => \cnt2_reg_n_0_[3]\,
      I3 => \cnt2_reg_n_0_[2]\,
      I4 => i2c_sm(1),
      O => sda_out_tristate_oe_i_22_n_0
    );
sda_out_tristate_oe_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2CCE200"
    )
        port map (
      I0 => \active_reg_reg_n_0_[5]\,
      I1 => \cnt2_reg_n_0_[3]\,
      I2 => \active_reg_reg_n_0_[13]\,
      I3 => \cnt2_reg_n_0_[2]\,
      I4 => \active_reg_reg_n_0_[9]\,
      O => sda_out_tristate_oe_i_23_n_0
    );
sda_out_tristate_oe_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100100000001000"
    )
        port map (
      I0 => i2c_sm(0),
      I1 => i2c_sm(2),
      I2 => \cnt2_reg_n_0_[1]\,
      I3 => i2c_sm(1),
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \cnt2_reg_n_0_[0]\,
      O => sda_out_tristate_oe_i_24_n_0
    );
sda_out_tristate_oe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00000C0000"
    )
        port map (
      I0 => sda_out_tristate_oe_i_9_n_0,
      I1 => sda_out_tristate_oe_i_10_n_0,
      I2 => \cnt2_reg_n_0_[0]\,
      I3 => \cnt2_reg_n_0_[3]\,
      I4 => i2c_sm(1),
      I5 => \cnt2_reg_n_0_[2]\,
      O => sda_out_tristate_oe_i_3_n_0
    );
sda_out_tristate_oe_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFAFFF8"
    )
        port map (
      I0 => sda_out_tristate_oe_i_11_n_0,
      I1 => sda_out_tristate_oe_i_12_n_0,
      I2 => sda_out_tristate_oe_i_13_n_0,
      I3 => sda_out_tristate_oe_i_14_n_0,
      I4 => sda_out_tristate_oe_i_15_n_0,
      I5 => sda_out_tristate_oe_i_16_n_0,
      O => sda_out_tristate_oe_i_4_n_0
    );
sda_out_tristate_oe_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAEAAA"
    )
        port map (
      I0 => sda_out_tristate_oe_i_17_n_0,
      I1 => sda_out_tristate_oe_i_18_n_0,
      I2 => sda_out_tristate_oe_i_7_n_0,
      I3 => \active_reg_reg_n_0_[2]\,
      I4 => \cnt2_reg_n_0_[2]\,
      I5 => \active_reg_reg_n_0_[6]\,
      O => sda_out_tristate_oe_i_5_n_0
    );
sda_out_tristate_oe_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FFFF80"
    )
        port map (
      I0 => sda_out_tristate_oe_i_19_n_0,
      I1 => \^clk_data_reg_0\,
      I2 => i2c_sm(0),
      I3 => i2c_sm(3),
      I4 => i2c_sm(1),
      I5 => i2c_sm(2),
      O => \sda_out__0\
    );
sda_out_tristate_oe_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => i2c_sm(2),
      I1 => i2c_sm(0),
      I2 => \cnt2_reg_n_0_[1]\,
      O => sda_out_tristate_oe_i_7_n_0
    );
sda_out_tristate_oe_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => \active_reg_reg_n_0_[13]\,
      I1 => \active_reg_reg_n_0_[11]\,
      I2 => i2c_sm(2),
      I3 => i2c_sm(0),
      I4 => \cnt2_reg_n_0_[1]\,
      O => sda_out_tristate_oe_i_8_n_0
    );
sda_out_tristate_oe_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA000A0"
    )
        port map (
      I0 => sda_out_tristate_oe_i_20_n_0,
      I1 => \active_reg_reg_n_0_[15]\,
      I2 => i2c_sm(1),
      I3 => \cnt2_reg_n_0_[0]\,
      I4 => sda_out_tristate_oe_i_7_n_0,
      O => sda_out_tristate_oe_i_9_n_0
    );
sda_out_tristate_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sda_out_tristate_oe_i_1_n_0,
      Q => sda_out_tristate_oe_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led6_r : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC;
    ac_pbdat : out STD_LOGIC;
    ac_pblrc : out STD_LOGIC;
    ac_recdat : in STD_LOGIC;
    ac_reclrc : out STD_LOGIC;
    ac_scl : out STD_LOGIC;
    ac_sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal ac_mclk_OBUF : STD_LOGIC;
  signal ac_muten_OBUF : STD_LOGIC;
  signal ac_scl_OBUFT_inst_i_2_n_0 : STD_LOGIC;
  signal ac_scl_TRI : STD_LOGIC;
  signal ac_sda_OBUFT_inst_i_2_n_0 : STD_LOGIC;
  signal ac_sda_TRI : STD_LOGIC;
  signal btn_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_data : STD_LOGIC;
  signal clk_mclk_i_1_n_0 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal i2cConf_n_0 : STD_LOGIC;
  signal i2cConf_n_1 : STD_LOGIC;
  signal i2cConf_n_2 : STD_LOGIC;
  signal led6_r_OBUF : STD_LOGIC;
  signal sysclk_IBUF : STD_LOGIC;
  signal sysclk_IBUF_BUFG : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_mclk_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair24";
begin
ac_bclk_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_bclk,
      T => '1'
    );
ac_mclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ac_mclk_OBUF,
      O => ac_mclk
    );
ac_muten_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ac_muten_OBUF,
      O => ac_muten
    );
ac_pbdat_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_pbdat,
      T => '1'
    );
ac_pblrc_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_pblrc,
      T => '1'
    );
ac_reclrc_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_reclrc,
      T => '1'
    );
ac_scl_OBUFT_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_scl,
      T => ac_scl_TRI
    );
ac_scl_OBUFT_inst_i_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => i2cConf_n_1,
      Q => ac_scl_OBUFT_inst_i_2_n_0,
      R => '0'
    );
ac_sda_OBUFT_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => ac_sda,
      T => ac_sda_TRI
    );
ac_sda_OBUFT_inst_i_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => i2cConf_n_2,
      Q => ac_sda_OBUFT_inst_i_2_n_0,
      R => '0'
    );
\btn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(0),
      O => btn_IBUF(0)
    );
clk_mclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => btn_IBUF(0),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => ac_mclk_OBUF,
      O => clk_mclk_i_1_n_0
    );
clk_mclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => clk_mclk_i_1_n_0,
      Q => ac_mclk_OBUF,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => btn_IBUF(0),
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => btn_IBUF(0),
      I3 => \cnt_reg_n_0_[2]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => btn_IBUF(0),
      I3 => \cnt_reg_n_0_[2]\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \cnt[2]_i_1_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => '0'
    );
\cnt_reg[2]__0_i_2\: unisim.vcomponents.BUFG
     port map (
      I => i2cConf_n_0,
      O => clk_data
    );
i2cConf: entity work.i2c_configurator
     port map (
      CLK => sysclk_IBUF_BUFG,
      \FSM_sequential_i2c_sm_reg[3]_0\ => i2cConf_n_1,
      ac_scl_OBUFT_inst_i_2 => ac_scl_OBUFT_inst_i_2_n_0,
      ac_scl_TRI => ac_scl_TRI,
      ac_sda_OBUFT_inst_i_2 => ac_sda_OBUFT_inst_i_2_n_0,
      ac_sda_TRI => ac_sda_TRI,
      btn_IBUF(0) => btn_IBUF(0),
      clk_data => clk_data,
      clk_data_reg_0 => i2cConf_n_0,
      clk_data_reg_1 => i2cConf_n_2
    );
led6_r_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => led6_r_OBUF,
      O => led6_r
    );
led6_r_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ac_muten_OBUF,
      O => led6_r_OBUF
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(0),
      O => ac_muten_OBUF
    );
sysclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => sysclk_IBUF,
      O => sysclk_IBUF_BUFG
    );
sysclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sysclk,
      O => sysclk_IBUF
    );
end STRUCTURE;
