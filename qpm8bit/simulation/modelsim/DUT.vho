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

-- DATE "04/20/2019 23:18:11"

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
SIGNAL \add_instance|infb~0_combout\ : std_logic;
SIGNAL \add_instance|zero~0_combout\ : std_logic;
SIGNAL \add_instance|zero2~0_combout\ : std_logic;
SIGNAL \add_instance|infa~0_combout\ : std_logic;
SIGNAL \add_instance|zero~1_combout\ : std_logic;
SIGNAL \add_instance|nana~0_combout\ : std_logic;
SIGNAL \add_instance|infb~combout\ : std_logic;
SIGNAL \add_instance|sel1~0_combout\ : std_logic;
SIGNAL \add_instance|nanb~0_combout\ : std_logic;
SIGNAL \add_instance|sel1~1_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m1|l1|m1|C[2]~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|s2~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|l1|m1|C~1_combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|l1|m1|C[3]~2_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|l1|m1|C[2]~3_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa3|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|l1|m1|C[1]~4_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa2|s~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa3|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m2|l1|m1|C[4]~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa2|fa0|s~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa7|s~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~1_combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~3_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~4_combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~5_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa4|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa5|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|m3|l1|m1|C~2_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa6|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa7|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa2|fa0|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa2|fa0|cout~0_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa2|fa1|s~0_combout\ : std_logic;
SIGNAL \add_instance|mux02|C~12_combout\ : std_logic;
SIGNAL \add_instance|infa~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~3_combout\ : std_logic;
SIGNAL \add_instance|mux02|C~2_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa0|fa1|fa1|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~4_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa2|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~5_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa1|fa1|fa3|s~0_combout\ : std_logic;
SIGNAL \add_instance|mux02|C~6_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa4|s~0_combout\ : std_logic;
SIGNAL \add_instance|mux02|C~7_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa5|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~8_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa6|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~9_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa1|fa7|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~10_combout\ : std_logic;
SIGNAL \add_instance|mul1|fa2|fa2|fa0|s~combout\ : std_logic;
SIGNAL \add_instance|mux02|C~11_combout\ : std_logic;
SIGNAL \add_instance|muxex|C[4]~5_combout\ : std_logic;
SIGNAL \add_instance|f1|fa0|s~0_combout\ : std_logic;
SIGNAL \add_instance|f1|fa1|s~0_combout\ : std_logic;
SIGNAL \add_instance|f2|fa1|s~2_combout\ : std_logic;
SIGNAL \add_instance|f1|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|f1|fa2|s~0_combout\ : std_logic;
SIGNAL \add_instance|f2|fa1|cout~0_combout\ : std_logic;
SIGNAL \add_instance|f1|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|f2|fa2|cout~0_combout\ : std_logic;
SIGNAL \add_instance|muxex|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|C\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|muxex|C\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \add_instance|mul1|fa0|binv\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X15_Y8_N4
\add_instance|infb~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|infb~0_combout\ = (!\input_vector~combout\(0) & (!\input_vector~combout\(3) & (!\input_vector~combout\(2) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|infb~0_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X12_Y8_N0
\add_instance|zero~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero~0_combout\ = (\input_vector~combout\(12)) # (((\input_vector~combout\(14)) # (\input_vector~combout\(13))))

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
	dataa => \input_vector~combout\(12),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero~0_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X12_Y8_N4
\add_instance|zero2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero2~0_combout\ = (\input_vector~combout\(5)) # ((\input_vector~combout\(6)) # ((\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero2~0_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X15_Y10_N9
\add_instance|infa~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|infa~0_combout\ = (!\input_vector~combout\(10) & (!\input_vector~combout\(8) & (!\input_vector~combout\(11) & !\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|infa~0_combout\);

-- Location: LC_X12_Y8_N8
\add_instance|zero~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero~1_combout\ = (\add_instance|infb~0_combout\ & (\add_instance|zero2~0_combout\ & ((\add_instance|zero~0_combout\) # (!\add_instance|infa~0_combout\)))) # (!\add_instance|infb~0_combout\ & ((\add_instance|zero~0_combout\) # 
-- ((!\add_instance|infa~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|infb~0_combout\,
	datab => \add_instance|zero~0_combout\,
	datac => \add_instance|zero2~0_combout\,
	datad => \add_instance|infa~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero~1_combout\);

-- Location: LC_X12_Y8_N7
\add_instance|nana~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|nana~0_combout\ = (\input_vector~combout\(12) & (((\input_vector~combout\(14) & \input_vector~combout\(13)))))

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
	dataa => \input_vector~combout\(12),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nana~0_combout\);

-- Location: LC_X12_Y8_N5
\add_instance|infb\ : maxv_lcell
-- Equation(s):
-- \add_instance|infb~combout\ = (\input_vector~combout\(5) & (\input_vector~combout\(6) & (\input_vector~combout\(4) & \add_instance|infb~0_combout\)))

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
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(4),
	datad => \add_instance|infb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|infb~combout\);

-- Location: LC_X12_Y8_N6
\add_instance|sel1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|sel1~0_combout\ = (\add_instance|nana~0_combout\ & (\add_instance|infa~0_combout\ & ((\add_instance|zero~1_combout\) # (\add_instance|infb~combout\)))) # (!\add_instance|nana~0_combout\ & (\add_instance|zero~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero~1_combout\,
	datab => \add_instance|nana~0_combout\,
	datac => \add_instance|infb~combout\,
	datad => \add_instance|infa~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sel1~0_combout\);

-- Location: LC_X12_Y8_N1
\add_instance|nanb~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|nanb~0_combout\ = (\input_vector~combout\(5) & (\input_vector~combout\(6) & (\input_vector~combout\(4))))

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
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nanb~0_combout\);

-- Location: LC_X12_Y8_N2
\add_instance|sel1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|sel1~1_combout\ = (\add_instance|sel1~0_combout\ & (\add_instance|nanb~0_combout\ & ((!\add_instance|infb~0_combout\)))) # (!\add_instance|sel1~0_combout\ & ((\add_instance|nanb~0_combout\) # ((\add_instance|nana~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|sel1~0_combout\,
	datab => \add_instance|nanb~0_combout\,
	datac => \add_instance|nana~0_combout\,
	datad => \add_instance|infb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sel1~1_combout\);

-- Location: LC_X15_Y10_N2
\add_instance|mul1|fa0|fa1|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\ = (!\input_vector~combout\(8) & (\input_vector~combout\(1) & ((!\input_vector~combout\(0)) # (!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\);

-- Location: LC_X15_Y10_N6
\add_instance|mul1|m1|l1|m1|C[2]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m1|l1|m1|C[2]~0_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(10))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(1) & \input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m1|l1|m1|C[2]~0_combout\);

-- Location: LC_X15_Y10_N8
\add_instance|mul1|fa0|binv[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|binv\(3) = (\input_vector~combout\(0) & ((\input_vector~combout\(11) $ (\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(10) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|binv\(3));

-- Location: LC_X15_Y10_N1
\add_instance|mul1|fa0|fa1|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\ = ((\add_instance|mul1|fa0|fa1|fa1|cout~0_combout\ & (!\add_instance|mul1|m1|l1|m1|C[2]~0_combout\ & \add_instance|mul1|fa0|binv\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\,
	datac => \add_instance|mul1|m1|l1|m1|C[2]~0_combout\,
	datad => \add_instance|mul1|fa0|binv\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\);

-- Location: LC_X15_Y10_N5
\add_instance|mul1|fa0|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa5|s~combout\ = (\input_vector~combout\(0) & ((\add_instance|mul1|fa0|fa1|fa3|cout~0_combout\) # ((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|mul1|fa0|fa1|fa3|cout~0_combout\ & 
-- (!\input_vector~combout\(11) & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa5|s~combout\);

-- Location: LC_X15_Y8_N0
\add_instance|mul1|m2|s2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|s2~0_combout\ = ((\input_vector~combout\(3) & ((\input_vector~combout\(2)) # (\input_vector~combout\(1)))) # (!\input_vector~combout\(3) & ((!\input_vector~combout\(1)) # (!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|s2~0_combout\);

-- Location: LC_X15_Y8_N1
\add_instance|mul1|m2|l1|m1|C~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|l1|m1|C~1_combout\ = ((\input_vector~combout\(2) $ (\input_vector~combout\(1))))

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
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|l1|m1|C~1_combout\);

-- Location: LC_X14_Y8_N2
\add_instance|mul1|m2|l1|m1|C[3]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|l1|m1|C[3]~2_combout\ = (\add_instance|mul1|m2|s2~0_combout\ & (\input_vector~combout\(11) & ((\add_instance|mul1|m2|l1|m1|C~1_combout\)))) # (!\add_instance|mul1|m2|s2~0_combout\ & ((\input_vector~combout\(10)) # 
-- ((\input_vector~combout\(11) & \add_instance|mul1|m2|l1|m1|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m2|s2~0_combout\,
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(10),
	datad => \add_instance|mul1|m2|l1|m1|C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|l1|m1|C[3]~2_combout\);

-- Location: LC_X15_Y10_N4
\add_instance|mul1|fa0|fa1|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa4|s~combout\ = \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\ $ (((\input_vector~combout\(0) & ((!\input_vector~combout\(1)))) # (!\input_vector~combout\(0) & (!\input_vector~combout\(11) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|mul1|fa0|fa1|fa3|cout~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa4|s~combout\);

-- Location: LC_X14_Y8_N1
\add_instance|mul1|m2|l1|m1|C[2]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|l1|m1|C[2]~3_combout\ = (\add_instance|mul1|m2|s2~0_combout\ & (((\input_vector~combout\(10) & \add_instance|mul1|m2|l1|m1|C~1_combout\)))) # (!\add_instance|mul1|m2|s2~0_combout\ & ((\input_vector~combout\(9)) # 
-- ((\input_vector~combout\(10) & \add_instance|mul1|m2|l1|m1|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m2|s2~0_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(10),
	datad => \add_instance|mul1|m2|l1|m1|C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|l1|m1|C[2]~3_combout\);

-- Location: LC_X15_Y10_N7
\add_instance|mul1|fa0|fa1|fa3|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa3|s~combout\ = (\add_instance|mul1|fa0|binv\(3) $ (((\add_instance|mul1|m1|l1|m1|C[2]~0_combout\) # (!\add_instance|mul1|fa0|fa1|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\,
	datac => \add_instance|mul1|m1|l1|m1|C[2]~0_combout\,
	datad => \add_instance|mul1|fa0|binv\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa3|s~combout\);

-- Location: LC_X14_Y8_N7
\add_instance|mul1|m2|l1|m1|C[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|l1|m1|C[1]~4_combout\ = (\add_instance|mul1|m2|l1|m1|C~1_combout\ & ((\input_vector~combout\(9)) # ((!\add_instance|mul1|m2|s2~0_combout\ & \input_vector~combout\(8))))) # (!\add_instance|mul1|m2|l1|m1|C~1_combout\ & 
-- (((!\add_instance|mul1|m2|s2~0_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m2|l1|m1|C~1_combout\,
	datab => \input_vector~combout\(9),
	datac => \add_instance|mul1|m2|s2~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|l1|m1|C[1]~4_combout\);

-- Location: LC_X15_Y10_N3
\add_instance|mul1|fa0|fa1|fa2|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa2|s~0_combout\ = (\add_instance|mul1|fa0|fa1|fa1|cout~0_combout\ $ (\add_instance|mul1|m1|l1|m1|C[2]~0_combout\ $ (!\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mul1|fa0|fa1|fa1|cout~0_combout\,
	datac => \add_instance|mul1|m1|l1|m1|C[2]~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa2|s~0_combout\);

-- Location: LC_X14_Y8_N0
\add_instance|mul1|fa1|fa1|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa2|cout~0_combout\ = (\add_instance|mul1|m2|l1|m1|C~1_combout\ & ((\input_vector~combout\(8) & ((!\add_instance|mul1|fa0|fa1|fa2|s~0_combout\))) # (!\input_vector~combout\(8) & (\input_vector~combout\(3))))) # 
-- (!\add_instance|mul1|m2|l1|m1|C~1_combout\ & (\input_vector~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m2|l1|m1|C~1_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa0|fa1|fa2|s~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa2|cout~0_combout\);

-- Location: LC_X14_Y8_N6
\add_instance|mul1|fa1|fa1|fa3|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa3|cout~0_combout\ = (\add_instance|mul1|fa0|fa1|fa3|s~combout\ & (\add_instance|mul1|fa1|fa1|fa2|cout~0_combout\ & (\add_instance|mul1|m2|l1|m1|C[1]~4_combout\ $ (\input_vector~combout\(3))))) # 
-- (!\add_instance|mul1|fa0|fa1|fa3|s~combout\ & ((\add_instance|mul1|fa1|fa1|fa2|cout~0_combout\) # (\add_instance|mul1|m2|l1|m1|C[1]~4_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "71d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa0|fa1|fa3|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[1]~4_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa2|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa3|cout~0_combout\);

-- Location: LC_X14_Y8_N4
\add_instance|mul1|fa1|fa1|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa4|cout~0_combout\ = (\add_instance|mul1|fa0|fa1|fa4|s~combout\ & ((\add_instance|mul1|fa1|fa1|fa3|cout~0_combout\) # (\add_instance|mul1|m2|l1|m1|C[2]~3_combout\ $ (\input_vector~combout\(3))))) # 
-- (!\add_instance|mul1|fa0|fa1|fa4|s~combout\ & (\add_instance|mul1|fa1|fa1|fa3|cout~0_combout\ & (\add_instance|mul1|m2|l1|m1|C[2]~3_combout\ $ (\input_vector~combout\(3)))))

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
	dataa => \add_instance|mul1|fa0|fa1|fa4|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[2]~3_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa3|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa4|cout~0_combout\);

-- Location: LC_X14_Y8_N5
\add_instance|mul1|fa1|fa1|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\ = (\add_instance|mul1|fa0|fa1|fa5|s~combout\ & ((\add_instance|mul1|fa1|fa1|fa4|cout~0_combout\) # (\add_instance|mul1|m2|l1|m1|C[3]~2_combout\ $ (\input_vector~combout\(3))))) # 
-- (!\add_instance|mul1|fa0|fa1|fa5|s~combout\ & (\add_instance|mul1|fa1|fa1|fa4|cout~0_combout\ & (\add_instance|mul1|m2|l1|m1|C[3]~2_combout\ $ (\input_vector~combout\(3)))))

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
	dataa => \add_instance|mul1|fa0|fa1|fa5|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[3]~2_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa4|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\);

-- Location: LC_X15_Y8_N7
\add_instance|mul1|m2|l1|m1|C[4]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m2|l1|m1|C[4]~0_combout\ = (\input_vector~combout\(2) & (((!\input_vector~combout\(3) & \input_vector~combout\(11))) # (!\input_vector~combout\(1)))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(1)) # 
-- ((\input_vector~combout\(3) & \input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m2|l1|m1|C[4]~0_combout\);

-- Location: LC_X15_Y8_N5
\add_instance|mul1|fa1|fa1|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\ = (\add_instance|mul1|fa1|fa1|fa5|cout~0_combout\ & ((\input_vector~combout\(1)) # (\input_vector~combout\(3) $ (\add_instance|mul1|m2|l1|m1|C[4]~0_combout\)))) # 
-- (!\add_instance|mul1|fa1|fa1|fa5|cout~0_combout\ & (\input_vector~combout\(1) & (\input_vector~combout\(3) $ (\add_instance|mul1|m2|l1|m1|C[4]~0_combout\))))

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
	dataa => \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|m2|l1|m1|C[4]~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\);

-- Location: LC_X13_Y9_N9
\add_instance|mul1|fa1|fa2|fa0|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa2|fa0|s~0_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(3) & ((\input_vector~combout\(1)) # (!\add_instance|mul1|fa1|fa1|fa6|cout~0_combout\)))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(3)) # 
-- ((!\add_instance|mul1|fa1|fa1|fa6|cout~0_combout\ & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa2|fa0|s~0_combout\);

-- Location: LC_X13_Y9_N3
\add_instance|mul1|fa1|fa1|fa7|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa7|s~0_combout\ = \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\ $ (((\input_vector~combout\(2) & ((\input_vector~combout\(1)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(3)) # 
-- (!\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e87",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa7|s~0_combout\);

-- Location: LC_X13_Y9_N8
\add_instance|mul1|m3|l1|m1|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~0_combout\ = ((!\input_vector~combout\(3) & (\input_vector~combout\(11))))

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
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~0_combout\);

-- Location: LC_X13_Y9_N6
\add_instance|mul1|m3|l1|m1|C~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~1_combout\ = ((\input_vector~combout\(10) & (\input_vector~combout\(3))))

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
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~1_combout\);

-- Location: LC_X15_Y8_N8
\add_instance|mul1|m3|l1|m1|C~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~3_combout\ = (((\input_vector~combout\(9) & \input_vector~combout\(3))))

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
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~3_combout\);

-- Location: LC_X15_Y8_N9
\add_instance|mul1|fa1|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa6|s~combout\ = \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\ $ (\input_vector~combout\(3) $ (\add_instance|mul1|m2|l1|m1|C[4]~0_combout\ $ (\input_vector~combout\(1))))

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
	dataa => \add_instance|mul1|fa1|fa1|fa5|cout~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|m2|l1|m1|C[4]~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa6|s~combout\);

-- Location: LC_X13_Y7_N3
\add_instance|mul1|m3|l1|m1|C~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~4_combout\ = (((\input_vector~combout\(9) & !\input_vector~combout\(3))))

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
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~4_combout\);

-- Location: LC_X13_Y7_N9
\add_instance|mul1|m3|l1|m1|C~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~5_combout\ = (\input_vector~combout\(3) & (((\input_vector~combout\(8)))))

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
	dataa => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~5_combout\);

-- Location: LC_X14_Y8_N3
\add_instance|mul1|fa1|fa1|fa4|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa4|s~combout\ = \add_instance|mul1|fa0|fa1|fa4|s~combout\ $ (\add_instance|mul1|m2|l1|m1|C[2]~3_combout\ $ (\add_instance|mul1|fa1|fa1|fa3|cout~0_combout\ $ (\input_vector~combout\(3))))

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
	dataa => \add_instance|mul1|fa0|fa1|fa4|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[2]~3_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa3|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa4|s~combout\);

-- Location: LC_X13_Y7_N5
\add_instance|mul1|fa2|fa1|fa4|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\ = (!\input_vector~combout\(3) & (((\add_instance|mul1|fa1|fa1|fa4|s~combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa1|fa1|fa4|s~combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\);

-- Location: LC_X14_Y8_N9
\add_instance|mul1|fa1|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa5|s~combout\ = \add_instance|mul1|fa0|fa1|fa5|s~combout\ $ (\add_instance|mul1|m2|l1|m1|C[3]~2_combout\ $ (\add_instance|mul1|fa1|fa1|fa4|cout~0_combout\ $ (\input_vector~combout\(3))))

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
	dataa => \add_instance|mul1|fa0|fa1|fa5|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[3]~2_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa4|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa5|s~combout\);

-- Location: LC_X13_Y7_N7
\add_instance|mul1|fa2|fa1|fa5|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa5|cout~0_combout\ = (\add_instance|mul1|fa2|fa1|fa4|cout~0_combout\ & ((\add_instance|mul1|m3|l1|m1|C~4_combout\) # ((\add_instance|mul1|m3|l1|m1|C~5_combout\) # (\add_instance|mul1|fa1|fa1|fa5|s~combout\)))) # 
-- (!\add_instance|mul1|fa2|fa1|fa4|cout~0_combout\ & (\add_instance|mul1|fa1|fa1|fa5|s~combout\ & ((\add_instance|mul1|m3|l1|m1|C~4_combout\) # (\add_instance|mul1|m3|l1|m1|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m3|l1|m1|C~4_combout\,
	datab => \add_instance|mul1|m3|l1|m1|C~5_combout\,
	datac => \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\,
	datad => \add_instance|mul1|fa1|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa5|cout~0_combout\);

-- Location: LC_X15_Y8_N3
\add_instance|mul1|m3|l1|m1|C~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|m3|l1|m1|C~2_combout\ = ((\input_vector~combout\(10) & ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(10),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|m3|l1|m1|C~2_combout\);

-- Location: LC_X15_Y8_N6
\add_instance|mul1|fa2|fa1|fa6|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa6|cout~0_combout\ = (\add_instance|mul1|fa1|fa1|fa6|s~combout\ & ((\add_instance|mul1|m3|l1|m1|C~3_combout\) # ((\add_instance|mul1|fa2|fa1|fa5|cout~0_combout\) # (\add_instance|mul1|m3|l1|m1|C~2_combout\)))) # 
-- (!\add_instance|mul1|fa1|fa1|fa6|s~combout\ & (\add_instance|mul1|fa2|fa1|fa5|cout~0_combout\ & ((\add_instance|mul1|m3|l1|m1|C~3_combout\) # (\add_instance|mul1|m3|l1|m1|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m3|l1|m1|C~3_combout\,
	datab => \add_instance|mul1|fa1|fa1|fa6|s~combout\,
	datac => \add_instance|mul1|fa2|fa1|fa5|cout~0_combout\,
	datad => \add_instance|mul1|m3|l1|m1|C~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa6|cout~0_combout\);

-- Location: LC_X13_Y9_N1
\add_instance|mul1|fa2|fa1|fa7|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa7|cout~0_combout\ = (\add_instance|mul1|fa1|fa1|fa7|s~0_combout\ & (\add_instance|mul1|fa2|fa1|fa6|cout~0_combout\ & ((\add_instance|mul1|m3|l1|m1|C~0_combout\) # (\add_instance|mul1|m3|l1|m1|C~1_combout\)))) # 
-- (!\add_instance|mul1|fa1|fa1|fa7|s~0_combout\ & ((\add_instance|mul1|m3|l1|m1|C~0_combout\) # ((\add_instance|mul1|m3|l1|m1|C~1_combout\) # (\add_instance|mul1|fa2|fa1|fa6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa1|fa1|fa7|s~0_combout\,
	datab => \add_instance|mul1|m3|l1|m1|C~0_combout\,
	datac => \add_instance|mul1|m3|l1|m1|C~1_combout\,
	datad => \add_instance|mul1|fa2|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa7|cout~0_combout\);

-- Location: LC_X13_Y9_N0
\add_instance|mul1|fa2|fa2|fa0|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa2|fa0|cout~0_combout\ = (\add_instance|mul1|fa1|fa2|fa0|s~0_combout\ & ((\input_vector~combout\(11)) # ((\add_instance|mul1|fa2|fa1|fa7|cout~0_combout\) # (!\input_vector~combout\(3))))) # 
-- (!\add_instance|mul1|fa1|fa2|fa0|s~0_combout\ & (\add_instance|mul1|fa2|fa1|fa7|cout~0_combout\ & ((\input_vector~combout\(11)) # (!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|mul1|fa1|fa2|fa0|s~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|mul1|fa2|fa1|fa7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa2|fa0|cout~0_combout\);

-- Location: LC_X13_Y9_N4
\add_instance|mul1|fa1|fa2|fa0|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa2|fa0|cout~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(3) & \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(1) & 
-- ((\input_vector~combout\(3)) # (\add_instance|mul1|fa1|fa1|fa6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa1|fa1|fa6|cout~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa2|fa0|cout~0_combout\);

-- Location: LC_X13_Y9_N5
\add_instance|mul1|fa2|fa2|fa1|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa2|fa1|s~0_combout\ = (\add_instance|mul1|fa2|fa2|fa0|cout~0_combout\ $ (\add_instance|mul1|fa1|fa2|fa0|cout~0_combout\ $ (\input_vector~combout\(1))))

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
	datab => \add_instance|mul1|fa2|fa2|fa0|cout~0_combout\,
	datac => \add_instance|mul1|fa1|fa2|fa0|cout~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\);

-- Location: LC_X13_Y10_N2
\add_instance|mux02|C~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~12_combout\ = (\input_vector~combout\(0) & (!\add_instance|sel1~1_combout\ & (\input_vector~combout\(8) & \add_instance|mul1|fa2|fa2|fa1|s~0_combout\)))

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
	dataa => \input_vector~combout\(0),
	datab => \add_instance|sel1~1_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~12_combout\);

-- Location: LC_X12_Y8_N3
\add_instance|infa\ : maxv_lcell
-- Equation(s):
-- \add_instance|infa~combout\ = (\input_vector~combout\(12) & (\input_vector~combout\(13) & (\input_vector~combout\(14) & \add_instance|infa~0_combout\)))

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
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(14),
	datad => \add_instance|infa~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|infa~combout\);

-- Location: LC_X12_Y9_N2
\add_instance|mux02|C~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~3_combout\ = (!\add_instance|sel1~1_combout\ & (!\add_instance|infa~combout\ & (\add_instance|zero~1_combout\ & !\add_instance|infb~combout\)))

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
	dataa => \add_instance|sel1~1_combout\,
	datab => \add_instance|infa~combout\,
	datac => \add_instance|zero~1_combout\,
	datad => \add_instance|infb~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~3_combout\);

-- Location: LC_X13_Y10_N6
\add_instance|mux02|C~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~2_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(8)))))

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
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~2_combout\);

-- Location: LC_X13_Y10_N3
\add_instance|mul1|fa0|fa1|fa1|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa0|fa1|fa1|s~combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(0) $ (((\input_vector~combout\(1) & \input_vector~combout\(8)))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(1) & 
-- ((\input_vector~combout\(8)))))

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
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa0|fa1|fa1|s~combout\);

-- Location: LC_X13_Y10_N8
\add_instance|mux02|C~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~4_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & ((\add_instance|mul1|fa0|fa1|fa1|s~combout\))) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & (\add_instance|mux02|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mux02|C~2_combout\,
	datad => \add_instance|mul1|fa0|fa1|fa1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~4_combout\);

-- Location: LC_X13_Y10_N5
\add_instance|mul1|fa1|fa1|fa2|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa2|s~combout\ = \add_instance|mul1|fa0|fa1|fa2|s~0_combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(1) $ (\input_vector~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c66c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|mul1|fa0|fa1|fa2|s~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa2|s~combout\);

-- Location: LC_X13_Y10_N4
\add_instance|mux02|C~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~5_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & (!\add_instance|mul1|fa1|fa1|fa2|s~combout\)) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- ((\add_instance|mul1|fa0|fa1|fa1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa2|s~combout\,
	datad => \add_instance|mul1|fa0|fa1|fa1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~5_combout\);

-- Location: LC_X14_Y8_N8
\add_instance|mul1|fa1|fa1|fa3|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa1|fa1|fa3|s~0_combout\ = \add_instance|mul1|fa0|fa1|fa3|s~combout\ $ (\add_instance|mul1|m2|l1|m1|C[1]~4_combout\ $ (\add_instance|mul1|fa1|fa1|fa2|cout~0_combout\ $ (\input_vector~combout\(3))))

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
	dataa => \add_instance|mul1|fa0|fa1|fa3|s~combout\,
	datab => \add_instance|mul1|m2|l1|m1|C[1]~4_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa2|cout~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa1|fa1|fa3|s~0_combout\);

-- Location: LC_X13_Y10_N9
\add_instance|mux02|C~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~6_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & ((!\add_instance|mul1|fa1|fa1|fa3|s~0_combout\))) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- (!\add_instance|mul1|fa1|fa1|fa2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "048c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa1|fa1|fa2|s~combout\,
	datad => \add_instance|mul1|fa1|fa1|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~6_combout\);

-- Location: LC_X13_Y7_N0
\add_instance|mul1|fa2|fa1|fa4|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa4|s~0_combout\ = (\add_instance|mul1|fa1|fa1|fa4|s~combout\ $ (((!\input_vector~combout\(3) & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datac => \add_instance|mul1|fa1|fa1|fa4|s~combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa4|s~0_combout\);

-- Location: LC_X13_Y8_N6
\add_instance|mux02|C~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~7_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & (\add_instance|mul1|fa2|fa1|fa4|s~0_combout\)) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- ((!\add_instance|mul1|fa1|fa1|fa3|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "808c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa1|fa4|s~0_combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa1|fa1|fa3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~7_combout\);

-- Location: LC_X13_Y7_N6
\add_instance|mul1|fa2|fa1|fa5|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa5|s~combout\ = \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\ $ (\add_instance|mul1|fa1|fa1|fa5|s~combout\ $ (((\add_instance|mul1|m3|l1|m1|C~4_combout\) # (\add_instance|mul1|m3|l1|m1|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m3|l1|m1|C~4_combout\,
	datab => \add_instance|mul1|m3|l1|m1|C~5_combout\,
	datac => \add_instance|mul1|fa2|fa1|fa4|cout~0_combout\,
	datad => \add_instance|mul1|fa1|fa1|fa5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa5|s~combout\);

-- Location: LC_X13_Y7_N2
\add_instance|mux02|C~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~8_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & (\add_instance|mul1|fa2|fa1|fa5|s~combout\)) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- ((\add_instance|mul1|fa2|fa1|fa4|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa1|fa5|s~combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa2|fa1|fa4|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~8_combout\);

-- Location: LC_X15_Y8_N2
\add_instance|mul1|fa2|fa1|fa6|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa6|s~combout\ = \add_instance|mul1|fa1|fa1|fa6|s~combout\ $ (\add_instance|mul1|fa2|fa1|fa5|cout~0_combout\ $ (((\add_instance|mul1|m3|l1|m1|C~3_combout\) # (\add_instance|mul1|m3|l1|m1|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|m3|l1|m1|C~3_combout\,
	datab => \add_instance|mul1|fa1|fa1|fa6|s~combout\,
	datac => \add_instance|mul1|fa2|fa1|fa5|cout~0_combout\,
	datad => \add_instance|mul1|m3|l1|m1|C~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa6|s~combout\);

-- Location: LC_X13_Y7_N4
\add_instance|mux02|C~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~9_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & ((\add_instance|mul1|fa2|fa1|fa6|s~combout\))) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- (\add_instance|mul1|fa2|fa1|fa5|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa2|fa1|fa5|s~combout\,
	datad => \add_instance|mul1|fa2|fa1|fa6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~9_combout\);

-- Location: LC_X13_Y9_N7
\add_instance|mul1|fa2|fa1|fa7|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa1|fa7|s~combout\ = \add_instance|mul1|fa1|fa1|fa7|s~0_combout\ $ (\add_instance|mul1|fa2|fa1|fa6|cout~0_combout\ $ (((\add_instance|mul1|m3|l1|m1|C~0_combout\) # (\add_instance|mul1|m3|l1|m1|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa1|fa1|fa7|s~0_combout\,
	datab => \add_instance|mul1|m3|l1|m1|C~0_combout\,
	datac => \add_instance|mul1|m3|l1|m1|C~1_combout\,
	datad => \add_instance|mul1|fa2|fa1|fa6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa1|fa7|s~combout\);

-- Location: LC_X13_Y7_N1
\add_instance|mux02|C~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~10_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & (!\add_instance|mul1|fa2|fa1|fa7|s~combout\)) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- ((\add_instance|mul1|fa2|fa1|fa6|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa1|fa7|s~combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa1|fa6|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~10_combout\);

-- Location: LC_X13_Y9_N2
\add_instance|mul1|fa2|fa2|fa0|s\ : maxv_lcell
-- Equation(s):
-- \add_instance|mul1|fa2|fa2|fa0|s~combout\ = \add_instance|mul1|fa1|fa2|fa0|s~0_combout\ $ (\add_instance|mul1|fa2|fa1|fa7|cout~0_combout\ $ (((\input_vector~combout\(11)) # (!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c63",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|mul1|fa1|fa2|fa0|s~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|mul1|fa2|fa1|fa7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mul1|fa2|fa2|fa0|s~combout\);

-- Location: LC_X13_Y7_N8
\add_instance|mux02|C~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux02|C~11_combout\ = (\add_instance|mux02|C~3_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & ((\add_instance|mul1|fa2|fa2|fa0|s~combout\))) # (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\ & 
-- (!\add_instance|mul1|fa2|fa1|fa7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mul1|fa2|fa1|fa7|s~combout\,
	datab => \add_instance|mux02|C~3_combout\,
	datac => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux02|C~11_combout\);

-- Location: LC_X12_Y7_N4
\add_instance|muxex|C[4]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C[4]~5_combout\ = (!\add_instance|nana~0_combout\ & (((!\input_vector~combout\(6)) # (!\input_vector~combout\(4))) # (!\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|nana~0_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C[4]~5_combout\);

-- Location: LC_X11_Y8_N7
\add_instance|f1|fa0|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f1|fa0|s~0_combout\ = ((\input_vector~combout\(12) $ (\input_vector~combout\(4))))

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
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f1|fa0|s~0_combout\);

-- Location: LC_X11_Y8_N8
\add_instance|muxex|C[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C\(0) = ((\add_instance|zero~1_combout\ & (\add_instance|f1|fa0|s~0_combout\ $ (!\add_instance|mul1|fa2|fa2|fa1|s~0_combout\)))) # (!\add_instance|muxex|C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d55d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|muxex|C[4]~5_combout\,
	datab => \add_instance|zero~1_combout\,
	datac => \add_instance|f1|fa0|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C\(0));

-- Location: LC_X11_Y8_N5
\add_instance|f1|fa1|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f1|fa1|s~0_combout\ = \input_vector~combout\(13) $ (\input_vector~combout\(5) $ (((\input_vector~combout\(12) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f1|fa1|s~0_combout\);

-- Location: LC_X11_Y8_N6
\add_instance|f2|fa1|s~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|f2|fa1|s~2_combout\ = \add_instance|f1|fa1|s~0_combout\ $ (((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\) # (\input_vector~combout\(4) $ (\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(12),
	datac => \add_instance|f1|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f2|fa1|s~2_combout\);

-- Location: LC_X11_Y8_N2
\add_instance|muxex|C[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C\(1) = (((\add_instance|f2|fa1|s~2_combout\ & \add_instance|zero~1_combout\))) # (!\add_instance|muxex|C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|muxex|C[4]~5_combout\,
	datac => \add_instance|f2|fa1|s~2_combout\,
	datad => \add_instance|zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C\(1));

-- Location: LC_X12_Y8_N9
\add_instance|f1|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f1|fa1|cout~0_combout\ = (\input_vector~combout\(13) & ((\input_vector~combout\(5)) # ((\input_vector~combout\(4) & \input_vector~combout\(12))))) # (!\input_vector~combout\(13) & (\input_vector~combout\(4) & (\input_vector~combout\(12) & 
-- \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f1|fa1|cout~0_combout\);

-- Location: LC_X12_Y7_N8
\add_instance|f1|fa2|s~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f1|fa2|s~0_combout\ = (\input_vector~combout\(6) $ (\add_instance|f1|fa1|cout~0_combout\ $ (\input_vector~combout\(14))))

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
	datab => \input_vector~combout\(6),
	datac => \add_instance|f1|fa1|cout~0_combout\,
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f1|fa2|s~0_combout\);

-- Location: LC_X11_Y8_N9
\add_instance|f2|fa1|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f2|fa1|cout~0_combout\ = (\add_instance|f1|fa1|s~0_combout\ & ((\add_instance|mul1|fa2|fa2|fa1|s~0_combout\) # (\input_vector~combout\(4) $ (\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(12),
	datac => \add_instance|f1|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f2|fa1|cout~0_combout\);

-- Location: LC_X11_Y8_N3
\add_instance|muxex|C[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C\(2) = ((\add_instance|zero~1_combout\ & (\add_instance|f1|fa2|s~0_combout\ $ (\add_instance|f2|fa1|cout~0_combout\)))) # (!\add_instance|muxex|C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|f1|fa2|s~0_combout\,
	datab => \add_instance|f2|fa1|cout~0_combout\,
	datac => \add_instance|muxex|C[4]~5_combout\,
	datad => \add_instance|zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C\(2));

-- Location: LC_X12_Y7_N5
\add_instance|f1|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f1|fa2|cout~0_combout\ = ((\input_vector~combout\(6) & ((\add_instance|f1|fa1|cout~0_combout\) # (\input_vector~combout\(14)))) # (!\input_vector~combout\(6) & (\add_instance|f1|fa1|cout~0_combout\ & \input_vector~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|f1|fa1|cout~0_combout\,
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f1|fa2|cout~0_combout\);

-- Location: LC_X11_Y8_N0
\add_instance|f2|fa2|cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|f2|fa2|cout~0_combout\ = (\add_instance|f1|fa2|s~0_combout\ & (\add_instance|f1|fa1|s~0_combout\ & ((\add_instance|f1|fa0|s~0_combout\) # (\add_instance|mul1|fa2|fa2|fa1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|f1|fa2|s~0_combout\,
	datab => \add_instance|f1|fa0|s~0_combout\,
	datac => \add_instance|f1|fa1|s~0_combout\,
	datad => \add_instance|mul1|fa2|fa2|fa1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|f2|fa2|cout~0_combout\);

-- Location: LC_X11_Y8_N4
\add_instance|muxex|C[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C\(3) = ((\add_instance|zero~1_combout\ & (\add_instance|f1|fa2|cout~0_combout\ $ (!\add_instance|f2|fa2|cout~0_combout\)))) # (!\add_instance|muxex|C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d755",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|muxex|C[4]~5_combout\,
	datab => \add_instance|f1|fa2|cout~0_combout\,
	datac => \add_instance|f2|fa2|cout~0_combout\,
	datad => \add_instance|zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C\(3));

-- Location: LC_X11_Y8_N1
\add_instance|muxex|C[4]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|muxex|C[4]~4_combout\ = ((\add_instance|zero~1_combout\ & ((\add_instance|f1|fa2|cout~0_combout\) # (\add_instance|f2|fa2|cout~0_combout\)))) # (!\add_instance|muxex|C[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|muxex|C[4]~5_combout\,
	datab => \add_instance|f1|fa2|cout~0_combout\,
	datac => \add_instance|f2|fa2|cout~0_combout\,
	datad => \add_instance|zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|muxex|C[4]~4_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X7_Y10_N2
\add_instance|C[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|C\(15) = (\input_vector~combout\(7) $ (((\input_vector~combout\(15)))))

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
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C\(15));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sel1~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~12_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~4_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~5_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~6_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~7_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~8_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~9_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~10_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux02|C~11_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|muxex|C\(0),
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|muxex|C\(1),
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|muxex|C\(2),
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|muxex|C\(3),
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|muxex|C[4]~4_combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C\(15),
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


