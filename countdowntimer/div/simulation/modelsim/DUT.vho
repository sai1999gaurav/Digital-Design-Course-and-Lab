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

-- DATE "04/12/2019 21:49:49"

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
	input_vector : IN std_logic_vector(26 DOWNTO 0);
	output_vector : OUT std_logic_vector(17 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(17 DOWNTO 0);
SIGNAL \add_instance|LessThan1~5\ : std_logic;
SIGNAL \add_instance|LessThan2~5\ : std_logic;
SIGNAL \add_instance|LessThan1~10\ : std_logic;
SIGNAL \add_instance|LessThan2~10\ : std_logic;
SIGNAL \add_instance|LessThan1~15\ : std_logic;
SIGNAL \add_instance|LessThan2~15\ : std_logic;
SIGNAL \add_instance|LessThan1~20\ : std_logic;
SIGNAL \add_instance|LessThan2~20\ : std_logic;
SIGNAL \add_instance|LessThan1~25\ : std_logic;
SIGNAL \add_instance|LessThan2~25\ : std_logic;
SIGNAL \add_instance|LessThan1~30\ : std_logic;
SIGNAL \add_instance|LessThan2~30\ : std_logic;
SIGNAL \add_instance|LessThan1~35\ : std_logic;
SIGNAL \add_instance|LessThan2~35\ : std_logic;
SIGNAL \add_instance|sub[0]~2\ : std_logic;
SIGNAL \add_instance|sub[0]~2COUT1_46\ : std_logic;
SIGNAL \add_instance|sub[1]~5_combout\ : std_logic;
SIGNAL \add_instance|LessThan2~37_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~37COUT1_41\ : std_logic;
SIGNAL \add_instance|LessThan2~32_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~32COUT1_42\ : std_logic;
SIGNAL \add_instance|LessThan2~27_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~27COUT1_43\ : std_logic;
SIGNAL \add_instance|LessThan2~22_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~22COUT1_44\ : std_logic;
SIGNAL \add_instance|LessThan2~17_cout\ : std_logic;
SIGNAL \add_instance|sub[5]~25_combout\ : std_logic;
SIGNAL \add_instance|sub[5]~27\ : std_logic;
SIGNAL \add_instance|sub[5]~27COUT1_50\ : std_logic;
SIGNAL \add_instance|sub[6]~30_combout\ : std_logic;
SIGNAL \add_instance|LessThan2~12_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~12COUT1_45\ : std_logic;
SIGNAL \add_instance|LessThan2~7_cout0\ : std_logic;
SIGNAL \add_instance|LessThan2~7COUT1_46\ : std_logic;
SIGNAL \add_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \add_instance|z_reg[15]~0\ : std_logic;
SIGNAL \add_instance|sub[1]~7\ : std_logic;
SIGNAL \add_instance|sub[1]~7COUT1_47\ : std_logic;
SIGNAL \add_instance|sub[2]~10_combout\ : std_logic;
SIGNAL \add_instance|sub[2]~12\ : std_logic;
SIGNAL \add_instance|sub[2]~12COUT1_48\ : std_logic;
SIGNAL \add_instance|sub[3]~15_combout\ : std_logic;
SIGNAL \add_instance|sub[3]~17\ : std_logic;
SIGNAL \add_instance|sub[3]~17COUT1_49\ : std_logic;
SIGNAL \add_instance|sub[4]~20_combout\ : std_logic;
SIGNAL \add_instance|sub[4]~22\ : std_logic;
SIGNAL \add_instance|sub[6]~32\ : std_logic;
SIGNAL \add_instance|sub[6]~32COUT1_51\ : std_logic;
SIGNAL \add_instance|sub[7]~35_combout\ : std_logic;
SIGNAL \add_instance|sub[7]~37\ : std_logic;
SIGNAL \add_instance|sub[7]~37COUT1_52\ : std_logic;
SIGNAL \add_instance|sub[8]~40_combout\ : std_logic;
SIGNAL \add_instance|Selector6~0_combout\ : std_logic;
SIGNAL \add_instance|state_reg.op~regout\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|Add0~1_combout\ : std_logic;
SIGNAL \add_instance|Selector0~0_combout\ : std_logic;
SIGNAL \add_instance|LessThan1~37_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~37COUT1_41\ : std_logic;
SIGNAL \add_instance|LessThan1~32_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~32COUT1_42\ : std_logic;
SIGNAL \add_instance|LessThan1~27_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~27COUT1_43\ : std_logic;
SIGNAL \add_instance|LessThan1~22_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~22COUT1_44\ : std_logic;
SIGNAL \add_instance|LessThan1~17_cout\ : std_logic;
SIGNAL \add_instance|LessThan1~12_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~12COUT1_45\ : std_logic;
SIGNAL \add_instance|LessThan1~7_cout0\ : std_logic;
SIGNAL \add_instance|LessThan1~7COUT1_46\ : std_logic;
SIGNAL \add_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \add_instance|Selector1~0_combout\ : std_logic;
SIGNAL \add_instance|state_reg.idle~regout\ : std_logic;
SIGNAL \add_instance|state_reg.shift~regout\ : std_logic;
SIGNAL \add_instance|Selector22~0_combout\ : std_logic;
SIGNAL \add_instance|sub[0]~0_combout\ : std_logic;
SIGNAL \add_instance|ovfl~combout\ : std_logic;
SIGNAL \add_instance|d_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|i_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \add_instance|z_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \add_instance|ALT_INV_state_reg.op~regout\ : std_logic;
SIGNAL \add_instance|ALT_INV_ovfl~combout\ : std_logic;
SIGNAL \add_instance|ALT_INV_state_reg.idle~regout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|ALT_INV_state_reg.op~regout\ <= NOT \add_instance|state_reg.op~regout\;
\add_instance|ALT_INV_ovfl~combout\ <= NOT \add_instance|ovfl~combout\;
\add_instance|ALT_INV_state_reg.idle~regout\ <= NOT \add_instance|state_reg.idle~regout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26),
	combout => \input_vector~combout\(26));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23),
	combout => \input_vector~combout\(23));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X9_Y8_N0
