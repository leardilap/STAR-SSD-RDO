// megafunction wizard: %ALTPLL%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altpll 

// ============================================================
// File Name: mega_func_pll_40MHz_switchover_cycloneIII.v
// Megafunction Name(s):
// 			altpll
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 10.1 Build 197 01/19/2011 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2011 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//altpll bandwidth_type="AUTO" clk0_divide_by=1 clk0_duty_cycle=50 clk0_multiply_by=1 clk0_phase_shift="0" clk1_divide_by=1 clk1_duty_cycle=50 clk1_multiply_by=2 clk1_phase_shift="0" clk2_divide_by=10 clk2_duty_cycle=50 clk2_multiply_by=1 clk2_phase_shift="0" clk3_divide_by=40 clk3_duty_cycle=50 clk3_multiply_by=1 clk3_phase_shift="0" compensate_clock="CLK0" device_family="Cyclone III" inclk0_input_frequency=25000 inclk1_input_frequency=25000 intended_device_family="Cyclone III" lpm_hint="CBX_MODULE_PREFIX=mega_func_pll_40MHz_switchover_cycloneIII" operation_mode="normal" pll_type="AUTO" port_clk0="PORT_USED" port_clk1="PORT_USED" port_clk2="PORT_USED" port_clk3="PORT_USED" port_clk4="PORT_UNUSED" port_clk5="PORT_UNUSED" port_extclk0="PORT_UNUSED" port_extclk1="PORT_UNUSED" port_extclk2="PORT_UNUSED" port_extclk3="PORT_UNUSED" port_inclk1="PORT_USED" port_phasecounterselect="PORT_UNUSED" port_phasedone="PORT_UNUSED" port_scandata="PORT_UNUSED" port_scandataout="PORT_UNUSED" self_reset_on_loss_lock="OFF" switch_over_type="AUTO" width_clock=5 activeclock areset clk clkbad clkswitch inclk locked
//VERSION_BEGIN 10.1SP1 cbx_altclkbuf 2011:01:19:21:13:40:SJ cbx_altiobuf_bidir 2011:01:19:21:13:40:SJ cbx_altiobuf_in 2011:01:19:21:13:40:SJ cbx_altiobuf_out 2011:01:19:21:13:40:SJ cbx_altpll 2011:01:19:21:13:40:SJ cbx_cycloneii 2011:01:19:21:13:40:SJ cbx_lpm_add_sub 2011:01:19:21:13:40:SJ cbx_lpm_compare 2011:01:19:21:13:40:SJ cbx_lpm_decode 2011:01:19:21:13:40:SJ cbx_lpm_mux 2011:01:19:21:13:40:SJ cbx_mgl 2011:01:19:21:15:40:SJ cbx_stratix 2011:01:19:21:13:40:SJ cbx_stratixii 2011:01:19:21:13:40:SJ cbx_stratixiii 2011:01:19:21:13:40:SJ cbx_stratixv 2011:01:19:21:13:40:SJ cbx_util_mgl 2011:01:19:21:13:40:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = cycloneiii_pll 1 reg 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"SUPPRESS_DA_RULE_INTERNAL=C104"} *)
module  mega_func_pll_40MHz_switchover_cycloneIII_altpll
	( 
	activeclock,
	areset,
	clk,
	clkbad,
	clkswitch,
	inclk,
	locked) /* synthesis synthesis_clearbox=1 */;
	output   activeclock;
	input   areset;
	output   [4:0]  clk;
	output   [1:0]  clkbad;
	input   clkswitch;
	input   [1:0]  inclk;
	output   locked;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   areset;
	tri0   clkswitch;
	tri0   [1:0]  inclk;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	pll_lock_sync;
	wire  wire_pll1_activeclock;
	wire  [4:0]   wire_pll1_clk;
	wire  [1:0]   wire_pll1_clkbad;
	wire  wire_pll1_fbout;
	wire  wire_pll1_locked;

	// synopsys translate_off
	initial
		pll_lock_sync = 0;
	// synopsys translate_on
	always @ ( posedge wire_pll1_locked or  posedge areset)
		if (areset == 1'b1) pll_lock_sync <= 1'b0;
		else  pll_lock_sync <= 1'b1;
	cycloneiii_pll   pll1
	( 
	.activeclock(wire_pll1_activeclock),
	.areset(areset),
	.clk(wire_pll1_clk),
	.clkbad(wire_pll1_clkbad),
	.clkswitch(clkswitch),
	.fbin(wire_pll1_fbout),
	.fbout(wire_pll1_fbout),
	.inclk(inclk),
	.locked(wire_pll1_locked),
	.phasedone(),
	.scandataout(),
	.scandone(),
	.vcooverrange(),
	.vcounderrange()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
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
		pll1.bandwidth_type = "auto",
		pll1.clk0_divide_by = 1,
		pll1.clk0_duty_cycle = 50,
		pll1.clk0_multiply_by = 1,
		pll1.clk0_phase_shift = "0",
		pll1.clk1_divide_by = 1,
		pll1.clk1_duty_cycle = 50,
		pll1.clk1_multiply_by = 2,
		pll1.clk1_phase_shift = "0",
		pll1.clk2_divide_by = 10,
		pll1.clk2_duty_cycle = 50,
		pll1.clk2_multiply_by = 1,
		pll1.clk2_phase_shift = "0",
		pll1.clk3_divide_by = 40,
		pll1.clk3_duty_cycle = 50,
		pll1.clk3_multiply_by = 1,
		pll1.clk3_phase_shift = "0",
		pll1.compensate_clock = "clk0",
		pll1.inclk0_input_frequency = 25000,
		pll1.inclk1_input_frequency = 25000,
		pll1.operation_mode = "normal",
		pll1.pll_type = "auto",
		pll1.self_reset_on_loss_lock = "off",
		pll1.switch_over_type = "auto",
		pll1.lpm_type = "cycloneiii_pll";
	assign
		activeclock = wire_pll1_activeclock,
		clk = {wire_pll1_clk[4:0]},
		clkbad = wire_pll1_clkbad,
		locked = (wire_pll1_locked & pll_lock_sync);
endmodule //mega_func_pll_40MHz_switchover_cycloneIII_altpll
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mega_func_pll_40MHz_switchover_cycloneIII (
	areset,
	clkswitch,
	inclk0,
	inclk1,
	activeclock,
	c0,
	c1,
	c2,
	c3,
	clkbad0,
	clkbad1,
	locked)/* synthesis synthesis_clearbox = 1 */;

	input	  areset;
	input	  clkswitch;
	input	  inclk0;
	input	  inclk1;
	output	  activeclock;
	output	  c0;
	output	  c1;
	output	  c2;
	output	  c3;
	output	  clkbad0;
	output	  clkbad1;
	output	  locked;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0	  areset;
	tri0	  clkswitch;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  sub_wire0;
	wire [4:0] sub_wire1;
	wire [1:0] sub_wire5;
	wire  sub_wire9;
	wire  sub_wire12 = inclk1;
	wire  activeclock = sub_wire0;
	wire [3:3] sub_wire7 = sub_wire1[3:3];
	wire [2:2] sub_wire4 = sub_wire1[2:2];
	wire [0:0] sub_wire3 = sub_wire1[0:0];
	wire [1:1] sub_wire2 = sub_wire1[1:1];
	wire  c1 = sub_wire2;
	wire  c0 = sub_wire3;
	wire  c2 = sub_wire4;
	wire [1:1] sub_wire8 = sub_wire5[1:1];
	wire [0:0] sub_wire6 = sub_wire5[0:0];
	wire  clkbad0 = sub_wire6;
	wire  c3 = sub_wire7;
	wire  clkbad1 = sub_wire8;
	wire  locked = sub_wire9;
	wire  sub_wire10 = inclk0;
	wire [1:0] sub_wire11 = {sub_wire12, sub_wire10};

	mega_func_pll_40MHz_switchover_cycloneIII_altpll	mega_func_pll_40MHz_switchover_cycloneIII_altpll_component (
				.areset (areset),
				.clkswitch (clkswitch),
				.inclk (sub_wire11),
				.activeclock (sub_wire0),
				.clk (sub_wire1),
				.clkbad (sub_wire5),
				.locked (sub_wire9));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACTIVECLK_CHECK STRING "1"
// Retrieval info: PRIVATE: BANDWIDTH STRING "1.000"
// Retrieval info: PRIVATE: BANDWIDTH_FEATURE_ENABLED STRING "1"
// Retrieval info: PRIVATE: BANDWIDTH_FREQ_UNIT STRING "MHz"
// Retrieval info: PRIVATE: BANDWIDTH_PRESET STRING "Low"
// Retrieval info: PRIVATE: BANDWIDTH_USE_AUTO STRING "1"
// Retrieval info: PRIVATE: BANDWIDTH_USE_PRESET STRING "0"
// Retrieval info: PRIVATE: CLKBAD_SWITCHOVER_CHECK STRING "0"
// Retrieval info: PRIVATE: CLKLOSS_CHECK STRING "0"
// Retrieval info: PRIVATE: CLKSWITCH_CHECK STRING "1"
// Retrieval info: PRIVATE: CNX_NO_COMPENSATE_RADIO STRING "0"
// Retrieval info: PRIVATE: CREATE_CLKBAD_CHECK STRING "1"
// Retrieval info: PRIVATE: CREATE_INCLK1_CHECK STRING "1"
// Retrieval info: PRIVATE: CUR_DEDICATED_CLK STRING "c0"
// Retrieval info: PRIVATE: CUR_FBIN_CLK STRING "e0"
// Retrieval info: PRIVATE: DEVICE_SPEED_GRADE STRING "6"
// Retrieval info: PRIVATE: DIV_FACTOR0 NUMERIC "1"
// Retrieval info: PRIVATE: DIV_FACTOR1 NUMERIC "1"
// Retrieval info: PRIVATE: DIV_FACTOR2 NUMERIC "10"
// Retrieval info: PRIVATE: DIV_FACTOR3 NUMERIC "40"
// Retrieval info: PRIVATE: DUTY_CYCLE0 STRING "50.00000000"
// Retrieval info: PRIVATE: DUTY_CYCLE1 STRING "50.00000000"
// Retrieval info: PRIVATE: DUTY_CYCLE2 STRING "50.00000000"
// Retrieval info: PRIVATE: DUTY_CYCLE3 STRING "50.00000000"
// Retrieval info: PRIVATE: EFF_OUTPUT_FREQ_VALUE0 STRING "40.000000"
// Retrieval info: PRIVATE: EFF_OUTPUT_FREQ_VALUE1 STRING "80.000000"
// Retrieval info: PRIVATE: EFF_OUTPUT_FREQ_VALUE2 STRING "4.000000"
// Retrieval info: PRIVATE: EFF_OUTPUT_FREQ_VALUE3 STRING "1.000000"
// Retrieval info: PRIVATE: EXPLICIT_SWITCHOVER_COUNTER STRING "0"
// Retrieval info: PRIVATE: EXT_FEEDBACK_RADIO STRING "0"
// Retrieval info: PRIVATE: GLOCKED_COUNTER_EDIT_CHANGED STRING "1"
// Retrieval info: PRIVATE: GLOCKED_FEATURE_ENABLED STRING "0"
// Retrieval info: PRIVATE: GLOCKED_MODE_CHECK STRING "0"
// Retrieval info: PRIVATE: GLOCK_COUNTER_EDIT NUMERIC "1048575"
// Retrieval info: PRIVATE: HAS_MANUAL_SWITCHOVER STRING "0"
// Retrieval info: PRIVATE: INCLK0_FREQ_EDIT STRING "40.000"
// Retrieval info: PRIVATE: INCLK0_FREQ_UNIT_COMBO STRING "MHz"
// Retrieval info: PRIVATE: INCLK1_FREQ_EDIT STRING "40.000"
// Retrieval info: PRIVATE: INCLK1_FREQ_EDIT_CHANGED STRING "1"
// Retrieval info: PRIVATE: INCLK1_FREQ_UNIT_CHANGED STRING "1"
// Retrieval info: PRIVATE: INCLK1_FREQ_UNIT_COMBO STRING "MHz"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: PRIVATE: INT_FEEDBACK__MODE_RADIO STRING "1"
// Retrieval info: PRIVATE: LOCKED_OUTPUT_CHECK STRING "1"
// Retrieval info: PRIVATE: LONG_SCAN_RADIO STRING "1"
// Retrieval info: PRIVATE: LVDS_MODE_DATA_RATE STRING "Not Available"
// Retrieval info: PRIVATE: LVDS_MODE_DATA_RATE_DIRTY NUMERIC "0"
// Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT0 STRING "deg"
// Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT1 STRING "ps"
// Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT2 STRING "ps"
// Retrieval info: PRIVATE: LVDS_PHASE_SHIFT_UNIT3 STRING "ps"
// Retrieval info: PRIVATE: MIG_DEVICE_SPEED_GRADE STRING "Any"
// Retrieval info: PRIVATE: MIRROR_CLK0 STRING "0"
// Retrieval info: PRIVATE: MIRROR_CLK1 STRING "0"
// Retrieval info: PRIVATE: MIRROR_CLK2 STRING "0"
// Retrieval info: PRIVATE: MIRROR_CLK3 STRING "0"
// Retrieval info: PRIVATE: MULT_FACTOR0 NUMERIC "1"
// Retrieval info: PRIVATE: MULT_FACTOR1 NUMERIC "2"
// Retrieval info: PRIVATE: MULT_FACTOR2 NUMERIC "1"
// Retrieval info: PRIVATE: MULT_FACTOR3 NUMERIC "1"
// Retrieval info: PRIVATE: NORMAL_MODE_RADIO STRING "1"
// Retrieval info: PRIVATE: OUTPUT_FREQ0 STRING "100.00000000"
// Retrieval info: PRIVATE: OUTPUT_FREQ1 STRING "40.00000000"
// Retrieval info: PRIVATE: OUTPUT_FREQ2 STRING "100.00000000"
// Retrieval info: PRIVATE: OUTPUT_FREQ3 STRING "100.00000000"
// Retrieval info: PRIVATE: OUTPUT_FREQ_MODE0 STRING "0"
// Retrieval info: PRIVATE: OUTPUT_FREQ_MODE1 STRING "0"
// Retrieval info: PRIVATE: OUTPUT_FREQ_MODE2 STRING "0"
// Retrieval info: PRIVATE: OUTPUT_FREQ_MODE3 STRING "0"
// Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT0 STRING "MHz"
// Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT1 STRING "MHz"
// Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT2 STRING "MHz"
// Retrieval info: PRIVATE: OUTPUT_FREQ_UNIT3 STRING "MHz"
// Retrieval info: PRIVATE: PHASE_RECONFIG_FEATURE_ENABLED STRING "1"
// Retrieval info: PRIVATE: PHASE_RECONFIG_INPUTS_CHECK STRING "0"
// Retrieval info: PRIVATE: PHASE_SHIFT0 STRING "0.00000000"
// Retrieval info: PRIVATE: PHASE_SHIFT1 STRING "0.00000000"
// Retrieval info: PRIVATE: PHASE_SHIFT2 STRING "0.00000000"
// Retrieval info: PRIVATE: PHASE_SHIFT3 STRING "0.00000000"
// Retrieval info: PRIVATE: PHASE_SHIFT_STEP_ENABLED_CHECK STRING "0"
// Retrieval info: PRIVATE: PHASE_SHIFT_UNIT0 STRING "deg"
// Retrieval info: PRIVATE: PHASE_SHIFT_UNIT1 STRING "ps"
// Retrieval info: PRIVATE: PHASE_SHIFT_UNIT2 STRING "ps"
// Retrieval info: PRIVATE: PHASE_SHIFT_UNIT3 STRING "ps"
// Retrieval info: PRIVATE: PLL_ADVANCED_PARAM_CHECK STRING "0"
// Retrieval info: PRIVATE: PLL_ARESET_CHECK STRING "1"
// Retrieval info: PRIVATE: PLL_AUTOPLL_CHECK NUMERIC "1"
// Retrieval info: PRIVATE: PLL_ENHPLL_CHECK NUMERIC "0"
// Retrieval info: PRIVATE: PLL_FASTPLL_CHECK NUMERIC "0"
// Retrieval info: PRIVATE: PLL_FBMIMIC_CHECK STRING "0"
// Retrieval info: PRIVATE: PLL_LVDS_PLL_CHECK NUMERIC "0"
// Retrieval info: PRIVATE: PLL_PFDENA_CHECK STRING "0"
// Retrieval info: PRIVATE: PLL_TARGET_HARCOPY_CHECK NUMERIC "0"
// Retrieval info: PRIVATE: PRIMARY_CLK_COMBO STRING "inclk0"
// Retrieval info: PRIVATE: RECONFIG_FILE STRING "mega_func_pll_40MHz_switchover_cycloneIII.mif"
// Retrieval info: PRIVATE: SACN_INPUTS_CHECK STRING "0"
// Retrieval info: PRIVATE: SCAN_FEATURE_ENABLED STRING "1"
// Retrieval info: PRIVATE: SELF_RESET_LOCK_LOSS STRING "0"
// Retrieval info: PRIVATE: SHORT_SCAN_RADIO STRING "0"
// Retrieval info: PRIVATE: SPREAD_FEATURE_ENABLED STRING "0"
// Retrieval info: PRIVATE: SPREAD_FREQ STRING "50.000"
// Retrieval info: PRIVATE: SPREAD_FREQ_UNIT STRING "KHz"
// Retrieval info: PRIVATE: SPREAD_PERCENT STRING "0.500"
// Retrieval info: PRIVATE: SPREAD_USE STRING "0"
// Retrieval info: PRIVATE: SRC_SYNCH_COMP_RADIO STRING "0"
// Retrieval info: PRIVATE: STICKY_CLK0 STRING "1"
// Retrieval info: PRIVATE: STICKY_CLK1 STRING "1"
// Retrieval info: PRIVATE: STICKY_CLK2 STRING "1"
// Retrieval info: PRIVATE: STICKY_CLK3 STRING "1"
// Retrieval info: PRIVATE: SWITCHOVER_COUNT_EDIT NUMERIC "1"
// Retrieval info: PRIVATE: SWITCHOVER_FEATURE_ENABLED STRING "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: USE_CLK0 STRING "1"
// Retrieval info: PRIVATE: USE_CLK1 STRING "1"
// Retrieval info: PRIVATE: USE_CLK2 STRING "1"
// Retrieval info: PRIVATE: USE_CLK3 STRING "1"
// Retrieval info: PRIVATE: USE_CLKENA0 STRING "0"
// Retrieval info: PRIVATE: USE_CLKENA1 STRING "0"
// Retrieval info: PRIVATE: USE_CLKENA2 STRING "0"
// Retrieval info: PRIVATE: USE_CLKENA3 STRING "0"
// Retrieval info: PRIVATE: USE_MIL_SPEED_GRADE NUMERIC "0"
// Retrieval info: PRIVATE: ZERO_DELAY_RADIO STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: BANDWIDTH_TYPE STRING "AUTO"
// Retrieval info: CONSTANT: CLK0_DIVIDE_BY NUMERIC "1"
// Retrieval info: CONSTANT: CLK0_DUTY_CYCLE NUMERIC "50"
// Retrieval info: CONSTANT: CLK0_MULTIPLY_BY NUMERIC "1"
// Retrieval info: CONSTANT: CLK0_PHASE_SHIFT STRING "0"
// Retrieval info: CONSTANT: CLK1_DIVIDE_BY NUMERIC "1"
// Retrieval info: CONSTANT: CLK1_DUTY_CYCLE NUMERIC "50"
// Retrieval info: CONSTANT: CLK1_MULTIPLY_BY NUMERIC "2"
// Retrieval info: CONSTANT: CLK1_PHASE_SHIFT STRING "0"
// Retrieval info: CONSTANT: CLK2_DIVIDE_BY NUMERIC "10"
// Retrieval info: CONSTANT: CLK2_DUTY_CYCLE NUMERIC "50"
// Retrieval info: CONSTANT: CLK2_MULTIPLY_BY NUMERIC "1"
// Retrieval info: CONSTANT: CLK2_PHASE_SHIFT STRING "0"
// Retrieval info: CONSTANT: CLK3_DIVIDE_BY NUMERIC "40"
// Retrieval info: CONSTANT: CLK3_DUTY_CYCLE NUMERIC "50"
// Retrieval info: CONSTANT: CLK3_MULTIPLY_BY NUMERIC "1"
// Retrieval info: CONSTANT: CLK3_PHASE_SHIFT STRING "0"
// Retrieval info: CONSTANT: COMPENSATE_CLOCK STRING "CLK0"
// Retrieval info: CONSTANT: INCLK0_INPUT_FREQUENCY NUMERIC "25000"
// Retrieval info: CONSTANT: INCLK1_INPUT_FREQUENCY NUMERIC "25000"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altpll"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "NORMAL"
// Retrieval info: CONSTANT: PLL_TYPE STRING "AUTO"
// Retrieval info: CONSTANT: PORT_ACTIVECLOCK STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_ARESET STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_CLKBAD0 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_CLKBAD1 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_CLKLOSS STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_CLKSWITCH STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_CONFIGUPDATE STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_FBIN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_INCLK0 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_INCLK1 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_LOCKED STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_PFDENA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_PHASECOUNTERSELECT STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_PHASEDONE STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_PHASESTEP STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_PHASEUPDOWN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_PLLENA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANACLR STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANCLK STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANCLKENA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANDATA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANDATAOUT STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANDONE STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANREAD STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_SCANWRITE STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clk0 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_clk1 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_clk2 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_clk3 STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_clk4 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clk5 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena0 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena1 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena2 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena3 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena4 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_clkena5 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_extclk0 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_extclk1 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_extclk2 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_extclk3 STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PRIMARY_CLOCK STRING "inclk0"
// Retrieval info: CONSTANT: SELF_RESET_ON_LOSS_LOCK STRING "OFF"
// Retrieval info: CONSTANT: SWITCH_OVER_TYPE STRING "AUTO"
// Retrieval info: CONSTANT: WIDTH_CLOCK NUMERIC "5"
// Retrieval info: USED_PORT: @clk 0 0 5 0 OUTPUT_CLK_EXT VCC "@clk[4..0]"
// Retrieval info: USED_PORT: @inclk 0 0 2 0 INPUT_CLK_EXT VCC "@inclk[1..0]"
// Retrieval info: USED_PORT: activeclock 0 0 0 0 OUTPUT GND "activeclock"
// Retrieval info: USED_PORT: areset 0 0 0 0 INPUT GND "areset"
// Retrieval info: USED_PORT: c0 0 0 0 0 OUTPUT_CLK_EXT VCC "c0"
// Retrieval info: USED_PORT: c1 0 0 0 0 OUTPUT_CLK_EXT VCC "c1"
// Retrieval info: USED_PORT: c2 0 0 0 0 OUTPUT_CLK_EXT VCC "c2"
// Retrieval info: USED_PORT: c3 0 0 0 0 OUTPUT_CLK_EXT VCC "c3"
// Retrieval info: USED_PORT: clkbad0 0 0 0 0 OUTPUT VCC "clkbad0"
// Retrieval info: USED_PORT: clkbad1 0 0 0 0 OUTPUT VCC "clkbad1"
// Retrieval info: USED_PORT: clkswitch 0 0 0 0 INPUT GND "clkswitch"
// Retrieval info: USED_PORT: inclk0 0 0 0 0 INPUT_CLK_EXT GND "inclk0"
// Retrieval info: USED_PORT: inclk1 0 0 0 0 INPUT_CLK_EXT GND "inclk1"
// Retrieval info: USED_PORT: locked 0 0 0 0 OUTPUT GND "locked"
// Retrieval info: CONNECT: @areset 0 0 0 0 areset 0 0 0 0
// Retrieval info: CONNECT: @clkswitch 0 0 0 0 clkswitch 0 0 0 0
// Retrieval info: CONNECT: @inclk 0 0 1 0 inclk0 0 0 0 0
// Retrieval info: CONNECT: @inclk 0 0 1 1 inclk1 0 0 0 0
// Retrieval info: CONNECT: activeclock 0 0 0 0 @activeclock 0 0 0 0
// Retrieval info: CONNECT: c0 0 0 0 0 @clk 0 0 1 0
// Retrieval info: CONNECT: c1 0 0 0 0 @clk 0 0 1 1
// Retrieval info: CONNECT: c2 0 0 0 0 @clk 0 0 1 2
// Retrieval info: CONNECT: c3 0 0 0 0 @clk 0 0 1 3
// Retrieval info: CONNECT: clkbad0 0 0 0 0 @clkbad 0 0 1 0
// Retrieval info: CONNECT: clkbad1 0 0 0 0 @clkbad 0 0 1 1
// Retrieval info: CONNECT: locked 0 0 0 0 @locked 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII.ppf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII_inst.vhd FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII_wave*.jpg FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mega_func_pll_40MHz_switchover_cycloneIII_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf
// Retrieval info: CBX_MODULE_PREFIX: ON
