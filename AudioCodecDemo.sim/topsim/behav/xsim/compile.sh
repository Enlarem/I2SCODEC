#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Thu Apr 18 00:32:37 EEST 2024
# SW Build 4081461 on Thu Dec 14 12:22:04 MST 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile VHDL design sources
echo "xvhdl --incr --relax -prj top_tb_vhdl.prj"
xvhdl --incr --relax -prj top_tb_vhdl.prj 2>&1 | tee compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
