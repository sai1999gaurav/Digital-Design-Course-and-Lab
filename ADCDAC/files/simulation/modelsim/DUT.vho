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

-- DATE "05/02/2019 21:47:53"

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

ENTITY 	ADCconv IS
    PORT (
	intr : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	cs : BUFFER std_logic;
	rd : BUFFER std_logic;
	wr : BUFFER std_logic;
	done : BUFFER std_logic
	);
END ADCconv;

-- Design Ports Information


ARCHITECTURE structure OF ADCconv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_intr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \C~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \intr~combout\ : std_logic;
SIGNAL \fsm_state~13_combout\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_161\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_162\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_163\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_164\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_165\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_166\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_167\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_168\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_169\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_170\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_171\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_172\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_173\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_174\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_175\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_176\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_177\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_178\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_179\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_180\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_181\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_182\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_183\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_184\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \fsm_state~16_combout\ : std_logic;
SIGNAL \fsm_state~15\ : std_logic;
SIGNAL \fsm_state~17_combout\ : std_logic;
SIGNAL \fsm_state.s4~regout\ : std_logic;
SIGNAL \fsm_state.s5~regout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \fsm_state.s6~regout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \fsm_state.s3~regout\ : std_logic;
SIGNAL \fsm_state~14_combout\ : std_logic;
SIGNAL \fsm_state.s1~regout\ : std_logic;
SIGNAL \fsm_state.s2~regout\ : std_logic;
SIGNAL \next_count~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Selector50~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \fsm_state.s7~regout\ : std_logic;
SIGNAL \done_var~0_combout\ : std_logic;
SIGNAL \fsm_state.s8~regout\ : std_logic;
SIGNAL \cs~2\ : std_logic;
SIGNAL \cs~0_combout\ : std_logic;
SIGNAL \cs~1\ : std_logic;
SIGNAL \cs~reg0_regout\ : std_logic;
SIGNAL \rd~0\ : std_logic;
SIGNAL \rd~1\ : std_logic;
SIGNAL \R~regout\ : std_logic;
SIGNAL \rd~reg0_regout\ : std_logic;
SIGNAL \wr~0\ : std_logic;
SIGNAL \wr~1\ : std_logic;
SIGNAL \W~regout\ : std_logic;
SIGNAL \wr~reg0_regout\ : std_logic;
SIGNAL next_count : std_logic_vector(3 DOWNTO 0);
SIGNAL Count2 : std_logic_vector(31 DOWNTO 0);
SIGNAL Count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_intr <= intr;
ww_clk <= clk;
ww_reset <= reset;
cs <= ww_cs;
rd <= ww_rd;
wr <= ww_wr;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\intr~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_intr,
	combout => \intr~combout\);

-- Location: LC_X5_Y7_N1
\fsm_state~13\ : maxv_lcell
-- Equation(s):
-- \fsm_state~13_combout\ = (((\fsm_state.s5~regout\ & !\intr~combout\)))

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
	datac => \fsm_state.s5~regout\,
	datad => \intr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~13_combout\);

-- Location: LC_X2_Y6_N4
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = ((!Count2(0)))
-- \Add0~157\ = CARRY(((Count2(0))))

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
	datab => Count2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout => \Add0~157\);

