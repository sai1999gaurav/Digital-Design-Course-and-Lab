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

-- DATE "04/12/2019 16:58:24"

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
	output_vector : BUFFER std_logic_vector(11 DOWNTO 0)
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
SIGNAL ww_output_vector : std_logic_vector(11 DOWNTO 0);
SIGNAL \add_instance|R~regout\ : std_logic;
SIGNAL \add_instance|W~regout\ : std_logic;
SIGNAL \add_instance|C~regout\ : std_logic;
SIGNAL \add_instance|fsm_state~15_combout\ : std_logic;
SIGNAL \add_instance|fsm_state~13_combout\ : std_logic;
SIGNAL \add_instance|Add0~155_combout\ : std_logic;
SIGNAL \add_instance|Add0~157\ : std_logic;
SIGNAL \add_instance|Add0~150_combout\ : std_logic;
SIGNAL \add_instance|Add0~152\ : std_logic;
SIGNAL \add_instance|Add0~152COUT1_161\ : std_logic;
SIGNAL \add_instance|Add0~145_combout\ : std_logic;
SIGNAL \add_instance|Add0~147\ : std_logic;
SIGNAL \add_instance|Add0~147COUT1_162\ : std_logic;
SIGNAL \add_instance|Add0~140_combout\ : std_logic;
SIGNAL \add_instance|Add0~142\ : std_logic;
SIGNAL \add_instance|Add0~142COUT1_163\ : std_logic;
SIGNAL \add_instance|Add0~25_combout\ : std_logic;
SIGNAL \add_instance|Add0~27\ : std_logic;
SIGNAL \add_instance|Add0~27COUT1_164\ : std_logic;
SIGNAL \add_instance|Add0~30_combout\ : std_logic;
SIGNAL \add_instance|Add0~32\ : std_logic;
SIGNAL \add_instance|Add0~10_combout\ : std_logic;
SIGNAL \add_instance|Add0~12\ : std_logic;
SIGNAL \add_instance|Add0~12COUT1_165\ : std_logic;
SIGNAL \add_instance|Add0~55_combout\ : std_logic;
SIGNAL \add_instance|Add0~57\ : std_logic;
SIGNAL \add_instance|Add0~57COUT1_166\ : std_logic;
SIGNAL \add_instance|Add0~20_combout\ : std_logic;
SIGNAL \add_instance|Add0~22\ : std_logic;
SIGNAL \add_instance|Add0~22COUT1_167\ : std_logic;
SIGNAL \add_instance|Add0~15_combout\ : std_logic;
SIGNAL \add_instance|Add0~17\ : std_logic;
SIGNAL \add_instance|Add0~17COUT1_168\ : std_logic;
SIGNAL \add_instance|Add0~40_combout\ : std_logic;
SIGNAL \add_instance|Add0~42\ : std_logic;
SIGNAL \add_instance|Add0~35_combout\ : std_logic;
SIGNAL \add_instance|Add0~37\ : std_logic;
SIGNAL \add_instance|Add0~37COUT1_169\ : std_logic;
SIGNAL \add_instance|Add0~50_combout\ : std_logic;
SIGNAL \add_instance|Add0~52\ : std_logic;
SIGNAL \add_instance|Add0~52COUT1_170\ : std_logic;
SIGNAL \add_instance|Add0~45_combout\ : std_logic;
SIGNAL \add_instance|Add0~47\ : std_logic;
SIGNAL \add_instance|Add0~47COUT1_171\ : std_logic;
SIGNAL \add_instance|Add0~5_combout\ : std_logic;
SIGNAL \add_instance|Add0~7\ : std_logic;
SIGNAL \add_instance|Add0~7COUT1_172\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~1_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~2_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~3_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~4_combout\ : std_logic;
SIGNAL \add_instance|Add0~2\ : std_logic;
SIGNAL \add_instance|Add0~135_combout\ : std_logic;
SIGNAL \add_instance|Add0~137\ : std_logic;
SIGNAL \add_instance|Add0~137COUT1_173\ : std_logic;
SIGNAL \add_instance|Add0~130_combout\ : std_logic;
SIGNAL \add_instance|Add0~132\ : std_logic;
SIGNAL \add_instance|Add0~132COUT1_174\ : std_logic;
SIGNAL \add_instance|Add0~125_combout\ : std_logic;
SIGNAL \add_instance|Add0~127\ : std_logic;
SIGNAL \add_instance|Add0~127COUT1_175\ : std_logic;
SIGNAL \add_instance|Add0~120_combout\ : std_logic;
SIGNAL \add_instance|Add0~122\ : std_logic;
SIGNAL \add_instance|Add0~122COUT1_176\ : std_logic;
SIGNAL \add_instance|Add0~115_combout\ : std_logic;
SIGNAL \add_instance|Add0~117\ : std_logic;
SIGNAL \add_instance|Add0~110_combout\ : std_logic;
SIGNAL \add_instance|Add0~112\ : std_logic;
SIGNAL \add_instance|Add0~112COUT1_177\ : std_logic;
SIGNAL \add_instance|Add0~105_combout\ : std_logic;
SIGNAL \add_instance|Add0~107\ : std_logic;
SIGNAL \add_instance|Add0~107COUT1_178\ : std_logic;
SIGNAL \add_instance|Add0~100_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~7_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~8_combout\ : std_logic;
SIGNAL \add_instance|Add0~102\ : std_logic;
SIGNAL \add_instance|Add0~102COUT1_179\ : std_logic;
SIGNAL \add_instance|Add0~95_combout\ : std_logic;
SIGNAL \add_instance|Add0~97\ : std_logic;
SIGNAL \add_instance|Add0~97COUT1_180\ : std_logic;
SIGNAL \add_instance|Add0~90_combout\ : std_logic;
SIGNAL \add_instance|Add0~92\ : std_logic;
SIGNAL \add_instance|Add0~85_combout\ : std_logic;
SIGNAL \add_instance|Add0~87\ : std_logic;
SIGNAL \add_instance|Add0~87COUT1_181\ : std_logic;
SIGNAL \add_instance|Add0~80_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~6_combout\ : std_logic;
SIGNAL \add_instance|Add0~82\ : std_logic;
SIGNAL \add_instance|Add0~82COUT1_182\ : std_logic;
SIGNAL \add_instance|Add0~75_combout\ : std_logic;
SIGNAL \add_instance|Add0~77\ : std_logic;
SIGNAL \add_instance|Add0~77COUT1_183\ : std_logic;
SIGNAL \add_instance|Add0~70_combout\ : std_logic;
SIGNAL \add_instance|Add0~72\ : std_logic;
SIGNAL \add_instance|Add0~72COUT1_184\ : std_logic;
SIGNAL \add_instance|Add0~65_combout\ : std_logic;
SIGNAL \add_instance|Add0~67\ : std_logic;
SIGNAL \add_instance|Add0~60_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~5_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~9_combout\ : std_logic;
SIGNAL \add_instance|fsm_state~16_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.s2~regout\ : std_logic;
SIGNAL \add_instance|fsm_state.s3~regout\ : std_logic;
SIGNAL \add_instance|fsm_state~21_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.s1~regout\ : std_logic;
SIGNAL \add_instance|fsm_state~17_combout\ : std_logic;
SIGNAL \add_instance|fsm_state~18_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.s8~regout\ : std_logic;
SIGNAL \add_instance|WideOr7~0_combout\ : std_logic;
SIGNAL \add_instance|Selector49~0_combout\ : std_logic;
SIGNAL \add_instance|Add1~2_combout\ : std_logic;
SIGNAL \add_instance|Add1~0_combout\ : std_logic;
SIGNAL \add_instance|Selector51~2_combout\ : std_logic;
SIGNAL \add_instance|fsm_state~12_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.s4~regout\ : std_logic;
SIGNAL \add_instance|fsm_state.s5~regout\ : std_logic;
SIGNAL \add_instance|fsm_state.s6~regout\ : std_logic;
SIGNAL \add_instance|next_count~0_combout\ : std_logic;
SIGNAL \add_instance|Selector47~0_combout\ : std_logic;
SIGNAL \add_instance|Add1~1_combout\ : std_logic;
SIGNAL \add_instance|Selector50~4_combout\ : std_logic;
SIGNAL \add_instance|fsm_state.s7~regout\ : std_logic;
SIGNAL \add_instance|done~0_combout\ : std_logic;
SIGNAL \add_instance|rd~0_combout\ : std_logic;
SIGNAL \add_instance|rd~1\ : std_logic;
SIGNAL \add_instance|rd~regout\ : std_logic;
SIGNAL \add_instance|wr~0_combout\ : std_logic;
SIGNAL \add_instance|wr~1\ : std_logic;
SIGNAL \add_instance|wr~regout\ : std_logic;
SIGNAL \add_instance|cs~2\ : std_logic;
SIGNAL \add_instance|cs~0_combout\ : std_logic;
SIGNAL \add_instance|cs~1\ : std_logic;
SIGNAL \add_instance|cs~regout\ : std_logic;
SIGNAL \add_instance|next_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_instance|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|Count2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \add_instance|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_input_vector~combout\ : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector~combout\(10) <= NOT \input_vector~combout\(10);

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

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X11_Y5_N3
\add_instance|fsm_state~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~15_combout\ = (!\input_vector~combout\(0) & (((\add_instance|fsm_state.s5~regout\ & !\add_instance|fsm_state.s8~regout\))))

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
	dataa => \input_vector~combout\(0),
	datac => \add_instance|fsm_state.s5~regout\,
	datad => \add_instance|fsm_state.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~15_combout\);

