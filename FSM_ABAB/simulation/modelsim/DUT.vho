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

-- DATE "03/17/2019 19:48:38"

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
	input_vector : IN std_logic_vector(2 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|q0~regout\ : std_logic;
SIGNAL \add_instance|q2~0_combout\ : std_logic;
SIGNAL \add_instance|q2~regout\ : std_logic;
SIGNAL \add_instance|q1~0_combout\ : std_logic;
SIGNAL \add_instance|q1~regout\ : std_logic;
SIGNAL \add_instance|Mux3~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

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

-- Location: LC_X12_Y3_N1
\add_instance|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~0_combout\ = (\input_vector~combout\(0) & (((\add_instance|q2~regout\) # (\add_instance|q0~regout\)) # (!\add_instance|q1~regout\))) # (!\input_vector~combout\(0) & (\add_instance|q0~regout\ & (\add_instance|q1~regout\ $ 
-- (!\add_instance|q2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eba2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|q1~regout\,
	datac => \add_instance|q2~regout\,
	datad => \add_instance|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~0_combout\);

-- Location: LC_X12_Y3_N2
\add_instance|q0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q0~regout\ = DFFEAS((((!\input_vector~combout\(1) & \add_instance|Mux2~0_combout\))), GLOBAL(\input_vector~combout\(2)), VCC, , , , , , )

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
	clk => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \add_instance|Mux2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q0~regout\);

-- Location: LC_X12_Y3_N3
\add_instance|q2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q2~0_combout\ = ((\add_instance|q2~regout\ & ((\add_instance|q0~regout\) # (!\add_instance|q1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|q1~regout\,
	datac => \add_instance|q2~regout\,
	datad => \add_instance|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q2~0_combout\);

-- Location: LC_X12_Y3_N4
\add_instance|q2\ : maxv_lcell
-- Equation(s):
-- \add_instance|q2~regout\ = DFFEAS((!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\add_instance|q1~regout\)) # (!\input_vector~combout\(0) & ((\add_instance|q2~0_combout\))))), GLOBAL(\input_vector~combout\(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(2),
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \add_instance|q1~regout\,
	datad => \add_instance|q2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q2~regout\);

-- Location: LC_X12_Y3_N8
\add_instance|q1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|q1~0_combout\ = ((\add_instance|q1~regout\ & ((\add_instance|q0~regout\))))

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
	datab => \add_instance|q1~regout\,
	datad => \add_instance|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|q1~0_combout\);

-- Location: LC_X12_Y3_N9
\add_instance|q1\ : maxv_lcell
-- Equation(s):
-- \add_instance|q1~regout\ = DFFEAS((!\input_vector~combout\(1) & (((\add_instance|q2~regout\ & \add_instance|q1~0_combout\)) # (!\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(2),
	dataa => \add_instance|q2~regout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|q1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|q1~regout\);

-- Location: LC_X12_Y3_N7
\add_instance|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~0_combout\ = (\add_instance|q2~regout\ & ((\add_instance|q1~regout\ & (!\add_instance|q0~regout\ & \input_vector~combout\(0))) # (!\add_instance|q1~regout\ & (\add_instance|q0~regout\ & !\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|q1~regout\,
	datab => \add_instance|q2~regout\,
	datac => \add_instance|q0~regout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~0_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux3~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