-- Location: LC_X2_Y6_N1
\Count2[0]\ : maxv_lcell
-- Equation(s):
-- Count2(0) = DFFEAS((((\Add0~155_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~155_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(0));

-- Location: LC_X2_Y6_N5
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (Count2(1) $ ((\Add0~157\)))
-- \Add0~152\ = CARRY(((!\Add0~157\) # (!Count2(1))))
-- \Add0~152COUT1_161\ = CARRY(((!\Add0~157\) # (!Count2(1))))

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
	datab => Count2(1),
	cin => \Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_161\);

-- Location: LC_X2_Y6_N2
\Count2[1]\ : maxv_lcell
-- Equation(s):
-- Count2(1) = DFFEAS((((\Add0~150_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~150_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(1));

-- Location: LC_X2_Y6_N6
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (Count2(2) $ ((!(!\Add0~157\ & \Add0~152\) # (\Add0~157\ & \Add0~152COUT1_161\))))
-- \Add0~147\ = CARRY(((Count2(2) & !\Add0~152\)))
-- \Add0~147COUT1_162\ = CARRY(((Count2(2) & !\Add0~152COUT1_161\)))

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
	datab => Count2(2),
	cin => \Add0~157\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_162\);

-- Location: LC_X2_Y6_N0
\Count2[2]\ : maxv_lcell
-- Equation(s):
-- Count2(2) = DFFEAS((((\Add0~145_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~145_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(2));

-- Location: LC_X2_Y6_N7
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = Count2(3) $ (((((!\Add0~157\ & \Add0~147\) # (\Add0~157\ & \Add0~147COUT1_162\)))))
-- \Add0~142\ = CARRY(((!\Add0~147\)) # (!Count2(3)))
-- \Add0~142COUT1_163\ = CARRY(((!\Add0~147COUT1_162\)) # (!Count2(3)))

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
	dataa => Count2(3),
	cin => \Add0~157\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_163\);

-- Location: LC_X2_Y6_N3
\Count2[3]\ : maxv_lcell
-- Equation(s):
-- Count2(3) = DFFEAS((((\Add0~140_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~140_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(3));

-- Location: LC_X2_Y6_N8
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (Count2(4) $ ((!(!\Add0~157\ & \Add0~142\) # (\Add0~157\ & \Add0~142COUT1_163\))))
-- \Add0~27\ = CARRY(((Count2(4) & !\Add0~142\)))
-- \Add0~27COUT1_164\ = CARRY(((Count2(4) & !\Add0~142COUT1_163\)))

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
	datab => Count2(4),
	cin => \Add0~157\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_164\);

-- Location: LC_X3_Y7_N9
\Count2[4]\ : maxv_lcell
-- Equation(s):
-- Count2(4) = DFFEAS((((\Add0~25_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~25_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(4));

-- Location: LC_X2_Y6_N9
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (Count2(5) $ (((!\Add0~157\ & \Add0~27\) # (\Add0~157\ & \Add0~27COUT1_164\))))
-- \Add0~32\ = CARRY(((!\Add0~27COUT1_164\) # (!Count2(5))))

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
	datab => Count2(5),
	cin => \Add0~157\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X1_Y6_N6
\Count2[5]\ : maxv_lcell
-- Equation(s):
-- Count2(5) = DFFEAS((((\Add0~30_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(5));

-- Location: LC_X3_Y6_N0
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (Count2(6) $ ((!\Add0~32\)))
-- \Add0~12\ = CARRY(((Count2(6) & !\Add0~32\)))
-- \Add0~12COUT1_165\ = CARRY(((Count2(6) & !\Add0~32\)))

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
	datab => Count2(6),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_165\);

-- Location: LC_X3_Y7_N3
\Count2[6]\ : maxv_lcell
-- Equation(s):
-- Count2(6) = DFFEAS((((\Add0~10_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~10_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(6));

-- Location: LC_X3_Y6_N1
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (Count2(7) $ (((!\Add0~32\ & \Add0~12\) # (\Add0~32\ & \Add0~12COUT1_165\))))
-- \Add0~57\ = CARRY(((!\Add0~12\) # (!Count2(7))))
-- \Add0~57COUT1_166\ = CARRY(((!\Add0~12COUT1_165\) # (!Count2(7))))

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
	datab => Count2(7),
	cin => \Add0~32\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_166\);

-- Location: LC_X2_Y7_N5
\Count2[7]\ : maxv_lcell
-- Equation(s):
-- Count2(7) = DFFEAS((((\Add0~55_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~55_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(7));

-- Location: LC_X3_Y6_N2
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (Count2(8) $ ((!(!\Add0~32\ & \Add0~57\) # (\Add0~32\ & \Add0~57COUT1_166\))))
-- \Add0~22\ = CARRY(((Count2(8) & !\Add0~57\)))
-- \Add0~22COUT1_167\ = CARRY(((Count2(8) & !\Add0~57COUT1_166\)))

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
	datab => Count2(8),
	cin => \Add0~32\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_167\);

-- Location: LC_X2_Y7_N6
\Count2[8]\ : maxv_lcell
-- Equation(s):
-- Count2(8) = DFFEAS((((\Add0~20_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~20_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(8));

-- Location: LC_X3_Y6_N3
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (Count2(9) $ (((!\Add0~32\ & \Add0~22\) # (\Add0~32\ & \Add0~22COUT1_167\))))
-- \Add0~17\ = CARRY(((!\Add0~22\) # (!Count2(9))))
-- \Add0~17COUT1_168\ = CARRY(((!\Add0~22COUT1_167\) # (!Count2(9))))

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
	datab => Count2(9),
	cin => \Add0~32\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_168\);

-- Location: LC_X2_Y7_N7
\Count2[9]\ : maxv_lcell
-- Equation(s):
-- Count2(9) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(9));

-- Location: LC_X3_Y6_N4
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = Count2(10) $ ((((!(!\Add0~32\ & \Add0~17\) # (\Add0~32\ & \Add0~17COUT1_168\)))))
-- \Add0~42\ = CARRY((Count2(10) & ((!\Add0~17COUT1_168\))))

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
	dataa => Count2(10),
	cin => \Add0~32\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X2_Y7_N0
\Count2[10]\ : maxv_lcell
-- Equation(s):
-- Count2(10) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~40_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(10));

-- Location: LC_X3_Y6_N5
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = Count2(11) $ ((((\Add0~42\))))
-- \Add0~37\ = CARRY(((!\Add0~42\)) # (!Count2(11)))
-- \Add0~37COUT1_169\ = CARRY(((!\Add0~42\)) # (!Count2(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(11),
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_169\);

-- Location: LC_X2_Y7_N1
\Count2[11]\ : maxv_lcell
-- Equation(s):
-- Count2(11) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(11));

-- Location: LC_X3_Y6_N6
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = Count2(12) $ ((((!(!\Add0~42\ & \Add0~37\) # (\Add0~42\ & \Add0~37COUT1_169\)))))
-- \Add0~52\ = CARRY((Count2(12) & ((!\Add0~37\))))
-- \Add0~52COUT1_170\ = CARRY((Count2(12) & ((!\Add0~37COUT1_169\))))

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
	dataa => Count2(12),
	cin => \Add0~42\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_170\);

-- Location: LC_X3_Y7_N0
\Count2[12]\ : maxv_lcell
-- Equation(s):
-- Count2(12) = DFFEAS((((\Add0~50_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~50_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(12));

-- Location: LC_X3_Y6_N7
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (Count2(13) $ (((!\Add0~42\ & \Add0~52\) # (\Add0~42\ & \Add0~52COUT1_170\))))
-- \Add0~47\ = CARRY(((!\Add0~52\) # (!Count2(13))))
-- \Add0~47COUT1_171\ = CARRY(((!\Add0~52COUT1_170\) # (!Count2(13))))

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
	datab => Count2(13),
	cin => \Add0~42\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_171\);

-- Location: LC_X3_Y7_N8
\Count2[13]\ : maxv_lcell
-- Equation(s):
-- Count2(13) = DFFEAS((((\Add0~45_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~45_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(13));

-- Location: LC_X3_Y6_N8
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (Count2(14) $ ((!(!\Add0~42\ & \Add0~47\) # (\Add0~42\ & \Add0~47COUT1_171\))))
-- \Add0~7\ = CARRY(((Count2(14) & !\Add0~47\)))
-- \Add0~7COUT1_172\ = CARRY(((Count2(14) & !\Add0~47COUT1_171\)))

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
	datab => Count2(14),
	cin => \Add0~42\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_172\);

-- Location: LC_X3_Y7_N6
\Count2[14]\ : maxv_lcell
-- Equation(s):
-- Count2(14) = DFFEAS((((\Add0~5_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~5_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(14));

-- Location: LC_X3_Y6_N9
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (Count2(15) $ (((!\Add0~42\ & \Add0~7\) # (\Add0~42\ & \Add0~7COUT1_172\))))
-- \Add0~2\ = CARRY(((!\Add0~7COUT1_172\) # (!Count2(15))))

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
	datab => Count2(15),
	cin => \Add0~42\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X3_Y7_N5
\Count2[15]\ : maxv_lcell
-- Equation(s):
-- Count2(15) = DFFEAS(((\fsm_state.s1~regout\ & ((\Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \fsm_state.s1~regout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(15));

-- Location: LC_X2_Y7_N3
\LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (Count2(8) & (((Count2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(8),
	datac => Count2(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X2_Y7_N4
\LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (Count2(6) & (\LessThan2~0_combout\ & ((Count2(5)) # (Count2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(6),
	datab => Count2(5),
	datac => Count2(4),
	datad => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X2_Y7_N2
\LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \LessThan2~2_combout\ = (Count2(12)) # ((Count2(8) & (Count2(9) & Count2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(8),
	datab => Count2(9),
	datac => Count2(7),
	datad => Count2(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~2_combout\);

-- Location: LC_X2_Y7_N8
\LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \LessThan2~3_combout\ = (Count2(13)) # ((Count2(11)) # ((Count2(10)) # (\LessThan2~2_combout\)))

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
	dataa => Count2(13),
	datab => Count2(11),
	datac => Count2(10),
	datad => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~3_combout\);

-- Location: LC_X2_Y7_N9
\LessThan2~4\ : maxv_lcell
-- Equation(s):
-- \LessThan2~4_combout\ = (Count2(14) & (Count2(15) & ((\LessThan2~1_combout\) # (\LessThan2~3_combout\))))

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
	dataa => Count2(14),
	datab => Count2(15),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~4_combout\);

-- Location: LC_X4_Y6_N0
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = Count2(16) $ ((((!\Add0~2\))))
-- \Add0~137\ = CARRY((Count2(16) & ((!\Add0~2\))))
-- \Add0~137COUT1_173\ = CARRY((Count2(16) & ((!\Add0~2\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(16),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_173\);

-- Location: LC_X4_Y7_N5
\Count2[16]\ : maxv_lcell
-- Equation(s):
-- Count2(16) = DFFEAS(((\fsm_state.s1~regout\ & ((\Add0~135_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \fsm_state.s1~regout\,
	datad => \Add0~135_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(16));

-- Location: LC_X4_Y6_N1
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (Count2(17) $ (((!\Add0~2\ & \Add0~137\) # (\Add0~2\ & \Add0~137COUT1_173\))))
-- \Add0~132\ = CARRY(((!\Add0~137\) # (!Count2(17))))
-- \Add0~132COUT1_174\ = CARRY(((!\Add0~137COUT1_173\) # (!Count2(17))))

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
	datab => Count2(17),
	cin => \Add0~2\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_174\);

-- Location: LC_X4_Y7_N1
\Count2[17]\ : maxv_lcell
-- Equation(s):
-- Count2(17) = DFFEAS((((\Add0~130_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~130_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(17));

-- Location: LC_X4_Y6_N2
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (Count2(18) $ ((!(!\Add0~2\ & \Add0~132\) # (\Add0~2\ & \Add0~132COUT1_174\))))
-- \Add0~127\ = CARRY(((Count2(18) & !\Add0~132\)))
-- \Add0~127COUT1_175\ = CARRY(((Count2(18) & !\Add0~132COUT1_174\)))

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
	datab => Count2(18),
	cin => \Add0~2\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_175\);

-- Location: LC_X4_Y7_N6
\Count2[18]\ : maxv_lcell
-- Equation(s):
-- Count2(18) = DFFEAS(((\fsm_state.s1~regout\ & ((\Add0~125_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \fsm_state.s1~regout\,
	datad => \Add0~125_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(18));

-- Location: LC_X4_Y6_N3
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (Count2(19) $ (((!\Add0~2\ & \Add0~127\) # (\Add0~2\ & \Add0~127COUT1_175\))))
-- \Add0~122\ = CARRY(((!\Add0~127\) # (!Count2(19))))
-- \Add0~122COUT1_176\ = CARRY(((!\Add0~127COUT1_175\) # (!Count2(19))))

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
	datab => Count2(19),
	cin => \Add0~2\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_176\);

-- Location: LC_X3_Y7_N7
\Count2[19]\ : maxv_lcell
-- Equation(s):
-- Count2(19) = DFFEAS(((\fsm_state.s1~regout\ & ((\Add0~120_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \fsm_state.s1~regout\,
	datad => \Add0~120_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(19));

-- Location: LC_X4_Y7_N9
\LessThan2~8\ : maxv_lcell
-- Equation(s):
-- \LessThan2~8_combout\ = (Count2(16)) # ((Count2(17)) # ((Count2(18)) # (Count2(19))))

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
	dataa => Count2(16),
	datab => Count2(17),
	datac => Count2(18),
	datad => Count2(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~8_combout\);

-- Location: LC_X4_Y6_N4
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = (Count2(20) $ ((!(!\Add0~2\ & \Add0~122\) # (\Add0~2\ & \Add0~122COUT1_176\))))
-- \Add0~117\ = CARRY(((Count2(20) & !\Add0~122COUT1_176\)))

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
	datab => Count2(20),
	cin => \Add0~2\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout => \Add0~117\);

-- Location: LC_X4_Y7_N4
\Count2[20]\ : maxv_lcell
-- Equation(s):
-- Count2(20) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(20));

-- Location: LC_X4_Y6_N5
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (Count2(21) $ ((\Add0~117\)))
-- \Add0~112\ = CARRY(((!\Add0~117\) # (!Count2(21))))
-- \Add0~112COUT1_177\ = CARRY(((!\Add0~117\) # (!Count2(21))))

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
	datab => Count2(21),
	cin => \Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_177\);

-- Location: LC_X4_Y7_N8
\Count2[21]\ : maxv_lcell
-- Equation(s):
-- Count2(21) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(21));

-- Location: LC_X4_Y6_N6
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = Count2(22) $ ((((!(!\Add0~117\ & \Add0~112\) # (\Add0~117\ & \Add0~112COUT1_177\)))))
-- \Add0~107\ = CARRY((Count2(22) & ((!\Add0~112\))))
-- \Add0~107COUT1_178\ = CARRY((Count2(22) & ((!\Add0~112COUT1_177\))))

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
	dataa => Count2(22),
	cin => \Add0~117\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_178\);

-- Location: LC_X4_Y7_N7
\Count2[22]\ : maxv_lcell
-- Equation(s):
-- Count2(22) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(22));

-- Location: LC_X4_Y6_N7
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = Count2(23) $ (((((!\Add0~117\ & \Add0~107\) # (\Add0~117\ & \Add0~107COUT1_178\)))))
-- \Add0~102\ = CARRY(((!\Add0~107\)) # (!Count2(23)))
-- \Add0~102COUT1_179\ = CARRY(((!\Add0~107COUT1_178\)) # (!Count2(23)))

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
	dataa => Count2(23),
	cin => \Add0~117\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_179\);

-- Location: LC_X4_Y7_N0
\Count2[23]\ : maxv_lcell
-- Equation(s):
-- Count2(23) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(23));

-- Location: LC_X4_Y6_N8
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = Count2(24) $ ((((!(!\Add0~117\ & \Add0~102\) # (\Add0~117\ & \Add0~102COUT1_179\)))))
-- \Add0~97\ = CARRY((Count2(24) & ((!\Add0~102\))))
-- \Add0~97COUT1_180\ = CARRY((Count2(24) & ((!\Add0~102COUT1_179\))))

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
	dataa => Count2(24),
	cin => \Add0~117\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_180\);

-- Location: LC_X4_Y7_N2
\Count2[24]\ : maxv_lcell
-- Equation(s):
-- Count2(24) = DFFEAS(((\fsm_state.s1~regout\ & ((\Add0~95_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \fsm_state.s1~regout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(24));

-- Location: LC_X4_Y6_N9
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (Count2(25) $ (((!\Add0~117\ & \Add0~97\) # (\Add0~117\ & \Add0~97COUT1_180\))))
-- \Add0~92\ = CARRY(((!\Add0~97COUT1_180\) # (!Count2(25))))

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
	datab => Count2(25),
	cin => \Add0~117\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout => \Add0~92\);

-- Location: LC_X4_Y7_N3
\Count2[25]\ : maxv_lcell
-- Equation(s):
-- Count2(25) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(25));

-- Location: LC_X5_Y6_N0
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = Count2(26) $ ((((!\Add0~92\))))
-- \Add0~87\ = CARRY((Count2(26) & ((!\Add0~92\))))
-- \Add0~87COUT1_181\ = CARRY((Count2(26) & ((!\Add0~92\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count2(26),
	cin => \Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_181\);

-- Location: LC_X5_Y6_N6
\Count2[26]\ : maxv_lcell
-- Equation(s):
-- Count2(26) = DFFEAS(((\Add0~85_combout\ & ((\fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datab => \Add0~85_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(26));

-- Location: LC_X5_Y6_N1
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = Count2(27) $ (((((!\Add0~92\ & \Add0~87\) # (\Add0~92\ & \Add0~87COUT1_181\)))))
-- \Add0~82\ = CARRY(((!\Add0~87\)) # (!Count2(27)))
-- \Add0~82COUT1_182\ = CARRY(((!\Add0~87COUT1_181\)) # (!Count2(27)))

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
	dataa => Count2(27),
	cin => \Add0~92\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_182\);

-- Location: LC_X5_Y6_N8
\Count2[27]\ : maxv_lcell
-- Equation(s):
-- Count2(27) = DFFEAS((\fsm_state.s1~regout\ & (((\Add0~80_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	dataa => \fsm_state.s1~regout\,
	datad => \Add0~80_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(27));

-- Location: LC_X5_Y7_N7
\LessThan2~6\ : maxv_lcell
-- Equation(s):
-- \LessThan2~6_combout\ = (Count2(26)) # ((Count2(25)) # ((Count2(27)) # (Count2(24))))

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
	dataa => Count2(26),
	datab => Count2(25),
	datac => Count2(27),
	datad => Count2(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~6_combout\);

-- Location: LC_X5_Y6_N2
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (Count2(28) $ ((!(!\Add0~92\ & \Add0~82\) # (\Add0~92\ & \Add0~82COUT1_182\))))
-- \Add0~77\ = CARRY(((Count2(28) & !\Add0~82\)))
-- \Add0~77COUT1_183\ = CARRY(((Count2(28) & !\Add0~82COUT1_182\)))

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
	datab => Count2(28),
	cin => \Add0~92\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_183\);

-- Location: LC_X5_Y7_N5
\Count2[28]\ : maxv_lcell
-- Equation(s):
-- Count2(28) = DFFEAS((\fsm_state.s1~regout\ & (((\Add0~75_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.s1~regout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(28));

-- Location: LC_X5_Y6_N3
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (Count2(29) $ (((!\Add0~92\ & \Add0~77\) # (\Add0~92\ & \Add0~77COUT1_183\))))
-- \Add0~72\ = CARRY(((!\Add0~77\) # (!Count2(29))))
-- \Add0~72COUT1_184\ = CARRY(((!\Add0~77COUT1_183\) # (!Count2(29))))

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
	datab => Count2(29),
	cin => \Add0~92\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_184\);

-- Location: LC_X5_Y6_N9
\Count2[29]\ : maxv_lcell
-- Equation(s):
-- Count2(29) = DFFEAS((\fsm_state.s1~regout\ & (((\Add0~70_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	dataa => \fsm_state.s1~regout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(29));

-- Location: LC_X5_Y6_N4
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (Count2(30) $ ((!(!\Add0~92\ & \Add0~72\) # (\Add0~92\ & \Add0~72COUT1_184\))))
-- \Add0~67\ = CARRY(((Count2(30) & !\Add0~72COUT1_184\)))

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
	datab => Count2(30),
	cin => \Add0~92\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X5_Y7_N3
\Count2[30]\ : maxv_lcell
-- Equation(s):
-- Count2(30) = DFFEAS((((\fsm_state.s1~regout\ & \Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \fsm_state.s1~regout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(30));

-- Location: LC_X5_Y6_N5
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (Count2(31) $ ((\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count2(31),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\);

-- Location: LC_X5_Y6_N7
\Count2[31]\ : maxv_lcell
-- Equation(s):
-- Count2(31) = DFFEAS((((\Add0~60_combout\ & \fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	datac => \Add0~60_combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count2(31));

-- Location: LC_X6_Y7_N0
\LessThan2~5\ : maxv_lcell
-- Equation(s):
-- \LessThan2~5_combout\ = (Count2(30)) # ((Count2(31)) # ((Count2(28)) # (Count2(29))))

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
	dataa => Count2(30),
	datab => Count2(31),
	datac => Count2(28),
	datad => Count2(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~5_combout\);

-- Location: LC_X5_Y7_N2
\LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \LessThan2~7_combout\ = (Count2(21)) # ((Count2(22)) # ((Count2(23)) # (Count2(20))))

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
	dataa => Count2(21),
	datab => Count2(22),
	datac => Count2(23),
	datad => Count2(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~7_combout\);

-- Location: LC_X6_Y7_N1
\LessThan2~9\ : maxv_lcell
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~8_combout\) # ((\LessThan2~6_combout\) # ((\LessThan2~5_combout\) # (\LessThan2~7_combout\)))

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
	dataa => \LessThan2~8_combout\,
	datab => \LessThan2~6_combout\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~9_combout\);

-- Location: LC_X6_Y7_N5
\fsm_state~16\ : maxv_lcell
-- Equation(s):
-- \fsm_state~16_combout\ = (!\reset~combout\ & (((!\LessThan2~4_combout\ & !\LessThan2~9_combout\)) # (!\fsm_state.s8~regout\)))

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
	dataa => \fsm_state.s8~regout\,
	datab => \reset~combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~16_combout\);

-- Location: LC_X6_Y7_N2
\fsm_state.s1\ : maxv_lcell
-- Equation(s):
-- \fsm_state~15\ = ((\fsm_state~14_combout\) # ((\fsm_state.s4~regout\) # (!fsm_state.s1))) # (!\next_count~0_combout\)
-- \fsm_state.s1~regout\ = DFFEAS(\fsm_state~15\, GLOBAL(\clk~combout\), VCC, , , \fsm_state~16_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_count~0_combout\,
	datab => \fsm_state~14_combout\,
	datac => \fsm_state~16_combout\,
	datad => \fsm_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~15\,
	regout => \fsm_state.s1~regout\);

-- Location: LC_X6_Y7_N3
\fsm_state~17\ : maxv_lcell
-- Equation(s):
-- \fsm_state~17_combout\ = (\fsm_state~13_combout\) # ((\done_var~0_combout\) # ((\fsm_state~15\) # (!\fsm_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state~13_combout\,
	datab => \done_var~0_combout\,
	datac => \fsm_state~16_combout\,
	datad => \fsm_state~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~17_combout\);

-- Location: LC_X6_Y7_N7
\fsm_state.s4\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s4~regout\ = DFFEAS(((\fsm_state~14_combout\ & (!\reset~combout\ & \fsm_state~17_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \fsm_state~14_combout\,
	datac => \reset~combout\,
	datad => \fsm_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s4~regout\);

-- Location: LC_X8_Y7_N8
\fsm_state.s5\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s5~regout\ = DFFEAS(((\fsm_state.s4~regout\) # ((\fsm_state.s5~regout\ & \intr~combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.s5~regout\,
	datac => \intr~combout\,
	datad => \fsm_state.s4~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s5~regout\);

-- Location: LC_X7_Y7_N1
\WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0_combout\ = (\fsm_state.s5~regout\) # (((\fsm_state.s8~regout\) # (\fsm_state.s4~regout\)) # (!\fsm_state.s1~regout\))

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
	dataa => \fsm_state.s5~regout\,
	datab => \fsm_state.s1~regout\,
	datac => \fsm_state.s8~regout\,
	datad => \fsm_state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0_combout\);

-- Location: LC_X6_Y7_N4
\fsm_state.s6\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s6~regout\ = DFFEAS((!\intr~combout\ & (\fsm_state.s5~regout\ & (!\reset~combout\ & \fsm_state~17_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \intr~combout\,
	datab => \fsm_state.s5~regout\,
	datac => \reset~combout\,
	datad => \fsm_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s6~regout\);

-- Location: LC_X8_Y7_N1
\Selector47~0\ : maxv_lcell
-- Equation(s):
-- \Selector47~0_combout\ = (Count(0)) # (((\fsm_state.s2~regout\) # (\fsm_state.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(0),
	datac => \fsm_state.s2~regout\,
	datad => \fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector47~0_combout\);

-- Location: LC_X8_Y7_N2
\next_count[0]\ : maxv_lcell
-- Equation(s):
-- next_count(0) = ((GLOBAL(\WideOr7~0_combout\) & (next_count(0))) # (!GLOBAL(\WideOr7~0_combout\) & ((!\Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => next_count(0),
	datac => \WideOr7~0_combout\,
	datad => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => next_count(0));

-- Location: LC_X8_Y7_N3
\Count[0]\ : maxv_lcell
-- Equation(s):
-- Count(0) = DFFEAS((\next_count~0_combout\ & ((\WideOr7~0_combout\ & ((next_count(0)))) # (!\WideOr7~0_combout\ & (!Count(0))))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c404",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(0),
	datab => \next_count~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => next_count(0),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0));

-- Location: LC_X8_Y7_N4
\Add1~2\ : maxv_lcell
-- Equation(s):
-- \Add1~2_combout\ = ((Count(1) $ (Count(0))))

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
	datac => Count(1),
	datad => Count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~2_combout\);

-- Location: LC_X8_Y7_N5
\Selector49~0\ : maxv_lcell
-- Equation(s):
-- \Selector49~0_combout\ = (!\fsm_state.s2~regout\ & (!\fsm_state.s6~regout\ & (Count(1) $ (Count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(1),
	datab => \fsm_state.s2~regout\,
	datac => Count(0),
	datad => \fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector49~0_combout\);

-- Location: LC_X8_Y7_N6
\next_count[1]\ : maxv_lcell
-- Equation(s):
-- next_count(1) = ((GLOBAL(\WideOr7~0_combout\) & (next_count(1))) # (!GLOBAL(\WideOr7~0_combout\) & ((\Selector49~0_combout\))))

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
	dataa => next_count(1),
	datac => \WideOr7~0_combout\,
	datad => \Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => next_count(1));

-- Location: LC_X8_Y7_N7
\Count[1]\ : maxv_lcell
-- Equation(s):
-- Count(1) = DFFEAS((\next_count~0_combout\ & ((\WideOr7~0_combout\ & ((next_count(1)))) # (!\WideOr7~0_combout\ & (\Add1~2_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~2_combout\,
	datab => \next_count~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => next_count(1),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1));

-- Location: LC_X7_Y7_N6
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = Count(3) $ (((Count(2) & (Count(0) & Count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(2),
	datab => Count(3),
	datac => Count(0),
	datad => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X7_Y7_N7
\Selector51~2\ : maxv_lcell
-- Equation(s):
-- \Selector51~2_combout\ = ((!\fsm_state.s6~regout\ & (!\fsm_state.s2~regout\ & \Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_state.s6~regout\,
	datac => \fsm_state.s2~regout\,
	datad => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector51~2_combout\);

-- Location: LC_X7_Y7_N8
\next_count[3]\ : maxv_lcell
-- Equation(s):
-- next_count(3) = ((GLOBAL(\WideOr7~0_combout\) & (next_count(3))) # (!GLOBAL(\WideOr7~0_combout\) & ((\Selector51~2_combout\))))

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
	dataa => next_count(3),
	datac => \WideOr7~0_combout\,
	datad => \Selector51~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => next_count(3));

-- Location: LC_X7_Y7_N9
\Count[3]\ : maxv_lcell
-- Equation(s):
-- Count(3) = DFFEAS((\next_count~0_combout\ & ((\WideOr7~0_combout\ & ((next_count(3)))) # (!\WideOr7~0_combout\ & (\Add1~0_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_count~0_combout\,
	datab => \Add1~0_combout\,
	datac => \WideOr7~0_combout\,
	datad => next_count(3),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3));

-- Location: LC_X5_Y7_N8
\fsm_state.s3\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s3~regout\ = DFFEAS((\fsm_state.s2~regout\) # ((!Count(2) & (\fsm_state.s3~regout\ & !Count(3)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(2),
	datab => \fsm_state.s3~regout\,
	datac => \fsm_state.s2~regout\,
	datad => Count(3),
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s3~regout\);

-- Location: LC_X5_Y7_N6
\fsm_state~14\ : maxv_lcell
-- Equation(s):
-- \fsm_state~14_combout\ = ((\fsm_state.s3~regout\ & ((Count(3)) # (Count(2)))))

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
	datab => Count(3),
	datac => Count(2),
	datad => \fsm_state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~14_combout\);

-- Location: LC_X8_Y7_N9
\fsm_state.s2\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s2~regout\ = DFFEAS(((!\reset~combout\ & ((!\fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => \fsm_state.s1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s2~regout\);

-- Location: LC_X8_Y7_N0
\next_count~0\ : maxv_lcell
-- Equation(s):
-- \next_count~0_combout\ = (((!\fsm_state.s2~regout\ & !\fsm_state.s6~regout\)))

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
	datac => \fsm_state.s2~regout\,
	datad => \fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_count~0_combout\);

-- Location: LC_X7_Y7_N2
\Add1~1\ : maxv_lcell
-- Equation(s):
-- \Add1~1_combout\ = Count(2) $ ((((Count(0) & Count(1)))))

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
	dataa => Count(2),
	datac => Count(0),
	datad => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~1_combout\);

-- Location: LC_X7_Y7_N3
\Selector50~4\ : maxv_lcell
-- Equation(s):
-- \Selector50~4_combout\ = ((!\fsm_state.s6~regout\ & (!\fsm_state.s2~regout\ & \Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_state.s6~regout\,
	datac => \fsm_state.s2~regout\,
	datad => \Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector50~4_combout\);

-- Location: LC_X7_Y7_N4
\next_count[2]\ : maxv_lcell
-- Equation(s):
-- next_count(2) = ((GLOBAL(\WideOr7~0_combout\) & (next_count(2))) # (!GLOBAL(\WideOr7~0_combout\) & ((\Selector50~4_combout\))))

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
	dataa => next_count(2),
	datac => \WideOr7~0_combout\,
	datad => \Selector50~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => next_count(2));

-- Location: LC_X7_Y7_N5
\Count[2]\ : maxv_lcell
-- Equation(s):
-- Count(2) = DFFEAS((\next_count~0_combout\ & ((\WideOr7~0_combout\ & ((next_count(2)))) # (!\WideOr7~0_combout\ & (\Add1~1_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \next_count~0_combout\,
	datab => \Add1~1_combout\,
	datac => \WideOr7~0_combout\,
	datad => next_count(2),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2));

-- Location: LC_X7_Y7_N0
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (Count(2) & (((Count(0) & Count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(2),
	datac => Count(0),
	datad => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X5_Y7_N9
\fsm_state.s7\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s7~regout\ = DFFEAS((\fsm_state.s6~regout\) # ((!\LessThan1~0_combout\ & (\fsm_state.s7~regout\ & !Count(3)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan1~0_combout\,
	datab => \fsm_state.s7~regout\,
	datac => \fsm_state.s6~regout\,
	datad => Count(3),
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s7~regout\);

-- Location: LC_X5_Y7_N4
\done_var~0\ : maxv_lcell
-- Equation(s):
-- \done_var~0_combout\ = ((\fsm_state.s7~regout\ & ((\LessThan1~0_combout\) # (Count(3)))))

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
	datab => \fsm_state.s7~regout\,
	datac => \LessThan1~0_combout\,
	datad => Count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done_var~0_combout\);

-- Location: LC_X6_Y7_N6
\fsm_state.s8\ : maxv_lcell
-- Equation(s):
-- \fsm_state.s8~regout\ = DFFEAS((\fsm_state.s8~regout\ & (((\done_var~0_combout\ & !\reset~combout\)) # (!\fsm_state~17_combout\))) # (!\fsm_state.s8~regout\ & (\done_var~0_combout\ & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \fsm_state.s8~regout\,
	datab => \done_var~0_combout\,
	datac => \reset~combout\,
	datad => \fsm_state~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.s8~regout\);

-- Location: LC_X6_Y7_N9
\cs~reg0\ : maxv_lcell
-- Equation(s):
-- \cs~2\ = (\fsm_state.s8~regout\) # ((\fsm_state.s4~regout\) # ((\reset~combout\) # (\cs~1\)))
-- \cs~reg0_regout\ = DFFEAS(\cs~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \fsm_state.s8~regout\,
	datab => \fsm_state.s4~regout\,
	datac => \reset~combout\,
	datad => \cs~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cs~2\,
	regout => \cs~reg0_regout\);

-- Location: LC_X5_Y7_N0
\cs~0\ : maxv_lcell
-- Equation(s):
-- \cs~0_combout\ = (\fsm_state.s6~regout\) # ((\fsm_state.s2~regout\) # ((\intr~combout\ & \fsm_state.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.s6~regout\,
	datab => \intr~combout\,
	datac => \fsm_state.s5~regout\,
	datad => \fsm_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cs~0_combout\);

-- Location: LC_X6_Y7_N8
C : maxv_lcell
-- Equation(s):
-- \cs~1\ = (C & ((\fsm_state.s7~regout\) # ((\fsm_state.s3~regout\) # (\cs~0_combout\))))

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
	clk => \clk~combout\,
	dataa => \fsm_state.s7~regout\,
	datab => \fsm_state.s3~regout\,
	datac => \cs~2\,
	datad => \cs~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cs~1\,
	regout => \C~regout\);

-- Location: LC_X7_Y6_N5
R : maxv_lcell
-- Equation(s):
-- \rd~0\ = (\fsm_state.s7~regout\ & ((Count(3)) # ((R) # (\LessThan1~0_combout\))))
-- \R~regout\ = DFFEAS(\rd~0\, GLOBAL(\clk~combout\), VCC, , , \rd~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.s7~regout\,
	datab => Count(3),
	datac => \rd~1\,
	datad => \LessThan1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rd~0\,
	regout => \R~regout\);

-- Location: LC_X7_Y6_N6
\rd~reg0\ : maxv_lcell
-- Equation(s):
-- \rd~1\ = (\reset~combout\) # ((\rd~0\) # ((\R~regout\ & !\fsm_state.s6~regout\)))
-- \rd~reg0_regout\ = DFFEAS(\rd~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \R~regout\,
	datab => \reset~combout\,
	datac => \fsm_state.s6~regout\,
	datad => \rd~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rd~1\,
	regout => \rd~reg0_regout\);

-- Location: LC_X7_Y6_N8
W : maxv_lcell
-- Equation(s):
-- \wr~0\ = (\fsm_state.s3~regout\ & ((Count(2)) # ((Count(3)) # (W))))
-- \W~regout\ = DFFEAS(\wr~0\, GLOBAL(\clk~combout\), VCC, , , \wr~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(2),
	datab => Count(3),
	datac => \wr~1\,
	datad => \fsm_state.s3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr~0\,
	regout => \W~regout\);

-- Location: LC_X7_Y6_N9
\wr~reg0\ : maxv_lcell
-- Equation(s):
-- \wr~1\ = (\reset~combout\) # ((\wr~0\) # ((\W~regout\ & !\fsm_state.s2~regout\)))
-- \wr~reg0_regout\ = DFFEAS(\wr~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \W~regout\,
	datab => \reset~combout\,
	datac => \fsm_state.s2~regout\,
	datad => \wr~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr~1\,
	regout => \wr~reg0_regout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cs~reg0_regout\,
	oe => VCC,
	padio => ww_cs);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rd~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rd~reg0_regout\,
	oe => VCC,
	padio => ww_rd);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr~reg0_regout\,
	oe => VCC,
	padio => ww_wr);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \done_var~0_combout\,
	oe => VCC,
	padio => ww_done);
END structure;


