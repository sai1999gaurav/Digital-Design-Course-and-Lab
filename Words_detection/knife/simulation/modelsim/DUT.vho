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

-- DATE "03/20/2019 16:21:00"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : OUT std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|Equal1~0_combout\ : std_logic;
SIGNAL \add_instance|Equal3~0_combout\ : std_logic;
SIGNAL \add_instance|q1~0_combout\ : std_logic;
SIGNAL \add_instance|q1~1_combout\ : std_logic;
SIGNAL \add_instance|q1~regout\ : std_logic;
SIGNAL \add_instance|q2~0_combout\ : std_logic;
SIGNAL \add_instance|q2~regout\ : std_logic;
SIGNAL \add_instance|q0~0_combout\ : std_logic;
SIGNAL \add_instance|q0~1_combout\ : std_logic;
SIGNAL \add_instance|q0~2_combout\ : std_logic;
SIGNAL \add_instance|q0~regout\ : std_logic;
SIGNAL \add_instance|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~1_combout\ : std_logic;
SIGNAL \add_instance|Mux3~2_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X16_Y10_N8
\add_instance|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal1~0_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(0) & (!\input_vector~combout\(4) & \input_vector~combout\(2))))

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
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal1~0_combout\);

-- Location: LC_X15_Y10_N9
\add_instance|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal3~0_combout\ = ((\input_vector~combout\(3)) # ((!\add_instance|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datad => \add_instance|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal3~0_combout\);

-- Location: LC_X15_Y10_N4
\add_instance|q1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q1~0_combout\ = ((\input_vector~combout\(5) & ((\add_instance|q1~regout\))) # (!\input_vector~combout\(5) & (\input_vector~combout\(3) & !\add_instance|q1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(5),
	datad => \add_instance|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q1~0_combout\);

-- Location: LC_X16_Y10_N6
\add_instance|q1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|q1~1_combout\ = (\add_instance|q0~regout\ & (!\add_instance|q2~regout\ & ((\add_instance|Equal1~0_combout\) # (!\add_instance|q1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|q0~regout\,
	datab => \add_instance|q2~regout\,
	datac => \add_instance|Equal1~0_combout\,
	datad => \add_instance|q1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q1~1_combout\);

-- Location: LC_X16_Y10_N7
\add_instance|q1\ : maxv_lcell
-- Equation(s):
-- \add_instance|q1~regout\ = DFFEAS((\add_instance|q1~0_combout\ & (((!\add_instance|q1~regout\ & \add_instance|q1~1_combout\)))) # (!\add_instance|q1~0_combout\ & (\add_instance|q1~regout\ & ((\add_instance|Equal3~0_combout\) # 
-- (!\add_instance|q1~1_combout\)))), GLOBAL(\input_vector~combout\(6)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(6),
	dataa => \add_instance|Equal3~0_combout\,
	datab => \add_instance|q1~0_combout\,
	datac => \add_instance|q1~regout\,
	datad => \add_instance|q1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q1~regout\);

-- Location: LC_X15_Y10_N1
\add_instance|q2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q2~0_combout\ = (((\add_instance|q0~regout\ & \add_instance|q1~regout\)))

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
	datac => \add_instance|q0~regout\,
	datad => \add_instance|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q2~0_combout\);

-- Location: LC_X15_Y10_N2
\add_instance|q2\ : maxv_lcell
-- Equation(s):
-- \add_instance|q2~regout\ = DFFEAS((!\input_vector~combout\(5) & ((\add_instance|q2~regout\) # ((!\add_instance|Equal3~0_combout\ & \add_instance|q2~0_combout\)))), GLOBAL(\input_vector~combout\(6)), VCC, , , , , , )

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
	clk => \input_vector~combout\(6),
	dataa => \add_instance|Equal3~0_combout\,
	datab => \add_instance|q2~regout\,
	datac => \input_vector~combout\(5),
	datad => \add_instance|q2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q2~regout\);

-- Location: LC_X16_Y10_N0
\add_instance|q0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q0~0_combout\ = (!\input_vector~combout\(2) & (\add_instance|Mux3~0_combout\ & (\input_vector~combout\(1) $ (\add_instance|q1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \add_instance|q1~regout\,
	datad => \add_instance|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q0~0_combout\);

-- Location: LC_X16_Y10_N1
\add_instance|q0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|q0~1_combout\ = (\add_instance|q0~regout\ & ((\input_vector~combout\(3) & (!\add_instance|q1~regout\ & !\add_instance|q0~0_combout\)) # (!\input_vector~combout\(3) & (\add_instance|q1~regout\)))) # (!\add_instance|q0~regout\ & 
-- (\input_vector~combout\(3) & ((\add_instance|q0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|q0~regout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|q1~regout\,
	datad => \add_instance|q0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q0~1_combout\);

-- Location: LC_X16_Y10_N2
\add_instance|q0~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|q0~2_combout\ = (\add_instance|q0~regout\ & ((\add_instance|q2~regout\) # ((!\add_instance|q0~1_combout\) # (!\add_instance|Equal1~0_combout\)))) # (!\add_instance|q0~regout\ & (!\add_instance|q2~regout\ & ((\add_instance|q0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9baa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|q0~regout\,
	datab => \add_instance|q2~regout\,
	datac => \add_instance|Equal1~0_combout\,
	datad => \add_instance|q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q0~2_combout\);

-- Location: LC_X16_Y10_N3
\add_instance|q0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q0~regout\ = DFFEAS((!\input_vector~combout\(5) & (((\add_instance|Mux3~2_combout\) # (\add_instance|q0~2_combout\)))), GLOBAL(\input_vector~combout\(6)), VCC, , , , , , )

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
	clk => \input_vector~combout\(6),
	dataa => \input_vector~combout\(5),
	datac => \add_instance|Mux3~2_combout\,
	datad => \add_instance|q0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q0~regout\);

-- Location: LC_X16_Y10_N9
\add_instance|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~0_combout\ = ((\input_vector~combout\(0) & (!\input_vector~combout\(4) & !\add_instance|q0~regout\)))

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
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \add_instance|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~0_combout\);

-- Location: LC_X16_Y10_N4
\add_instance|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~1_combout\ = (!\input_vector~combout\(3) & (\input_vector~combout\(2) & (!\add_instance|q1~regout\ & \add_instance|q2~regout\)))

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
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(2),
	datac => \add_instance|q1~regout\,
	datad => \add_instance|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~1_combout\);

-- Location: LC_X16_Y10_N5
\add_instance|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~2_combout\ = (!\input_vector~combout\(1) & (\add_instance|Mux3~0_combout\ & ((\add_instance|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|Mux3~0_combout\,
	datad => \add_instance|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~2_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux3~2_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