\add_instance|sub[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[0]~0_combout\ = \add_instance|z_reg\(8) $ ((\input_vector~combout\(0)))
-- \add_instance|sub[0]~2\ = CARRY((\add_instance|z_reg\(8)) # ((!\input_vector~combout\(0))))
-- \add_instance|sub[0]~2COUT1_46\ = CARRY((\add_instance|z_reg\(8)) # ((!\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(8),
	datab => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[0]~0_combout\,
	cout0 => \add_instance|sub[0]~2\,
	cout1 => \add_instance|sub[0]~2COUT1_46\);

-- Location: LC_X9_Y8_N1
\add_instance|sub[1]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[1]~5_combout\ = \input_vector~combout\(1) $ (\add_instance|z_reg\(9) $ ((!\add_instance|sub[0]~2\)))
-- \add_instance|sub[1]~7\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|sub[0]~2\) # (!\add_instance|z_reg\(9)))) # (!\input_vector~combout\(1) & (!\add_instance|z_reg\(9) & !\add_instance|sub[0]~2\)))
-- \add_instance|sub[1]~7COUT1_47\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|sub[0]~2COUT1_46\) # (!\add_instance|z_reg\(9)))) # (!\input_vector~combout\(1) & (!\add_instance|z_reg\(9) & !\add_instance|sub[0]~2COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|z_reg\(9),
	cin0 => \add_instance|sub[0]~2\,
	cin1 => \add_instance|sub[0]~2COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[1]~5_combout\,
	cout0 => \add_instance|sub[1]~7\,
	cout1 => \add_instance|sub[1]~7COUT1_47\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25),
	combout => \input_vector~combout\(25));

-- Location: LC_X6_Y8_N2
\add_instance|d_reg[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(7) = DFFEAS(GND, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \input_vector~combout\(7), , , VCC)

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
	clk => \input_vector~combout\(26),
	datac => \input_vector~combout\(7),
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(7));

