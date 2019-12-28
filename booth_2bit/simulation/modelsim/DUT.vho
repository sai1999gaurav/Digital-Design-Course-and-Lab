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

-- DATE "04/18/2019 14:49:50"

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
	input_vector : IN std_logic_vector(15 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|fa3|fa1|fa0|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|fa0|binv[2]~0_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa2|s~combout\ : std_logic;
SIGNAL \add_instance|m1|l1|m1|C[2]~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa3|s~combout\ : std_logic;
SIGNAL \add_instance|m2|s1~combout\ : std_logic;
SIGNAL \add_instance|m2|s2~0_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[1]~1_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa3|s~0_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[2]~2_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m3|s2~0_combout\ : std_logic;
SIGNAL \add_instance|m3|s1~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[1]~1_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[3]~3_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[2]~2_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[5]~5_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa1|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[3]~3_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|m4|s1~combout\ : std_logic;
SIGNAL \add_instance|m4|s2~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[1]~1_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa1|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa1|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa1|fa7|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[2]~2_combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|fa0|binv[8]~1_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa0|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa7|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[6]~6_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa0|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa1|fa7|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa0|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa0|s~combout\ : std_logic;
SIGNAL \add_instance|m2|l1|m1|C[7]~7_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa0|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[5]~5_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa0|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[3]~3_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa0|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[6]~6_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa2|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa2|s~1_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa2|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa2|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa2|s~combout\ : std_logic;
SIGNAL \add_instance|m3|l1|m1|C[7]~7_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa3|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa3|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa3|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[5]~5_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa3|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[6]~6_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa4|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|m4|l1|m1|C[7]~7_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa6|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|fa1|fa2|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|fa2|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa7|s~1_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa7|s~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa7|s~2_combout\ : std_logic;
SIGNAL \add_instance|fa0|fa2|fa6|cout~1_combout\ : std_logic;
SIGNAL \add_instance|fa3|fa2|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|m4|l1|ip\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|m3|l1|ip\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|m2|l1|ip\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|fa0|binv\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|fa2|fa1|fa3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \add_instance|fa1|fa1|fa2|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|fa2|fa1|fa3|ALT_INV_s~0_combout\ <= NOT \add_instance|fa2|fa1|fa3|s~0_combout\;
\add_instance|fa1|fa1|fa2|ALT_INV_s~combout\ <= NOT \add_instance|fa1|fa1|fa2|s~combout\;

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X11_Y7_N7
\add_instance|fa3|fa1|fa0|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa0|s~0_combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(8))))

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
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa0|s~0_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X12_Y10_N5
\add_instance|fa0|fa1|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa1|s~combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(1) $ (((\input_vector~combout\(9) & \input_vector~combout\(0)))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(9) & ((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa1|s~combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X12_Y10_N4
\add_instance|fa0|binv[2]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv[2]~0_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(10) $ (((\input_vector~combout\(1)))))) # (!\input_vector~combout\(0) & (((!\input_vector~combout\(9) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv[2]~0_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X11_Y7_N3
\add_instance|m2|l1|m1|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C~0_combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(1) $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C~0_combout\);

-- Location: LC_X12_Y10_N1
\add_instance|fa0|fa1|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa1|cout~0_combout\ = (\input_vector~combout\(8)) # (((\input_vector~combout\(9) & \input_vector~combout\(0))) # (!\input_vector~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa1|cout~0_combout\);