-- Location: LC_X11_Y5_N6
\add_instance|fsm_state~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~13_combout\ = (!\input_vector~combout\(0) & (((\add_instance|fsm_state.s5~regout\))))

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
	dataa => \input_vector~combout\(0),
	datac => \add_instance|fsm_state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~13_combout\);

-- Location: LC_X7_Y5_N4
\add_instance|Add0~155\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~155_combout\ = ((!\add_instance|Count2\(0)))
-- \add_instance|Add0~157\ = CARRY(((\add_instance|Count2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~155_combout\,
	cout => \add_instance|Add0~157\);

-- Location: LC_X7_Y5_N1
\add_instance|Count2[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(0) = DFFEAS((\add_instance|Add0~155_combout\ & (((\add_instance|fsm_state.s1~regout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add0~155_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(0));

-- Location: LC_X7_Y5_N5
\add_instance|Add0~150\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~150_combout\ = (\add_instance|Count2\(1) $ ((\add_instance|Add0~157\)))
-- \add_instance|Add0~152\ = CARRY(((!\add_instance|Add0~157\) # (!\add_instance|Count2\(1))))
-- \add_instance|Add0~152COUT1_161\ = CARRY(((!\add_instance|Add0~157\) # (!\add_instance|Count2\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(1),
	cin => \add_instance|Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~150_combout\,
	cout0 => \add_instance|Add0~152\,
	cout1 => \add_instance|Add0~152COUT1_161\);

-- Location: LC_X7_Y5_N0
\add_instance|Count2[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(1) = DFFEAS((\add_instance|Add0~150_combout\ & (((\add_instance|fsm_state.s1~regout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add0~150_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(1));

-- Location: LC_X7_Y5_N6
\add_instance|Add0~145\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~145_combout\ = \add_instance|Count2\(2) $ ((((!(!\add_instance|Add0~157\ & \add_instance|Add0~152\) # (\add_instance|Add0~157\ & \add_instance|Add0~152COUT1_161\)))))
-- \add_instance|Add0~147\ = CARRY((\add_instance|Count2\(2) & ((!\add_instance|Add0~152\))))
-- \add_instance|Add0~147COUT1_162\ = CARRY((\add_instance|Count2\(2) & ((!\add_instance|Add0~152COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(2),
	cin => \add_instance|Add0~157\,
	cin0 => \add_instance|Add0~152\,
	cin1 => \add_instance|Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~145_combout\,
	cout0 => \add_instance|Add0~147\,
	cout1 => \add_instance|Add0~147COUT1_162\);

-- Location: LC_X7_Y5_N3
\add_instance|Count2[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(2) = DFFEAS((\add_instance|Add0~145_combout\ & (((\add_instance|fsm_state.s1~regout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add0~145_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(2));

-- Location: LC_X7_Y5_N7
\add_instance|Add0~140\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~140_combout\ = (\add_instance|Count2\(3) $ (((!\add_instance|Add0~157\ & \add_instance|Add0~147\) # (\add_instance|Add0~157\ & \add_instance|Add0~147COUT1_162\))))
-- \add_instance|Add0~142\ = CARRY(((!\add_instance|Add0~147\) # (!\add_instance|Count2\(3))))
-- \add_instance|Add0~142COUT1_163\ = CARRY(((!\add_instance|Add0~147COUT1_162\) # (!\add_instance|Count2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(3),
	cin => \add_instance|Add0~157\,
	cin0 => \add_instance|Add0~147\,
	cin1 => \add_instance|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~140_combout\,
	cout0 => \add_instance|Add0~142\,
	cout1 => \add_instance|Add0~142COUT1_163\);

-- Location: LC_X7_Y5_N2
\add_instance|Count2[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(3) = DFFEAS(((\add_instance|Add0~140_combout\ & ((\add_instance|fsm_state.s1~regout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|Add0~140_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(3));

-- Location: LC_X7_Y5_N8
\add_instance|Add0~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~25_combout\ = (\add_instance|Count2\(4) $ ((!(!\add_instance|Add0~157\ & \add_instance|Add0~142\) # (\add_instance|Add0~157\ & \add_instance|Add0~142COUT1_163\))))
-- \add_instance|Add0~27\ = CARRY(((\add_instance|Count2\(4) & !\add_instance|Add0~142\)))
-- \add_instance|Add0~27COUT1_164\ = CARRY(((\add_instance|Count2\(4) & !\add_instance|Add0~142COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(4),
	cin => \add_instance|Add0~157\,
	cin0 => \add_instance|Add0~142\,
	cin1 => \add_instance|Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~25_combout\,
	cout0 => \add_instance|Add0~27\,
	cout1 => \add_instance|Add0~27COUT1_164\);

-- Location: LC_X7_Y4_N0
\add_instance|Count2[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(4) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~25_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~25_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(4));

-- Location: LC_X7_Y5_N9
\add_instance|Add0~30\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~30_combout\ = (\add_instance|Count2\(5) $ (((!\add_instance|Add0~157\ & \add_instance|Add0~27\) # (\add_instance|Add0~157\ & \add_instance|Add0~27COUT1_164\))))
-- \add_instance|Add0~32\ = CARRY(((!\add_instance|Add0~27COUT1_164\) # (!\add_instance|Count2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(5),
	cin => \add_instance|Add0~157\,
	cin0 => \add_instance|Add0~27\,
	cin1 => \add_instance|Add0~27COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~30_combout\,
	cout => \add_instance|Add0~32\);

-- Location: LC_X8_Y4_N4
\add_instance|Count2[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(5) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~30_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~30_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(5));

-- Location: LC_X8_Y5_N0
\add_instance|Add0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~10_combout\ = (\add_instance|Count2\(6) $ ((!\add_instance|Add0~32\)))
-- \add_instance|Add0~12\ = CARRY(((\add_instance|Count2\(6) & !\add_instance|Add0~32\)))
-- \add_instance|Add0~12COUT1_165\ = CARRY(((\add_instance|Count2\(6) & !\add_instance|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(6),
	cin => \add_instance|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~10_combout\,
	cout0 => \add_instance|Add0~12\,
	cout1 => \add_instance|Add0~12COUT1_165\);

-- Location: LC_X8_Y4_N7
\add_instance|Count2[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(6) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~10_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~10_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(6));

-- Location: LC_X8_Y5_N1
\add_instance|Add0~55\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~55_combout\ = (\add_instance|Count2\(7) $ (((!\add_instance|Add0~32\ & \add_instance|Add0~12\) # (\add_instance|Add0~32\ & \add_instance|Add0~12COUT1_165\))))
-- \add_instance|Add0~57\ = CARRY(((!\add_instance|Add0~12\) # (!\add_instance|Count2\(7))))
-- \add_instance|Add0~57COUT1_166\ = CARRY(((!\add_instance|Add0~12COUT1_165\) # (!\add_instance|Count2\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(7),
	cin => \add_instance|Add0~32\,
	cin0 => \add_instance|Add0~12\,
	cin1 => \add_instance|Add0~12COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~55_combout\,
	cout0 => \add_instance|Add0~57\,
	cout1 => \add_instance|Add0~57COUT1_166\);

-- Location: LC_X8_Y4_N8
\add_instance|Count2[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(7) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~55_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~55_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(7));

-- Location: LC_X8_Y5_N2
\add_instance|Add0~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~20_combout\ = (\add_instance|Count2\(8) $ ((!(!\add_instance|Add0~32\ & \add_instance|Add0~57\) # (\add_instance|Add0~32\ & \add_instance|Add0~57COUT1_166\))))
-- \add_instance|Add0~22\ = CARRY(((\add_instance|Count2\(8) & !\add_instance|Add0~57\)))
-- \add_instance|Add0~22COUT1_167\ = CARRY(((\add_instance|Count2\(8) & !\add_instance|Add0~57COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(8),
	cin => \add_instance|Add0~32\,
	cin0 => \add_instance|Add0~57\,
	cin1 => \add_instance|Add0~57COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~20_combout\,
	cout0 => \add_instance|Add0~22\,
	cout1 => \add_instance|Add0~22COUT1_167\);

-- Location: LC_X9_Y4_N2
\add_instance|Count2[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(8) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~20_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~20_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(8));

-- Location: LC_X8_Y5_N3
\add_instance|Add0~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~15_combout\ = \add_instance|Count2\(9) $ (((((!\add_instance|Add0~32\ & \add_instance|Add0~22\) # (\add_instance|Add0~32\ & \add_instance|Add0~22COUT1_167\)))))
-- \add_instance|Add0~17\ = CARRY(((!\add_instance|Add0~22\)) # (!\add_instance|Count2\(9)))
-- \add_instance|Add0~17COUT1_168\ = CARRY(((!\add_instance|Add0~22COUT1_167\)) # (!\add_instance|Count2\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(9),
	cin => \add_instance|Add0~32\,
	cin0 => \add_instance|Add0~22\,
	cin1 => \add_instance|Add0~22COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~15_combout\,
	cout0 => \add_instance|Add0~17\,
	cout1 => \add_instance|Add0~17COUT1_168\);

-- Location: LC_X9_Y4_N7
\add_instance|Count2[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(9) = DFFEAS((((\add_instance|Add0~15_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~15_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(9));

-- Location: LC_X8_Y5_N4
\add_instance|Add0~40\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~40_combout\ = (\add_instance|Count2\(10) $ ((!(!\add_instance|Add0~32\ & \add_instance|Add0~17\) # (\add_instance|Add0~32\ & \add_instance|Add0~17COUT1_168\))))
-- \add_instance|Add0~42\ = CARRY(((\add_instance|Count2\(10) & !\add_instance|Add0~17COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(10),
	cin => \add_instance|Add0~32\,
	cin0 => \add_instance|Add0~17\,
	cin1 => \add_instance|Add0~17COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~40_combout\,
	cout => \add_instance|Add0~42\);

-- Location: LC_X8_Y4_N1
\add_instance|Count2[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(10) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~40_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~40_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(10));

-- Location: LC_X8_Y5_N5
\add_instance|Add0~35\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~35_combout\ = (\add_instance|Count2\(11) $ ((\add_instance|Add0~42\)))
-- \add_instance|Add0~37\ = CARRY(((!\add_instance|Add0~42\) # (!\add_instance|Count2\(11))))
-- \add_instance|Add0~37COUT1_169\ = CARRY(((!\add_instance|Add0~42\) # (!\add_instance|Count2\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(11),
	cin => \add_instance|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~35_combout\,
	cout0 => \add_instance|Add0~37\,
	cout1 => \add_instance|Add0~37COUT1_169\);

-- Location: LC_X9_Y4_N4
\add_instance|Count2[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(11) = DFFEAS((((\add_instance|Add0~35_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~35_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(11));

-- Location: LC_X8_Y5_N6
\add_instance|Add0~50\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~50_combout\ = \add_instance|Count2\(12) $ ((((!(!\add_instance|Add0~42\ & \add_instance|Add0~37\) # (\add_instance|Add0~42\ & \add_instance|Add0~37COUT1_169\)))))
-- \add_instance|Add0~52\ = CARRY((\add_instance|Count2\(12) & ((!\add_instance|Add0~37\))))
-- \add_instance|Add0~52COUT1_170\ = CARRY((\add_instance|Count2\(12) & ((!\add_instance|Add0~37COUT1_169\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(12),
	cin => \add_instance|Add0~42\,
	cin0 => \add_instance|Add0~37\,
	cin1 => \add_instance|Add0~37COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~50_combout\,
	cout0 => \add_instance|Add0~52\,
	cout1 => \add_instance|Add0~52COUT1_170\);

-- Location: LC_X9_Y4_N8
\add_instance|Count2[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(12) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~50_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~50_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(12));

-- Location: LC_X8_Y5_N7
\add_instance|Add0~45\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~45_combout\ = \add_instance|Count2\(13) $ (((((!\add_instance|Add0~42\ & \add_instance|Add0~52\) # (\add_instance|Add0~42\ & \add_instance|Add0~52COUT1_170\)))))
-- \add_instance|Add0~47\ = CARRY(((!\add_instance|Add0~52\)) # (!\add_instance|Count2\(13)))
-- \add_instance|Add0~47COUT1_171\ = CARRY(((!\add_instance|Add0~52COUT1_170\)) # (!\add_instance|Count2\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(13),
	cin => \add_instance|Add0~42\,
	cin0 => \add_instance|Add0~52\,
	cin1 => \add_instance|Add0~52COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~45_combout\,
	cout0 => \add_instance|Add0~47\,
	cout1 => \add_instance|Add0~47COUT1_171\);

-- Location: LC_X9_Y4_N1
\add_instance|Count2[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(13) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~45_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~45_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(13));

-- Location: LC_X8_Y5_N8
\add_instance|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~5_combout\ = (\add_instance|Count2\(14) $ ((!(!\add_instance|Add0~42\ & \add_instance|Add0~47\) # (\add_instance|Add0~42\ & \add_instance|Add0~47COUT1_171\))))
-- \add_instance|Add0~7\ = CARRY(((\add_instance|Count2\(14) & !\add_instance|Add0~47\)))
-- \add_instance|Add0~7COUT1_172\ = CARRY(((\add_instance|Count2\(14) & !\add_instance|Add0~47COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(14),
	cin => \add_instance|Add0~42\,
	cin0 => \add_instance|Add0~47\,
	cin1 => \add_instance|Add0~47COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~5_combout\,
	cout0 => \add_instance|Add0~7\,
	cout1 => \add_instance|Add0~7COUT1_172\);

-- Location: LC_X8_Y4_N3
\add_instance|Count2[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(14) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~5_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~5_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(14));

-- Location: LC_X8_Y5_N9
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = (\add_instance|Count2\(15) $ (((!\add_instance|Add0~42\ & \add_instance|Add0~7\) # (\add_instance|Add0~42\ & \add_instance|Add0~7COUT1_172\))))
-- \add_instance|Add0~2\ = CARRY(((!\add_instance|Add0~7COUT1_172\) # (!\add_instance|Count2\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(15),
	cin => \add_instance|Add0~42\,
	cin0 => \add_instance|Add0~7\,
	cin1 => \add_instance|Add0~7COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\,
	cout => \add_instance|Add0~2\);

-- Location: LC_X10_Y5_N9
\add_instance|Count2[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(15) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~0_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~0_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(15));

-- Location: LC_X9_Y4_N3
\add_instance|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~0_combout\ = (((\add_instance|Count2\(9) & \add_instance|Count2\(8))))

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
	datac => \add_instance|Count2\(9),
	datad => \add_instance|Count2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~0_combout\);

-- Location: LC_X9_Y4_N0
\add_instance|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~1_combout\ = (\add_instance|Count2\(6) & (\add_instance|LessThan1~0_combout\ & ((\add_instance|Count2\(4)) # (\add_instance|Count2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(4),
	datab => \add_instance|Count2\(6),
	datac => \add_instance|Count2\(5),
	datad => \add_instance|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~1_combout\);

-- Location: LC_X9_Y4_N9
\add_instance|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~2_combout\ = (\add_instance|Count2\(12)) # ((\add_instance|Count2\(9) & (\add_instance|Count2\(7) & \add_instance|Count2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(12),
	datab => \add_instance|Count2\(9),
	datac => \add_instance|Count2\(7),
	datad => \add_instance|Count2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~2_combout\);

-- Location: LC_X9_Y4_N5
\add_instance|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~3_combout\ = (\add_instance|Count2\(11)) # ((\add_instance|Count2\(13)) # ((\add_instance|Count2\(10)) # (\add_instance|LessThan1~2_combout\)))

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
	dataa => \add_instance|Count2\(11),
	datab => \add_instance|Count2\(13),
	datac => \add_instance|Count2\(10),
	datad => \add_instance|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~3_combout\);

-- Location: LC_X9_Y4_N6
\add_instance|LessThan1~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~4_combout\ = (\add_instance|Count2\(14) & (\add_instance|Count2\(15) & ((\add_instance|LessThan1~1_combout\) # (\add_instance|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(14),
	datab => \add_instance|Count2\(15),
	datac => \add_instance|LessThan1~1_combout\,
	datad => \add_instance|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~4_combout\);

-- Location: LC_X9_Y5_N0
\add_instance|Add0~135\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~135_combout\ = (\add_instance|Count2\(16) $ ((!\add_instance|Add0~2\)))
-- \add_instance|Add0~137\ = CARRY(((\add_instance|Count2\(16) & !\add_instance|Add0~2\)))
-- \add_instance|Add0~137COUT1_173\ = CARRY(((\add_instance|Count2\(16) & !\add_instance|Add0~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(16),
	cin => \add_instance|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~135_combout\,
	cout0 => \add_instance|Add0~137\,
	cout1 => \add_instance|Add0~137COUT1_173\);

-- Location: LC_X9_Y6_N2
\add_instance|Count2[16]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(16) = DFFEAS((((\add_instance|Add0~135_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~135_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(16));

-- Location: LC_X9_Y5_N1
\add_instance|Add0~130\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~130_combout\ = (\add_instance|Count2\(17) $ (((!\add_instance|Add0~2\ & \add_instance|Add0~137\) # (\add_instance|Add0~2\ & \add_instance|Add0~137COUT1_173\))))
-- \add_instance|Add0~132\ = CARRY(((!\add_instance|Add0~137\) # (!\add_instance|Count2\(17))))
-- \add_instance|Add0~132COUT1_174\ = CARRY(((!\add_instance|Add0~137COUT1_173\) # (!\add_instance|Count2\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(17),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~137\,
	cin1 => \add_instance|Add0~137COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~130_combout\,
	cout0 => \add_instance|Add0~132\,
	cout1 => \add_instance|Add0~132COUT1_174\);

-- Location: LC_X9_Y6_N8
\add_instance|Count2[17]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(17) = DFFEAS((((\add_instance|Add0~130_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~130_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(17));

-- Location: LC_X9_Y5_N2
\add_instance|Add0~125\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~125_combout\ = (\add_instance|Count2\(18) $ ((!(!\add_instance|Add0~2\ & \add_instance|Add0~132\) # (\add_instance|Add0~2\ & \add_instance|Add0~132COUT1_174\))))
-- \add_instance|Add0~127\ = CARRY(((\add_instance|Count2\(18) & !\add_instance|Add0~132\)))
-- \add_instance|Add0~127COUT1_175\ = CARRY(((\add_instance|Count2\(18) & !\add_instance|Add0~132COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(18),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~132\,
	cin1 => \add_instance|Add0~132COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~125_combout\,
	cout0 => \add_instance|Add0~127\,
	cout1 => \add_instance|Add0~127COUT1_175\);

-- Location: LC_X9_Y6_N6
\add_instance|Count2[18]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(18) = DFFEAS((((\add_instance|Add0~125_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~125_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(18));

-- Location: LC_X9_Y5_N3
\add_instance|Add0~120\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~120_combout\ = \add_instance|Count2\(19) $ (((((!\add_instance|Add0~2\ & \add_instance|Add0~127\) # (\add_instance|Add0~2\ & \add_instance|Add0~127COUT1_175\)))))
-- \add_instance|Add0~122\ = CARRY(((!\add_instance|Add0~127\)) # (!\add_instance|Count2\(19)))
-- \add_instance|Add0~122COUT1_176\ = CARRY(((!\add_instance|Add0~127COUT1_175\)) # (!\add_instance|Count2\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(19),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~127\,
	cin1 => \add_instance|Add0~127COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~120_combout\,
	cout0 => \add_instance|Add0~122\,
	cout1 => \add_instance|Add0~122COUT1_176\);

-- Location: LC_X9_Y6_N5
\add_instance|Count2[19]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(19) = DFFEAS((((\add_instance|Add0~120_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~120_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(19));

-- Location: LC_X9_Y5_N4
\add_instance|Add0~115\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~115_combout\ = (\add_instance|Count2\(20) $ ((!(!\add_instance|Add0~2\ & \add_instance|Add0~122\) # (\add_instance|Add0~2\ & \add_instance|Add0~122COUT1_176\))))
-- \add_instance|Add0~117\ = CARRY(((\add_instance|Count2\(20) & !\add_instance|Add0~122COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(20),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~122\,
	cin1 => \add_instance|Add0~122COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~115_combout\,
	cout => \add_instance|Add0~117\);

-- Location: LC_X8_Y4_N6
\add_instance|Count2[20]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(20) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~115_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~115_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(20));

-- Location: LC_X9_Y5_N5
\add_instance|Add0~110\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~110_combout\ = (\add_instance|Count2\(21) $ ((\add_instance|Add0~117\)))
-- \add_instance|Add0~112\ = CARRY(((!\add_instance|Add0~117\) # (!\add_instance|Count2\(21))))
-- \add_instance|Add0~112COUT1_177\ = CARRY(((!\add_instance|Add0~117\) # (!\add_instance|Count2\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(21),
	cin => \add_instance|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~110_combout\,
	cout0 => \add_instance|Add0~112\,
	cout1 => \add_instance|Add0~112COUT1_177\);

-- Location: LC_X8_Y4_N0
\add_instance|Count2[21]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(21) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~110_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~110_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(21));

-- Location: LC_X9_Y5_N6
\add_instance|Add0~105\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~105_combout\ = \add_instance|Count2\(22) $ ((((!(!\add_instance|Add0~117\ & \add_instance|Add0~112\) # (\add_instance|Add0~117\ & \add_instance|Add0~112COUT1_177\)))))
-- \add_instance|Add0~107\ = CARRY((\add_instance|Count2\(22) & ((!\add_instance|Add0~112\))))
-- \add_instance|Add0~107COUT1_178\ = CARRY((\add_instance|Count2\(22) & ((!\add_instance|Add0~112COUT1_177\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(22),
	cin => \add_instance|Add0~117\,
	cin0 => \add_instance|Add0~112\,
	cin1 => \add_instance|Add0~112COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~105_combout\,
	cout0 => \add_instance|Add0~107\,
	cout1 => \add_instance|Add0~107COUT1_178\);

-- Location: LC_X8_Y4_N5
\add_instance|Count2[22]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(22) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~105_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~105_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(22));

-- Location: LC_X9_Y5_N7
\add_instance|Add0~100\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~100_combout\ = \add_instance|Count2\(23) $ (((((!\add_instance|Add0~117\ & \add_instance|Add0~107\) # (\add_instance|Add0~117\ & \add_instance|Add0~107COUT1_178\)))))
-- \add_instance|Add0~102\ = CARRY(((!\add_instance|Add0~107\)) # (!\add_instance|Count2\(23)))
-- \add_instance|Add0~102COUT1_179\ = CARRY(((!\add_instance|Add0~107COUT1_178\)) # (!\add_instance|Count2\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(23),
	cin => \add_instance|Add0~117\,
	cin0 => \add_instance|Add0~107\,
	cin1 => \add_instance|Add0~107COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~100_combout\,
	cout0 => \add_instance|Add0~102\,
	cout1 => \add_instance|Add0~102COUT1_179\);

-- Location: LC_X8_Y4_N2
\add_instance|Count2[23]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(23) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~100_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~100_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(23));

-- Location: LC_X8_Y4_N9
\add_instance|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~7_combout\ = (\add_instance|Count2\(20)) # ((\add_instance|Count2\(21)) # ((\add_instance|Count2\(22)) # (\add_instance|Count2\(23))))

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
	dataa => \add_instance|Count2\(20),
	datab => \add_instance|Count2\(21),
	datac => \add_instance|Count2\(22),
	datad => \add_instance|Count2\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~7_combout\);

-- Location: LC_X9_Y6_N0
\add_instance|LessThan1~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~8_combout\ = (\add_instance|Count2\(18)) # ((\add_instance|Count2\(16)) # ((\add_instance|Count2\(19)) # (\add_instance|Count2\(17))))

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
	dataa => \add_instance|Count2\(18),
	datab => \add_instance|Count2\(16),
	datac => \add_instance|Count2\(19),
	datad => \add_instance|Count2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~8_combout\);

-- Location: LC_X9_Y5_N8
\add_instance|Add0~95\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~95_combout\ = (\add_instance|Count2\(24) $ ((!(!\add_instance|Add0~117\ & \add_instance|Add0~102\) # (\add_instance|Add0~117\ & \add_instance|Add0~102COUT1_179\))))
-- \add_instance|Add0~97\ = CARRY(((\add_instance|Count2\(24) & !\add_instance|Add0~102\)))
-- \add_instance|Add0~97COUT1_180\ = CARRY(((\add_instance|Count2\(24) & !\add_instance|Add0~102COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(24),
	cin => \add_instance|Add0~117\,
	cin0 => \add_instance|Add0~102\,
	cin1 => \add_instance|Add0~102COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~95_combout\,
	cout0 => \add_instance|Add0~97\,
	cout1 => \add_instance|Add0~97COUT1_180\);

-- Location: LC_X11_Y5_N7
\add_instance|Count2[24]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(24) = DFFEAS((((\add_instance|Add0~95_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~95_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(24));

-- Location: LC_X9_Y5_N9
\add_instance|Add0~90\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~90_combout\ = (\add_instance|Count2\(25) $ (((!\add_instance|Add0~117\ & \add_instance|Add0~97\) # (\add_instance|Add0~117\ & \add_instance|Add0~97COUT1_180\))))
-- \add_instance|Add0~92\ = CARRY(((!\add_instance|Add0~97COUT1_180\) # (!\add_instance|Count2\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(25),
	cin => \add_instance|Add0~117\,
	cin0 => \add_instance|Add0~97\,
	cin1 => \add_instance|Add0~97COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~90_combout\,
	cout => \add_instance|Add0~92\);

-- Location: LC_X11_Y5_N2
\add_instance|Count2[25]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(25) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~90_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~90_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(25));

-- Location: LC_X10_Y5_N0
\add_instance|Add0~85\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~85_combout\ = (\add_instance|Count2\(26) $ ((!\add_instance|Add0~92\)))
-- \add_instance|Add0~87\ = CARRY(((\add_instance|Count2\(26) & !\add_instance|Add0~92\)))
-- \add_instance|Add0~87COUT1_181\ = CARRY(((\add_instance|Count2\(26) & !\add_instance|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(26),
	cin => \add_instance|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~85_combout\,
	cout0 => \add_instance|Add0~87\,
	cout1 => \add_instance|Add0~87COUT1_181\);

-- Location: LC_X11_Y5_N4
\add_instance|Count2[26]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(26) = DFFEAS((((\add_instance|fsm_state.s1~regout\ & \add_instance|Add0~85_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~85_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(26));

-- Location: LC_X10_Y5_N1
\add_instance|Add0~80\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~80_combout\ = \add_instance|Count2\(27) $ (((((!\add_instance|Add0~92\ & \add_instance|Add0~87\) # (\add_instance|Add0~92\ & \add_instance|Add0~87COUT1_181\)))))
-- \add_instance|Add0~82\ = CARRY(((!\add_instance|Add0~87\)) # (!\add_instance|Count2\(27)))
-- \add_instance|Add0~82COUT1_182\ = CARRY(((!\add_instance|Add0~87COUT1_181\)) # (!\add_instance|Count2\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(27),
	cin => \add_instance|Add0~92\,
	cin0 => \add_instance|Add0~87\,
	cin1 => \add_instance|Add0~87COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~80_combout\,
	cout0 => \add_instance|Add0~82\,
	cout1 => \add_instance|Add0~82COUT1_182\);

-- Location: LC_X11_Y5_N0
\add_instance|Count2[27]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(27) = DFFEAS((((\add_instance|Add0~80_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~80_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(27));

-- Location: LC_X11_Y5_N1
\add_instance|LessThan1~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~6_combout\ = (\add_instance|Count2\(26)) # ((\add_instance|Count2\(27)) # ((\add_instance|Count2\(24)) # (\add_instance|Count2\(25))))

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
	dataa => \add_instance|Count2\(26),
	datab => \add_instance|Count2\(27),
	datac => \add_instance|Count2\(24),
	datad => \add_instance|Count2\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~6_combout\);

-- Location: LC_X10_Y5_N2
\add_instance|Add0~75\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~75_combout\ = (\add_instance|Count2\(28) $ ((!(!\add_instance|Add0~92\ & \add_instance|Add0~82\) # (\add_instance|Add0~92\ & \add_instance|Add0~82COUT1_182\))))
-- \add_instance|Add0~77\ = CARRY(((\add_instance|Count2\(28) & !\add_instance|Add0~82\)))
-- \add_instance|Add0~77COUT1_183\ = CARRY(((\add_instance|Count2\(28) & !\add_instance|Add0~82COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(28),
	cin => \add_instance|Add0~92\,
	cin0 => \add_instance|Add0~82\,
	cin1 => \add_instance|Add0~82COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~75_combout\,
	cout0 => \add_instance|Add0~77\,
	cout1 => \add_instance|Add0~77COUT1_183\);

-- Location: LC_X10_Y4_N0
\add_instance|Count2[28]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(28) = DFFEAS((((\add_instance|Add0~75_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~75_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(28));

-- Location: LC_X10_Y5_N3
\add_instance|Add0~70\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~70_combout\ = (\add_instance|Count2\(29) $ (((!\add_instance|Add0~92\ & \add_instance|Add0~77\) # (\add_instance|Add0~92\ & \add_instance|Add0~77COUT1_183\))))
-- \add_instance|Add0~72\ = CARRY(((!\add_instance|Add0~77\) # (!\add_instance|Count2\(29))))
-- \add_instance|Add0~72COUT1_184\ = CARRY(((!\add_instance|Add0~77COUT1_183\) # (!\add_instance|Count2\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count2\(29),
	cin => \add_instance|Add0~92\,
	cin0 => \add_instance|Add0~77\,
	cin1 => \add_instance|Add0~77COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~70_combout\,
	cout0 => \add_instance|Add0~72\,
	cout1 => \add_instance|Add0~72COUT1_184\);

-- Location: LC_X10_Y5_N7
\add_instance|Count2[29]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(29) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~70_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~70_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(29));

-- Location: LC_X10_Y5_N4
\add_instance|Add0~65\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~65_combout\ = \add_instance|Count2\(30) $ ((((!(!\add_instance|Add0~92\ & \add_instance|Add0~72\) # (\add_instance|Add0~92\ & \add_instance|Add0~72COUT1_184\)))))
-- \add_instance|Add0~67\ = CARRY((\add_instance|Count2\(30) & ((!\add_instance|Add0~72COUT1_184\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count2\(30),
	cin => \add_instance|Add0~92\,
	cin0 => \add_instance|Add0~72\,
	cin1 => \add_instance|Add0~72COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~65_combout\,
	cout => \add_instance|Add0~67\);

-- Location: LC_X10_Y5_N8
\add_instance|Count2[30]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(30) = DFFEAS((((\add_instance|Add0~65_combout\ & \add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datac => \add_instance|Add0~65_combout\,
	datad => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(30));

-- Location: LC_X10_Y5_N5
\add_instance|Add0~60\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~60_combout\ = ((\add_instance|Add0~67\ $ (\add_instance|Count2\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|Count2\(31),
	cin => \add_instance|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~60_combout\);

-- Location: LC_X10_Y5_N6
\add_instance|Count2[31]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count2\(31) = DFFEAS(((\add_instance|fsm_state.s1~regout\ & ((\add_instance|Add0~60_combout\)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \add_instance|fsm_state.s1~regout\,
	datad => \add_instance|Add0~60_combout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count2\(31));

-- Location: LC_X10_Y4_N6
\add_instance|LessThan1~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~5_combout\ = (\add_instance|Count2\(29)) # ((\add_instance|Count2\(30)) # ((\add_instance|Count2\(28)) # (\add_instance|Count2\(31))))

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
	dataa => \add_instance|Count2\(29),
	datab => \add_instance|Count2\(30),
	datac => \add_instance|Count2\(28),
	datad => \add_instance|Count2\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~5_combout\);

-- Location: LC_X10_Y4_N9
\add_instance|LessThan1~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~9_combout\ = (\add_instance|LessThan1~7_combout\) # ((\add_instance|LessThan1~8_combout\) # ((\add_instance|LessThan1~6_combout\) # (\add_instance|LessThan1~5_combout\)))

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
	dataa => \add_instance|LessThan1~7_combout\,
	datab => \add_instance|LessThan1~8_combout\,
	datac => \add_instance|LessThan1~6_combout\,
	datad => \add_instance|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~9_combout\);

-- Location: LC_X10_Y4_N1
\add_instance|fsm_state~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~16_combout\ = (!\input_vector~combout\(10) & (((!\add_instance|LessThan1~4_combout\ & !\add_instance|LessThan1~9_combout\)) # (!\add_instance|fsm_state.s8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1113",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state.s8~regout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|LessThan1~4_combout\,
	datad => \add_instance|LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~16_combout\);

-- Location: LC_X13_Y4_N7
\add_instance|fsm_state.s2\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s2~regout\ = DFFEAS(((!\input_vector~combout\(10) & (!\add_instance|fsm_state.s1~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \add_instance|fsm_state.s1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s2~regout\);

-- Location: LC_X11_Y4_N4
\add_instance|fsm_state.s3\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s3~regout\ = DFFEAS((\add_instance|fsm_state.s2~regout\) # ((!\add_instance|Count\(2) & (!\add_instance|Count\(3) & \add_instance|fsm_state.s3~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Count\(2),
	datab => \add_instance|Count\(3),
	datac => \add_instance|fsm_state.s3~regout\,
	datad => \add_instance|fsm_state.s2~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s3~regout\);

-- Location: LC_X11_Y4_N8
\add_instance|fsm_state~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~21_combout\ = (\add_instance|fsm_state.s3~regout\ & (((\add_instance|Count\(3)) # (\add_instance|Count\(2))))) # (!\add_instance|fsm_state.s3~regout\ & (\add_instance|fsm_state.s7~regout\ & ((\add_instance|Count\(3)) # 
-- (\add_instance|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state.s3~regout\,
	datab => \add_instance|fsm_state.s7~regout\,
	datac => \add_instance|Count\(3),
	datad => \add_instance|Count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~21_combout\);

-- Location: LC_X10_Y4_N8
\add_instance|fsm_state.s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s1~regout\ = DFFEAS((\add_instance|fsm_state~16_combout\) # ((!\add_instance|fsm_state~13_combout\ & (!\add_instance|fsm_state~21_combout\ & \add_instance|fsm_state~17_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state~13_combout\,
	datab => \add_instance|fsm_state~16_combout\,
	datac => \add_instance|fsm_state~21_combout\,
	datad => \add_instance|fsm_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s1~regout\);

-- Location: LC_X10_Y4_N2
\add_instance|fsm_state~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~17_combout\ = (\add_instance|fsm_state.s1~regout\ & (\add_instance|next_count~0_combout\ & (!\add_instance|fsm_state.s4~regout\ & \add_instance|fsm_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state.s1~regout\,
	datab => \add_instance|next_count~0_combout\,
	datac => \add_instance|fsm_state.s4~regout\,
	datad => \add_instance|fsm_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~17_combout\);

-- Location: LC_X10_Y4_N3
\add_instance|fsm_state~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~18_combout\ = (\add_instance|fsm_state~15_combout\) # ((\add_instance|done~0_combout\) # ((\add_instance|fsm_state~12_combout\) # (!\add_instance|fsm_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state~15_combout\,
	datab => \add_instance|done~0_combout\,
	datac => \add_instance|fsm_state~12_combout\,
	datad => \add_instance|fsm_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~18_combout\);

-- Location: LC_X10_Y4_N4
\add_instance|fsm_state.s8\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s8~regout\ = DFFEAS((\add_instance|fsm_state.s8~regout\ & (((\add_instance|done~0_combout\ & !\input_vector~combout\(10))) # (!\add_instance|fsm_state~18_combout\))) # (!\add_instance|fsm_state.s8~regout\ & 
-- (\add_instance|done~0_combout\ & (!\input_vector~combout\(10)))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.s8~regout\,
	datab => \add_instance|done~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|fsm_state~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s8~regout\);

-- Location: LC_X10_Y4_N5
\add_instance|WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr7~0_combout\ = (\add_instance|fsm_state.s8~regout\) # ((\add_instance|fsm_state.s5~regout\) # ((\add_instance|fsm_state.s4~regout\) # (!\add_instance|fsm_state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fsm_state.s8~regout\,
	datab => \add_instance|fsm_state.s5~regout\,
	datac => \add_instance|fsm_state.s4~regout\,
	datad => \add_instance|fsm_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr7~0_combout\);

-- Location: LC_X13_Y4_N3
\add_instance|Selector49~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector49~0_combout\ = (!\add_instance|fsm_state.s2~regout\ & (!\add_instance|fsm_state.s6~regout\ & (\add_instance|Count\(0) $ (\add_instance|Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count\(0),
	datab => \add_instance|fsm_state.s2~regout\,
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector49~0_combout\);

-- Location: LC_X12_Y4_N3
\add_instance|next_count[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_count\(1) = ((GLOBAL(\add_instance|WideOr7~0_combout\) & (\add_instance|next_count\(1))) # (!GLOBAL(\add_instance|WideOr7~0_combout\) & ((\add_instance|Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_count\(1),
	datac => \add_instance|Selector49~0_combout\,
	datad => \add_instance|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_count\(1));

-- Location: LC_X13_Y4_N8
\add_instance|Add1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1~2_combout\ = ((\add_instance|Count\(0) $ (\add_instance|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Count\(0),
	datad => \add_instance|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1~2_combout\);

-- Location: LC_X12_Y4_N2
\add_instance|Count[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count\(1) = DFFEAS((\add_instance|next_count~0_combout\ & ((\add_instance|WideOr7~0_combout\ & (\add_instance|next_count\(1))) # (!\add_instance|WideOr7~0_combout\ & ((\add_instance|Add1~2_combout\))))), GLOBAL(\input_vector~combout\(9)), 
-- VCC, , !\input_vector~combout\(10), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|next_count\(1),
	datab => \add_instance|next_count~0_combout\,
	datac => \add_instance|Add1~2_combout\,
	datad => \add_instance|WideOr7~0_combout\,
	aclr => GND,
	ena => \ALT_INV_input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count\(1));

-- Location: LC_X12_Y4_N9
\add_instance|Add1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1~0_combout\ = \add_instance|Count\(3) $ (((\add_instance|Count\(2) & (\add_instance|Count\(1) & \add_instance|Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count\(2),
	datab => \add_instance|Count\(1),
	datac => \add_instance|Count\(0),
	datad => \add_instance|Count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1~0_combout\);

-- Location: LC_X12_Y4_N0
\add_instance|Selector51~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector51~2_combout\ = (!\add_instance|fsm_state.s2~regout\ & (((!\add_instance|fsm_state.s6~regout\ & \add_instance|Add1~0_combout\))))

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
	dataa => \add_instance|fsm_state.s2~regout\,
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector51~2_combout\);

-- Location: LC_X12_Y4_N1
\add_instance|next_count[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_count\(3) = ((GLOBAL(\add_instance|WideOr7~0_combout\) & (\add_instance|next_count\(3))) # (!GLOBAL(\add_instance|WideOr7~0_combout\) & ((\add_instance|Selector51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|next_count\(3),
	datac => \add_instance|Selector51~2_combout\,
	datad => \add_instance|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_count\(3));

-- Location: LC_X11_Y4_N0
\add_instance|Count[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count\(3) = DFFEAS((\add_instance|next_count~0_combout\ & ((\add_instance|WideOr7~0_combout\ & ((\add_instance|next_count\(3)))) # (!\add_instance|WideOr7~0_combout\ & (\add_instance|Add1~0_combout\)))), GLOBAL(\input_vector~combout\(9)), 
-- VCC, , !\input_vector~combout\(10), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|WideOr7~0_combout\,
	datab => \add_instance|next_count~0_combout\,
	datac => \add_instance|Add1~0_combout\,
	datad => \add_instance|next_count\(3),
	aclr => GND,
	ena => \ALT_INV_input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count\(3));

-- Location: LC_X11_Y4_N3
\add_instance|fsm_state~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state~12_combout\ = ((\add_instance|fsm_state.s3~regout\ & ((\add_instance|Count\(3)) # (\add_instance|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Count\(3),
	datac => \add_instance|fsm_state.s3~regout\,
	datad => \add_instance|Count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm_state~12_combout\);

-- Location: LC_X10_Y4_N7
\add_instance|fsm_state.s4\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s4~regout\ = DFFEAS(((!\input_vector~combout\(10) & (\add_instance|fsm_state~12_combout\ & \add_instance|fsm_state~18_combout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \add_instance|fsm_state~12_combout\,
	datad => \add_instance|fsm_state~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s4~regout\);

-- Location: LC_X11_Y4_N5
\add_instance|fsm_state.s5\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s5~regout\ = DFFEAS((\add_instance|fsm_state.s4~regout\) # (((\input_vector~combout\(0) & \add_instance|fsm_state.s5~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.s4~regout\,
	datac => \input_vector~combout\(0),
	datad => \add_instance|fsm_state.s5~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s5~regout\);

-- Location: LC_X13_Y4_N9
\add_instance|fsm_state.s6\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s6~regout\ = DFFEAS((!\input_vector~combout\(0) & (!\input_vector~combout\(10) & (\add_instance|fsm_state.s5~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(10),
	datac => \add_instance|fsm_state.s5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s6~regout\);

-- Location: LC_X11_Y4_N1
\add_instance|next_count~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_count~0_combout\ = (((!\add_instance|fsm_state.s6~regout\ & !\add_instance|fsm_state.s2~regout\)))

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
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|fsm_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_count~0_combout\);

-- Location: LC_X13_Y4_N4
\add_instance|Selector47~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector47~0_combout\ = ((\add_instance|fsm_state.s2~regout\) # ((\add_instance|Count\(0)) # (\add_instance|fsm_state.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fsm_state.s2~regout\,
	datac => \add_instance|Count\(0),
	datad => \add_instance|fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector47~0_combout\);

-- Location: LC_X13_Y4_N5
\add_instance|next_count[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_count\(0) = ((GLOBAL(\add_instance|WideOr7~0_combout\) & (\add_instance|next_count\(0))) # (!GLOBAL(\add_instance|WideOr7~0_combout\) & ((!\add_instance|Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_count\(0),
	datac => \add_instance|Selector47~0_combout\,
	datad => \add_instance|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_count\(0));

-- Location: LC_X13_Y4_N6
\add_instance|Count[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count\(0) = DFFEAS((\add_instance|next_count~0_combout\ & ((\add_instance|WideOr7~0_combout\ & ((\add_instance|next_count\(0)))) # (!\add_instance|WideOr7~0_combout\ & (!\add_instance|Count\(0))))), GLOBAL(\input_vector~combout\(9)), VCC, , 
-- !\input_vector~combout\(10), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|next_count~0_combout\,
	datab => \add_instance|Count\(0),
	datac => \add_instance|next_count\(0),
	datad => \add_instance|WideOr7~0_combout\,
	aclr => GND,
	ena => \ALT_INV_input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count\(0));

-- Location: LC_X12_Y4_N4
\add_instance|Add1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1~1_combout\ = \add_instance|Count\(2) $ ((((\add_instance|Count\(0) & \add_instance|Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Count\(2),
	datac => \add_instance|Count\(0),
	datad => \add_instance|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1~1_combout\);

-- Location: LC_X12_Y4_N5
\add_instance|Selector50~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector50~4_combout\ = (!\add_instance|fsm_state.s2~regout\ & (((!\add_instance|fsm_state.s6~regout\ & \add_instance|Add1~1_combout\))))

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
	dataa => \add_instance|fsm_state.s2~regout\,
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector50~4_combout\);

-- Location: LC_X12_Y4_N6
\add_instance|next_count[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_count\(2) = ((GLOBAL(\add_instance|WideOr7~0_combout\) & (\add_instance|next_count\(2))) # (!GLOBAL(\add_instance|WideOr7~0_combout\) & ((\add_instance|Selector50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_count\(2),
	datac => \add_instance|Selector50~4_combout\,
	datad => \add_instance|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_count\(2));

-- Location: LC_X12_Y4_N7
\add_instance|Count[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Count\(2) = DFFEAS((\add_instance|next_count~0_combout\ & ((\add_instance|WideOr7~0_combout\ & ((\add_instance|next_count\(2)))) # (!\add_instance|WideOr7~0_combout\ & (\add_instance|Add1~1_combout\)))), GLOBAL(\input_vector~combout\(9)), 
-- VCC, , !\input_vector~combout\(10), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Add1~1_combout\,
	datab => \add_instance|next_count~0_combout\,
	datac => \add_instance|next_count\(2),
	datad => \add_instance|WideOr7~0_combout\,
	aclr => GND,
	ena => \ALT_INV_input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|Count\(2));

-- Location: LC_X11_Y4_N2
\add_instance|fsm_state.s7\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm_state.s7~regout\ = DFFEAS((\add_instance|fsm_state.s6~regout\) # ((!\add_instance|Count\(2) & (!\add_instance|Count\(3) & \add_instance|fsm_state.s7~regout\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , \input_vector~combout\(10), 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|Count\(2),
	datab => \add_instance|Count\(3),
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|fsm_state.s7~regout\,
	aclr => GND,
	sclr => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|fsm_state.s7~regout\);

-- Location: LC_X12_Y4_N8
\add_instance|done~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|done~0_combout\ = ((\add_instance|fsm_state.s7~regout\ & ((\add_instance|Count\(2)) # (\add_instance|Count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fsm_state.s7~regout\,
	datac => \add_instance|Count\(2),
	datad => \add_instance|Count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|done~0_combout\);

-- Location: LC_X11_Y5_N5
\add_instance|rd~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|rd~0_combout\ = (((\add_instance|fsm_state.s7~regout\) # (!\add_instance|fsm_state.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|fsm_state.s6~regout\,
	datad => \add_instance|fsm_state.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|rd~0_combout\);

-- Location: LC_X11_Y5_N8
\add_instance|R\ : maxv_lcell
-- Equation(s):
-- \add_instance|rd~1\ = (\input_vector~combout\(10)) # ((\add_instance|done~0_combout\) # ((\add_instance|rd~0_combout\ & B1_R)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|rd~0_combout\,
	datab => \input_vector~combout\(10),
	datad => \add_instance|done~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|rd~1\,
	regout => \add_instance|R~regout\);

-- Location: LC_X11_Y5_N9
\add_instance|rd\ : maxv_lcell
-- Equation(s):
-- \add_instance|rd~regout\ = DFFEAS((((\add_instance|rd~1\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

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
	datad => \add_instance|rd~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|rd~regout\);

-- Location: LC_X11_Y4_N6
\add_instance|wr~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|wr~0_combout\ = (((\add_instance|fsm_state.s3~regout\) # (!\add_instance|fsm_state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|fsm_state.s3~regout\,
	datad => \add_instance|fsm_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|wr~0_combout\);

-- Location: LC_X11_Y4_N9
\add_instance|W\ : maxv_lcell
-- Equation(s):
-- \add_instance|wr~1\ = (\input_vector~combout\(10)) # ((\add_instance|fsm_state~12_combout\) # ((\add_instance|wr~0_combout\ & B1_W)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|wr~0_combout\,
	datab => \input_vector~combout\(10),
	datad => \add_instance|fsm_state~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|wr~1\,
	regout => \add_instance|W~regout\);

-- Location: LC_X11_Y4_N7
\add_instance|wr\ : maxv_lcell
-- Equation(s):
-- \add_instance|wr~regout\ = DFFEAS((((\add_instance|wr~1\))), GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

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
	datad => \add_instance|wr~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|wr~regout\);

-- Location: LC_X13_Y4_N2
\add_instance|cs\ : maxv_lcell
-- Equation(s):
-- \add_instance|cs~2\ = (\add_instance|fsm_state.s4~regout\) # ((\input_vector~combout\(10)) # ((\add_instance|fsm_state.s8~regout\) # (\add_instance|cs~1\)))
-- \add_instance|cs~regout\ = DFFEAS(\add_instance|cs~2\, GLOBAL(\input_vector~combout\(9)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.s4~regout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|fsm_state.s8~regout\,
	datad => \add_instance|cs~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|cs~2\,
	regout => \add_instance|cs~regout\);

-- Location: LC_X13_Y4_N0
\add_instance|cs~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|cs~0_combout\ = (\add_instance|fsm_state.s6~regout\) # ((\add_instance|fsm_state.s2~regout\) # ((\input_vector~combout\(0) & \add_instance|fsm_state.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|fsm_state.s6~regout\,
	datac => \add_instance|fsm_state.s5~regout\,
	datad => \add_instance|fsm_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|cs~0_combout\);

-- Location: LC_X13_Y4_N1
\add_instance|C\ : maxv_lcell
-- Equation(s):
-- \add_instance|cs~1\ = (B1_C & ((\add_instance|fsm_state.s7~regout\) # ((\add_instance|fsm_state.s3~regout\) # (\add_instance|cs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(9),
	dataa => \add_instance|fsm_state.s7~regout\,
	datab => \add_instance|fsm_state.s3~regout\,
	datac => \add_instance|cs~2\,
	datad => \add_instance|cs~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|cs~1\,
	regout => \add_instance|C~regout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X1_Y7_N2
\add_instance|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(0) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(1))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(0));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X16_Y10_N2
\add_instance|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(1) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(2))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(1));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X5_Y10_N2
\add_instance|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(2) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(3))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(2));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X16_Y9_N2
\add_instance|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(3) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(4))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(3));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X1_Y9_N2
\add_instance|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(4) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(5))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(4));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X1_Y6_N2
\add_instance|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(5) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(6))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X10_Y10_N2
\add_instance|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(6) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(7))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X9_Y10_N2
\add_instance|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|output\(7) = ((GLOBAL(\add_instance|done~0_combout\) & (\input_vector~combout\(8))) # (!GLOBAL(\add_instance|done~0_combout\) & ((\add_instance|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \add_instance|done~0_combout\,
	datad => \add_instance|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|output\(7));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|done~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|rd~regout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|wr~regout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|cs~regout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(0),
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(1),
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(2),
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(3),
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(4),
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(5),
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(6),
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|output\(7),
	oe => VCC,
	padio => ww_output_vector(11));
END structure;