-- Location: LC_X6_Y8_N1
\add_instance|d_reg[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(4) = DFFEAS(GND, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \input_vector~combout\(4), , , VCC)

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
	clk => \input_vector~combout\(26),
	datac => \input_vector~combout\(4),
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(4));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X6_Y8_N7
\add_instance|d_reg[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(3) = DFFEAS((((\input_vector~combout\(3)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

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
	clk => \input_vector~combout\(26),
	datad => \input_vector~combout\(3),
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(3));

-- Location: LC_X6_Y8_N9
\add_instance|d_reg[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(2) = DFFEAS(GND, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \input_vector~combout\(2), , , VCC)

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
	clk => \input_vector~combout\(26),
	datac => \input_vector~combout\(2),
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(2));

-- Location: LC_X6_Y8_N5
\add_instance|d_reg[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(1) = DFFEAS((((\input_vector~combout\(1)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

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
	clk => \input_vector~combout\(26),
	datad => \input_vector~combout\(1),
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(1));

-- Location: LC_X7_Y8_N8
\add_instance|d_reg[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(0) = DFFEAS(GND, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \input_vector~combout\(0), , , VCC)

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
	clk => \input_vector~combout\(26),
	datac => \input_vector~combout\(0),
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(0));

-- Location: LC_X7_Y8_N0
\add_instance|LessThan2~37\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~37_cout0\ = CARRY((\add_instance|d_reg\(0) & (!\add_instance|z_reg\(8))))
-- \add_instance|LessThan2~37COUT1_41\ = CARRY((\add_instance|d_reg\(0) & (!\add_instance|z_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d_reg\(0),
	datab => \add_instance|z_reg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~35\,
	cout0 => \add_instance|LessThan2~37_cout0\,
	cout1 => \add_instance|LessThan2~37COUT1_41\);

-- Location: LC_X7_Y8_N1
\add_instance|LessThan2~32\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~32_cout0\ = CARRY((\add_instance|d_reg\(1) & (\add_instance|z_reg\(9) & !\add_instance|LessThan2~37_cout0\)) # (!\add_instance|d_reg\(1) & ((\add_instance|z_reg\(9)) # (!\add_instance|LessThan2~37_cout0\))))
-- \add_instance|LessThan2~32COUT1_42\ = CARRY((\add_instance|d_reg\(1) & (\add_instance|z_reg\(9) & !\add_instance|LessThan2~37COUT1_41\)) # (!\add_instance|d_reg\(1) & ((\add_instance|z_reg\(9)) # (!\add_instance|LessThan2~37COUT1_41\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d_reg\(1),
	datab => \add_instance|z_reg\(9),
	cin0 => \add_instance|LessThan2~37_cout0\,
	cin1 => \add_instance|LessThan2~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~30\,
	cout0 => \add_instance|LessThan2~32_cout0\,
	cout1 => \add_instance|LessThan2~32COUT1_42\);

-- Location: LC_X7_Y8_N2
\add_instance|LessThan2~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~27_cout0\ = CARRY((\add_instance|d_reg\(2) & ((!\add_instance|LessThan2~32_cout0\) # (!\add_instance|z_reg\(10)))) # (!\add_instance|d_reg\(2) & (!\add_instance|z_reg\(10) & !\add_instance|LessThan2~32_cout0\)))
-- \add_instance|LessThan2~27COUT1_43\ = CARRY((\add_instance|d_reg\(2) & ((!\add_instance|LessThan2~32COUT1_42\) # (!\add_instance|z_reg\(10)))) # (!\add_instance|d_reg\(2) & (!\add_instance|z_reg\(10) & !\add_instance|LessThan2~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d_reg\(2),
	datab => \add_instance|z_reg\(10),
	cin0 => \add_instance|LessThan2~32_cout0\,
	cin1 => \add_instance|LessThan2~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~25\,
	cout0 => \add_instance|LessThan2~27_cout0\,
	cout1 => \add_instance|LessThan2~27COUT1_43\);

-- Location: LC_X7_Y8_N3
\add_instance|LessThan2~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~22_cout0\ = CARRY((\add_instance|z_reg\(11) & ((!\add_instance|LessThan2~27_cout0\) # (!\add_instance|d_reg\(3)))) # (!\add_instance|z_reg\(11) & (!\add_instance|d_reg\(3) & !\add_instance|LessThan2~27_cout0\)))
-- \add_instance|LessThan2~22COUT1_44\ = CARRY((\add_instance|z_reg\(11) & ((!\add_instance|LessThan2~27COUT1_43\) # (!\add_instance|d_reg\(3)))) # (!\add_instance|z_reg\(11) & (!\add_instance|d_reg\(3) & !\add_instance|LessThan2~27COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(11),
	datab => \add_instance|d_reg\(3),
	cin0 => \add_instance|LessThan2~27_cout0\,
	cin1 => \add_instance|LessThan2~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~20\,
	cout0 => \add_instance|LessThan2~22_cout0\,
	cout1 => \add_instance|LessThan2~22COUT1_44\);

-- Location: LC_X7_Y8_N4
\add_instance|LessThan2~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~17_cout\ = CARRY((\add_instance|d_reg\(4) & ((!\add_instance|LessThan2~22COUT1_44\) # (!\add_instance|z_reg\(12)))) # (!\add_instance|d_reg\(4) & (!\add_instance|z_reg\(12) & !\add_instance|LessThan2~22COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d_reg\(4),
	datab => \add_instance|z_reg\(12),
	cin0 => \add_instance|LessThan2~22_cout0\,
	cin1 => \add_instance|LessThan2~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~15\,
	cout => \add_instance|LessThan2~17_cout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X9_Y8_N5
\add_instance|sub[5]~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[5]~25_combout\ = \input_vector~combout\(5) $ (\add_instance|z_reg\(13) $ ((!\add_instance|sub[4]~22\)))
-- \add_instance|sub[5]~27\ = CARRY((\input_vector~combout\(5) & ((!\add_instance|sub[4]~22\) # (!\add_instance|z_reg\(13)))) # (!\input_vector~combout\(5) & (!\add_instance|z_reg\(13) & !\add_instance|sub[4]~22\)))
-- \add_instance|sub[5]~27COUT1_50\ = CARRY((\input_vector~combout\(5) & ((!\add_instance|sub[4]~22\) # (!\add_instance|z_reg\(13)))) # (!\input_vector~combout\(5) & (!\add_instance|z_reg\(13) & !\add_instance|sub[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|z_reg\(13),
	cin => \add_instance|sub[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[5]~25_combout\,
	cout0 => \add_instance|sub[5]~27\,
	cout1 => \add_instance|sub[5]~27COUT1_50\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21),
	combout => \input_vector~combout\(21));

-- Location: LC_X8_Y8_N6
\add_instance|z_reg[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(13) = DFFEAS((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(12))) # (!\add_instance|state_reg.shift~regout\ & (((\input_vector~combout\(21))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), 
-- , \add_instance|z_reg[15]~0\, \add_instance|sub[5]~25_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(12),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[5]~25_combout\,
	datad => \input_vector~combout\(21),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(13));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X9_Y8_N6
\add_instance|sub[6]~30\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[6]~30_combout\ = \input_vector~combout\(6) $ (\add_instance|z_reg\(14) $ (((!\add_instance|sub[4]~22\ & \add_instance|sub[5]~27\) # (\add_instance|sub[4]~22\ & \add_instance|sub[5]~27COUT1_50\))))
-- \add_instance|sub[6]~32\ = CARRY((\input_vector~combout\(6) & (\add_instance|z_reg\(14) & !\add_instance|sub[5]~27\)) # (!\input_vector~combout\(6) & ((\add_instance|z_reg\(14)) # (!\add_instance|sub[5]~27\))))
-- \add_instance|sub[6]~32COUT1_51\ = CARRY((\input_vector~combout\(6) & (\add_instance|z_reg\(14) & !\add_instance|sub[5]~27COUT1_50\)) # (!\input_vector~combout\(6) & ((\add_instance|z_reg\(14)) # (!\add_instance|sub[5]~27COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|z_reg\(14),
	cin => \add_instance|sub[4]~22\,
	cin0 => \add_instance|sub[5]~27\,
	cin1 => \add_instance|sub[5]~27COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[6]~30_combout\,
	cout0 => \add_instance|sub[6]~32\,
	cout1 => \add_instance|sub[6]~32COUT1_51\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22),
	combout => \input_vector~combout\(22));

-- Location: LC_X8_Y8_N3
\add_instance|z_reg[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(14) = DFFEAS((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(13))) # (!\add_instance|state_reg.shift~regout\ & (((\input_vector~combout\(22))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), 
-- , \add_instance|z_reg[15]~0\, \add_instance|sub[6]~30_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(13),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[6]~30_combout\,
	datad => \input_vector~combout\(22),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(14));

-- Location: LC_X6_Y8_N4
\add_instance|d_reg[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(6) = DFFEAS(GND, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \input_vector~combout\(6), , , VCC)

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
	clk => \input_vector~combout\(26),
	datac => \input_vector~combout\(6),
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(6));

-- Location: LC_X6_Y8_N6
\add_instance|d_reg[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|d_reg\(5) = DFFEAS((((\input_vector~combout\(5)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

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
	clk => \input_vector~combout\(26),
	datad => \input_vector~combout\(5),
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|d_reg\(5));

-- Location: LC_X7_Y8_N5
\add_instance|LessThan2~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~12_cout0\ = CARRY((\add_instance|z_reg\(13) & ((!\add_instance|LessThan2~17_cout\) # (!\add_instance|d_reg\(5)))) # (!\add_instance|z_reg\(13) & (!\add_instance|d_reg\(5) & !\add_instance|LessThan2~17_cout\)))
-- \add_instance|LessThan2~12COUT1_45\ = CARRY((\add_instance|z_reg\(13) & ((!\add_instance|LessThan2~17_cout\) # (!\add_instance|d_reg\(5)))) # (!\add_instance|z_reg\(13) & (!\add_instance|d_reg\(5) & !\add_instance|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(13),
	datab => \add_instance|d_reg\(5),
	cin => \add_instance|LessThan2~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~10\,
	cout0 => \add_instance|LessThan2~12_cout0\,
	cout1 => \add_instance|LessThan2~12COUT1_45\);

-- Location: LC_X7_Y8_N6
\add_instance|LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~7_cout0\ = CARRY((\add_instance|z_reg\(14) & (\add_instance|d_reg\(6) & !\add_instance|LessThan2~12_cout0\)) # (!\add_instance|z_reg\(14) & ((\add_instance|d_reg\(6)) # (!\add_instance|LessThan2~12_cout0\))))
-- \add_instance|LessThan2~7COUT1_46\ = CARRY((\add_instance|z_reg\(14) & (\add_instance|d_reg\(6) & !\add_instance|LessThan2~12COUT1_45\)) # (!\add_instance|z_reg\(14) & ((\add_instance|d_reg\(6)) # (!\add_instance|LessThan2~12COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(14),
	datab => \add_instance|d_reg\(6),
	cin => \add_instance|LessThan2~17_cout\,
	cin0 => \add_instance|LessThan2~12_cout0\,
	cin1 => \add_instance|LessThan2~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~5\,
	cout0 => \add_instance|LessThan2~7_cout0\,
	cout1 => \add_instance|LessThan2~7COUT1_46\);

-- Location: LC_X7_Y8_N7
\add_instance|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan2~0_combout\ = ((\add_instance|d_reg\(7) & (((!\add_instance|LessThan2~17_cout\ & \add_instance|LessThan2~7_cout0\) # (\add_instance|LessThan2~17_cout\ & \add_instance|LessThan2~7COUT1_46\)) # (!\add_instance|z_reg\(15)))) # 
-- (!\add_instance|d_reg\(7) & ((!\add_instance|LessThan2~17_cout\ & \add_instance|LessThan2~7_cout0\) # (\add_instance|LessThan2~17_cout\ & \add_instance|LessThan2~7COUT1_46\) & !\add_instance|z_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|d_reg\(7),
	datad => \add_instance|z_reg\(15),
	cin => \add_instance|LessThan2~17_cout\,
	cin0 => \add_instance|LessThan2~7_cout0\,
	cin1 => \add_instance|LessThan2~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan2~0_combout\);

-- Location: LC_X7_Y8_N9
\add_instance|state_reg.op\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg[15]~0\ = (\add_instance|z_reg\(16)) # (((!B1_state_reg.op)) # (!\add_instance|LessThan2~0_combout\))
-- \add_instance|state_reg.op~regout\ = DFFEAS(\add_instance|z_reg[15]~0\, GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , \add_instance|state_reg.shift~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfbf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(16),
	datab => \add_instance|LessThan2~0_combout\,
	datac => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|z_reg[15]~0\,
	regout => \add_instance|state_reg.op~regout\);

-- Location: LC_X8_Y8_N2
\add_instance|z_reg[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(9) = DFFEAS(((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(8))) # (!\add_instance|state_reg.shift~regout\ & ((\input_vector~combout\(17))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- \add_instance|z_reg[15]~0\, \add_instance|sub[1]~5_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(8),
	datab => \input_vector~combout\(17),
	datac => \add_instance|sub[1]~5_combout\,
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(9));

-- Location: LC_X9_Y8_N2
\add_instance|sub[2]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[2]~10_combout\ = \add_instance|z_reg\(10) $ (\input_vector~combout\(2) $ ((\add_instance|sub[1]~7\)))
-- \add_instance|sub[2]~12\ = CARRY((\add_instance|z_reg\(10) & ((!\add_instance|sub[1]~7\) # (!\input_vector~combout\(2)))) # (!\add_instance|z_reg\(10) & (!\input_vector~combout\(2) & !\add_instance|sub[1]~7\)))
-- \add_instance|sub[2]~12COUT1_48\ = CARRY((\add_instance|z_reg\(10) & ((!\add_instance|sub[1]~7COUT1_47\) # (!\input_vector~combout\(2)))) # (!\add_instance|z_reg\(10) & (!\input_vector~combout\(2) & !\add_instance|sub[1]~7COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(10),
	datab => \input_vector~combout\(2),
	cin0 => \add_instance|sub[1]~7\,
	cin1 => \add_instance|sub[1]~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[2]~10_combout\,
	cout0 => \add_instance|sub[2]~12\,
	cout1 => \add_instance|sub[2]~12COUT1_48\);

-- Location: LC_X8_Y8_N5
\add_instance|z_reg[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(10) = DFFEAS((\add_instance|state_reg.shift~regout\ & (((\add_instance|z_reg\(9))))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(18))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- \add_instance|z_reg[15]~0\, \add_instance|sub[2]~10_combout\, , , \add_instance|state_reg.op~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(18),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[2]~10_combout\,
	datad => \add_instance|z_reg\(9),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(10));

-- Location: LC_X9_Y8_N3
\add_instance|sub[3]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[3]~15_combout\ = \input_vector~combout\(3) $ (\add_instance|z_reg\(11) $ ((!\add_instance|sub[2]~12\)))
-- \add_instance|sub[3]~17\ = CARRY((\input_vector~combout\(3) & ((!\add_instance|sub[2]~12\) # (!\add_instance|z_reg\(11)))) # (!\input_vector~combout\(3) & (!\add_instance|z_reg\(11) & !\add_instance|sub[2]~12\)))
-- \add_instance|sub[3]~17COUT1_49\ = CARRY((\input_vector~combout\(3) & ((!\add_instance|sub[2]~12COUT1_48\) # (!\add_instance|z_reg\(11)))) # (!\input_vector~combout\(3) & (!\add_instance|z_reg\(11) & !\add_instance|sub[2]~12COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \add_instance|z_reg\(11),
	cin0 => \add_instance|sub[2]~12\,
	cin1 => \add_instance|sub[2]~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[3]~15_combout\,
	cout0 => \add_instance|sub[3]~17\,
	cout1 => \add_instance|sub[3]~17COUT1_49\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19),
	combout => \input_vector~combout\(19));

-- Location: LC_X8_Y8_N7
\add_instance|z_reg[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(11) = DFFEAS((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(10))) # (!\add_instance|state_reg.shift~regout\ & (((\input_vector~combout\(19))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), 
-- , \add_instance|z_reg[15]~0\, \add_instance|sub[3]~15_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(10),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[3]~15_combout\,
	datad => \input_vector~combout\(19),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(11));

-- Location: LC_X9_Y8_N4
\add_instance|sub[4]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[4]~20_combout\ = \input_vector~combout\(4) $ (\add_instance|z_reg\(12) $ ((\add_instance|sub[3]~17\)))
-- \add_instance|sub[4]~22\ = CARRY((\input_vector~combout\(4) & (\add_instance|z_reg\(12) & !\add_instance|sub[3]~17COUT1_49\)) # (!\input_vector~combout\(4) & ((\add_instance|z_reg\(12)) # (!\add_instance|sub[3]~17COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|z_reg\(12),
	cin0 => \add_instance|sub[3]~17\,
	cin1 => \add_instance|sub[3]~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[4]~20_combout\,
	cout => \add_instance|sub[4]~22\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20),
	combout => \input_vector~combout\(20));

-- Location: LC_X8_Y8_N4
\add_instance|z_reg[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(12) = DFFEAS((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(11))) # (!\add_instance|state_reg.shift~regout\ & (((\input_vector~combout\(20))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), 
-- , \add_instance|z_reg[15]~0\, \add_instance|sub[4]~20_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(11),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[4]~20_combout\,
	datad => \input_vector~combout\(20),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(12));

-- Location: LC_X9_Y8_N7
\add_instance|sub[7]~35\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[7]~35_combout\ = \add_instance|z_reg\(15) $ (\input_vector~combout\(7) $ ((!(!\add_instance|sub[4]~22\ & \add_instance|sub[6]~32\) # (\add_instance|sub[4]~22\ & \add_instance|sub[6]~32COUT1_51\))))
-- \add_instance|sub[7]~37\ = CARRY((\add_instance|z_reg\(15) & (\input_vector~combout\(7) & !\add_instance|sub[6]~32\)) # (!\add_instance|z_reg\(15) & ((\input_vector~combout\(7)) # (!\add_instance|sub[6]~32\))))
-- \add_instance|sub[7]~37COUT1_52\ = CARRY((\add_instance|z_reg\(15) & (\input_vector~combout\(7) & !\add_instance|sub[6]~32COUT1_51\)) # (!\add_instance|z_reg\(15) & ((\input_vector~combout\(7)) # (!\add_instance|sub[6]~32COUT1_51\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(15),
	datab => \input_vector~combout\(7),
	cin => \add_instance|sub[4]~22\,
	cin0 => \add_instance|sub[6]~32\,
	cin1 => \add_instance|sub[6]~32COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[7]~35_combout\,
	cout0 => \add_instance|sub[7]~37\,
	cout1 => \add_instance|sub[7]~37COUT1_52\);

-- Location: LC_X8_Y8_N1
\add_instance|z_reg[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(15) = DFFEAS((\add_instance|state_reg.shift~regout\ & (((\add_instance|z_reg\(14))))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(23))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), 
-- , \add_instance|z_reg[15]~0\, \add_instance|sub[7]~35_combout\, , , \add_instance|state_reg.op~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(23),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|sub[7]~35_combout\,
	datad => \add_instance|z_reg\(14),
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(15));

-- Location: LC_X9_Y8_N8
\add_instance|sub[8]~40\ : maxv_lcell
-- Equation(s):
-- \add_instance|sub[8]~40_combout\ = (((!\add_instance|sub[4]~22\ & \add_instance|sub[7]~37\) # (\add_instance|sub[4]~22\ & \add_instance|sub[7]~37COUT1_52\) $ (\add_instance|z_reg\(16))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|z_reg\(16),
	cin => \add_instance|sub[4]~22\,
	cin0 => \add_instance|sub[7]~37\,
	cin1 => \add_instance|sub[7]~37COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sub[8]~40_combout\);

-- Location: LC_X8_Y8_N9
\add_instance|Selector6~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector6~0_combout\ = (\add_instance|state_reg.op~regout\ & (\add_instance|sub[8]~40_combout\ & ((\add_instance|z_reg\(16)) # (!\add_instance|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state_reg.op~regout\,
	datab => \add_instance|LessThan2~0_combout\,
	datac => \add_instance|z_reg\(16),
	datad => \add_instance|sub[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector6~0_combout\);

-- Location: LC_X8_Y8_N0
\add_instance|z_reg[16]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(16) = DFFEAS(((\add_instance|Selector6~0_combout\) # ((\add_instance|state_reg.shift~regout\ & \add_instance|z_reg\(15)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|z_reg\(15),
	datad => \add_instance|Selector6~0_combout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(16));

-- Location: LC_X7_Y7_N2
\add_instance|i_reg[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i_reg\(0) = DFFEAS((\add_instance|i_reg\(0) & (\add_instance|state_reg.shift~regout\)) # (!\add_instance|i_reg\(0) & (((\add_instance|state_reg.op~regout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|state_reg.shift~regout\,
	datab => \add_instance|i_reg\(0),
	datad => \add_instance|state_reg.op~regout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|i_reg\(0));

-- Location: LC_X7_Y9_N5
\add_instance|i_reg[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i_reg\(1) = DFFEAS((\add_instance|i_reg\(1) & ((\add_instance|state_reg.shift~regout\) # ((!\add_instance|i_reg\(0) & \add_instance|state_reg.op~regout\)))) # (!\add_instance|i_reg\(1) & (\add_instance|i_reg\(0) & 
-- ((\add_instance|state_reg.op~regout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|i_reg\(1),
	datab => \add_instance|i_reg\(0),
	datac => \add_instance|state_reg.shift~regout\,
	datad => \add_instance|state_reg.op~regout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|i_reg\(1));

-- Location: LC_X7_Y9_N6
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = (\add_instance|i_reg\(1) & (((\add_instance|i_reg\(0)))))

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
	dataa => \add_instance|i_reg\(1),
	datac => \add_instance|i_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\);

-- Location: LC_X7_Y9_N7
\add_instance|i_reg[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i_reg\(2) = DFFEAS((\add_instance|i_reg\(2) & ((\add_instance|state_reg.shift~regout\) # ((\add_instance|state_reg.op~regout\ & !\add_instance|Add0~0_combout\)))) # (!\add_instance|i_reg\(2) & (((\add_instance|state_reg.op~regout\ & 
-- \add_instance|Add0~0_combout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|state_reg.shift~regout\,
	datab => \add_instance|i_reg\(2),
	datac => \add_instance|state_reg.op~regout\,
	datad => \add_instance|Add0~0_combout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|i_reg\(2));

-- Location: LC_X7_Y9_N3
\add_instance|Add0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~1_combout\ = (\add_instance|i_reg\(1) & (\add_instance|i_reg\(2) & (\add_instance|i_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i_reg\(1),
	datab => \add_instance|i_reg\(2),
	datac => \add_instance|i_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~1_combout\);

-- Location: LC_X7_Y9_N4
\add_instance|i_reg[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i_reg\(3) = DFFEAS((\add_instance|i_reg\(3) & ((\add_instance|state_reg.shift~regout\) # ((\add_instance|state_reg.op~regout\ & !\add_instance|Add0~1_combout\)))) # (!\add_instance|i_reg\(3) & (((\add_instance|state_reg.op~regout\ & 
-- \add_instance|Add0~1_combout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ace0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|state_reg.shift~regout\,
	datab => \add_instance|state_reg.op~regout\,
	datac => \add_instance|i_reg\(3),
	datad => \add_instance|Add0~1_combout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|i_reg\(3));

-- Location: LC_X7_Y9_N1
\add_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector0~0_combout\ = (\add_instance|i_reg\(1) & (\add_instance|i_reg\(2) & (!\add_instance|i_reg\(3) & \add_instance|i_reg\(0))))

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
	dataa => \add_instance|i_reg\(1),
	datab => \add_instance|i_reg\(2),
	datac => \add_instance|i_reg\(3),
	datad => \add_instance|i_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector0~0_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24),
	combout => \input_vector~combout\(24));

-- Location: LC_X8_Y9_N0
\add_instance|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~37_cout0\ = CARRY((\input_vector~combout\(0) & (!\input_vector~combout\(16))))
-- \add_instance|LessThan1~37COUT1_41\ = CARRY((\input_vector~combout\(0) & (!\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~35\,
	cout0 => \add_instance|LessThan1~37_cout0\,
	cout1 => \add_instance|LessThan1~37COUT1_41\);

-- Location: LC_X8_Y9_N1
\add_instance|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~32_cout0\ = CARRY((\input_vector~combout\(1) & (\input_vector~combout\(17) & !\add_instance|LessThan1~37_cout0\)) # (!\input_vector~combout\(1) & ((\input_vector~combout\(17)) # (!\add_instance|LessThan1~37_cout0\))))
-- \add_instance|LessThan1~32COUT1_42\ = CARRY((\input_vector~combout\(1) & (\input_vector~combout\(17) & !\add_instance|LessThan1~37COUT1_41\)) # (!\input_vector~combout\(1) & ((\input_vector~combout\(17)) # (!\add_instance|LessThan1~37COUT1_41\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(17),
	cin0 => \add_instance|LessThan1~37_cout0\,
	cin1 => \add_instance|LessThan1~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~30\,
	cout0 => \add_instance|LessThan1~32_cout0\,
	cout1 => \add_instance|LessThan1~32COUT1_42\);

-- Location: LC_X8_Y9_N2
\add_instance|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~27_cout0\ = CARRY((\input_vector~combout\(2) & ((!\add_instance|LessThan1~32_cout0\) # (!\input_vector~combout\(18)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(18) & !\add_instance|LessThan1~32_cout0\)))
-- \add_instance|LessThan1~27COUT1_43\ = CARRY((\input_vector~combout\(2) & ((!\add_instance|LessThan1~32COUT1_42\) # (!\input_vector~combout\(18)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(18) & !\add_instance|LessThan1~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(18),
	cin0 => \add_instance|LessThan1~32_cout0\,
	cin1 => \add_instance|LessThan1~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~25\,
	cout0 => \add_instance|LessThan1~27_cout0\,
	cout1 => \add_instance|LessThan1~27COUT1_43\);

-- Location: LC_X8_Y9_N3
\add_instance|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~22_cout0\ = CARRY((\input_vector~combout\(19) & ((!\add_instance|LessThan1~27_cout0\) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(19) & (!\input_vector~combout\(3) & !\add_instance|LessThan1~27_cout0\)))
-- \add_instance|LessThan1~22COUT1_44\ = CARRY((\input_vector~combout\(19) & ((!\add_instance|LessThan1~27COUT1_43\) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(19) & (!\input_vector~combout\(3) & !\add_instance|LessThan1~27COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(19),
	datab => \input_vector~combout\(3),
	cin0 => \add_instance|LessThan1~27_cout0\,
	cin1 => \add_instance|LessThan1~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~20\,
	cout0 => \add_instance|LessThan1~22_cout0\,
	cout1 => \add_instance|LessThan1~22COUT1_44\);

-- Location: LC_X8_Y9_N4
\add_instance|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~17_cout\ = CARRY((\input_vector~combout\(4) & ((!\add_instance|LessThan1~22COUT1_44\) # (!\input_vector~combout\(20)))) # (!\input_vector~combout\(4) & (!\input_vector~combout\(20) & !\add_instance|LessThan1~22COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(20),
	cin0 => \add_instance|LessThan1~22_cout0\,
	cin1 => \add_instance|LessThan1~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~15\,
	cout => \add_instance|LessThan1~17_cout\);

-- Location: LC_X8_Y9_N5
\add_instance|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~12_cout0\ = CARRY((\input_vector~combout\(21) & ((!\add_instance|LessThan1~17_cout\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(21) & (!\input_vector~combout\(5) & !\add_instance|LessThan1~17_cout\)))
-- \add_instance|LessThan1~12COUT1_45\ = CARRY((\input_vector~combout\(21) & ((!\add_instance|LessThan1~17_cout\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(21) & (!\input_vector~combout\(5) & !\add_instance|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(21),
	datab => \input_vector~combout\(5),
	cin => \add_instance|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~10\,
	cout0 => \add_instance|LessThan1~12_cout0\,
	cout1 => \add_instance|LessThan1~12COUT1_45\);

-- Location: LC_X8_Y9_N6
\add_instance|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~7_cout0\ = CARRY((\input_vector~combout\(6) & ((!\add_instance|LessThan1~12_cout0\) # (!\input_vector~combout\(22)))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(22) & !\add_instance|LessThan1~12_cout0\)))
-- \add_instance|LessThan1~7COUT1_46\ = CARRY((\input_vector~combout\(6) & ((!\add_instance|LessThan1~12COUT1_45\) # (!\input_vector~combout\(22)))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(22) & !\add_instance|LessThan1~12COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(22),
	cin => \add_instance|LessThan1~17_cout\,
	cin0 => \add_instance|LessThan1~12_cout0\,
	cin1 => \add_instance|LessThan1~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~5\,
	cout0 => \add_instance|LessThan1~7_cout0\,
	cout1 => \add_instance|LessThan1~7COUT1_46\);

-- Location: LC_X8_Y9_N7
\add_instance|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|LessThan1~0_combout\ = (\input_vector~combout\(7) & ((((!\add_instance|LessThan1~17_cout\ & \add_instance|LessThan1~7_cout0\) # (\add_instance|LessThan1~17_cout\ & \add_instance|LessThan1~7COUT1_46\)) # (!\input_vector~combout\(23))))) # 
-- (!\input_vector~combout\(7) & ((((!\add_instance|LessThan1~17_cout\ & \add_instance|LessThan1~7_cout0\) # (\add_instance|LessThan1~17_cout\ & \add_instance|LessThan1~7COUT1_46\) & !\input_vector~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datad => \input_vector~combout\(23),
	cin => \add_instance|LessThan1~17_cout\,
	cin0 => \add_instance|LessThan1~7_cout0\,
	cin1 => \add_instance|LessThan1~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|LessThan1~0_combout\);

-- Location: LC_X7_Y9_N0
\add_instance|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector1~0_combout\ = (((\input_vector~combout\(24) & \add_instance|LessThan1~0_combout\)))

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
	datac => \input_vector~combout\(24),
	datad => \add_instance|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector1~0_combout\);

-- Location: LC_X7_Y9_N9
\add_instance|state_reg.idle\ : maxv_lcell
-- Equation(s):
-- \add_instance|state_reg.idle~regout\ = DFFEAS((\add_instance|state_reg.op~regout\ & (!\add_instance|Selector0~0_combout\ & ((\add_instance|Selector1~0_combout\) # (\add_instance|state_reg.idle~regout\)))) # (!\add_instance|state_reg.op~regout\ & 
-- (((\add_instance|Selector1~0_combout\) # (\add_instance|state_reg.idle~regout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|state_reg.op~regout\,
	datab => \add_instance|Selector0~0_combout\,
	datac => \add_instance|Selector1~0_combout\,
	datad => \add_instance|state_reg.idle~regout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state_reg.idle~regout\);

-- Location: LC_X7_Y9_N2
\add_instance|state_reg.shift\ : maxv_lcell
-- Equation(s):
-- \add_instance|state_reg.shift~regout\ = DFFEAS((\add_instance|state_reg.op~regout\ & (((!\add_instance|state_reg.idle~regout\ & \add_instance|Selector1~0_combout\)) # (!\add_instance|Selector0~0_combout\))) # (!\add_instance|state_reg.op~regout\ & 
-- (!\add_instance|state_reg.idle~regout\ & (\add_instance|Selector1~0_combout\))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|state_reg.op~regout\,
	datab => \add_instance|state_reg.idle~regout\,
	datac => \add_instance|Selector1~0_combout\,
	datad => \add_instance|Selector0~0_combout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state_reg.shift~regout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X6_Y8_N3
\add_instance|Selector22~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector22~0_combout\ = (\add_instance|z_reg\(0)) # (((\add_instance|z_reg\(16)) # (!\add_instance|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|z_reg\(0),
	datac => \add_instance|z_reg\(16),
	datad => \add_instance|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector22~0_combout\);

-- Location: LC_X6_Y8_N8
\add_instance|z_reg[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(0) = DFFEAS((\input_vector~combout\(8) & (((\add_instance|state_reg.op~regout\ & \add_instance|Selector22~0_combout\)) # (!\add_instance|state_reg.idle~regout\))) # (!\input_vector~combout\(8) & (((\add_instance|state_reg.op~regout\ & 
-- \add_instance|Selector22~0_combout\)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(8),
	datab => \add_instance|state_reg.idle~regout\,
	datac => \add_instance|state_reg.op~regout\,
	datad => \add_instance|Selector22~0_combout\,
	aclr => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(0));

-- Location: LC_X8_Y4_N9
\add_instance|z_reg[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(1) = DFFEAS(((\add_instance|state_reg.shift~regout\ & ((\add_instance|z_reg\(0)))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(9)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(9),
	datac => \add_instance|z_reg\(0),
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X8_Y4_N7
\add_instance|z_reg[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(2) = DFFEAS(((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(1))) # (!\add_instance|state_reg.shift~regout\ & ((\input_vector~combout\(10))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	datab => \add_instance|z_reg\(1),
	datac => \input_vector~combout\(10),
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(2));

-- Location: LC_X8_Y4_N4
\add_instance|z_reg[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(3) = DFFEAS((\add_instance|state_reg.shift~regout\ & (((\add_instance|z_reg\(2))))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(11))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(11),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|z_reg\(2),
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(3));

-- Location: LC_X8_Y4_N8
\add_instance|z_reg[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(4) = DFFEAS(((\add_instance|state_reg.shift~regout\ & ((\add_instance|z_reg\(3)))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(12)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	datab => \input_vector~combout\(12),
	datac => \add_instance|z_reg\(3),
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X8_Y4_N3
\add_instance|z_reg[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(5) = DFFEAS((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(4))) # (!\add_instance|state_reg.shift~regout\ & (((\input_vector~combout\(13))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(4),
	datab => \add_instance|state_reg.shift~regout\,
	datad => \input_vector~combout\(13),
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X8_Y4_N6
\add_instance|z_reg[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(6) = DFFEAS(((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(5))) # (!\add_instance|state_reg.shift~regout\ & ((\input_vector~combout\(14))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	dataa => \add_instance|z_reg\(5),
	datac => \input_vector~combout\(14),
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(6));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X8_Y4_N5
\add_instance|z_reg[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(7) = DFFEAS(((\add_instance|state_reg.shift~regout\ & (\add_instance|z_reg\(6))) # (!\add_instance|state_reg.shift~regout\ & ((\input_vector~combout\(15))))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- !\add_instance|state_reg.op~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(26),
	datab => \add_instance|state_reg.shift~regout\,
	datac => \add_instance|z_reg\(6),
	datad => \input_vector~combout\(15),
	aclr => \input_vector~combout\(25),
	ena => \add_instance|ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(7));

-- Location: LC_X8_Y8_N8
\add_instance|z_reg[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z_reg\(8) = DFFEAS(((\add_instance|state_reg.shift~regout\ & ((\add_instance|z_reg\(7)))) # (!\add_instance|state_reg.shift~regout\ & (\input_vector~combout\(16)))), GLOBAL(\input_vector~combout\(26)), !GLOBAL(\input_vector~combout\(25)), , 
-- \add_instance|z_reg[15]~0\, \add_instance|sub[0]~0_combout\, , , \add_instance|state_reg.op~regout\)

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
	clk => \input_vector~combout\(26),
	dataa => \input_vector~combout\(16),
	datab => \add_instance|z_reg\(7),
	datac => \add_instance|sub[0]~0_combout\,
	datad => \add_instance|state_reg.shift~regout\,
	aclr => \input_vector~combout\(25),
	sload => \add_instance|state_reg.op~regout\,
	ena => \add_instance|z_reg[15]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|z_reg\(8));

-- Location: LC_X7_Y9_N8
\add_instance|ovfl\ : maxv_lcell
-- Equation(s):
-- \add_instance|ovfl~combout\ = ((\add_instance|state_reg.idle~regout\) # ((\add_instance|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|state_reg.idle~regout\,
	datad => \add_instance|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ovfl~combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(8),
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(9),
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(10),
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(11),
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(12),
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(13),
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(14),
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(15),
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(0),
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(1),
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(2),
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(3),
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(4),
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(5),
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(6),
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z_reg\(7),
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALT_INV_ovfl~combout\,
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALT_INV_state_reg.idle~regout\,
	oe => VCC,
	padio => ww_output_vector(17));
END structure;