-- Location: LC_X11_Y10_N6
\add_instance|fa1|fa1|fa2|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa2|s~combout\ = (\add_instance|fa0|binv[2]~0_combout\ $ (\add_instance|m2|l1|m1|C~0_combout\ $ (\add_instance|fa0|fa1|fa1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa0|binv[2]~0_combout\,
	datac => \add_instance|m2|l1|m1|C~0_combout\,
	datad => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa2|s~combout\);

-- Location: LC_X12_Y10_N8
\add_instance|m1|l1|m1|C[2]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|l1|m1|C[2]~0_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(10))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(9) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|l1|m1|C[2]~0_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X12_Y10_N9
\add_instance|fa0|binv[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv\(3) = (\input_vector~combout\(0) & ((\input_vector~combout\(1) $ (\input_vector~combout\(11))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(10) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv\(3));

-- Location: LC_X11_Y10_N4
\add_instance|fa0|fa1|fa3|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa3|s~combout\ = (\add_instance|fa0|binv\(3) $ (((\add_instance|m1|l1|m1|C[2]~0_combout\) # (\add_instance|fa0|fa1|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|m1|l1|m1|C[2]~0_combout\,
	datac => \add_instance|fa0|binv\(3),
	datad => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa3|s~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X11_Y7_N5
\add_instance|m2|s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|s1~combout\ = (\input_vector~combout\(1) $ (((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|s1~combout\);

-- Location: LC_X11_Y7_N2
\add_instance|m2|s2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|s2~0_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(3)) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(2)) # (!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|s2~0_combout\);

-- Location: LC_X11_Y9_N2
\add_instance|m2|l1|m1|C[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[1]~1_combout\ = (\add_instance|m2|s2~0_combout\ & (((\add_instance|m2|s1~combout\ & \input_vector~combout\(9))))) # (!\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|m2|s1~combout\,
	datac => \add_instance|m2|s2~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[1]~1_combout\);

-- Location: LC_X11_Y10_N2
\add_instance|fa1|fa1|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa2|cout~0_combout\ = (\add_instance|m2|l1|m1|C~0_combout\ & (\add_instance|fa0|fa1|fa1|cout~0_combout\ $ (((!\add_instance|fa0|binv[2]~0_combout\))))) # (!\add_instance|m2|l1|m1|C~0_combout\ & (((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|m2|l1|m1|C~0_combout\,
	datad => \add_instance|fa0|binv[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa2|cout~0_combout\);

-- Location: LC_X11_Y10_N0
\add_instance|fa2|fa1|fa3|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa3|s~0_combout\ = \add_instance|fa0|fa1|fa3|s~combout\ $ (\input_vector~combout\(3) $ (\add_instance|m2|l1|m1|C[1]~1_combout\ $ (\add_instance|fa1|fa1|fa2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|fa1|fa3|s~combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|m2|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa1|fa1|fa2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa3|s~0_combout\);

-- Location: LC_X11_Y9_N3
\add_instance|m2|l1|m1|C[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[2]~2_combout\ = (\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(10) & (\add_instance|m2|s1~combout\))) # (!\add_instance|m2|s2~0_combout\ & (((\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|m2|s1~combout\,
	datac => \add_instance|m2|s2~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[2]~2_combout\);

-- Location: LC_X11_Y10_N7
\add_instance|fa1|fa1|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa3|cout~0_combout\ = (\add_instance|fa0|fa1|fa3|s~combout\ & (\add_instance|fa1|fa1|fa2|cout~0_combout\ & (\input_vector~combout\(3) $ (\add_instance|m2|l1|m1|C[1]~1_combout\)))) # (!\add_instance|fa0|fa1|fa3|s~combout\ & 
-- ((\add_instance|fa1|fa1|fa2|cout~0_combout\) # (\input_vector~combout\(3) $ (\add_instance|m2|l1|m1|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|fa1|fa3|s~combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|m2|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa1|fa1|fa2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa3|cout~0_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X12_Y10_N7
\add_instance|fa0|binv[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv\(4) = (\input_vector~combout\(0) & ((\input_vector~combout\(1) $ (\input_vector~combout\(12))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(11) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv\(4));

-- Location: LC_X11_Y10_N8
\add_instance|fa0|fa1|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa4|s~combout\ = \add_instance|fa0|binv\(4) $ (((!\add_instance|m1|l1|m1|C[2]~0_combout\ & (\add_instance|fa0|binv\(3) & !\add_instance|fa0|fa1|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa9a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|binv\(4),
	datab => \add_instance|m1|l1|m1|C[2]~0_combout\,
	datac => \add_instance|fa0|binv\(3),
	datad => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa4|s~combout\);

-- Location: LC_X11_Y9_N1
\add_instance|fa1|fa1|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa4|s~combout\ = \add_instance|m2|l1|m1|C[2]~2_combout\ $ (\add_instance|fa1|fa1|fa3|cout~0_combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa0|fa1|fa4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[2]~2_combout\,
	datab => \add_instance|fa1|fa1|fa3|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa4|s~combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X8_Y10_N8
\add_instance|fa2|fa1|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa4|s~combout\ = \add_instance|fa1|fa1|fa4|s~combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(3) $ (\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa1|fa1|fa4|s~combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa4|s~combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X8_Y10_N3
\add_instance|m3|l1|m1|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C~0_combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(3) $ (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C~0_combout\);

-- Location: LC_X8_Y10_N9
\add_instance|fa2|fa1|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa4|cout~0_combout\ = ((\add_instance|m3|l1|m1|C~0_combout\ & ((\add_instance|fa1|fa1|fa4|s~combout\))) # (!\add_instance|m3|l1|m1|C~0_combout\ & (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \add_instance|fa1|fa1|fa4|s~combout\,
	datad => \add_instance|m3|l1|m1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa4|cout~0_combout\);

-- Location: LC_X8_Y10_N5
\add_instance|m3|s2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|s2~0_combout\ = ((\input_vector~combout\(3) & ((\input_vector~combout\(5)) # (!\input_vector~combout\(4)))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(4)) # (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|s2~0_combout\);

-- Location: LC_X8_Y10_N4
\add_instance|m3|s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|s1~combout\ = (\input_vector~combout\(3) $ ((\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|s1~combout\);

-- Location: LC_X8_Y10_N7
\add_instance|m3|l1|m1|C[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[1]~1_combout\ = (\add_instance|m3|s2~0_combout\ & (((\add_instance|m3|s1~combout\ & \input_vector~combout\(9))))) # (!\add_instance|m3|s2~0_combout\ & (\input_vector~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \input_vector~combout\(8),
	datac => \add_instance|m3|s1~combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[1]~1_combout\);

-- Location: LC_X11_Y9_N6
\add_instance|m2|l1|m1|C[3]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[3]~3_combout\ = (\add_instance|m2|s2~0_combout\ & (((\input_vector~combout\(11) & \add_instance|m2|s1~combout\)))) # (!\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|m2|s2~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \add_instance|m2|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[3]~3_combout\);

-- Location: LC_X11_Y9_N9
\add_instance|fa1|fa1|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa4|cout~0_combout\ = (\add_instance|fa1|fa1|fa3|cout~0_combout\ & ((\add_instance|fa0|fa1|fa4|s~combout\) # (\add_instance|m2|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa1|fa3|cout~0_combout\ & 
-- (\add_instance|fa0|fa1|fa4|s~combout\ & (\add_instance|m2|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[2]~2_combout\,
	datab => \add_instance|fa1|fa1|fa3|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa4|cout~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X12_Y10_N0
\add_instance|fa0|binv[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv\(5) = (\input_vector~combout\(0) & ((\input_vector~combout\(13) $ (\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(12) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv\(5));

-- Location: LC_X12_Y10_N2
\add_instance|fa0|fa1|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa3|cout~0_combout\ = (!\add_instance|m1|l1|m1|C[2]~0_combout\ & (\add_instance|fa0|binv\(3) & ((!\add_instance|fa0|fa1|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m1|l1|m1|C[2]~0_combout\,
	datab => \add_instance|fa0|binv\(3),
	datad => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa3|cout~0_combout\);

-- Location: LC_X12_Y9_N1
\add_instance|fa0|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa5|s~combout\ = \add_instance|fa0|binv\(5) $ ((((\add_instance|fa0|fa1|fa3|cout~0_combout\ & \add_instance|fa0|binv\(4)))))

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
	dataa => \add_instance|fa0|binv\(5),
	datac => \add_instance|fa0|fa1|fa3|cout~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa5|s~combout\);

-- Location: LC_X11_Y9_N7
\add_instance|fa1|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa5|s~combout\ = \add_instance|m2|l1|m1|C[3]~3_combout\ $ (\add_instance|fa1|fa1|fa4|cout~0_combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa0|fa1|fa5|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[3]~3_combout\,
	datab => \add_instance|fa1|fa1|fa4|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa5|s~combout\);

-- Location: LC_X8_Y10_N0
\add_instance|fa3|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa5|s~combout\ = \input_vector~combout\(5) $ (\add_instance|fa2|fa1|fa4|cout~0_combout\ $ (\add_instance|m3|l1|m1|C[1]~1_combout\ $ (\add_instance|fa1|fa1|fa5|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|fa2|fa1|fa4|cout~0_combout\,
	datac => \add_instance|m3|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa1|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa5|s~combout\);

-- Location: LC_X8_Y10_N1
\add_instance|m3|l1|m1|C[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[2]~2_combout\ = (\add_instance|m3|s2~0_combout\ & (\add_instance|m3|s1~combout\ & (\input_vector~combout\(10)))) # (!\add_instance|m3|s2~0_combout\ & (((\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[2]~2_combout\);

-- Location: LC_X8_Y10_N2
\add_instance|fa2|fa1|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa5|cout~0_combout\ = (\add_instance|fa2|fa1|fa4|cout~0_combout\ & ((\add_instance|fa1|fa1|fa5|s~combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[1]~1_combout\)))) # (!\add_instance|fa2|fa1|fa4|cout~0_combout\ & 
-- (\add_instance|fa1|fa1|fa5|s~combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|fa2|fa1|fa4|cout~0_combout\,
	datac => \add_instance|m3|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa1|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa5|cout~0_combout\);

-- Location: LC_X11_Y9_N4
\add_instance|m2|l1|m1|C[4]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[4]~4_combout\ = (\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(12) & ((\add_instance|m2|s1~combout\)))) # (!\add_instance|m2|s2~0_combout\ & (((\input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \add_instance|m2|s2~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \add_instance|m2|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[4]~4_combout\);

-- Location: LC_X11_Y9_N0
\add_instance|fa1|fa1|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa5|cout~0_combout\ = (\add_instance|fa1|fa1|fa4|cout~0_combout\ & ((\add_instance|fa0|fa1|fa5|s~combout\) # (\add_instance|m2|l1|m1|C[3]~3_combout\ $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa1|fa4|cout~0_combout\ & 
-- (\add_instance|fa0|fa1|fa5|s~combout\ & (\add_instance|m2|l1|m1|C[3]~3_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[3]~3_combout\,
	datab => \add_instance|fa1|fa1|fa4|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa5|cout~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X12_Y10_N6
\add_instance|fa0|binv[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv\(6) = (\input_vector~combout\(0) & ((\input_vector~combout\(14) $ (\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(13) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv\(6));

-- Location: LC_X12_Y9_N4
\add_instance|fa0|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa6|s~combout\ = \add_instance|fa0|binv\(6) $ (((\add_instance|fa0|binv\(5) & (\add_instance|fa0|fa1|fa3|cout~0_combout\ & \add_instance|fa0|binv\(4)))))

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
	dataa => \add_instance|fa0|binv\(5),
	datab => \add_instance|fa0|binv\(6),
	datac => \add_instance|fa0|fa1|fa3|cout~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa6|s~combout\);

-- Location: LC_X11_Y9_N5
\add_instance|fa1|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa6|s~combout\ = \add_instance|m2|l1|m1|C[4]~4_combout\ $ (\add_instance|fa1|fa1|fa5|cout~0_combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa0|fa1|fa6|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[4]~4_combout\,
	datab => \add_instance|fa1|fa1|fa5|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa6|s~combout\);

-- Location: LC_X11_Y8_N1
\add_instance|fa2|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa6|s~combout\ = \add_instance|m3|l1|m1|C[2]~2_combout\ $ (\add_instance|fa2|fa1|fa5|cout~0_combout\ $ (\add_instance|fa1|fa1|fa6|s~combout\ $ (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[2]~2_combout\,
	datab => \add_instance|fa2|fa1|fa5|cout~0_combout\,
	datac => \add_instance|fa1|fa1|fa6|s~combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa6|s~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X11_Y8_N5
\add_instance|fa3|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa6|s~combout\ = \add_instance|fa2|fa1|fa6|s~combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(5) $ (\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|fa2|fa1|fa6|s~combout\,
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa6|s~combout\);

-- Location: LC_X11_Y7_N8
\add_instance|m2|l1|m1|C[5]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[5]~5_combout\ = (\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(13) & ((\add_instance|m2|s1~combout\)))) # (!\add_instance|m2|s2~0_combout\ & (((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(12),
	datac => \add_instance|m2|s1~combout\,
	datad => \add_instance|m2|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[5]~5_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X12_Y10_N3
\add_instance|fa0|binv[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv\(7) = (\input_vector~combout\(0) & (\input_vector~combout\(15) $ (((\input_vector~combout\(1)))))) # (!\input_vector~combout\(0) & (((!\input_vector~combout\(14) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv\(7));

-- Location: LC_X12_Y9_N5
\add_instance|fa0|fa1|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa5|cout~0_combout\ = (\add_instance|fa0|binv\(5) & (((\add_instance|fa0|fa1|fa3|cout~0_combout\ & \add_instance|fa0|binv\(4)))))

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
	dataa => \add_instance|fa0|binv\(5),
	datac => \add_instance|fa0|fa1|fa3|cout~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa5|cout~0_combout\);

-- Location: LC_X12_Y9_N8
\add_instance|fa0|fa1|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa1|fa7|s~combout\ = (\add_instance|fa0|binv\(7) $ (((\add_instance|fa0|fa1|fa5|cout~0_combout\ & \add_instance|fa0|binv\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa0|binv\(7),
	datac => \add_instance|fa0|fa1|fa5|cout~0_combout\,
	datad => \add_instance|fa0|binv\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa1|fa7|s~combout\);

-- Location: LC_X11_Y9_N8
\add_instance|fa1|fa1|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa6|cout~0_combout\ = (\add_instance|fa1|fa1|fa5|cout~0_combout\ & ((\add_instance|fa0|fa1|fa6|s~combout\) # (\add_instance|m2|l1|m1|C[4]~4_combout\ $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa1|fa5|cout~0_combout\ & 
-- (\add_instance|fa0|fa1|fa6|s~combout\ & (\add_instance|m2|l1|m1|C[4]~4_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[4]~4_combout\,
	datab => \add_instance|fa1|fa1|fa5|cout~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|fa0|fa1|fa6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa6|cout~0_combout\);

-- Location: LC_X10_Y9_N7
\add_instance|fa1|fa1|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa7|s~combout\ = \add_instance|m2|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa0|fa1|fa7|s~combout\ $ (\add_instance|fa1|fa1|fa6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[5]~5_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa0|fa1|fa7|s~combout\,
	datad => \add_instance|fa1|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa7|s~combout\);

-- Location: LC_X9_Y9_N3
\add_instance|m3|l1|m1|C[3]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[3]~3_combout\ = (\add_instance|m3|s2~0_combout\ & (\add_instance|m3|s1~combout\ & (\input_vector~combout\(11)))) # (!\add_instance|m3|s2~0_combout\ & (((\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[3]~3_combout\);

-- Location: LC_X11_Y8_N8
\add_instance|fa2|fa1|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa6|cout~0_combout\ = (\add_instance|fa2|fa1|fa5|cout~0_combout\ & ((\add_instance|fa1|fa1|fa6|s~combout\) # (\add_instance|m3|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(5))))) # (!\add_instance|fa2|fa1|fa5|cout~0_combout\ & 
-- (\add_instance|fa1|fa1|fa6|s~combout\ & (\add_instance|m3|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[2]~2_combout\,
	datab => \add_instance|fa2|fa1|fa5|cout~0_combout\,
	datac => \add_instance|fa1|fa1|fa6|s~combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa6|cout~0_combout\);

-- Location: LC_X11_Y8_N6
\add_instance|fa2|fa1|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa7|s~combout\ = \input_vector~combout\(5) $ (\add_instance|fa1|fa1|fa7|s~combout\ $ (\add_instance|m3|l1|m1|C[3]~3_combout\ $ (\add_instance|fa2|fa1|fa6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|fa1|fa1|fa7|s~combout\,
	datac => \add_instance|m3|l1|m1|C[3]~3_combout\,
	datad => \add_instance|fa2|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa7|s~combout\);

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

-- Location: LC_X9_Y7_N3
\add_instance|m4|s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|s1~combout\ = ((\input_vector~combout\(6) $ (\input_vector~combout\(5))))

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
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|s1~combout\);

-- Location: LC_X10_Y7_N1
\add_instance|m4|s2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|s2~0_combout\ = (\input_vector~combout\(5) & (((\input_vector~combout\(7))) # (!\input_vector~combout\(6)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(6)) # ((!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7e7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|s2~0_combout\);

-- Location: LC_X9_Y8_N0
\add_instance|m4|l1|m1|C[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[1]~1_combout\ = (\add_instance|m4|s2~0_combout\ & (\add_instance|m4|s1~combout\ & ((\input_vector~combout\(9))))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m4|s1~combout\,
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \add_instance|m4|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[1]~1_combout\);

-- Location: LC_X11_Y8_N9
\add_instance|m4|l1|m1|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C~0_combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(5) $ (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C~0_combout\);

-- Location: LC_X11_Y8_N2
\add_instance|fa3|fa1|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa6|cout~0_combout\ = ((\add_instance|m4|l1|m1|C~0_combout\ & ((\add_instance|fa2|fa1|fa6|s~combout\))) # (!\add_instance|m4|l1|m1|C~0_combout\ & (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|m4|l1|m1|C~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa2|fa1|fa6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa6|cout~0_combout\);

-- Location: LC_X9_Y8_N6
\add_instance|fa3|fa1|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa7|s~combout\ = \add_instance|fa2|fa1|fa7|s~combout\ $ (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[1]~1_combout\ $ (\add_instance|fa3|fa1|fa6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa1|fa7|s~combout\,
	datab => \input_vector~combout\(7),
	datac => \add_instance|m4|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa3|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa7|s~combout\);

-- Location: LC_X9_Y8_N5
\add_instance|fa3|fa1|fa7|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa1|fa7|cout~0_combout\ = (\add_instance|fa2|fa1|fa7|s~combout\ & ((\add_instance|fa3|fa1|fa6|cout~0_combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[1]~1_combout\)))) # (!\add_instance|fa2|fa1|fa7|s~combout\ & 
-- (\add_instance|fa3|fa1|fa6|cout~0_combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa1|fa7|s~combout\,
	datab => \input_vector~combout\(7),
	datac => \add_instance|m4|l1|m1|C[1]~1_combout\,
	datad => \add_instance|fa3|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa1|fa7|cout~0_combout\);

-- Location: LC_X9_Y8_N9
\add_instance|m4|l1|m1|C[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[2]~2_combout\ = (\add_instance|m4|s2~0_combout\ & (\add_instance|m4|s1~combout\ & (\input_vector~combout\(10)))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m4|s1~combout\,
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(9),
	datad => \add_instance|m4|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[2]~2_combout\);

-- Location: LC_X9_Y9_N8
\add_instance|m3|l1|m1|C[4]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[4]~4_combout\ = (\add_instance|m3|s2~0_combout\ & (((\add_instance|m3|s1~combout\ & \input_vector~combout\(12))))) # (!\add_instance|m3|s2~0_combout\ & (\input_vector~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(12),
	datad => \add_instance|m3|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[4]~4_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|fa0|binv[8]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|binv[8]~1_combout\ = ((\input_vector~combout\(15) & (\input_vector~combout\(0) & !\input_vector~combout\(1))) # (!\input_vector~combout\(15) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|binv[8]~1_combout\);

-- Location: LC_X12_Y9_N9
\add_instance|fa0|fa2|fa0|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa0|s~combout\ = \add_instance|fa0|binv[8]~1_combout\ $ (((\add_instance|fa0|binv\(7) & (\add_instance|fa0|fa1|fa5|cout~0_combout\ & \add_instance|fa0|binv\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|binv[8]~1_combout\,
	datab => \add_instance|fa0|binv\(7),
	datac => \add_instance|fa0|fa1|fa5|cout~0_combout\,
	datad => \add_instance|fa0|binv\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa0|s~combout\);

-- Location: LC_X10_Y9_N6
\add_instance|fa1|fa1|fa7|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa1|fa7|cout~0_combout\ = (\add_instance|fa0|fa1|fa7|s~combout\ & ((\add_instance|fa1|fa1|fa6|cout~0_combout\) # (\add_instance|m2|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(3))))) # (!\add_instance|fa0|fa1|fa7|s~combout\ & 
-- (\add_instance|fa1|fa1|fa6|cout~0_combout\ & (\add_instance|m2|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[5]~5_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa0|fa1|fa7|s~combout\,
	datad => \add_instance|fa1|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa1|fa7|cout~0_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|m2|l1|m1|C[6]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[6]~6_combout\ = (\add_instance|m2|s2~0_combout\ & (((\input_vector~combout\(14) & \add_instance|m2|s1~combout\)))) # (!\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(14),
	datac => \add_instance|m2|s1~combout\,
	datad => \add_instance|m2|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[6]~6_combout\);

-- Location: LC_X10_Y9_N9
\add_instance|fa1|fa2|fa0|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa0|s~combout\ = \add_instance|fa0|fa2|fa0|s~combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa1|fa1|fa7|cout~0_combout\ $ (\add_instance|m2|l1|m1|C[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|fa2|fa0|s~combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa1|fa7|cout~0_combout\,
	datad => \add_instance|m2|l1|m1|C[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa0|s~combout\);

-- Location: LC_X11_Y8_N3
\add_instance|fa2|fa1|fa7|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa1|fa7|cout~0_combout\ = (\add_instance|fa1|fa1|fa7|s~combout\ & ((\add_instance|fa2|fa1|fa6|cout~0_combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[3]~3_combout\)))) # (!\add_instance|fa1|fa1|fa7|s~combout\ & 
-- (\add_instance|fa2|fa1|fa6|cout~0_combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|fa1|fa1|fa7|s~combout\,
	datac => \add_instance|m3|l1|m1|C[3]~3_combout\,
	datad => \add_instance|fa2|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa1|fa7|cout~0_combout\);

-- Location: LC_X11_Y8_N7
\add_instance|fa2|fa2|fa0|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa0|s~combout\ = \input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[4]~4_combout\ $ (\add_instance|fa1|fa2|fa0|s~combout\ $ (\add_instance|fa2|fa1|fa7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|m3|l1|m1|C[4]~4_combout\,
	datac => \add_instance|fa1|fa2|fa0|s~combout\,
	datad => \add_instance|fa2|fa1|fa7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa0|s~combout\);

-- Location: LC_X9_Y8_N4
\add_instance|fa3|fa2|fa0|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa0|s~combout\ = \add_instance|fa3|fa1|fa7|cout~0_combout\ $ (\add_instance|m4|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(7) $ (\add_instance|fa2|fa2|fa0|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa3|fa1|fa7|cout~0_combout\,
	datab => \add_instance|m4|l1|m1|C[2]~2_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa2|fa2|fa0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa0|s~combout\);

-- Location: LC_X11_Y7_N1
\add_instance|m2|l1|m1|C[7]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|m1|C[7]~7_combout\ = (\add_instance|m2|s2~0_combout\ & (((\add_instance|m2|s1~combout\ & \input_vector~combout\(15))))) # (!\add_instance|m2|s2~0_combout\ & (\input_vector~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \add_instance|m2|s2~0_combout\,
	datac => \add_instance|m2|s1~combout\,
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|m1|C[7]~7_combout\);

-- Location: LC_X10_Y9_N5
\add_instance|fa1|fa2|fa0|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa0|cout~0_combout\ = (\add_instance|fa0|fa2|fa0|s~combout\ & ((\add_instance|fa1|fa1|fa7|cout~0_combout\) # (\input_vector~combout\(3) $ (\add_instance|m2|l1|m1|C[6]~6_combout\)))) # (!\add_instance|fa0|fa2|fa0|s~combout\ & 
-- (\add_instance|fa1|fa1|fa7|cout~0_combout\ & (\input_vector~combout\(3) $ (\add_instance|m2|l1|m1|C[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|fa2|fa0|s~combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa1|fa7|cout~0_combout\,
	datad => \add_instance|m2|l1|m1|C[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa0|cout~0_combout\);

-- Location: LC_X12_Y9_N2
\add_instance|fa0|fa2|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa1|s~combout\ = (\add_instance|fa0|binv[8]~1_combout\ & (((!\add_instance|fa0|binv\(6)) # (!\add_instance|fa0|fa1|fa5|cout~0_combout\)) # (!\add_instance|fa0|binv\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|binv[8]~1_combout\,
	datab => \add_instance|fa0|binv\(7),
	datac => \add_instance|fa0|fa1|fa5|cout~0_combout\,
	datad => \add_instance|fa0|binv\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa1|s~combout\);

-- Location: LC_X10_Y9_N3
\add_instance|fa1|fa2|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa1|s~combout\ = \add_instance|m2|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(3) $ (\add_instance|fa1|fa2|fa0|cout~0_combout\ $ (\add_instance|fa0|fa2|fa1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[7]~7_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa0|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa1|s~combout\);

-- Location: LC_X9_Y9_N9
\add_instance|m3|l1|m1|C[5]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[5]~5_combout\ = (\add_instance|m3|s2~0_combout\ & (\add_instance|m3|s1~combout\ & ((\input_vector~combout\(13))))) # (!\add_instance|m3|s2~0_combout\ & (((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[5]~5_combout\);

-- Location: LC_X11_Y8_N4
\add_instance|fa2|fa2|fa0|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa0|cout~0_combout\ = (\add_instance|fa1|fa2|fa0|s~combout\ & ((\add_instance|fa2|fa1|fa7|cout~0_combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[4]~4_combout\)))) # (!\add_instance|fa1|fa2|fa0|s~combout\ & 
-- (\add_instance|fa2|fa1|fa7|cout~0_combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|m1|C[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|m3|l1|m1|C[4]~4_combout\,
	datac => \add_instance|fa1|fa2|fa0|s~combout\,
	datad => \add_instance|fa2|fa1|fa7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa0|cout~0_combout\);

-- Location: LC_X9_Y9_N6
\add_instance|fa2|fa2|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa1|s~combout\ = \add_instance|fa1|fa2|fa1|s~combout\ $ (\add_instance|m3|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(5) $ (\add_instance|fa2|fa2|fa0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa1|fa2|fa1|s~combout\,
	datab => \add_instance|m3|l1|m1|C[5]~5_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa2|fa2|fa0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa1|s~combout\);

-- Location: LC_X9_Y8_N2
\add_instance|m4|l1|m1|C[3]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[3]~3_combout\ = (\add_instance|m4|s2~0_combout\ & (\input_vector~combout\(11) & ((\add_instance|m4|s1~combout\)))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(10),
	datac => \add_instance|m4|s1~combout\,
	datad => \add_instance|m4|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[3]~3_combout\);

-- Location: LC_X9_Y8_N7
\add_instance|fa3|fa2|fa0|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa0|cout~0_combout\ = (\add_instance|fa3|fa1|fa7|cout~0_combout\ & ((\add_instance|fa2|fa2|fa0|s~combout\) # (\add_instance|m4|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(7))))) # (!\add_instance|fa3|fa1|fa7|cout~0_combout\ & 
-- (\add_instance|fa2|fa2|fa0|s~combout\ & (\add_instance|m4|l1|m1|C[2]~2_combout\ $ (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa3|fa1|fa7|cout~0_combout\,
	datab => \add_instance|m4|l1|m1|C[2]~2_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa2|fa2|fa0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa0|cout~0_combout\);

-- Location: LC_X9_Y8_N8
\add_instance|fa3|fa2|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa1|s~combout\ = \add_instance|fa2|fa2|fa1|s~combout\ $ (\add_instance|m4|l1|m1|C[3]~3_combout\ $ (\input_vector~combout\(7) $ (\add_instance|fa3|fa2|fa0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa1|s~combout\,
	datab => \add_instance|m4|l1|m1|C[3]~3_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa3|fa2|fa0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa1|s~combout\);

-- Location: LC_X9_Y8_N1
\add_instance|fa3|fa2|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa1|cout~0_combout\ = (\add_instance|fa2|fa2|fa1|s~combout\ & ((\add_instance|fa3|fa2|fa0|cout~0_combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[3]~3_combout\)))) # (!\add_instance|fa2|fa2|fa1|s~combout\ & 
-- (\add_instance|fa3|fa2|fa0|cout~0_combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa1|s~combout\,
	datab => \add_instance|fa3|fa2|fa0|cout~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|m4|l1|m1|C[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa1|cout~0_combout\);

-- Location: LC_X9_Y8_N3
\add_instance|m4|l1|m1|C[4]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[4]~4_combout\ = (\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(12) & \add_instance|m4|s1~combout\)))) # (!\add_instance|m4|s2~0_combout\ & (\input_vector~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \add_instance|m4|s1~combout\,
	datad => \add_instance|m4|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[4]~4_combout\);

-- Location: LC_X9_Y9_N4
\add_instance|m3|l1|m1|C[6]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[6]~6_combout\ = (\add_instance|m3|s2~0_combout\ & (\add_instance|m3|s1~combout\ & (\input_vector~combout\(14)))) # (!\add_instance|m3|s2~0_combout\ & (((\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[6]~6_combout\);

-- Location: LC_X9_Y9_N2
\add_instance|fa2|fa2|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa1|cout~0_combout\ = (\add_instance|fa1|fa2|fa1|s~combout\ & ((\add_instance|fa2|fa2|fa0|cout~0_combout\) # (\add_instance|m3|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(5))))) # (!\add_instance|fa1|fa2|fa1|s~combout\ & 
-- (\add_instance|fa2|fa2|fa0|cout~0_combout\ & (\add_instance|m3|l1|m1|C[5]~5_combout\ $ (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa1|fa2|fa1|s~combout\,
	datab => \add_instance|m3|l1|m1|C[5]~5_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa2|fa2|fa0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa1|cout~0_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|m2|l1|ip[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|l1|ip\(7) = (\input_vector~combout\(15) & ((\input_vector~combout\(1) & ((!\input_vector~combout\(2)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(3)) # (\input_vector~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|l1|ip\(7));

-- Location: LC_X10_Y9_N4
\add_instance|fa1|fa2|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa1|cout~0_combout\ = (\add_instance|fa1|fa2|fa0|cout~0_combout\ & ((\add_instance|fa0|fa2|fa1|s~combout\) # (\add_instance|m2|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa2|fa0|cout~0_combout\ & 
-- (\add_instance|fa0|fa2|fa1|s~combout\ & (\add_instance|m2|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|m1|C[7]~7_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa0|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa1|cout~0_combout\);

-- Location: LC_X12_Y9_N3
\add_instance|fa0|fa2|fa2|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa2|s~0_combout\ = ((\add_instance|fa0|binv\(7) & (\add_instance|fa0|binv\(5) & \add_instance|fa0|binv\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa0|binv\(7),
	datac => \add_instance|fa0|binv\(5),
	datad => \add_instance|fa0|binv\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa2|s~0_combout\);

-- Location: LC_X12_Y9_N7
\add_instance|fa0|fa2|fa2|s~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa2|s~1_combout\ = (\add_instance|fa0|binv[8]~1_combout\ & (((!\add_instance|fa0|binv\(4)) # (!\add_instance|fa0|fa2|fa2|s~0_combout\)) # (!\add_instance|fa0|fa1|fa3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|binv[8]~1_combout\,
	datab => \add_instance|fa0|fa1|fa3|cout~0_combout\,
	datac => \add_instance|fa0|fa2|fa2|s~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa2|s~1_combout\);

-- Location: LC_X10_Y9_N8
\add_instance|fa1|fa2|fa2|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa2|s~combout\ = \add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3) $ (\add_instance|fa1|fa2|fa1|cout~0_combout\ $ (\add_instance|fa0|fa2|fa2|s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa1|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa2|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa2|s~combout\);

-- Location: LC_X9_Y9_N7
\add_instance|fa2|fa2|fa2|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa2|s~combout\ = \add_instance|m3|l1|m1|C[6]~6_combout\ $ (\add_instance|fa2|fa2|fa1|cout~0_combout\ $ (\input_vector~combout\(5) $ (\add_instance|fa1|fa2|fa2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[6]~6_combout\,
	datab => \add_instance|fa2|fa2|fa1|cout~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa1|fa2|fa2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa2|s~combout\);

-- Location: LC_X9_Y7_N8
\add_instance|fa3|fa2|fa2|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa2|s~combout\ = \input_vector~combout\(7) $ (\add_instance|fa3|fa2|fa1|cout~0_combout\ $ (\add_instance|m4|l1|m1|C[4]~4_combout\ $ (\add_instance|fa2|fa2|fa2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa3|fa2|fa1|cout~0_combout\,
	datac => \add_instance|m4|l1|m1|C[4]~4_combout\,
	datad => \add_instance|fa2|fa2|fa2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa2|s~combout\);

-- Location: LC_X9_Y9_N5
\add_instance|m3|l1|m1|C[7]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|m1|C[7]~7_combout\ = (\add_instance|m3|s2~0_combout\ & (\add_instance|m3|s1~combout\ & ((\input_vector~combout\(15))))) # (!\add_instance|m3|s2~0_combout\ & (((\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|s2~0_combout\,
	datab => \add_instance|m3|s1~combout\,
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|m1|C[7]~7_combout\);

-- Location: LC_X9_Y9_N1
\add_instance|fa2|fa2|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa2|cout~0_combout\ = (\add_instance|fa2|fa2|fa1|cout~0_combout\ & ((\add_instance|fa1|fa2|fa2|s~combout\) # (\add_instance|m3|l1|m1|C[6]~6_combout\ $ (\input_vector~combout\(5))))) # (!\add_instance|fa2|fa2|fa1|cout~0_combout\ & 
-- (\add_instance|fa1|fa2|fa2|s~combout\ & (\add_instance|m3|l1|m1|C[6]~6_combout\ $ (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[6]~6_combout\,
	datab => \add_instance|fa2|fa2|fa1|cout~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa1|fa2|fa2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa2|cout~0_combout\);

-- Location: LC_X10_Y9_N2
\add_instance|fa1|fa2|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa2|cout~0_combout\ = (\add_instance|fa1|fa2|fa1|cout~0_combout\ & ((\add_instance|fa0|fa2|fa2|s~1_combout\) # (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa2|fa1|cout~0_combout\ & 
-- (\add_instance|fa0|fa2|fa2|s~1_combout\ & (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa1|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa2|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa2|cout~0_combout\);

-- Location: LC_X11_Y10_N5
\add_instance|fa0|fa2|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa6|cout~0_combout\ = ((\add_instance|fa0|binv[2]~0_combout\ & (\add_instance|fa0|binv\(3) & !\add_instance|fa0|fa1|fa1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa0|binv[2]~0_combout\,
	datac => \add_instance|fa0|binv\(3),
	datad => \add_instance|fa0|fa1|fa1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa6|cout~0_combout\);

-- Location: LC_X12_Y9_N0
\add_instance|fa0|fa2|fa3|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa3|s~0_combout\ = (\add_instance|fa0|binv[8]~1_combout\ & (((!\add_instance|fa0|binv\(4)) # (!\add_instance|fa0|fa2|fa2|s~0_combout\)) # (!\add_instance|fa0|fa2|fa6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa0|binv[8]~1_combout\,
	datab => \add_instance|fa0|fa2|fa6|cout~0_combout\,
	datac => \add_instance|fa0|fa2|fa2|s~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa3|s~0_combout\);

-- Location: LC_X10_Y8_N8
\add_instance|fa1|fa2|fa3|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa3|s~combout\ = \add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3) $ (\add_instance|fa1|fa2|fa2|cout~0_combout\ $ (\add_instance|fa0|fa2|fa3|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa2|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa3|s~combout\);

-- Location: LC_X10_Y8_N2
\add_instance|fa2|fa2|fa3|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa3|s~combout\ = \add_instance|m3|l1|m1|C[7]~7_combout\ $ (\add_instance|fa2|fa2|fa2|cout~0_combout\ $ (\input_vector~combout\(5) $ (\add_instance|fa1|fa2|fa3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[7]~7_combout\,
	datab => \add_instance|fa2|fa2|fa2|cout~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa1|fa2|fa3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa3|s~combout\);

-- Location: LC_X9_Y7_N9
\add_instance|fa3|fa2|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa2|cout~0_combout\ = (\add_instance|fa3|fa2|fa1|cout~0_combout\ & ((\add_instance|fa2|fa2|fa2|s~combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[4]~4_combout\)))) # (!\add_instance|fa3|fa2|fa1|cout~0_combout\ & 
-- (\add_instance|fa2|fa2|fa2|s~combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa3|fa2|fa1|cout~0_combout\,
	datac => \add_instance|m4|l1|m1|C[4]~4_combout\,
	datad => \add_instance|fa2|fa2|fa2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa2|cout~0_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|m4|l1|m1|C[5]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[5]~5_combout\ = (\add_instance|m4|s2~0_combout\ & (\add_instance|m4|s1~combout\ & ((\input_vector~combout\(13))))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m4|s1~combout\,
	datab => \input_vector~combout\(12),
	datac => \add_instance|m4|s2~0_combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[5]~5_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|fa3|fa2|fa3|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa3|s~combout\ = \add_instance|fa2|fa2|fa3|s~combout\ $ (\add_instance|fa3|fa2|fa2|cout~0_combout\ $ (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa3|s~combout\,
	datab => \add_instance|fa3|fa2|fa2|cout~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|m4|l1|m1|C[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa3|s~combout\);

-- Location: LC_X9_Y7_N2
\add_instance|fa3|fa2|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa3|cout~0_combout\ = (\add_instance|fa2|fa2|fa3|s~combout\ & ((\add_instance|fa3|fa2|fa2|cout~0_combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[5]~5_combout\)))) # (!\add_instance|fa2|fa2|fa3|s~combout\ & 
-- (\add_instance|fa3|fa2|fa2|cout~0_combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa3|s~combout\,
	datab => \add_instance|fa3|fa2|fa2|cout~0_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|m4|l1|m1|C[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa3|cout~0_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|m4|l1|m1|C[6]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[6]~6_combout\ = (\add_instance|m4|s2~0_combout\ & (\add_instance|m4|s1~combout\ & (\input_vector~combout\(14)))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m4|s1~combout\,
	datab => \input_vector~combout\(14),
	datac => \add_instance|m4|s2~0_combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[6]~6_combout\);

-- Location: LC_X10_Y8_N4
\add_instance|fa2|fa2|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa3|cout~0_combout\ = (\add_instance|fa2|fa2|fa2|cout~0_combout\ & ((\add_instance|fa1|fa2|fa3|s~combout\) # (\add_instance|m3|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(5))))) # (!\add_instance|fa2|fa2|fa2|cout~0_combout\ & 
-- (\add_instance|fa1|fa2|fa3|s~combout\ & (\add_instance|m3|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m3|l1|m1|C[7]~7_combout\,
	datab => \add_instance|fa2|fa2|fa2|cout~0_combout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|fa1|fa2|fa3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa3|cout~0_combout\);

-- Location: LC_X8_Y10_N6
\add_instance|m3|l1|ip[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|l1|ip\(7) = (\input_vector~combout\(15) & ((\input_vector~combout\(5) & ((!\input_vector~combout\(4)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(3)) # (\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|l1|ip\(7));

-- Location: LC_X10_Y8_N6
\add_instance|fa1|fa2|fa4|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa4|s~0_combout\ = (\add_instance|fa1|fa2|fa2|cout~0_combout\ & (\add_instance|fa0|fa2|fa3|s~0_combout\ & (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa2|fa2|cout~0_combout\ & 
-- ((\add_instance|fa0|fa2|fa3|s~0_combout\) # (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa2|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa4|s~0_combout\);

-- Location: LC_X10_Y8_N9
\add_instance|fa2|fa2|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa4|s~combout\ = \add_instance|fa2|fa2|fa3|cout~0_combout\ $ (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7) $ (\add_instance|fa1|fa2|fa4|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa3|cout~0_combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|m3|l1|ip\(7),
	datad => \add_instance|fa1|fa2|fa4|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa4|s~combout\);

-- Location: LC_X9_Y7_N5
\add_instance|fa3|fa2|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa4|s~combout\ = \input_vector~combout\(7) $ (\add_instance|fa3|fa2|fa3|cout~0_combout\ $ (\add_instance|m4|l1|m1|C[6]~6_combout\ $ (\add_instance|fa2|fa2|fa4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa3|fa2|fa3|cout~0_combout\,
	datac => \add_instance|m4|l1|m1|C[6]~6_combout\,
	datad => \add_instance|fa2|fa2|fa4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa4|s~combout\);

-- Location: LC_X9_Y7_N0
\add_instance|fa3|fa2|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa4|cout~0_combout\ = (\add_instance|fa3|fa2|fa3|cout~0_combout\ & ((\add_instance|fa2|fa2|fa4|s~combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[6]~6_combout\)))) # (!\add_instance|fa3|fa2|fa3|cout~0_combout\ & 
-- (\add_instance|fa2|fa2|fa4|s~combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|m1|C[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa3|fa2|fa3|cout~0_combout\,
	datac => \add_instance|m4|l1|m1|C[6]~6_combout\,
	datad => \add_instance|fa2|fa2|fa4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa4|cout~0_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|m4|l1|m1|C[7]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|m1|C[7]~7_combout\ = (\add_instance|m4|s2~0_combout\ & (\add_instance|m4|s1~combout\ & ((\input_vector~combout\(15))))) # (!\add_instance|m4|s2~0_combout\ & (((\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m4|s1~combout\,
	datab => \input_vector~combout\(14),
	datac => \add_instance|m4|s2~0_combout\,
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|m1|C[7]~7_combout\);

-- Location: LC_X10_Y8_N7
\add_instance|fa2|fa2|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa4|cout~0_combout\ = (\add_instance|fa2|fa2|fa3|cout~0_combout\ & ((\add_instance|fa1|fa2|fa4|s~0_combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7))))) # (!\add_instance|fa2|fa2|fa3|cout~0_combout\ & 
-- (\add_instance|fa1|fa2|fa4|s~0_combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|fa2|fa3|cout~0_combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|m3|l1|ip\(7),
	datad => \add_instance|fa1|fa2|fa4|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa4|cout~0_combout\);

-- Location: LC_X10_Y8_N3
\add_instance|fa1|fa2|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa5|s~combout\ = (\add_instance|fa1|fa2|fa2|cout~0_combout\ & (\add_instance|fa0|fa2|fa3|s~0_combout\ & (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa2|fa2|cout~0_combout\ & 
-- ((\add_instance|fa0|fa2|fa3|s~0_combout\) # (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa2|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa5|s~combout\);

-- Location: LC_X10_Y7_N8
\add_instance|fa2|fa2|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa5|s~combout\ = \input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7) $ (\add_instance|fa2|fa2|fa4|cout~0_combout\ $ (\add_instance|fa1|fa2|fa5|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|m3|l1|ip\(7),
	datac => \add_instance|fa2|fa2|fa4|cout~0_combout\,
	datad => \add_instance|fa1|fa2|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa5|s~combout\);

-- Location: LC_X10_Y7_N5
\add_instance|fa3|fa2|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa5|s~combout\ = \add_instance|fa3|fa2|fa4|cout~0_combout\ $ (\add_instance|m4|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(7) $ (\add_instance|fa2|fa2|fa5|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa3|fa2|fa4|cout~0_combout\,
	datab => \add_instance|m4|l1|m1|C[7]~7_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa2|fa2|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa5|s~combout\);

-- Location: LC_X10_Y7_N7
\add_instance|fa2|fa2|fa6|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa6|s~0_combout\ = (\add_instance|fa2|fa2|fa4|cout~0_combout\ & (\add_instance|fa1|fa2|fa5|s~combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7))))) # (!\add_instance|fa2|fa2|fa4|cout~0_combout\ & 
-- ((\add_instance|fa1|fa2|fa5|s~combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|m3|l1|ip\(7),
	datac => \add_instance|fa2|fa2|fa4|cout~0_combout\,
	datad => \add_instance|fa1|fa2|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa6|s~0_combout\);

-- Location: LC_X10_Y7_N4
\add_instance|m4|l1|ip[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|l1|ip\(7) = (\input_vector~combout\(15) & ((\input_vector~combout\(5) & ((!\input_vector~combout\(7)) # (!\input_vector~combout\(6)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(6)) # (\input_vector~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|l1|ip\(7));

-- Location: LC_X10_Y7_N9
\add_instance|fa3|fa2|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa5|cout~0_combout\ = (\add_instance|fa3|fa2|fa4|cout~0_combout\ & ((\add_instance|fa2|fa2|fa5|s~combout\) # (\add_instance|m4|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(7))))) # (!\add_instance|fa3|fa2|fa4|cout~0_combout\ & 
-- (\add_instance|fa2|fa2|fa5|s~combout\ & (\add_instance|m4|l1|m1|C[7]~7_combout\ $ (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa3|fa2|fa4|cout~0_combout\,
	datab => \add_instance|m4|l1|m1|C[7]~7_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|fa2|fa2|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa5|cout~0_combout\);

-- Location: LC_X10_Y7_N3
\add_instance|fa3|fa2|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa6|s~combout\ = \input_vector~combout\(7) $ (\add_instance|fa2|fa2|fa6|s~0_combout\ $ (\add_instance|m4|l1|ip\(7) $ (\add_instance|fa3|fa2|fa5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa2|fa2|fa6|s~0_combout\,
	datac => \add_instance|m4|l1|ip\(7),
	datad => \add_instance|fa3|fa2|fa5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa6|s~combout\);

-- Location: LC_X10_Y8_N1
\add_instance|fa1|fa2|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|fa2|fa4|cout~0_combout\ = (\add_instance|fa1|fa2|fa2|cout~0_combout\ & ((\add_instance|fa0|fa2|fa3|s~0_combout\) # (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3))))) # (!\add_instance|fa1|fa2|fa2|cout~0_combout\ & 
-- (\add_instance|fa0|fa2|fa3|s~0_combout\ & (\add_instance|m2|l1|ip\(7) $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \input_vector~combout\(3),
	datac => \add_instance|fa1|fa2|fa2|cout~0_combout\,
	datad => \add_instance|fa0|fa2|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|fa2|fa4|cout~0_combout\);

-- Location: LC_X10_Y8_N0
\add_instance|fa2|fa2|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|fa2|fa6|cout~0_combout\ = (\add_instance|fa1|fa2|fa5|s~combout\ & ((\add_instance|fa2|fa2|fa4|cout~0_combout\) # (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7))))) # (!\add_instance|fa1|fa2|fa5|s~combout\ & 
-- (\add_instance|fa2|fa2|fa4|cout~0_combout\ & (\input_vector~combout\(5) $ (\add_instance|m3|l1|ip\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa1|fa2|fa5|s~combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|fa2|fa2|fa4|cout~0_combout\,
	datad => \add_instance|m3|l1|ip\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|fa2|fa6|cout~0_combout\);

-- Location: LC_X10_Y8_N5
\add_instance|fa3|fa2|fa7|s~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa7|s~1_combout\ = \add_instance|m2|l1|ip\(7) $ (\add_instance|m3|l1|ip\(7) $ (\input_vector~combout\(5) $ (\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m2|l1|ip\(7),
	datab => \add_instance|m3|l1|ip\(7),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa7|s~1_combout\);

-- Location: LC_X10_Y7_N0
\add_instance|fa3|fa2|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa6|cout~0_combout\ = (\add_instance|fa2|fa2|fa6|s~0_combout\ & ((\add_instance|fa3|fa2|fa5|cout~0_combout\) # (\input_vector~combout\(7) $ (\add_instance|m4|l1|ip\(7))))) # (!\add_instance|fa2|fa2|fa6|s~0_combout\ & 
-- (\add_instance|fa3|fa2|fa5|cout~0_combout\ & (\input_vector~combout\(7) $ (\add_instance|m4|l1|ip\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|fa2|fa2|fa6|s~0_combout\,
	datac => \add_instance|m4|l1|ip\(7),
	datad => \add_instance|fa3|fa2|fa5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa6|cout~0_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|fa3|fa2|fa7|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa7|s~0_combout\ = (\input_vector~combout\(7) & (((\input_vector~combout\(5) & \input_vector~combout\(6))) # (!\input_vector~combout\(15)))) # (!\input_vector~combout\(7) & (\input_vector~combout\(15) & ((\input_vector~combout\(5)) # 
-- (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa7|s~0_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|fa3|fa2|fa7|s~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa7|s~2_combout\ = \add_instance|fa3|fa2|fa7|s~1_combout\ $ (\add_instance|fa3|fa2|fa6|cout~0_combout\ $ (\add_instance|fa0|binv[8]~1_combout\ $ (\add_instance|fa3|fa2|fa7|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa3|fa2|fa7|s~1_combout\,
	datab => \add_instance|fa3|fa2|fa6|cout~0_combout\,
	datac => \add_instance|fa0|binv[8]~1_combout\,
	datad => \add_instance|fa3|fa2|fa7|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa7|s~2_combout\);

-- Location: LC_X12_Y9_N6
\add_instance|fa0|fa2|fa6|cout~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa0|fa2|fa6|cout~1_combout\ = (\add_instance|fa0|binv[8]~1_combout\ & (\add_instance|fa0|fa2|fa6|cout~0_combout\ & (\add_instance|fa0|fa2|fa2|s~0_combout\ & \add_instance|fa0|binv\(4))))

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
	dataa => \add_instance|fa0|binv[8]~1_combout\,
	datab => \add_instance|fa0|fa2|fa6|cout~0_combout\,
	datac => \add_instance|fa0|fa2|fa2|s~0_combout\,
	datad => \add_instance|fa0|binv\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa0|fa2|fa6|cout~1_combout\);

-- Location: LC_X10_Y9_N1
\add_instance|fa3|fa2|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|fa2|fa7|s~combout\ = \add_instance|fa1|fa2|fa4|cout~0_combout\ $ (\add_instance|fa2|fa2|fa6|cout~0_combout\ $ (\add_instance|fa3|fa2|fa7|s~2_combout\ $ (\add_instance|fa0|fa2|fa6|cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa1|fa2|fa4|cout~0_combout\,
	datab => \add_instance|fa2|fa2|fa6|cout~0_combout\,
	datac => \add_instance|fa3|fa2|fa7|s~2_combout\,
	datad => \add_instance|fa0|fa2|fa6|cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|fa2|fa7|s~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa1|fa0|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa0|fa1|fa1|s~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa1|fa1|fa2|ALT_INV_s~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa2|fa1|fa3|ALT_INV_s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa2|fa1|fa4|s~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa1|fa5|s~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa1|fa6|s~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa1|fa7|s~combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa0|s~combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa1|s~combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa2|s~combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa3|s~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa4|s~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa5|s~combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa6|s~combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|fa3|fa2|fa7|s~combout\,
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


