# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) subservient

set ::env(VERILOG_FILES) "\
	$script_dir/../../caravel/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/subservient/serv_state.v \
	$script_dir/../../verilog/rtl/subservient/serv_decode.v \
	$script_dir/../../verilog/rtl/subservient/serv_immdec.v \
	$script_dir/../../verilog/rtl/subservient/serv_bufreg.v \
	$script_dir/../../verilog/rtl/subservient/serv_ctrl.v \
	$script_dir/../../verilog/rtl/subservient/serv_alu.v \
	$script_dir/../../verilog/rtl/subservient/serv_rf_if.v \
	$script_dir/../../verilog/rtl/subservient/serv_mem_if.v \
	$script_dir/../../verilog/rtl/subservient/serv_rf_ram_if.v \
	$script_dir/../../verilog/rtl/subservient/serv_csr.v \
	$script_dir/../../verilog/rtl/subservient/subservient_rf_ram_if.v \
	$script_dir/../../verilog/rtl/subservient/subservient_ram.v \
	$script_dir/../../verilog/rtl/subservient/debug_switch.v \
	$script_dir/../../verilog/rtl/subservient/serv_top.v \
	$script_dir/../../verilog/rtl/subservient/serving_mux.v \
	$script_dir/../../verilog/rtl/subservient/serving_arbiter.v \
	$script_dir/../../verilog/rtl/subservient/subservient_core.v \
	$script_dir/../../verilog/rtl/subservient/subservient_gpio.v \
	$script_dir/../../verilog/rtl/subservient/subservient_top_level.v"

set ::env(CLOCK_PORT) "i_clk"
set ::env(CLOCK_PERIOD) "24"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 900 600"
set ::env(DESIGN_IS_CORE) 0

set ::env(VDD_NETS) [list {vccd1} {vccd2} {vdda1} {vdda2}]
set ::env(GND_NETS) [list {vssd1} {vssd2} {vssa1} {vssa2}]

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(GLB_RT_ADJUSTMENT) 0.21
set ::env(RUN_KLAYOUT_DRC) 0
set ::env(PL_TARGET_DENSITY) 0.5
# If you're going to use multiple power domains, then keep this disabled.
set ::env(RUN_CVC) 0
