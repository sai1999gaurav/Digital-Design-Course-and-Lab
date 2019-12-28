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

-- DATE "04/12/2019 19:41:23"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(10 DOWNTO 0);
	output_vector : OUT std_logic_vector(8 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(8 DOWNTO 0);
SIGNAL \add_instance|Equal0~0_combout\ : std_logic;
SIGNAL \add_instance|R[0]~0\ : std_logic;
SIGNAL \add_instance|fsm_state.DONESTATE~regout\ : std_logic;
SIGNAL \add_instance|fsm_state.IDLE~regout\ : std_logic;
SIGNAL \add_instance|Sum[3]~0_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.WORKS~regout\ : std_logic;
SIGNAL \add_instance|Sum[3]~1_combout\ : std_logic;
SIGNAL \add_instance|R[7]~3_combout\ : std_logic;
SIGNAL \add_instance|R[7]~4_combout\ : std_logic;
SIGNAL \add_instance|Add0~2\ : std_logic;
SIGNAL \add_instance|Add0~2COUT1_26\ : std_logic;
SIGNAL \add_instance|Add0~7\ : std_logic;
SIGNAL \add_instance|Add0~7COUT1_27\ : std_logic;
SIGNAL \add_instance|Add0~12\ : std_logic;
SIGNAL \add_instance|Add0~12COUT1_28\ : std_logic;
SIGNAL \add_instance|Add0~17\ : std_logic;
SIGNAL \add_instance|Add0~17COUT1_29\ : std_logic;
SIGNAL \add_instance|Add0~20_combout\ : std_logic;
SIGNAL \add_instance|R[7]~2_combout\ : std_logic;
SIGNAL \add_instance|Add0~15_combout\ : std_logic;
SIGNAL \add_instance|R[3]~1_combout\ : std_logic;
SIGNAL \add_instance|Add0~10_combout\ : std_logic;
SIGNAL \add_instance|Add0~5_combout\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|Selector15~0_combout\ : std_logic;
SIGNAL \add_instance|Selector23~0_combout\ : std_logic;
SIGNAL \add_instance|Selector22~0_combout\ : std_logic;
SIGNAL \add_instance|Selector21~0_combout\ : std_logic;
SIGNAL \add_instance|Selector20~0_combout\ : std_logic;
SIGNAL \add_instance|Selector19~0_combout\ : std_logic;
SIGNAL \add_instance|Selector18~0_combout\ : std_logic;
SIGNAL \add_instance|Selector17~0_combout\ : std_logic;
SIGNAL \add_instance|Selector16~0_combout\ : std_logic;
SIGNAL \add_instance|Sum\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \add_instance|T\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \add_instance|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|ALT_INV_fsm_state.WORKS~regout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|ALT_INV_fsm_state.WORKS~regout\ <= NOT \add_instance|fsm_state.WORKS~regout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X9_Y8_N6
\add_instance|counter[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|counter\(1) = DFFEAS((\add_instance|R[0]~0\ & (\add_instance|fsm_state.WORKS~regout\ & (\add_instance|counter\(1) $ (\add_instance|counter\(0))))) # (!\add_instance|R[0]~0\ & (((\add_instance|counter\(1))))), 
-- GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "58d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|R[0]~0\,
	datab => \add_instance|fsm_state.WORKS~regout\,
	datac => \add_instance|counter\(1),
	datad => \add_instance|counter\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|counter\(1));

-- Location: LC_X9_Y8_N4
\add_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal0~0_combout\ = (((\add_instance|counter\(1) & \add_instance|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|counter\(1),
	datad => \add_instance|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal0~0_combout\);

-- Location: LC_X9_Y8_N5
\add_instance|fsm_state.WORKS\ : maxv_lcell
-- Equation(s):
-- \add_instance|R[0]~0\ = (!\input_vector~combout\(10) & ((\add_instance|Sum[3]~0_combout\) # ((B1_fsm_state.WORKS & !\add_instance|Equal0~0_combout\))))
-- \add_instance|fsm_state.WORKS~regout\ = DFFEAS(\add_instance|R[0]~0\, GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \input_vector~combout\(10),
	datab => \add_instance|Sum[3]~0_combout\,
	datad => \add_instance|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|R[0]~0\,
	regout => \add_instance|fsm_state.WORKS~regout\);

-- Location: LC_X9_Y8_N8
\add_instance|counter[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|counter\(0) = DFFEAS((\add_instance|counter\(0) & (((!\add_instance|R[0]~0\)))) # (!\add_instance|counter\(0) & (\add_instance|fsm_state.WORKS~regout\ & ((!\input_vector~combout\(10))))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c2e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datab => \add_instance|counter\(0),
	datac => \add_instance|R[0]~0\,
	datad => \input_vector~combout\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|counter\(0));

-- Location: LC_X9_Y8_N7
\add_instance|fsm_state.DONESTATE\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.DONESTATE~regout\ = DFFEAS((\add_instance|fsm_state.WORKS~regout\ & (\add_instance|counter\(0) & (\add_instance|counter\(1) & !\input_vector~combout\(10)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datab => \add_instance|counter\(0),
	datac => \add_instance|counter\(1),
	datad => \input_vector~combout\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.DONESTATE~regout\);

-- Location: LC_X9_Y8_N0
\add_instance|fsm_state.IDLE\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.IDLE~regout\ = DFFEAS((!\input_vector~combout\(10) & (!\add_instance|fsm_state.DONESTATE~regout\ & ((\add_instance|fsm_state.IDLE~regout\) # (\input_vector~combout\(8))))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.IDLE~regout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|fsm_state.DONESTATE~regout\,
	datad => \input_vector~combout\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.IDLE~regout\);

-- Location: LC_X9_Y8_N1
\add_instance|Sum[3]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum[3]~0_combout\ = ((\input_vector~combout\(8) & (!\add_instance|fsm_state.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \add_instance|fsm_state.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Sum[3]~0_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X9_Y8_N9
\add_instance|Sum[3]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum[3]~1_combout\ = ((\input_vector~combout\(8) & (!\input_vector~combout\(10) & !\add_instance|fsm_state.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(10),
	datad => \add_instance|fsm_state.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Sum[3]~1_combout\);

-- Location: LC_X8_Y7_N5
\add_instance|Sum[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum\(1) = DFFEAS(GND, GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|Sum[3]~1_combout\, \input_vector~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \input_vector~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|Sum[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Sum\(1));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X9_Y8_N3
\add_instance|R[7]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|R[7]~3_combout\ = (((!\add_instance|fsm_state.DONESTATE~regout\ & !\input_vector~combout\(10))))

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
	datac => \add_instance|fsm_state.DONESTATE~regout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|R[7]~3_combout\);

-- Location: LC_X9_Y8_N2
\add_instance|R[7]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|R[7]~4_combout\ = (\add_instance|R[7]~3_combout\ & ((\add_instance|fsm_state.WORKS~regout\ & ((!\add_instance|Equal0~0_combout\))) # (!\add_instance|fsm_state.WORKS~regout\ & (\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|R[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|R[7]~4_combout\);

-- Location: LC_X10_Y8_N9
\add_instance|T[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T\(2) = DFFEAS((\add_instance|R[7]~4_combout\ & (!\add_instance|fsm_state.WORKS~regout\ & ((\input_vector~combout\(3))))) # (!\add_instance|R[7]~4_combout\ & (((\add_instance|T\(2))))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datab => \add_instance|T\(2),
	datac => \input_vector~combout\(3),
	datad => \add_instance|R[7]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|T\(2));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X10_Y8_N0
\add_instance|T[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T\(1) = DFFEAS(((\add_instance|fsm_state.WORKS~regout\ & (\add_instance|T\(2))) # (!\add_instance|fsm_state.WORKS~regout\ & ((\input_vector~combout\(2))))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|T\(2),
	datac => \add_instance|fsm_state.WORKS~regout\,
	datad => \input_vector~combout\(2),
	aclr => GND,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|T\(1));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X10_Y8_N6
\add_instance|T[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T\(0) = DFFEAS((\add_instance|fsm_state.WORKS~regout\ & (((\add_instance|T\(1))))) # (!\add_instance|fsm_state.WORKS~regout\ & (((\input_vector~combout\(1))))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datac => \add_instance|T\(1),
	datad => \input_vector~combout\(1),
	aclr => GND,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|T\(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X8_Y7_N0
\add_instance|Sum[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum\(3) = DFFEAS(GND, GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|Sum[3]~1_combout\, \input_vector~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \input_vector~combout\(7),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|Sum[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Sum\(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X8_Y7_N6
\add_instance|Sum[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum\(2) = DFFEAS((((\input_vector~combout\(6)))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|Sum[3]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datad => \input_vector~combout\(6),
	aclr => GND,
	ena => \add_instance|Sum[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Sum\(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X8_Y7_N2
\add_instance|Sum[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Sum\(0) = DFFEAS(GND, GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|Sum[3]~1_combout\, \input_vector~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \input_vector~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|Sum[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Sum\(0));

-- Location: LC_X9_Y7_N5
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = \add_instance|R\(4) $ ((\add_instance|Sum\(0)))
-- \add_instance|Add0~2\ = CARRY((\add_instance|R\(4) & (\add_instance|Sum\(0))))
-- \add_instance|Add0~2COUT1_26\ = CARRY((\add_instance|R\(4) & (\add_instance|Sum\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|R\(4),
	datab => \add_instance|Sum\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\,
	cout0 => \add_instance|Add0~2\,
	cout1 => \add_instance|Add0~2COUT1_26\);

-- Location: LC_X9_Y7_N6
\add_instance|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~5_combout\ = \add_instance|Sum\(1) $ (\add_instance|R\(5) $ ((\add_instance|Add0~2\)))
-- \add_instance|Add0~7\ = CARRY((\add_instance|Sum\(1) & (!\add_instance|R\(5) & !\add_instance|Add0~2\)) # (!\add_instance|Sum\(1) & ((!\add_instance|Add0~2\) # (!\add_instance|R\(5)))))
-- \add_instance|Add0~7COUT1_27\ = CARRY((\add_instance|Sum\(1) & (!\add_instance|R\(5) & !\add_instance|Add0~2COUT1_26\)) # (!\add_instance|Sum\(1) & ((!\add_instance|Add0~2COUT1_26\) # (!\add_instance|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Sum\(1),
	datab => \add_instance|R\(5),
	cin0 => \add_instance|Add0~2\,
	cin1 => \add_instance|Add0~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~5_combout\,
	cout0 => \add_instance|Add0~7\,
	cout1 => \add_instance|Add0~7COUT1_27\);

-- Location: LC_X9_Y7_N7
\add_instance|Add0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~10_combout\ = \add_instance|R\(6) $ (\add_instance|Sum\(2) $ ((!\add_instance|Add0~7\)))
-- \add_instance|Add0~12\ = CARRY((\add_instance|R\(6) & ((\add_instance|Sum\(2)) # (!\add_instance|Add0~7\))) # (!\add_instance|R\(6) & (\add_instance|Sum\(2) & !\add_instance|Add0~7\)))
-- \add_instance|Add0~12COUT1_28\ = CARRY((\add_instance|R\(6) & ((\add_instance|Sum\(2)) # (!\add_instance|Add0~7COUT1_27\))) # (!\add_instance|R\(6) & (\add_instance|Sum\(2) & !\add_instance|Add0~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|R\(6),
	datab => \add_instance|Sum\(2),
	cin0 => \add_instance|Add0~7\,
	cin1 => \add_instance|Add0~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~10_combout\,
	cout0 => \add_instance|Add0~12\,
	cout1 => \add_instance|Add0~12COUT1_28\);

-- Location: LC_X9_Y7_N8
\add_instance|Add0~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~15_combout\ = \add_instance|Sum\(3) $ (\add_instance|R\(7) $ ((\add_instance|Add0~12\)))
-- \add_instance|Add0~17\ = CARRY((\add_instance|Sum\(3) & (!\add_instance|R\(7) & !\add_instance|Add0~12\)) # (!\add_instance|Sum\(3) & ((!\add_instance|Add0~12\) # (!\add_instance|R\(7)))))
-- \add_instance|Add0~17COUT1_29\ = CARRY((\add_instance|Sum\(3) & (!\add_instance|R\(7) & !\add_instance|Add0~12COUT1_28\)) # (!\add_instance|Sum\(3) & ((!\add_instance|Add0~12COUT1_28\) # (!\add_instance|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Sum\(3),
	datab => \add_instance|R\(7),
	cin0 => \add_instance|Add0~12\,
	cin1 => \add_instance|Add0~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~15_combout\,
	cout0 => \add_instance|Add0~17\,
	cout1 => \add_instance|Add0~17COUT1_29\);

-- Location: LC_X9_Y7_N9
\add_instance|Add0~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~20_combout\ = (((!\add_instance|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_instance|Add0~17\,
	cin1 => \add_instance|Add0~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~20_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|R[7]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|R[7]~2_combout\ = ((\add_instance|fsm_state.WORKS~regout\ & ((\add_instance|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fsm_state.WORKS~regout\,
	datad => \add_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|R[7]~2_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|R[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(7) = DFFEAS((\add_instance|R[7]~4_combout\ & (\add_instance|T\(0) & ((\add_instance|R[7]~2_combout\)))) # (!\add_instance|R[7]~4_combout\ & (((\add_instance|R\(7))))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|T\(0),
	datab => \add_instance|R\(7),
	datac => \add_instance|R[7]~4_combout\,
	datad => \add_instance|R[7]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(7));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X10_Y7_N2
\add_instance|R[3]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|R[3]~1_combout\ = (((!\input_vector~combout\(0) & !\add_instance|fsm_state.WORKS~regout\)))

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
	datac => \input_vector~combout\(0),
	datad => \add_instance|fsm_state.WORKS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|R[3]~1_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|R[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(6) = DFFEAS((\add_instance|T\(0) & (((\add_instance|Add0~15_combout\)))) # (!\add_instance|T\(0) & (\add_instance|R\(7))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, \input_vector~combout\(7), , 
-- \add_instance|R[3]~1_combout\, !\add_instance|fsm_state.WORKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|T\(0),
	datab => \add_instance|R\(7),
	datac => \input_vector~combout\(7),
	datad => \add_instance|Add0~15_combout\,
	aclr => GND,
	sclr => \add_instance|R[3]~1_combout\,
	sload => \add_instance|ALT_INV_fsm_state.WORKS~regout\,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(6));

-- Location: LC_X9_Y7_N1
\add_instance|R[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(5) = DFFEAS(((\add_instance|T\(0) & ((\add_instance|Add0~10_combout\))) # (!\add_instance|T\(0) & (\add_instance|R\(6)))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, \input_vector~combout\(6), , 
-- \add_instance|R[3]~1_combout\, !\add_instance|fsm_state.WORKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|R\(6),
	datab => \add_instance|Add0~10_combout\,
	datac => \input_vector~combout\(6),
	datad => \add_instance|T\(0),
	aclr => GND,
	sclr => \add_instance|R[3]~1_combout\,
	sload => \add_instance|ALT_INV_fsm_state.WORKS~regout\,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(5));

-- Location: LC_X9_Y7_N3
\add_instance|R[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(4) = DFFEAS(((\add_instance|T\(0) & (\add_instance|Add0~5_combout\)) # (!\add_instance|T\(0) & ((\add_instance|R\(5))))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, \input_vector~combout\(5), , 
-- \add_instance|R[3]~1_combout\, !\add_instance|fsm_state.WORKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add0~5_combout\,
	datab => \add_instance|R\(5),
	datac => \input_vector~combout\(5),
	datad => \add_instance|T\(0),
	aclr => GND,
	sclr => \add_instance|R[3]~1_combout\,
	sload => \add_instance|ALT_INV_fsm_state.WORKS~regout\,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(4));

-- Location: LC_X10_Y7_N0
\add_instance|R[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(3) = DFFEAS((\add_instance|T\(0) & (\add_instance|Add0~0_combout\)) # (!\add_instance|T\(0) & (((\add_instance|R\(4))))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, \input_vector~combout\(4), , 
-- \add_instance|R[3]~1_combout\, !\add_instance|fsm_state.WORKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add0~0_combout\,
	datab => \add_instance|T\(0),
	datac => \input_vector~combout\(4),
	datad => \add_instance|R\(4),
	aclr => GND,
	sclr => \add_instance|R[3]~1_combout\,
	sload => \add_instance|ALT_INV_fsm_state.WORKS~regout\,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(3));

-- Location: LC_X10_Y8_N1
\add_instance|R[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(2) = DFFEAS((((\add_instance|fsm_state.WORKS~regout\ & \add_instance|R\(3)))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.WORKS~regout\,
	datad => \add_instance|R\(3),
	aclr => GND,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(2));

-- Location: LC_X10_Y8_N2
\add_instance|R[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(1) = DFFEAS((((\add_instance|fsm_state.WORKS~regout\ & \add_instance|R\(2)))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.WORKS~regout\,
	datad => \add_instance|R\(2),
	aclr => GND,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(1));

-- Location: LC_X10_Y8_N8
\add_instance|R[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|R\(0) = DFFEAS((((\add_instance|fsm_state.WORKS~regout\ & \add_instance|R\(1)))), GLOBAL(\input_vector~combout\(9)), VCC, , \add_instance|R[0]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.WORKS~regout\,
	datad => \add_instance|R\(1),
	aclr => GND,
	ena => \add_instance|R[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|R\(0));

-- Location: LC_X10_Y8_N7
\add_instance|Selector15~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector15~0_combout\ = (\add_instance|fsm_state.DONESTATE~regout\) # ((\add_instance|fsm_state.WORKS~regout\ & (\add_instance|counter\(0) & \add_instance|counter\(1))))

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
	dataa => \add_instance|fsm_state.WORKS~regout\,
	datab => \add_instance|fsm_state.DONESTATE~regout\,
	datac => \add_instance|counter\(0),
	datad => \add_instance|counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector15~0_combout\);

-- Location: LC_X10_Y9_N2
\add_instance|Selector23~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector23~0_combout\ = (((\add_instance|R\(0) & \add_instance|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|R\(0),
	datad => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector23~0_combout\);

-- Location: LC_X10_Y8_N5
\add_instance|Selector22~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector22~0_combout\ = ((\add_instance|R\(1) & (\add_instance|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|R\(1),
	datac => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector22~0_combout\);

-- Location: LC_X10_Y8_N3
\add_instance|Selector21~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector21~0_combout\ = ((\add_instance|R\(2) & (\add_instance|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|R\(2),
	datac => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector21~0_combout\);

-- Location: LC_X10_Y8_N4
\add_instance|Selector20~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector20~0_combout\ = ((\add_instance|R\(3) & (\add_instance|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|R\(3),
	datac => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector20~0_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|Selector19~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector19~0_combout\ = ((\add_instance|R\(4) & ((\add_instance|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|R\(4),
	datad => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector19~0_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|Selector18~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector18~0_combout\ = (((\add_instance|R\(5) & \add_instance|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|R\(5),
	datad => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector18~0_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|Selector17~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector17~0_combout\ = ((\add_instance|R\(6) & ((\add_instance|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|R\(6),
	datad => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector17~0_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|Selector16~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector16~0_combout\ = (\add_instance|R\(7) & (((\add_instance|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|R\(7),
	datad => \add_instance|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector16~0_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector23~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector22~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector21~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector20~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector19~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector18~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector17~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector16~0_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector15~0_combout\,
	oe => VCC,
	padio => ww_output_vector(8));
END structure;


