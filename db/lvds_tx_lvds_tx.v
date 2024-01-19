//altlvds_tx CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" COMMON_RX_TX_PLL="ON" CORECLOCK_DIVIDE_BY=2 DATA_RATE="50.0 Mbps" DESERIALIZATION_FACTOR=10 DEVICE_FAMILY="Cyclone 10 LP" DIFFERENTIAL_DRIVE=0 ENABLE_CLK_LATENCY="OFF" IMPLEMENT_IN_LES="ON" INCLOCK_BOOST=0 INCLOCK_DATA_ALIGNMENT="EDGE_ALIGNED" INCLOCK_PERIOD=20000 INCLOCK_PHASE_SHIFT=0 MULTI_CLOCK="OFF" NUMBER_OF_CHANNELS=1 OUTCLOCK_ALIGNMENT="EDGE_ALIGNED" OUTCLOCK_DIVIDE_BY=1 OUTCLOCK_DUTY_CYCLE=50 OUTCLOCK_MULTIPLY_BY=1 OUTCLOCK_PHASE_SHIFT=0 OUTCLOCK_RESOURCE="AUTO" OUTPUT_DATA_RATE=50 PLL_COMPENSATION_MODE="AUTO" PLL_SELF_RESET_ON_LOSS_LOCK="OFF" PREEMPHASIS_SETTING=0 REGISTERED_INPUT="TX_CORECLK" USE_EXTERNAL_PLL="OFF" USE_NO_PHASE_SHIFT="ON" VOD_SETTING=0 tx_in tx_inclock tx_out CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 22.1 cbx_altaccumulate 2022:10:25:15:36:36:SC cbx_altclkbuf 2022:10:25:15:36:36:SC cbx_altddio_in 2022:10:25:15:36:36:SC cbx_altddio_out 2022:10:25:15:36:38:SC cbx_altera_syncram_nd_impl 2022:10:25:15:36:37:SC cbx_altiobuf_bidir 2022:10:25:15:36:38:SC cbx_altiobuf_in 2022:10:25:15:36:38:SC cbx_altiobuf_out 2022:10:25:15:36:38:SC cbx_altlvds_tx 2022:10:25:15:36:38:SC cbx_altpll 2022:10:25:15:36:38:SC cbx_altsyncram 2022:10:25:15:36:38:SC cbx_arriav 2022:10:25:15:36:36:SC cbx_cyclone 2022:10:25:15:36:36:SC cbx_cycloneii 2022:10:25:15:36:38:SC cbx_lpm_add_sub 2022:10:25:15:36:38:SC cbx_lpm_compare 2022:10:25:15:36:38:SC cbx_lpm_counter 2022:10:25:15:36:38:SC cbx_lpm_decode 2022:10:25:15:36:36:SC cbx_lpm_mux 2022:10:25:15:36:38:SC cbx_lpm_shiftreg 2022:10:25:15:36:38:SC cbx_maxii 2022:10:25:15:36:38:SC cbx_mgl 2022:10:25:15:36:55:SC cbx_nadder 2022:10:25:15:36:38:SC cbx_stratix 2022:10:25:15:36:38:SC cbx_stratixii 2022:10:25:15:36:38:SC cbx_stratixiii 2022:10:25:15:36:38:SC cbx_stratixv 2022:10:25:15:36:38:SC cbx_util_mgl 2022:10:25:15:36:38:SC  VERSION_END
//CBXI_INSTANCE_NAME="main_lvds_tx_lvds_tx_inst_altlvds_tx_ALTLVDS_TX_component"
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2022  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.




//altddio_out CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone 10 LP" WIDTH=1 datain_h datain_l dataout outclock
//VERSION_BEGIN 22.1 cbx_altddio_out 2022:10:25:15:36:38:SC cbx_cycloneii 2022:10:25:15:36:38:SC cbx_maxii 2022:10:25:15:36:38:SC cbx_mgl 2022:10:25:15:36:55:SC cbx_stratix 2022:10:25:15:36:38:SC cbx_stratixii 2022:10:25:15:36:38:SC cbx_stratixiii 2022:10:25:15:36:38:SC cbx_stratixv 2022:10:25:15:36:38:SC cbx_util_mgl 2022:10:25:15:36:38:SC  VERSION_END

