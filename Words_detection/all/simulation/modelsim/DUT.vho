-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/27/2019 14:53:34"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|cap_shft~0_combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[4]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|Equal2~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|Equal3~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|Equal2~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|Equal2~12_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q1~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q1~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[5]~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q1~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q2~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q2~regout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[3]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q0~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q0~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|Equal4~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|Equal4~12_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[4]~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|Equal2~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q0~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q0~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|k|q0~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q1~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q0~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|Equal2~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|Equal2~9_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q0~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q0~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q0~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q1~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|b|q1~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|Equal3~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q0~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|Equal1~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|Equal1~12_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|Mux0~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|Mux0~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q0~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q0~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q2~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q1~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|t|q1~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|Equal1~11_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|q0~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|q0~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|q0~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|g|q1~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~4_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~6_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~7_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: LC_X4_Y7_N3
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X4_Y7_N6
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS((((!\TMS~combout\ & \scan_instance|current_state.s_DR~regout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X4_Y7_N2
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS((!\TMS~combout\ & (((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X4_Y7_N8
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS((\TMS~combout\ & (((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X4_Y7_N1
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X4_Y7_N4
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = (((\TMS~combout\) # (\scan_instance|current_state.s_update~regout\)) # (!\scan_instance|current_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X4_Y7_N7
\scan_instance|cap_shft~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|cap_shft~0_combout\ = (!\TMS~combout\ & (!\TRST~combout\ & ((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|cap_shft~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X4_Y7_N5
\scan_instance|In_Reg|L1[4]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[4]~1_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (\scan_instance|current_state.s_idle~regout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[4]~1_combout\);

-- Location: LC_X6_Y7_N6
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & ((\TDI~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datad => \TDI~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X6_Y7_N2
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|In_Reg|L1\(6) & (\scan_instance|cap_shft~0_combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(6),
	datab => \scan_instance|cap_shft~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X6_Y7_N7
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X6_Y7_N4
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(4)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X6_Y7_N9
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(3)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X6_Y7_N8
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X4_Y7_N9
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X4_Y7_N0
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X10_Y6_N6
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X10_Y6_N4
\scan_instance|In_Reg|PO[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(6) = LCELL((((\scan_instance|In_Reg|L2\(6) & !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(6));

-- Location: LC_X3_Y8_N3
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((\scan_instance|In_Reg|L1\(5) & (!\TRST~combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(5),
	datab => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X1_Y8_N7
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X1_Y6_N0
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(4))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X1_Y7_N0
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X1_Y8_N4
\dut_instance|add_instance|t|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|Equal2~0_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(4) & \scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|Equal2~0_combout\);

-- Location: LC_X3_Y7_N4
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(0)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X1_Y7_N1
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X3_Y7_N9
\dut_instance|add_instance|k|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|Equal3~0_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(0) & !\scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|Equal3~0_combout\);

-- Location: LC_X1_Y7_N4
\dut_instance|add_instance|g|Equal2~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|Equal2~3_combout\ = (((\scan_instance|In_Reg|L2\(4)) # (!\scan_instance|In_Reg|L2\(1))) # (!\scan_instance|In_Reg|L2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|Equal2~3_combout\);

-- Location: LC_X1_Y7_N5
\dut_instance|add_instance|g|Equal2~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|Equal2~12_combout\ = (\TRST~combout\) # (((\scan_instance|In_Reg|L2\(0)) # (\dut_instance|add_instance|g|Equal2~3_combout\)) # (!\scan_instance|In_Reg|L2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut_instance|add_instance|g|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|Equal2~12_combout\);

-- Location: LC_X1_Y8_N3
\dut_instance|add_instance|k|q1~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q1~0_combout\ = (!\dut_instance|add_instance|g|Equal2~12_combout\ & (!\dut_instance|add_instance|k|q2~regout\ & (!\dut_instance|add_instance|k|q1~regout\ & \dut_instance|add_instance|k|q0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|g|Equal2~12_combout\,
	datab => \dut_instance|add_instance|k|q2~regout\,
	datac => \dut_instance|add_instance|k|q1~regout\,
	datad => \dut_instance|add_instance|k|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q1~0_combout\);

-- Location: LC_X2_Y8_N9
\dut_instance|add_instance|k|q1~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q1~1_combout\ = (\dut_instance|add_instance|k|q2~regout\) # (((!\dut_instance|add_instance|k|q0~regout\) # (!\dut_instance|add_instance|t|Equal2~0_combout\)) # (!\dut_instance|add_instance|k|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|q2~regout\,
	datab => \dut_instance|add_instance|k|Equal3~0_combout\,
	datac => \dut_instance|add_instance|t|Equal2~0_combout\,
	datad => \dut_instance|add_instance|k|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q1~1_combout\);

-- Location: LC_X3_Y8_N0
\scan_instance|In_Reg|PO[5]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[5]~5_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[5]~5_combout\);

-- Location: LC_X2_Y8_N7
\dut_instance|add_instance|k|q1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q1~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|k|q1~0_combout\) # ((\dut_instance|add_instance|k|q1~1_combout\ & \dut_instance|add_instance|k|q1~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|k|q1~0_combout\,
	datab => \dut_instance|add_instance|k|q1~1_combout\,
	datac => \dut_instance|add_instance|k|q1~regout\,
	datad => \scan_instance|In_Reg|PO[5]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|k|q1~regout\);

-- Location: LC_X2_Y8_N0
\dut_instance|add_instance|k|q2~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q2~2_combout\ = (\dut_instance|add_instance|t|Equal2~0_combout\ & (\dut_instance|add_instance|k|Equal3~0_combout\ & (\dut_instance|add_instance|k|q1~regout\ & \dut_instance|add_instance|k|q0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Equal2~0_combout\,
	datab => \dut_instance|add_instance|k|Equal3~0_combout\,
	datac => \dut_instance|add_instance|k|q1~regout\,
	datad => \dut_instance|add_instance|k|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q2~2_combout\);

-- Location: LC_X2_Y8_N8
\dut_instance|add_instance|k|q2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q2~regout\ = DFFEAS((\TRST~combout\ & (((\dut_instance|add_instance|k|q2~2_combout\) # (\dut_instance|add_instance|k|q2~regout\)))) # (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(5) & 
-- ((\dut_instance|add_instance|k|q2~2_combout\) # (\dut_instance|add_instance|k|q2~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_instance|add_instance|k|q2~2_combout\,
	datad => \dut_instance|add_instance|k|q2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|k|q2~regout\);

-- Location: LC_X1_Y8_N5
\scan_instance|In_Reg|PO[3]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[3]~1_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[3]~1_combout\);

-- Location: LC_X1_Y7_N8
\scan_instance|In_Reg|PO[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~2_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~2_combout\);

-- Location: LC_X1_Y8_N6
\dut_instance|add_instance|k|q0~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q0~2_combout\ = ((\scan_instance|In_Reg|PO[0]~2_combout\) # (\scan_instance|In_Reg|PO[3]~1_combout\ $ (!\dut_instance|add_instance|k|q1~regout\))) # (!\dut_instance|add_instance|t|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Equal2~0_combout\,
	datab => \scan_instance|In_Reg|PO[3]~1_combout\,
	datac => \scan_instance|In_Reg|PO[0]~2_combout\,
	datad => \dut_instance|add_instance|k|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q0~2_combout\);

-- Location: LC_X1_Y8_N1
\dut_instance|add_instance|k|q0~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q0~3_combout\ = ((\dut_instance|add_instance|k|q0~regout\ & ((\dut_instance|add_instance|k|q2~regout\) # (\dut_instance|add_instance|k|q0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_instance|add_instance|k|q2~regout\,
	datac => \dut_instance|add_instance|k|q0~2_combout\,
	datad => \dut_instance|add_instance|k|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q0~3_combout\);

-- Location: LC_X2_Y8_N4
\dut_instance|add_instance|k|Equal4~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|Equal4~3_combout\ = (((\scan_instance|In_Reg|L2\(4)) # (!\scan_instance|In_Reg|L2\(2))) # (!\scan_instance|In_Reg|L2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|Equal4~3_combout\);

-- Location: LC_X2_Y8_N5
\dut_instance|add_instance|k|Equal4~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|Equal4~12_combout\ = (\TRST~combout\) # ((\scan_instance|In_Reg|L2\(1)) # ((\scan_instance|In_Reg|L2\(3)) # (\dut_instance|add_instance|k|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut_instance|add_instance|k|Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|Equal4~12_combout\);

-- Location: LC_X2_Y8_N6
\scan_instance|Out_Reg|mux1[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~2_combout\ = (!\dut_instance|add_instance|k|Equal4~12_combout\ & (((!\dut_instance|add_instance|k|q1~regout\ & \dut_instance|add_instance|k|q2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|Equal4~12_combout\,
	datac => \dut_instance|add_instance|k|q1~regout\,
	datad => \dut_instance|add_instance|k|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~2_combout\);

-- Location: LC_X1_Y7_N9
\scan_instance|In_Reg|PO[2]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~3_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~3_combout\);

-- Location: LC_X1_Y6_N5
\scan_instance|In_Reg|PO[4]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[4]~4_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[4]~4_combout\);

-- Location: LC_X1_Y7_N6
\dut_instance|add_instance|t|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|Equal2~1_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(3) & \scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|Equal2~1_combout\);

-- Location: LC_X2_Y8_N2
\dut_instance|add_instance|k|q0~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q0~0_combout\ = (!\dut_instance|add_instance|k|q2~regout\ & (!\scan_instance|In_Reg|PO[4]~4_combout\ & (\dut_instance|add_instance|t|Equal2~1_combout\ & !\dut_instance|add_instance|k|q0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|q2~regout\,
	datab => \scan_instance|In_Reg|PO[4]~4_combout\,
	datac => \dut_instance|add_instance|t|Equal2~1_combout\,
	datad => \dut_instance|add_instance|k|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q0~0_combout\);

-- Location: LC_X1_Y8_N0
\scan_instance|In_Reg|PO[1]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~0_combout\);

-- Location: LC_X2_Y8_N3
\dut_instance|add_instance|k|q0~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q0~1_combout\ = (!\scan_instance|In_Reg|PO[2]~3_combout\ & (\dut_instance|add_instance|k|q0~0_combout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ $ (\dut_instance|add_instance|k|q1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~3_combout\,
	datab => \dut_instance|add_instance|k|q0~0_combout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \dut_instance|add_instance|k|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|k|q0~1_combout\);

-- Location: LC_X2_Y8_N1
\dut_instance|add_instance|k|q0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|k|q0~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|k|q0~3_combout\) # ((\scan_instance|Out_Reg|mux1[0]~2_combout\) # (\dut_instance|add_instance|k|q0~1_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|k|q0~3_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	datac => \dut_instance|add_instance|k|q0~1_combout\,
	datad => \scan_instance|In_Reg|PO[5]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|k|q0~regout\);

-- Location: LC_X2_Y6_N2
\dut_instance|add_instance|b|q1~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q1~2_combout\ = (\dut_instance|add_instance|t|Equal2~1_combout\ & (\dut_instance|add_instance|t|Equal2~0_combout\ & (!\dut_instance|add_instance|b|q1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Equal2~1_combout\,
	datab => \dut_instance|add_instance|t|Equal2~0_combout\,
	datac => \dut_instance|add_instance|b|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|q1~2_combout\);

-- Location: LC_X2_Y6_N3
\dut_instance|add_instance|b|q0~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q0~1_combout\ = (\scan_instance|In_Reg|PO[2]~3_combout\ & (!\scan_instance|In_Reg|PO[4]~4_combout\ & (!\scan_instance|In_Reg|PO[1]~0_combout\ & \scan_instance|In_Reg|PO[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~3_combout\,
	datab => \scan_instance|In_Reg|PO[4]~4_combout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \scan_instance|In_Reg|PO[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|q0~1_combout\);

-- Location: LC_X2_Y6_N6
\dut_instance|add_instance|b|Equal2~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|Equal2~3_combout\ = (((!\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|Equal2~3_combout\);

-- Location: LC_X2_Y6_N7
\dut_instance|add_instance|b|Equal2~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|Equal2~9_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(3) & \dut_instance|add_instance|b|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut_instance|add_instance|b|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|Equal2~9_combout\);

-- Location: LC_X2_Y6_N9
\dut_instance|add_instance|b|q0~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q0~0_combout\ = (\dut_instance|add_instance|b|Equal2~9_combout\ & (!\dut_instance|add_instance|b|q0~regout\ & (!\dut_instance|add_instance|b|q1~regout\ & !\scan_instance|In_Reg|PO[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|b|Equal2~9_combout\,
	datab => \dut_instance|add_instance|b|q0~regout\,
	datac => \dut_instance|add_instance|b|q1~regout\,
	datad => \scan_instance|In_Reg|PO[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|q0~0_combout\);

-- Location: LC_X2_Y6_N8
\dut_instance|add_instance|b|q0~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q0~2_combout\ = (\dut_instance|add_instance|b|q0~0_combout\) # ((\dut_instance|add_instance|b|q0~1_combout\ & (\scan_instance|In_Reg|PO[3]~1_combout\ & \dut_instance|add_instance|b|q1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|b|q0~1_combout\,
	datab => \dut_instance|add_instance|b|q0~0_combout\,
	datac => \scan_instance|In_Reg|PO[3]~1_combout\,
	datad => \dut_instance|add_instance|b|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|q0~2_combout\);

-- Location: LC_X2_Y6_N0
\dut_instance|add_instance|b|q0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q0~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|b|q0~2_combout\) # ((!\dut_instance|add_instance|b|q1~2_combout\ & \dut_instance|add_instance|b|q0~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|b|q1~2_combout\,
	datab => \dut_instance|add_instance|b|q0~2_combout\,
	datac => \scan_instance|In_Reg|PO[5]~5_combout\,
	datad => \dut_instance|add_instance|b|q0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|b|q0~regout\);

-- Location: LC_X2_Y6_N5
\dut_instance|add_instance|b|q1~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q1~0_combout\ = (\dut_instance|add_instance|t|Equal2~1_combout\ & (\dut_instance|add_instance|t|Equal2~0_combout\ & (\dut_instance|add_instance|b|q0~regout\ & !\dut_instance|add_instance|b|q1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Equal2~1_combout\,
	datab => \dut_instance|add_instance|t|Equal2~0_combout\,
	datac => \dut_instance|add_instance|b|q0~regout\,
	datad => \dut_instance|add_instance|b|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|b|q1~0_combout\);

-- Location: LC_X2_Y6_N1
\scan_instance|Out_Reg|mux1[0]~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~8_combout\ = (\dut_instance|add_instance|b|Equal2~9_combout\ & (\dut_instance|add_instance|b|q0~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \dut_instance|add_instance|b|Equal2~9_combout\,
	datac => \dut_instance|add_instance|b|q0~regout\,
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~8_combout\);

-- Location: LC_X2_Y6_N4
\dut_instance|add_instance|b|q1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|b|q1~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|b|q1~0_combout\) # ((!\scan_instance|Out_Reg|mux1[0]~8_combout\ & \dut_instance|add_instance|b|q1~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|b|q1~0_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~8_combout\,
	datac => \scan_instance|In_Reg|PO[5]~5_combout\,
	datad => \dut_instance|add_instance|b|q1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|b|q1~regout\);

-- Location: LC_X2_Y7_N5
\scan_instance|Out_Reg|mux1[0]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~3_combout\ = (\dut_instance|add_instance|k|q0~regout\ & (\dut_instance|add_instance|b|q1~regout\ & (\scan_instance|Out_Reg|mux1[0]~8_combout\))) # (!\dut_instance|add_instance|k|q0~regout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~2_combout\) # ((\dut_instance|add_instance|b|q1~regout\ & \scan_instance|Out_Reg|mux1[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|q0~regout\,
	datab => \dut_instance|add_instance|b|q1~regout\,
	datac => \scan_instance|Out_Reg|mux1[0]~8_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~3_combout\);

-- Location: LC_X2_Y7_N0
\dut_instance|add_instance|t|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|Equal3~0_combout\ = (((\scan_instance|In_Reg|PO[2]~3_combout\) # (!\dut_instance|add_instance|k|Equal3~0_combout\)) # (!\scan_instance|In_Reg|PO[1]~0_combout\)) # (!\scan_instance|In_Reg|PO[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[4]~4_combout\,
	datab => \scan_instance|In_Reg|PO[1]~0_combout\,
	datac => \scan_instance|In_Reg|PO[2]~3_combout\,
	datad => \dut_instance|add_instance|k|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|Equal3~0_combout\);

-- Location: LC_X3_Y7_N0
\dut_instance|add_instance|t|q0~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q0~0_combout\ = \dut_instance|add_instance|t|q0~regout\ $ (((\dut_instance|add_instance|b|Equal2~9_combout\ & (\scan_instance|In_Reg|PO[4]~4_combout\ & !\dut_instance|add_instance|t|q2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f708",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|b|Equal2~9_combout\,
	datab => \scan_instance|In_Reg|PO[4]~4_combout\,
	datac => \dut_instance|add_instance|t|q2~regout\,
	datad => \dut_instance|add_instance|t|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|q0~0_combout\);

-- Location: LC_X1_Y7_N2
\dut_instance|add_instance|g|Equal1~5\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|Equal1~5_combout\ = ((!\scan_instance|In_Reg|L2\(3) & ((!\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|Equal1~5_combout\);

-- Location: LC_X1_Y7_N3
\dut_instance|add_instance|g|Equal1~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|Equal1~12_combout\ = (\scan_instance|In_Reg|L2\(4) & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) & \dut_instance|add_instance|g|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_instance|add_instance|g|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|Equal1~12_combout\);

-- Location: LC_X2_Y7_N3
\dut_instance|add_instance|t|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|Mux0~0_combout\ = (\dut_instance|add_instance|t|q0~regout\ & (\dut_instance|add_instance|k|Equal4~12_combout\)) # (!\dut_instance|add_instance|t|q0~regout\ & (((\dut_instance|add_instance|g|Equal1~12_combout\ & 
-- !\scan_instance|In_Reg|PO[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|Equal4~12_combout\,
	datab => \dut_instance|add_instance|g|Equal1~12_combout\,
	datac => \scan_instance|In_Reg|PO[0]~2_combout\,
	datad => \dut_instance|add_instance|t|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|Mux0~0_combout\);

-- Location: LC_X2_Y7_N1
\dut_instance|add_instance|t|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|Mux0~1_combout\ = (\dut_instance|add_instance|t|q0~regout\ & (((\dut_instance|add_instance|t|Equal3~0_combout\)))) # (!\dut_instance|add_instance|t|q0~regout\ & (\dut_instance|add_instance|t|Equal2~1_combout\ & 
-- ((\dut_instance|add_instance|t|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Equal2~1_combout\,
	datab => \dut_instance|add_instance|t|Equal3~0_combout\,
	datac => \dut_instance|add_instance|t|Equal2~0_combout\,
	datad => \dut_instance|add_instance|t|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|Mux0~1_combout\);

-- Location: LC_X2_Y7_N4
\dut_instance|add_instance|t|q0~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q0~1_combout\ = ((\dut_instance|add_instance|t|q2~regout\ & ((\dut_instance|add_instance|t|Mux0~1_combout\))) # (!\dut_instance|add_instance|t|q2~regout\ & (\dut_instance|add_instance|t|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|Mux0~0_combout\,
	datab => \dut_instance|add_instance|t|Mux0~1_combout\,
	datad => \dut_instance|add_instance|t|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|q0~1_combout\);

-- Location: LC_X2_Y7_N2
\dut_instance|add_instance|t|q0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q0~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|t|q1~regout\ & (\dut_instance|add_instance|t|q0~0_combout\)) # (!\dut_instance|add_instance|t|q1~regout\ & 
-- ((\dut_instance|add_instance|t|q0~1_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|t|q0~0_combout\,
	datab => \scan_instance|In_Reg|PO[5]~5_combout\,
	datac => \dut_instance|add_instance|t|q0~1_combout\,
	datad => \dut_instance|add_instance|t|q1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|t|q0~regout\);

-- Location: LC_X2_Y7_N6
\scan_instance|Out_Reg|mux1[0]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~5_combout\ = (((!\dut_instance|add_instance|t|Equal3~0_combout\ & \dut_instance|add_instance|t|q0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_instance|add_instance|t|Equal3~0_combout\,
	datad => \dut_instance|add_instance|t|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~5_combout\);

-- Location: LC_X3_Y7_N5
\dut_instance|add_instance|t|q2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q2~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|t|q2~regout\) # ((\dut_instance|add_instance|t|q1~regout\ & \scan_instance|Out_Reg|mux1[0]~5_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|t|q1~regout\,
	datab => \scan_instance|Out_Reg|mux1[0]~5_combout\,
	datac => \scan_instance|In_Reg|PO[5]~5_combout\,
	datad => \dut_instance|add_instance|t|q2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|t|q2~regout\);

-- Location: LC_X3_Y8_N8
\dut_instance|add_instance|t|q1~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q1~0_combout\ = (\dut_instance|add_instance|t|q1~regout\ & (((\dut_instance|add_instance|t|Equal3~0_combout\) # (\dut_instance|add_instance|t|q2~regout\)))) # (!\dut_instance|add_instance|t|q1~regout\ & 
-- ((\dut_instance|add_instance|t|q2~regout\ & ((\dut_instance|add_instance|t|Equal3~0_combout\))) # (!\dut_instance|add_instance|t|q2~regout\ & (\dut_instance|add_instance|k|Equal4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|k|Equal4~12_combout\,
	datab => \dut_instance|add_instance|t|Equal3~0_combout\,
	datac => \dut_instance|add_instance|t|q1~regout\,
	datad => \dut_instance|add_instance|t|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|t|q1~0_combout\);

-- Location: LC_X3_Y8_N7
\dut_instance|add_instance|t|q1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|t|q1~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & (\dut_instance|add_instance|t|q1~regout\ $ (((!\dut_instance|add_instance|t|q1~0_combout\ & \dut_instance|add_instance|t|q0~regout\))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "090c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|t|q1~0_combout\,
	datab => \dut_instance|add_instance|t|q1~regout\,
	datac => \scan_instance|In_Reg|PO[5]~5_combout\,
	datad => \dut_instance|add_instance|t|q0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|t|q1~regout\);

-- Location: LC_X3_Y7_N3
\dut_instance|add_instance|g|Equal1~11\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|Equal1~11_combout\ = (\dut_instance|add_instance|g|Equal1~12_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|g|Equal1~12_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|Equal1~11_combout\);

-- Location: LC_X1_Y8_N9
\dut_instance|add_instance|g|q0~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|q0~4_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(3) & (\dut_instance|add_instance|t|Equal2~0_combout\ & \scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \dut_instance|add_instance|t|Equal2~0_combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|q0~4_combout\);

-- Location: LC_X3_Y7_N6
\dut_instance|add_instance|g|q0~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|q0~2_combout\ = (\dut_instance|add_instance|g|q0~regout\ & (((\dut_instance|add_instance|g|q1~regout\)))) # (!\dut_instance|add_instance|g|q0~regout\ & ((\dut_instance|add_instance|g|q1~regout\ & 
-- (!\dut_instance|add_instance|g|Equal2~12_combout\)) # (!\dut_instance|add_instance|g|q1~regout\ & ((\dut_instance|add_instance|g|q0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|g|Equal2~12_combout\,
	datab => \dut_instance|add_instance|g|q0~4_combout\,
	datac => \dut_instance|add_instance|g|q0~regout\,
	datad => \dut_instance|add_instance|g|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|g|q0~2_combout\);

-- Location: LC_X3_Y7_N7
\dut_instance|add_instance|g|q0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|q0~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|g|q0~2_combout\) # ((!\dut_instance|add_instance|g|Equal1~11_combout\ & \dut_instance|add_instance|g|q0~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \dut_instance|add_instance|g|Equal1~11_combout\,
	datab => \dut_instance|add_instance|g|q0~2_combout\,
	datac => \scan_instance|In_Reg|PO[5]~5_combout\,
	datad => \dut_instance|add_instance|g|q0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|g|q0~regout\);

-- Location: LC_X3_Y7_N8
\dut_instance|add_instance|g|q1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|g|q1~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[5]~5_combout\ & ((\dut_instance|add_instance|g|q1~regout\) # ((\dut_instance|add_instance|g|q0~regout\ & \dut_instance|add_instance|g|Equal1~11_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(6),
	dataa => \scan_instance|In_Reg|PO[5]~5_combout\,
	datab => \dut_instance|add_instance|g|q0~regout\,
	datac => \dut_instance|add_instance|g|Equal1~11_combout\,
	datad => \dut_instance|add_instance|g|q1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|g|q1~regout\);

-- Location: LC_X1_Y7_N7
\scan_instance|Out_Reg|mux1[0]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~4_combout\ = (!\dut_instance|add_instance|g|Equal2~12_combout\ & (((\dut_instance|add_instance|g|q1~regout\ & !\dut_instance|add_instance|g|q0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|g|Equal2~12_combout\,
	datac => \dut_instance|add_instance|g|q1~regout\,
	datad => \dut_instance|add_instance|g|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~4_combout\);

-- Location: LC_X2_Y7_N7
\scan_instance|Out_Reg|mux1[0]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~6_combout\ = (\scan_instance|Out_Reg|mux1[0]~4_combout\) # ((!\dut_instance|add_instance|t|q1~regout\ & (\dut_instance|add_instance|t|q2~regout\ & \scan_instance|Out_Reg|mux1[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|t|q1~regout\,
	datab => \scan_instance|Out_Reg|mux1[0]~4_combout\,
	datac => \dut_instance|add_instance|t|q2~regout\,
	datad => \scan_instance|Out_Reg|mux1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~6_combout\);

-- Location: LC_X2_Y7_N8
\scan_instance|Out_Reg|mux1[0]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~7_combout\ = (\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|cap_shft~0_combout\ & (((\scan_instance|Out_Reg|mux1[0]~3_combout\) # (\scan_instance|Out_Reg|mux1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|cap_shft~0_combout\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \scan_instance|Out_Reg|mux1[0]~3_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~7_combout\);

-- Location: LC_X2_Y7_N9
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & ((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~7_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(0),
	datac => \scan_instance|Selector0~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~7_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