//synthesis_resources = IO 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"ANALYZE_METASTABILITY=OFF;ADV_NETLIST_OPT_ALLOWED=DEFAULT"} *)
module  lvds_tx_ddio_out
	( 
	datain_h,
	datain_l,
	dataout,
	outclock) /* synthesis synthesis_clearbox=1 */;
	input   [0:0]  datain_h;
	input   [0:0]  datain_l;
	output   [0:0]  dataout;
	input   outclock;

	wire  [0:0]   wire_ddio_outa_dataout;

	cyclone10lp_ddio_out   ddio_outa_0
	( 
	.clkhi(outclock),
	.clklo(outclock),
	.datainhi(datain_h),
	.datainlo(datain_l),
	.dataout(wire_ddio_outa_dataout[0:0]),
	.muxsel(outclock)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.clk(1'b0),
	.ena(1'b1),
	.sreset(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1),
	.dffhi(),
	.dfflo()
	// synopsys translate_on
	);
	defparam
		ddio_outa_0.async_mode = "none",
		ddio_outa_0.power_up = "low",
		ddio_outa_0.sync_mode = "none",
		ddio_outa_0.use_new_clocking_model = "true",
		ddio_outa_0.lpm_type = "cyclone10lp_ddio_out";
	assign
		dataout = wire_ddio_outa_dataout;
endmodule //lvds_tx_ddio_out


//lpm_compare CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone 10 LP" LPM_WIDTH=3 aeb dataa datab
//VERSION_BEGIN 22.1 cbx_cycloneii 2022:10:25:15:36:38:SC cbx_lpm_add_sub 2022:10:25:15:36:38:SC cbx_lpm_compare 2022:10:25:15:36:38:SC cbx_mgl 2022:10:25:15:36:55:SC cbx_nadder 2022:10:25:15:36:38:SC cbx_stratix 2022:10:25:15:36:38:SC cbx_stratixii 2022:10:25:15:36:38:SC  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lvds_tx_cmpr
	( 
	aeb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   aeb;
	input   [2:0]  dataa;
	input   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [2:0]  dataa;
	tri0   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  aeb_result_wire;
	wire  [0:0]  aneb_result_wire;
	wire  [7:0]  data_wire;
	wire  eq_wire;

	assign
		aeb = eq_wire,
		aeb_result_wire = (~ aneb_result_wire),
		aneb_result_wire = (data_wire[0] | data_wire[1]),
		data_wire = {datab[2], dataa[2], datab[1], dataa[1], datab[0], dataa[0], (data_wire[6] ^ data_wire[7]), ((data_wire[2] ^ data_wire[3]) | (data_wire[4] ^ data_wire[5]))},
		eq_wire = aeb_result_wire;
endmodule //lvds_tx_cmpr


//lpm_counter CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone 10 LP" lpm_modulus=5 lpm_width=3 clock q updown
//VERSION_BEGIN 22.1 cbx_cycloneii 2022:10:25:15:36:38:SC cbx_lpm_add_sub 2022:10:25:15:36:38:SC cbx_lpm_compare 2022:10:25:15:36:38:SC cbx_lpm_counter 2022:10:25:15:36:38:SC cbx_lpm_decode 2022:10:25:15:36:36:SC cbx_mgl 2022:10:25:15:36:55:SC cbx_nadder 2022:10:25:15:36:38:SC cbx_stratix 2022:10:25:15:36:38:SC cbx_stratixii 2022:10:25:15:36:38:SC  VERSION_END


//lpm_compare CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone 10 LP" LPM_WIDTH=3 ONE_INPUT_IS_CONSTANT="YES" aeb dataa datab
//VERSION_BEGIN 22.1 cbx_cycloneii 2022:10:25:15:36:38:SC cbx_lpm_add_sub 2022:10:25:15:36:38:SC cbx_lpm_compare 2022:10:25:15:36:38:SC cbx_mgl 2022:10:25:15:36:55:SC cbx_nadder 2022:10:25:15:36:38:SC cbx_stratix 2022:10:25:15:36:38:SC cbx_stratixii 2022:10:25:15:36:38:SC  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lvds_tx_cmpr1
	( 
	aeb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   aeb;
	input   [2:0]  dataa;
	input   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [2:0]  dataa;
	tri0   [2:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  aeb_result_wire;
	wire  [0:0]  aneb_result_wire;
	wire  [7:0]  data_wire;
	wire  eq_wire;

	assign
		aeb = eq_wire,
		aeb_result_wire = (~ aneb_result_wire),
		aneb_result_wire = (data_wire[0] | data_wire[1]),
		data_wire = {datab[2], dataa[2], datab[1], dataa[1], datab[0], dataa[0], (data_wire[6] ^ data_wire[7]), ((data_wire[2] ^ data_wire[3]) | (data_wire[4] ^ data_wire[5]))},
		eq_wire = aeb_result_wire;
endmodule //lvds_tx_cmpr1

//synthesis_resources = lut 3 reg 3 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lvds_tx_cntr
	( 
	clock,
	q,
	updown) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	output   [2:0]  q;
	input   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   updown;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_counter_comb_bita_0combout;
	wire  [0:0]   wire_counter_comb_bita_1combout;
	wire  [0:0]   wire_counter_comb_bita_2combout;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire	[2:0]	wire_counter_reg_bit_d;
	wire	[2:0]	wire_counter_reg_bit_asdata;
	reg	[2:0]	counter_reg_bit;
	wire	[2:0]	wire_counter_reg_bit_ena;
	wire	[2:0]	wire_counter_reg_bit_sload;
	wire  wire_cmpr14_aeb;
	wire  aclr_actual;
	wire clk_en;
	wire cnt_en;
	wire  compare_result;
	wire  cout_actual;
	wire [2:0]  data;
	wire  external_cin;
	wire  [2:0]  modulus_bus;
	wire  modulus_trigger;
	wire  [2:0]  s_val;
	wire  [2:0]  safe_q;
	wire sclr;
	wire sload;
	wire sset;
	wire  time_to_clear;
	wire  updown_dir;

	cyclone10lp_lcell_comb   counter_comb_bita_0
	( 
	.cin(external_cin),
	.combout(wire_counter_comb_bita_0combout[0:0]),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.dataa(counter_reg_bit[0]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_0.lut_mask = 16'h5A90,
		counter_comb_bita_0.sum_lutc_input = "cin",
		counter_comb_bita_0.lpm_type = "cyclone10lp_lcell_comb";
	cyclone10lp_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(wire_counter_comb_bita_1combout[0:0]),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.dataa(counter_reg_bit[1]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_1.lut_mask = 16'h5A90,
		counter_comb_bita_1.sum_lutc_input = "cin",
		counter_comb_bita_1.lpm_type = "cyclone10lp_lcell_comb";
	cyclone10lp_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(wire_counter_comb_bita_2combout[0:0]),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.dataa(counter_reg_bit[2]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_2.lut_mask = 16'h5A90,
		counter_comb_bita_2.sum_lutc_input = "cin",
		counter_comb_bita_2.lpm_type = "cyclone10lp_lcell_comb";
	// synopsys translate_off
	initial
		counter_reg_bit[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[0:0] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[0:0] == 1'b1) 
			if (wire_counter_reg_bit_sload[0:0] == 1'b1) counter_reg_bit[0:0] <= wire_counter_reg_bit_asdata[0:0];
			else  counter_reg_bit[0:0] <= wire_counter_reg_bit_d[0:0];
	// synopsys translate_off
	initial
		counter_reg_bit[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[1:1] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[1:1] == 1'b1) 
			if (wire_counter_reg_bit_sload[1:1] == 1'b1) counter_reg_bit[1:1] <= wire_counter_reg_bit_asdata[1:1];
			else  counter_reg_bit[1:1] <= wire_counter_reg_bit_d[1:1];
	// synopsys translate_off
	initial
		counter_reg_bit[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[2:2] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[2:2] == 1'b1) 
			if (wire_counter_reg_bit_sload[2:2] == 1'b1) counter_reg_bit[2:2] <= wire_counter_reg_bit_asdata[2:2];
			else  counter_reg_bit[2:2] <= wire_counter_reg_bit_d[2:2];
	assign
		wire_counter_reg_bit_asdata = ({3{(~ sclr)}} & (({3{sset}} & s_val) | ({3{(~ sset)}} & (({3{sload}} & data) | (({3{(~ sload)}} & modulus_bus) & {3{(~ updown_dir)}}))))),
		wire_counter_reg_bit_d = {wire_counter_comb_bita_2combout[0:0], wire_counter_comb_bita_1combout[0:0], wire_counter_comb_bita_0combout[0:0]};
	assign
		wire_counter_reg_bit_ena = {3{(clk_en & (((sclr | sset) | sload) | cnt_en))}},
		wire_counter_reg_bit_sload = {3{(((sclr | sset) | sload) | modulus_trigger)}};
	lvds_tx_cmpr1   cmpr14
	( 
	.aeb(wire_cmpr14_aeb),
	.dataa(safe_q),
	.datab(modulus_bus));
	assign
		aclr_actual = 1'b0,
		clk_en = 1'b1,
		cnt_en = 1'b1,
		compare_result = wire_cmpr14_aeb,
		cout_actual = (wire_counter_comb_bita_2cout[0:0] | (time_to_clear & updown_dir)),
		data = {3{1'b0}},
		external_cin = 1'b1,
		modulus_bus = 3'b100,
		modulus_trigger = cout_actual,
		q = safe_q,
		s_val = {3{1'b1}},
		safe_q = counter_reg_bit,
		sclr = 1'b0,
		sload = 1'b0,
		sset = 1'b0,
		time_to_clear = compare_result,
		updown_dir = updown;
endmodule //lvds_tx_cntr


//lpm_shiftreg CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" LPM_DIRECTION="RIGHT" LPM_WIDTH=5 clock data load shiftin shiftout
//VERSION_BEGIN 22.1 cbx_lpm_shiftreg 2022:10:25:15:36:38:SC cbx_mgl 2022:10:25:15:36:55:SC  VERSION_END

//synthesis_resources = reg 5 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lvds_tx_shift_reg
	( 
	clock,
	data,
	load,
	shiftin,
	shiftout) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [4:0]  data;
	input   load;
	input   shiftin;
	output   shiftout;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [4:0]  data;
	tri0   load;
	tri1   shiftin;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[4:0]	shift_reg;
	wire  [4:0]  shift_node;

	// synopsys translate_off
	initial
		shift_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock)
		
			if (load == 1'b1) shift_reg <= data;
			else  shift_reg <= shift_node;
	assign
		shift_node = {shiftin, shift_reg[4:1]},
		shiftout = shift_reg[0];
endmodule //lvds_tx_shift_reg

//synthesis_resources = cyclone10lp_pll 1 IO 1 lut 3 reg 43 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"{-to lvds_tx_pll} AUTO_MERGE_PLLS=ON"} *)
module  lvds_tx_lvds_tx
	( 
	tx_in,
	tx_inclock,
	tx_out) /* synthesis synthesis_clearbox=1 */;
	input   [9:0]  tx_in;
	input   tx_inclock;
	output   [0:0]  tx_out;

	wire  [0:0]   wire_ddio_out_dataout;
	reg	dffe11;
	reg	[2:0]	dffe3a;
	reg	[2:0]	dffe4a;
	reg	[2:0]	dffe5a;
	reg	[2:0]	dffe6a;
	reg	[2:0]	dffe7a;
	reg	[2:0]	dffe8a;
	reg	sync_dffe1a;
	reg	[9:0]	tx_reg;
	wire  wire_cmpr10_aeb;
	wire  wire_cmpr9_aeb;
	wire  [2:0]   wire_cntr2_q;
	wire  wire_shift_reg12_shiftout;
	wire  wire_shift_reg13_shiftout;
	wire  [4:0]   wire_lvds_tx_pll_clk;
	wire  wire_lvds_tx_pll_fbout;
	wire  fast_clock;
	wire  [0:0]  h_input;
	wire  [0:0]  l_input;
	wire  load_signal;
	wire  slow_clock;
	wire  [9:0]  tx_in_wire;

	lvds_tx_ddio_out   ddio_out
	( 
	.datain_h(l_input),
	.datain_l(h_input),
	.dataout(wire_ddio_out_dataout),
	.outclock(fast_clock));
	// synopsys translate_off
	initial
		dffe11 = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		  dffe11 <= ((wire_cmpr9_aeb & sync_dffe1a) | (wire_cmpr10_aeb & (~ sync_dffe1a)));
	// synopsys translate_off
	initial
		dffe3a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe3a <= wire_cntr2_q;
	// synopsys translate_off
	initial
		dffe4a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe4a <= wire_cntr2_q;
	// synopsys translate_off
	initial
		dffe5a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe5a <= dffe3a;
	// synopsys translate_off
	initial
		dffe6a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe6a <= dffe4a;
	// synopsys translate_off
	initial
		dffe7a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b0)   dffe7a <= dffe5a;
	// synopsys translate_off
	initial
		dffe8a = 0;
	// synopsys translate_on
	always @ ( posedge fast_clock)
		if (sync_dffe1a == 1'b1)   dffe8a <= dffe6a;
	// synopsys translate_off
	initial
		sync_dffe1a = 0;
	// synopsys translate_on
	always @ ( posedge slow_clock)
		  sync_dffe1a <= (~ sync_dffe1a);
	// synopsys translate_off
	initial
		tx_reg = 0;
	// synopsys translate_on
	always @ ( posedge slow_clock)
		  tx_reg <= tx_in;
	lvds_tx_cmpr   cmpr10
	( 
	.aeb(wire_cmpr10_aeb),
	.dataa(dffe4a),
	.datab(dffe8a));
	lvds_tx_cmpr   cmpr9
	( 
	.aeb(wire_cmpr9_aeb),
	.dataa(dffe3a),
	.datab(dffe7a));
	lvds_tx_cntr   cntr2
	( 
	.clock(fast_clock),
	.q(wire_cntr2_q),
	.updown(sync_dffe1a));
	lvds_tx_shift_reg   shift_reg12
	( 
	.clock(fast_clock),
	.data({tx_in_wire[1], tx_in_wire[3], tx_in_wire[5], tx_in_wire[7], tx_in_wire[9]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg12_shiftout));
	lvds_tx_shift_reg   shift_reg13
	( 
	.clock(fast_clock),
	.data({tx_in_wire[0], tx_in_wire[2], tx_in_wire[4], tx_in_wire[6], tx_in_wire[8]}),
	.load(load_signal),
	.shiftin(1'b0),
	.shiftout(wire_shift_reg13_shiftout));
	cyclone10lp_pll   lvds_tx_pll
	( 
	.activeclock(),
	.clk(wire_lvds_tx_pll_clk),
	.clkbad(),
	.fbin(wire_lvds_tx_pll_fbout),
	.fbout(wire_lvds_tx_pll_fbout),
	.inclk({1'b0, tx_inclock}),
	.locked(),
	.phasedone(),
	.scandataout(),
	.scandone(),
	.vcooverrange(),
	.vcounderrange()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.areset(1'b0),
	.clkswitch(1'b0),
	.configupdate(1'b0),
	.pfdena(1'b1),
	.phasecounterselect({3{1'b0}}),
	.phasestep(1'b0),
	.phaseupdown(1'b0),
	.scanclk(1'b0),
	.scanclkena(1'b1),
	.scandata(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		lvds_tx_pll.clk0_divide_by = 2,
		lvds_tx_pll.clk0_multiply_by = 1,
		lvds_tx_pll.clk0_phase_shift = "-10000",
		lvds_tx_pll.clk1_divide_by = 20,
		lvds_tx_pll.clk1_multiply_by = 2,
		lvds_tx_pll.clk1_phase_shift = "-10000",
		lvds_tx_pll.inclk0_input_frequency = 20000,
		lvds_tx_pll.operation_mode = "normal",
		lvds_tx_pll.self_reset_on_loss_lock = "off",
		lvds_tx_pll.lpm_type = "cyclone10lp_pll";
	assign
		fast_clock = wire_lvds_tx_pll_clk[0],
		h_input = {wire_shift_reg13_shiftout},
		l_input = {wire_shift_reg12_shiftout},
		load_signal = dffe11,
		slow_clock = wire_lvds_tx_pll_clk[1],
		tx_in_wire = tx_reg,
		tx_out = wire_ddio_out_dataout;
endmodule //lvds_tx_lvds_tx
//VALID FILE
