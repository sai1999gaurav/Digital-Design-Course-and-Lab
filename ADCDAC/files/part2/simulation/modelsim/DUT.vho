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

-- DATE "05/02/2019 12:03:17"

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
	ADC_out : IN std_logic_vector(7 DOWNTO 0);
	DAC_in : OUT std_logic_vector(7 DOWNTO 0);
	INTR : IN std_logic;
	CS : OUT std_logic;
	WR : OUT std_logic;
	RD : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic
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
SIGNAL ww_ADC_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DAC_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INTR : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \fadc|C~regout\ : std_logic;
SIGNAL \fadc|W~regout\ : std_logic;
SIGNAL \fadc|R~regout\ : std_logic;
SIGNAL \f|Add6~48\ : std_logic;
SIGNAL \f|Add6~53\ : std_logic;
SIGNAL \f|Add6~58\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \INTR~combout\ : std_logic;
SIGNAL \fadc|fsm_state~16_combout\ : std_logic;
SIGNAL \fadc|fsm_state~12_combout\ : std_logic;
SIGNAL \fadc|Add0~155_combout\ : std_logic;
SIGNAL \fadc|Add0~157\ : std_logic;
SIGNAL \fadc|Add0~150_combout\ : std_logic;
SIGNAL \fadc|Add0~152\ : std_logic;
SIGNAL \fadc|Add0~152COUT1_161\ : std_logic;
SIGNAL \fadc|Add0~145_combout\ : std_logic;
SIGNAL \fadc|Add0~147\ : std_logic;
SIGNAL \fadc|Add0~147COUT1_162\ : std_logic;
SIGNAL \fadc|Add0~140_combout\ : std_logic;
SIGNAL \fadc|Add0~142\ : std_logic;
SIGNAL \fadc|Add0~142COUT1_163\ : std_logic;
SIGNAL \fadc|Add0~130_combout\ : std_logic;
SIGNAL \fadc|Add0~132\ : std_logic;
SIGNAL \fadc|Add0~132COUT1_164\ : std_logic;
SIGNAL \fadc|Add0~135_combout\ : std_logic;
SIGNAL \fadc|Add0~137\ : std_logic;
SIGNAL \fadc|Add0~125_combout\ : std_logic;
SIGNAL \fadc|Add0~127\ : std_logic;
SIGNAL \fadc|Add0~127COUT1_165\ : std_logic;
SIGNAL \fadc|Add0~120_combout\ : std_logic;
SIGNAL \fadc|Add0~122\ : std_logic;
SIGNAL \fadc|Add0~122COUT1_166\ : std_logic;
SIGNAL \fadc|Add0~115_combout\ : std_logic;
SIGNAL \fadc|Add0~117\ : std_logic;
SIGNAL \fadc|Add0~117COUT1_167\ : std_logic;
SIGNAL \fadc|Add0~85_combout\ : std_logic;
SIGNAL \fadc|Add0~87\ : std_logic;
SIGNAL \fadc|Add0~87COUT1_168\ : std_logic;
SIGNAL \fadc|Add0~100_combout\ : std_logic;
SIGNAL \fadc|Add0~102\ : std_logic;
SIGNAL \fadc|Add0~95_combout\ : std_logic;
SIGNAL \fadc|Add0~97\ : std_logic;
SIGNAL \fadc|Add0~97COUT1_169\ : std_logic;
SIGNAL \fadc|Add0~110_combout\ : std_logic;
SIGNAL \fadc|Add0~112\ : std_logic;
SIGNAL \fadc|Add0~112COUT1_170\ : std_logic;
SIGNAL \fadc|Add0~105_combout\ : std_logic;
SIGNAL \fadc|Add0~107\ : std_logic;
SIGNAL \fadc|Add0~107COUT1_171\ : std_logic;
SIGNAL \fadc|Add0~0_combout\ : std_logic;
SIGNAL \fadc|Add0~2\ : std_logic;
SIGNAL \fadc|Add0~2COUT1_172\ : std_logic;
SIGNAL \fadc|Add0~90_combout\ : std_logic;
SIGNAL \fadc|LessThan1~5_combout\ : std_logic;
SIGNAL \fadc|LessThan1~6_combout\ : std_logic;
SIGNAL \fadc|fsm_state~13_combout\ : std_logic;
SIGNAL \fadc|fsm_state~14_combout\ : std_logic;
SIGNAL \fadc|Add0~92\ : std_logic;
SIGNAL \fadc|Add0~80_combout\ : std_logic;
SIGNAL \fadc|Add0~82\ : std_logic;
SIGNAL \fadc|Add0~82COUT1_173\ : std_logic;
SIGNAL \fadc|Add0~75_combout\ : std_logic;
SIGNAL \fadc|Add0~77\ : std_logic;
SIGNAL \fadc|Add0~77COUT1_174\ : std_logic;
SIGNAL \fadc|Add0~70_combout\ : std_logic;
SIGNAL \fadc|Add0~72\ : std_logic;
SIGNAL \fadc|Add0~72COUT1_175\ : std_logic;
SIGNAL \fadc|Add0~65_combout\ : std_logic;
SIGNAL \fadc|Add0~67\ : std_logic;
SIGNAL \fadc|Add0~67COUT1_176\ : std_logic;
SIGNAL \fadc|Add0~60_combout\ : std_logic;
SIGNAL \fadc|Add0~62\ : std_logic;
SIGNAL \fadc|Add0~55_combout\ : std_logic;
SIGNAL \fadc|Add0~57\ : std_logic;
SIGNAL \fadc|Add0~57COUT1_177\ : std_logic;
SIGNAL \fadc|Add0~50_combout\ : std_logic;
SIGNAL \fadc|Add0~52\ : std_logic;
SIGNAL \fadc|Add0~52COUT1_178\ : std_logic;
SIGNAL \fadc|Add0~45_combout\ : std_logic;
SIGNAL \fadc|LessThan1~2_combout\ : std_logic;
SIGNAL \fadc|LessThan1~3_combout\ : std_logic;
SIGNAL \fadc|Add0~47\ : std_logic;
SIGNAL \fadc|Add0~47COUT1_179\ : std_logic;
SIGNAL \fadc|Add0~40_combout\ : std_logic;
SIGNAL \fadc|Add0~42\ : std_logic;
SIGNAL \fadc|Add0~42COUT1_180\ : std_logic;
SIGNAL \fadc|Add0~35_combout\ : std_logic;
SIGNAL \fadc|Add0~37\ : std_logic;
SIGNAL \fadc|Add0~30_combout\ : std_logic;
SIGNAL \fadc|Add0~32\ : std_logic;
SIGNAL \fadc|Add0~32COUT1_181\ : std_logic;
SIGNAL \fadc|Add0~25_combout\ : std_logic;
SIGNAL \fadc|Add0~27\ : std_logic;
SIGNAL \fadc|Add0~27COUT1_182\ : std_logic;
SIGNAL \fadc|Add0~20_combout\ : std_logic;
SIGNAL \fadc|Add0~22\ : std_logic;
SIGNAL \fadc|Add0~22COUT1_183\ : std_logic;
SIGNAL \fadc|Add0~15_combout\ : std_logic;
SIGNAL \fadc|Add0~17\ : std_logic;
SIGNAL \fadc|Add0~17COUT1_184\ : std_logic;
SIGNAL \fadc|Add0~10_combout\ : std_logic;
SIGNAL \fadc|Add0~12\ : std_logic;
SIGNAL \fadc|Add0~5_combout\ : std_logic;
SIGNAL \fadc|LessThan1~0_combout\ : std_logic;
SIGNAL \fadc|LessThan1~1_combout\ : std_logic;
SIGNAL \fadc|LessThan1~4_combout\ : std_logic;
SIGNAL \fadc|fsm_state~15_combout\ : std_logic;
SIGNAL \fadc|fsm_state~19_combout\ : std_logic;
SIGNAL \fadc|fsm_state.s8~regout\ : std_logic;
SIGNAL \fadc|WideOr7~0_combout\ : std_logic;
SIGNAL \fadc|Selector47~0_combout\ : std_logic;
SIGNAL \fadc|Add1~2_combout\ : std_logic;
SIGNAL \fadc|Selector49~0_combout\ : std_logic;
SIGNAL \fadc|Add1~0_combout\ : std_logic;
SIGNAL \fadc|Selector50~4_combout\ : std_logic;
SIGNAL \fadc|fsm_state.s3~regout\ : std_logic;
SIGNAL \fadc|cs~0_combout\ : std_logic;
SIGNAL \fadc|fsm_state~17_combout\ : std_logic;
SIGNAL \fadc|fsm_state~18_combout\ : std_logic;
SIGNAL \fadc|fsm_state.s1~regout\ : std_logic;
SIGNAL \fadc|fsm_state.s2~regout\ : std_logic;
SIGNAL \fadc|next_count~0_combout\ : std_logic;
SIGNAL \fadc|Add1~1_combout\ : std_logic;
SIGNAL \fadc|Selector51~2_combout\ : std_logic;
SIGNAL \fadc|LessThan0~0_combout\ : std_logic;
SIGNAL \fadc|fsm_state.s4~regout\ : std_logic;
SIGNAL \fadc|fsm_state.s5~regout\ : std_logic;
SIGNAL \fadc|fsm_state.s6~regout\ : std_logic;
SIGNAL \fadc|fsm_state.s7~regout\ : std_logic;
SIGNAL \f|fsm_state~regout\ : std_logic;
SIGNAL \f|r3[4]~0_combout\ : std_logic;
SIGNAL \f|Add5~42\ : std_logic;
SIGNAL \f|Add5~42COUT1_46\ : std_logic;
SIGNAL \f|Add5~37\ : std_logic;
SIGNAL \f|Add5~37COUT1_47\ : std_logic;
SIGNAL \f|Add5~32\ : std_logic;
SIGNAL \f|Add5~32COUT1_48\ : std_logic;
SIGNAL \f|Add5~0_combout\ : std_logic;
SIGNAL \f|Add3~42\ : std_logic;
SIGNAL \f|Add3~42COUT1_46\ : std_logic;
SIGNAL \f|Add3~37\ : std_logic;
SIGNAL \f|Add3~37COUT1_47\ : std_logic;
SIGNAL \f|Add3~32\ : std_logic;
SIGNAL \f|Add3~32COUT1_48\ : std_logic;
SIGNAL \f|Add3~0_combout\ : std_logic;
SIGNAL \f|Add3~30_combout\ : std_logic;
SIGNAL \f|Add5~30_combout\ : std_logic;
SIGNAL \f|Add3~35_combout\ : std_logic;
SIGNAL \f|Add5~35_combout\ : std_logic;
SIGNAL \f|Add5~40_combout\ : std_logic;
SIGNAL \f|Add3~40_combout\ : std_logic;
SIGNAL \f|Add4~47\ : std_logic;
SIGNAL \f|Add4~47COUT1_51\ : std_logic;
SIGNAL \f|Add4~42\ : std_logic;
SIGNAL \f|Add4~42COUT1_52\ : std_logic;
SIGNAL \f|Add4~37\ : std_logic;
SIGNAL \f|Add4~37COUT1_53\ : std_logic;
SIGNAL \f|Add4~0_combout\ : std_logic;
SIGNAL \f|Add1~42\ : std_logic;
SIGNAL \f|Add1~42COUT1_46\ : std_logic;
SIGNAL \f|Add1~37\ : std_logic;
SIGNAL \f|Add1~37COUT1_47\ : std_logic;
SIGNAL \f|Add1~32\ : std_logic;
SIGNAL \f|Add1~32COUT1_48\ : std_logic;
SIGNAL \f|Add1~0_combout\ : std_logic;
SIGNAL \f|Add0~42\ : std_logic;
SIGNAL \f|Add0~42COUT1_46\ : std_logic;
SIGNAL \f|Add0~37\ : std_logic;
SIGNAL \f|Add0~37COUT1_47\ : std_logic;
SIGNAL \f|Add0~32\ : std_logic;
SIGNAL \f|Add0~32COUT1_48\ : std_logic;
SIGNAL \f|Add0~0_combout\ : std_logic;
SIGNAL \f|Add1~30_combout\ : std_logic;
SIGNAL \f|Add0~30_combout\ : std_logic;
SIGNAL \f|Add1~35_combout\ : std_logic;
SIGNAL \f|Add0~35_combout\ : std_logic;
SIGNAL \f|Add0~40_combout\ : std_logic;
SIGNAL \f|Add1~40_combout\ : std_logic;
SIGNAL \f|Add2~47\ : std_logic;
SIGNAL \f|Add2~47COUT1_51\ : std_logic;
SIGNAL \f|Add2~42\ : std_logic;
SIGNAL \f|Add2~42COUT1_52\ : std_logic;
SIGNAL \f|Add2~37\ : std_logic;
SIGNAL \f|Add2~37COUT1_53\ : std_logic;
SIGNAL \f|Add2~0_combout\ : std_logic;
SIGNAL \f|Add4~35_combout\ : std_logic;
SIGNAL \f|Add2~35_combout\ : std_logic;
SIGNAL \f|Add4~40_combout\ : std_logic;
SIGNAL \f|Add2~40_combout\ : std_logic;
SIGNAL \f|Add2~45_combout\ : std_logic;
SIGNAL \f|Add4~45_combout\ : std_logic;
SIGNAL \f|Add6~60_cout0\ : std_logic;
SIGNAL \f|Add6~60COUT1_64\ : std_logic;
SIGNAL \f|Add6~55_cout0\ : std_logic;
SIGNAL \f|Add6~55COUT1_65\ : std_logic;
SIGNAL \f|Add6~50_cout0\ : std_logic;
SIGNAL \f|Add6~50COUT1_66\ : std_logic;
SIGNAL \f|Add6~0_combout\ : std_logic;
SIGNAL \f|Add6~5_combout\ : std_logic;
SIGNAL \f|Add3~2\ : std_logic;
SIGNAL \f|Add3~2COUT1_49\ : std_logic;
SIGNAL \f|Add3~5_combout\ : std_logic;
SIGNAL \f|Add5~2\ : std_logic;
SIGNAL \f|Add5~2COUT1_49\ : std_logic;
SIGNAL \f|Add5~5_combout\ : std_logic;
SIGNAL \f|Add4~2\ : std_logic;
SIGNAL \f|Add4~2COUT1_54\ : std_logic;
SIGNAL \f|Add4~5_combout\ : std_logic;
SIGNAL \f|Add0~2\ : std_logic;
SIGNAL \f|Add0~2COUT1_49\ : std_logic;
SIGNAL \f|Add0~5_combout\ : std_logic;
SIGNAL \f|Add1~2\ : std_logic;
SIGNAL \f|Add1~2COUT1_49\ : std_logic;
SIGNAL \f|Add1~5_combout\ : std_logic;
SIGNAL \f|Add2~2\ : std_logic;
SIGNAL \f|Add2~2COUT1_54\ : std_logic;
SIGNAL \f|Add2~5_combout\ : std_logic;
SIGNAL \f|Add6~2\ : std_logic;
SIGNAL \f|Add6~2COUT1_67\ : std_logic;
SIGNAL \f|Add6~6_combout\ : std_logic;
SIGNAL \f|Add6~11_combout\ : std_logic;
SIGNAL \f|Add3~7\ : std_logic;
SIGNAL \f|Add3~10_combout\ : std_logic;
SIGNAL \f|Add5~7\ : std_logic;
SIGNAL \f|Add5~10_combout\ : std_logic;
SIGNAL \f|Add4~7\ : std_logic;
SIGNAL \f|Add4~10_combout\ : std_logic;
SIGNAL \f|Add1~7\ : std_logic;
SIGNAL \f|Add1~10_combout\ : std_logic;
SIGNAL \f|Add0~7\ : std_logic;
SIGNAL \f|Add0~10_combout\ : std_logic;
SIGNAL \f|Add2~7\ : std_logic;
SIGNAL \f|Add2~10_combout\ : std_logic;
SIGNAL \f|Add6~8\ : std_logic;
SIGNAL \f|Add6~12_combout\ : std_logic;
SIGNAL \f|Add6~17_combout\ : std_logic;
SIGNAL \f|Add0~12\ : std_logic;
SIGNAL \f|Add0~12COUT1_50\ : std_logic;
SIGNAL \f|Add0~15_combout\ : std_logic;
SIGNAL \f|Add1~12\ : std_logic;
SIGNAL \f|Add1~12COUT1_50\ : std_logic;
SIGNAL \f|Add1~15_combout\ : std_logic;
SIGNAL \f|Add2~12\ : std_logic;
SIGNAL \f|Add2~12COUT1_55\ : std_logic;
SIGNAL \f|Add2~15_combout\ : std_logic;
SIGNAL \f|Add5~12\ : std_logic;
SIGNAL \f|Add5~12COUT1_50\ : std_logic;
SIGNAL \f|Add5~15_combout\ : std_logic;
SIGNAL \f|Add3~12\ : std_logic;
SIGNAL \f|Add3~12COUT1_50\ : std_logic;
SIGNAL \f|Add3~15_combout\ : std_logic;
SIGNAL \f|Add4~12\ : std_logic;
SIGNAL \f|Add4~12COUT1_55\ : std_logic;
SIGNAL \f|Add4~15_combout\ : std_logic;
SIGNAL \f|Add6~14\ : std_logic;
SIGNAL \f|Add6~14COUT1_68\ : std_logic;
SIGNAL \f|Add6~18_combout\ : std_logic;
SIGNAL \f|Add6~23_combout\ : std_logic;
SIGNAL \f|Add0~17\ : std_logic;
SIGNAL \f|Add0~17COUT1_51\ : std_logic;
SIGNAL \f|Add0~20_combout\ : std_logic;
SIGNAL \f|Add1~17\ : std_logic;
SIGNAL \f|Add1~17COUT1_51\ : std_logic;
SIGNAL \f|Add1~20_combout\ : std_logic;
SIGNAL \f|Add2~17\ : std_logic;
SIGNAL \f|Add2~17COUT1_56\ : std_logic;
SIGNAL \f|Add2~20_combout\ : std_logic;
SIGNAL \f|Add5~17\ : std_logic;
SIGNAL \f|Add5~17COUT1_51\ : std_logic;
SIGNAL \f|Add5~20_combout\ : std_logic;
SIGNAL \f|Add3~17\ : std_logic;
SIGNAL \f|Add3~17COUT1_51\ : std_logic;
SIGNAL \f|Add3~20_combout\ : std_logic;
SIGNAL \f|Add4~17\ : std_logic;
SIGNAL \f|Add4~17COUT1_56\ : std_logic;
SIGNAL \f|Add4~20_combout\ : std_logic;
SIGNAL \f|Add6~20\ : std_logic;
SIGNAL \f|Add6~20COUT1_69\ : std_logic;
SIGNAL \f|Add6~24_combout\ : std_logic;
SIGNAL \f|Add6~29_combout\ : std_logic;
SIGNAL \f|Add3~22\ : std_logic;
SIGNAL \f|Add3~22COUT1_52\ : std_logic;
SIGNAL \f|Add3~25_combout\ : std_logic;
SIGNAL \f|Add5~22\ : std_logic;
SIGNAL \f|Add5~22COUT1_52\ : std_logic;
SIGNAL \f|Add5~25_combout\ : std_logic;
SIGNAL \f|Add4~22\ : std_logic;
SIGNAL \f|Add4~22COUT1_57\ : std_logic;
SIGNAL \f|Add4~25_combout\ : std_logic;
SIGNAL \f|Add1~22\ : std_logic;
SIGNAL \f|Add1~22COUT1_52\ : std_logic;
SIGNAL \f|Add1~25_combout\ : std_logic;
SIGNAL \f|Add0~22\ : std_logic;
SIGNAL \f|Add0~22COUT1_52\ : std_logic;
SIGNAL \f|Add0~25_combout\ : std_logic;
SIGNAL \f|Add2~22\ : std_logic;
SIGNAL \f|Add2~22COUT1_57\ : std_logic;
SIGNAL \f|Add2~25_combout\ : std_logic;
SIGNAL \f|Add6~26\ : std_logic;
SIGNAL \f|Add6~26COUT1_70\ : std_logic;
SIGNAL \f|Add6~30_combout\ : std_logic;
SIGNAL \f|Add6~35_combout\ : std_logic;
SIGNAL \f|Add4~27\ : std_logic;
SIGNAL \f|Add4~27COUT1_58\ : std_logic;
SIGNAL \f|Add4~30_combout\ : std_logic;
SIGNAL \f|Add2~27\ : std_logic;
SIGNAL \f|Add2~27COUT1_58\ : std_logic;
SIGNAL \f|Add2~30_combout\ : std_logic;
SIGNAL \f|Add6~32\ : std_logic;
SIGNAL \f|Add6~32COUT1_71\ : std_logic;
SIGNAL \f|Add6~36_combout\ : std_logic;
SIGNAL \f|Add6~41_combout\ : std_logic;
SIGNAL \f|Add6~38\ : std_logic;
SIGNAL \f|Add6~42_combout\ : std_logic;
SIGNAL \f|Add6~47_combout\ : std_logic;
SIGNAL \fadc|cs~2_combout\ : std_logic;
SIGNAL \fadc|cs~1_combout\ : std_logic;
SIGNAL \fadc|cs~3\ : std_logic;
SIGNAL \fadc|cs~regout\ : std_logic;
SIGNAL \fadc|wr~1\ : std_logic;
SIGNAL \fadc|wr~0\ : std_logic;
SIGNAL \fadc|wr~regout\ : std_logic;
SIGNAL \fadc|rd~1\ : std_logic;
SIGNAL \fadc|rd~0\ : std_logic;
SIGNAL \fadc|rd~regout\ : std_logic;
SIGNAL \fadc|next_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fadc|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fadc|Count2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \f|r2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADC_out~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f|r3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r6\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f|r5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_ADC_out <= ADC_out;
DAC_in <= ww_DAC_in;
ww_INTR <= INTR;
CS <= ww_CS;
WR <= ww_WR;
RD <= ww_RD;
ww_clk <= clk;
ww_reset <= reset;
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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(3),
	combout => \ADC_out~combout\(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INTR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INTR,
	combout => \INTR~combout\);

-- Location: LC_X7_Y4_N3
\fadc|fsm_state~16\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~16_combout\ = (((!\INTR~combout\ & \fadc|fsm_state.s5~regout\)))

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
	datac => \INTR~combout\,
	datad => \fadc|fsm_state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~16_combout\);

-- Location: LC_X9_Y4_N6
\fadc|fsm_state~12\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~12_combout\ = ((!\reset~combout\ & ((\fadc|Count\(3)) # (\fadc|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|Count\(3),
	datab => \fadc|Count\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~12_combout\);

-- Location: LC_X5_Y7_N4
\fadc|Add0~155\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~155_combout\ = ((!\fadc|Count2\(0)))
-- \fadc|Add0~157\ = CARRY(((\fadc|Count2\(0))))

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
	datab => \fadc|Count2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~155_combout\,
	cout => \fadc|Add0~157\);

-- Location: LC_X5_Y7_N2
\fadc|Count2[0]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(0) = DFFEAS((((\fadc|Add0~155_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~155_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(0));

-- Location: LC_X5_Y7_N5
\fadc|Add0~150\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~150_combout\ = (\fadc|Count2\(1) $ ((\fadc|Add0~157\)))
-- \fadc|Add0~152\ = CARRY(((!\fadc|Add0~157\) # (!\fadc|Count2\(1))))
-- \fadc|Add0~152COUT1_161\ = CARRY(((!\fadc|Add0~157\) # (!\fadc|Count2\(1))))

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
	datab => \fadc|Count2\(1),
	cin => \fadc|Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~150_combout\,
	cout0 => \fadc|Add0~152\,
	cout1 => \fadc|Add0~152COUT1_161\);

-- Location: LC_X4_Y7_N2
\fadc|Count2[1]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(1) = DFFEAS(((\fadc|Add0~150_combout\ & ((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|Add0~150_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(1));

-- Location: LC_X5_Y7_N6
\fadc|Add0~145\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~145_combout\ = (\fadc|Count2\(2) $ ((!(!\fadc|Add0~157\ & \fadc|Add0~152\) # (\fadc|Add0~157\ & \fadc|Add0~152COUT1_161\))))
-- \fadc|Add0~147\ = CARRY(((\fadc|Count2\(2) & !\fadc|Add0~152\)))
-- \fadc|Add0~147COUT1_162\ = CARRY(((\fadc|Count2\(2) & !\fadc|Add0~152COUT1_161\)))

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
	datab => \fadc|Count2\(2),
	cin => \fadc|Add0~157\,
	cin0 => \fadc|Add0~152\,
	cin1 => \fadc|Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~145_combout\,
	cout0 => \fadc|Add0~147\,
	cout1 => \fadc|Add0~147COUT1_162\);

-- Location: LC_X4_Y7_N6
\fadc|Count2[2]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(2) = DFFEAS((((\fadc|Add0~145_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~145_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(2));

-- Location: LC_X5_Y7_N7
\fadc|Add0~140\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~140_combout\ = (\fadc|Count2\(3) $ (((!\fadc|Add0~157\ & \fadc|Add0~147\) # (\fadc|Add0~157\ & \fadc|Add0~147COUT1_162\))))
-- \fadc|Add0~142\ = CARRY(((!\fadc|Add0~147\) # (!\fadc|Count2\(3))))
-- \fadc|Add0~142COUT1_163\ = CARRY(((!\fadc|Add0~147COUT1_162\) # (!\fadc|Count2\(3))))

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
	datab => \fadc|Count2\(3),
	cin => \fadc|Add0~157\,
	cin0 => \fadc|Add0~147\,
	cin1 => \fadc|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~140_combout\,
	cout0 => \fadc|Add0~142\,
	cout1 => \fadc|Add0~142COUT1_163\);

-- Location: LC_X4_Y7_N4
\fadc|Count2[3]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(3) = DFFEAS((\fadc|Add0~140_combout\ & (((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	dataa => \fadc|Add0~140_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(3));

-- Location: LC_X5_Y7_N8
\fadc|Add0~130\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~130_combout\ = (\fadc|Count2\(4) $ ((!(!\fadc|Add0~157\ & \fadc|Add0~142\) # (\fadc|Add0~157\ & \fadc|Add0~142COUT1_163\))))
-- \fadc|Add0~132\ = CARRY(((\fadc|Count2\(4) & !\fadc|Add0~142\)))
-- \fadc|Add0~132COUT1_164\ = CARRY(((\fadc|Count2\(4) & !\fadc|Add0~142COUT1_163\)))

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
	datab => \fadc|Count2\(4),
	cin => \fadc|Add0~157\,
	cin0 => \fadc|Add0~142\,
	cin1 => \fadc|Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~130_combout\,
	cout0 => \fadc|Add0~132\,
	cout1 => \fadc|Add0~132COUT1_164\);

-- Location: LC_X5_Y7_N1
\fadc|Count2[4]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(4) = DFFEAS((\fadc|Add0~130_combout\ & (((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	dataa => \fadc|Add0~130_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(4));

-- Location: LC_X5_Y7_N9
\fadc|Add0~135\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~135_combout\ = (\fadc|Count2\(5) $ (((!\fadc|Add0~157\ & \fadc|Add0~132\) # (\fadc|Add0~157\ & \fadc|Add0~132COUT1_164\))))
-- \fadc|Add0~137\ = CARRY(((!\fadc|Add0~132COUT1_164\) # (!\fadc|Count2\(5))))

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
	datab => \fadc|Count2\(5),
	cin => \fadc|Add0~157\,
	cin0 => \fadc|Add0~132\,
	cin1 => \fadc|Add0~132COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~135_combout\,
	cout => \fadc|Add0~137\);

-- Location: LC_X5_Y7_N0
\fadc|Count2[5]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(5) = DFFEAS(((\fadc|Add0~135_combout\ & ((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|Add0~135_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(5));

-- Location: LC_X6_Y7_N0
\fadc|Add0~125\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~125_combout\ = (\fadc|Count2\(6) $ ((!\fadc|Add0~137\)))
-- \fadc|Add0~127\ = CARRY(((\fadc|Count2\(6) & !\fadc|Add0~137\)))
-- \fadc|Add0~127COUT1_165\ = CARRY(((\fadc|Count2\(6) & !\fadc|Add0~137\)))

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
	datab => \fadc|Count2\(6),
	cin => \fadc|Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~125_combout\,
	cout0 => \fadc|Add0~127\,
	cout1 => \fadc|Add0~127COUT1_165\);

-- Location: LC_X6_Y5_N5
\fadc|Count2[6]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(6) = DFFEAS((((\fadc|Add0~125_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~125_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(6));

-- Location: LC_X6_Y7_N1
\fadc|Add0~120\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~120_combout\ = (\fadc|Count2\(7) $ (((!\fadc|Add0~137\ & \fadc|Add0~127\) # (\fadc|Add0~137\ & \fadc|Add0~127COUT1_165\))))
-- \fadc|Add0~122\ = CARRY(((!\fadc|Add0~127\) # (!\fadc|Count2\(7))))
-- \fadc|Add0~122COUT1_166\ = CARRY(((!\fadc|Add0~127COUT1_165\) # (!\fadc|Count2\(7))))

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
	datab => \fadc|Count2\(7),
	cin => \fadc|Add0~137\,
	cin0 => \fadc|Add0~127\,
	cin1 => \fadc|Add0~127COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~120_combout\,
	cout0 => \fadc|Add0~122\,
	cout1 => \fadc|Add0~122COUT1_166\);

-- Location: LC_X6_Y5_N2
\fadc|Count2[7]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(7) = DFFEAS(((\fadc|fsm_state.s1~regout\ & ((\fadc|Add0~120_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~120_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(7));

-- Location: LC_X6_Y7_N2
\fadc|Add0~115\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~115_combout\ = (\fadc|Count2\(8) $ ((!(!\fadc|Add0~137\ & \fadc|Add0~122\) # (\fadc|Add0~137\ & \fadc|Add0~122COUT1_166\))))
-- \fadc|Add0~117\ = CARRY(((\fadc|Count2\(8) & !\fadc|Add0~122\)))
-- \fadc|Add0~117COUT1_167\ = CARRY(((\fadc|Count2\(8) & !\fadc|Add0~122COUT1_166\)))

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
	datab => \fadc|Count2\(8),
	cin => \fadc|Add0~137\,
	cin0 => \fadc|Add0~122\,
	cin1 => \fadc|Add0~122COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~115_combout\,
	cout0 => \fadc|Add0~117\,
	cout1 => \fadc|Add0~117COUT1_167\);

-- Location: LC_X6_Y5_N1
\fadc|Count2[8]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(8) = DFFEAS((((\fadc|Add0~115_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~115_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(8));

-- Location: LC_X6_Y7_N3
\fadc|Add0~85\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~85_combout\ = (\fadc|Count2\(9) $ (((!\fadc|Add0~137\ & \fadc|Add0~117\) # (\fadc|Add0~137\ & \fadc|Add0~117COUT1_167\))))
-- \fadc|Add0~87\ = CARRY(((!\fadc|Add0~117\) # (!\fadc|Count2\(9))))
-- \fadc|Add0~87COUT1_168\ = CARRY(((!\fadc|Add0~117COUT1_167\) # (!\fadc|Count2\(9))))

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
	datab => \fadc|Count2\(9),
	cin => \fadc|Add0~137\,
	cin0 => \fadc|Add0~117\,
	cin1 => \fadc|Add0~117COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~85_combout\,
	cout0 => \fadc|Add0~87\,
	cout1 => \fadc|Add0~87COUT1_168\);

-- Location: LC_X6_Y5_N7
\fadc|Count2[9]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(9) = DFFEAS(((\fadc|fsm_state.s1~regout\ & ((\fadc|Add0~85_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~85_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(9));

-- Location: LC_X6_Y7_N4
\fadc|Add0~100\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~100_combout\ = (\fadc|Count2\(10) $ ((!(!\fadc|Add0~137\ & \fadc|Add0~87\) # (\fadc|Add0~137\ & \fadc|Add0~87COUT1_168\))))
-- \fadc|Add0~102\ = CARRY(((\fadc|Count2\(10) & !\fadc|Add0~87COUT1_168\)))

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
	datab => \fadc|Count2\(10),
	cin => \fadc|Add0~137\,
	cin0 => \fadc|Add0~87\,
	cin1 => \fadc|Add0~87COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~100_combout\,
	cout => \fadc|Add0~102\);

-- Location: LC_X6_Y5_N0
\fadc|Count2[10]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(10) = DFFEAS(((\fadc|fsm_state.s1~regout\ & ((\fadc|Add0~100_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~100_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(10));

-- Location: LC_X6_Y7_N5
\fadc|Add0~95\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~95_combout\ = (\fadc|Count2\(11) $ ((\fadc|Add0~102\)))
-- \fadc|Add0~97\ = CARRY(((!\fadc|Add0~102\) # (!\fadc|Count2\(11))))
-- \fadc|Add0~97COUT1_169\ = CARRY(((!\fadc|Add0~102\) # (!\fadc|Count2\(11))))

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
	datab => \fadc|Count2\(11),
	cin => \fadc|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~95_combout\,
	cout0 => \fadc|Add0~97\,
	cout1 => \fadc|Add0~97COUT1_169\);

-- Location: LC_X5_Y5_N6
\fadc|Count2[11]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(11) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~95_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(11));

-- Location: LC_X6_Y7_N6
\fadc|Add0~110\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~110_combout\ = (\fadc|Count2\(12) $ ((!(!\fadc|Add0~102\ & \fadc|Add0~97\) # (\fadc|Add0~102\ & \fadc|Add0~97COUT1_169\))))
-- \fadc|Add0~112\ = CARRY(((\fadc|Count2\(12) & !\fadc|Add0~97\)))
-- \fadc|Add0~112COUT1_170\ = CARRY(((\fadc|Count2\(12) & !\fadc|Add0~97COUT1_169\)))

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
	datab => \fadc|Count2\(12),
	cin => \fadc|Add0~102\,
	cin0 => \fadc|Add0~97\,
	cin1 => \fadc|Add0~97COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~110_combout\,
	cout0 => \fadc|Add0~112\,
	cout1 => \fadc|Add0~112COUT1_170\);

-- Location: LC_X6_Y5_N8
\fadc|Count2[12]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(12) = DFFEAS(((\fadc|fsm_state.s1~regout\ & ((\fadc|Add0~110_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~110_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(12));

-- Location: LC_X6_Y7_N7
\fadc|Add0~105\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~105_combout\ = \fadc|Count2\(13) $ (((((!\fadc|Add0~102\ & \fadc|Add0~112\) # (\fadc|Add0~102\ & \fadc|Add0~112COUT1_170\)))))
-- \fadc|Add0~107\ = CARRY(((!\fadc|Add0~112\)) # (!\fadc|Count2\(13)))
-- \fadc|Add0~107COUT1_171\ = CARRY(((!\fadc|Add0~112COUT1_170\)) # (!\fadc|Count2\(13)))

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
	dataa => \fadc|Count2\(13),
	cin => \fadc|Add0~102\,
	cin0 => \fadc|Add0~112\,
	cin1 => \fadc|Add0~112COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~105_combout\,
	cout0 => \fadc|Add0~107\,
	cout1 => \fadc|Add0~107COUT1_171\);

-- Location: LC_X5_Y5_N5
\fadc|Count2[13]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(13) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~105_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(13));

-- Location: LC_X6_Y7_N8
\fadc|Add0~0\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~0_combout\ = (\fadc|Count2\(14) $ ((!(!\fadc|Add0~102\ & \fadc|Add0~107\) # (\fadc|Add0~102\ & \fadc|Add0~107COUT1_171\))))
-- \fadc|Add0~2\ = CARRY(((\fadc|Count2\(14) & !\fadc|Add0~107\)))
-- \fadc|Add0~2COUT1_172\ = CARRY(((\fadc|Count2\(14) & !\fadc|Add0~107COUT1_171\)))

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
	datab => \fadc|Count2\(14),
	cin => \fadc|Add0~102\,
	cin0 => \fadc|Add0~107\,
	cin1 => \fadc|Add0~107COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~0_combout\,
	cout0 => \fadc|Add0~2\,
	cout1 => \fadc|Add0~2COUT1_172\);

-- Location: LC_X5_Y7_N3
\fadc|Count2[14]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(14) = DFFEAS(((\fadc|Add0~0_combout\ & ((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|Add0~0_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(14));

-- Location: LC_X6_Y7_N9
\fadc|Add0~90\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~90_combout\ = (\fadc|Count2\(15) $ (((!\fadc|Add0~102\ & \fadc|Add0~2\) # (\fadc|Add0~102\ & \fadc|Add0~2COUT1_172\))))
-- \fadc|Add0~92\ = CARRY(((!\fadc|Add0~2COUT1_172\) # (!\fadc|Count2\(15))))

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
	datab => \fadc|Count2\(15),
	cin => \fadc|Add0~102\,
	cin0 => \fadc|Add0~2\,
	cin1 => \fadc|Add0~2COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~90_combout\,
	cout => \fadc|Add0~92\);

-- Location: LC_X5_Y5_N2
\fadc|Count2[15]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(15) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~90_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(15));

-- Location: LC_X6_Y5_N9
\fadc|LessThan1~5\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~5_combout\ = (\fadc|Count2\(12)) # ((\fadc|Count2\(8) & (\fadc|Count2\(9) & \fadc|Count2\(7))))

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
	dataa => \fadc|Count2\(12),
	datab => \fadc|Count2\(8),
	datac => \fadc|Count2\(9),
	datad => \fadc|Count2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~5_combout\);

-- Location: LC_X6_Y5_N6
\fadc|LessThan1~6\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~6_combout\ = (\fadc|Count2\(13)) # ((\fadc|Count2\(11)) # ((\fadc|Count2\(10)) # (\fadc|LessThan1~5_combout\)))

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
	dataa => \fadc|Count2\(13),
	datab => \fadc|Count2\(11),
	datac => \fadc|Count2\(10),
	datad => \fadc|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~6_combout\);

-- Location: LC_X6_Y5_N3
\fadc|fsm_state~13\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~13_combout\ = (\fadc|Count2\(6) & (\fadc|Count2\(8) & ((\fadc|Count2\(4)) # (\fadc|Count2\(5)))))

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
	dataa => \fadc|Count2\(6),
	datab => \fadc|Count2\(8),
	datac => \fadc|Count2\(4),
	datad => \fadc|Count2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~13_combout\);

-- Location: LC_X6_Y5_N4
\fadc|fsm_state~14\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~14_combout\ = (\fadc|Count2\(15) & ((\fadc|LessThan1~6_combout\) # ((\fadc|Count2\(9) & \fadc|fsm_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|Count2\(9),
	datab => \fadc|Count2\(15),
	datac => \fadc|LessThan1~6_combout\,
	datad => \fadc|fsm_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~14_combout\);

-- Location: LC_X7_Y7_N0
\fadc|Add0~80\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~80_combout\ = (\fadc|Count2\(16) $ ((!\fadc|Add0~92\)))
-- \fadc|Add0~82\ = CARRY(((\fadc|Count2\(16) & !\fadc|Add0~92\)))
-- \fadc|Add0~82COUT1_173\ = CARRY(((\fadc|Count2\(16) & !\fadc|Add0~92\)))

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
	datab => \fadc|Count2\(16),
	cin => \fadc|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~80_combout\,
	cout0 => \fadc|Add0~82\,
	cout1 => \fadc|Add0~82COUT1_173\);

-- Location: LC_X9_Y7_N2
\fadc|Count2[16]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(16) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~80_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(16));

-- Location: LC_X7_Y7_N1
\fadc|Add0~75\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~75_combout\ = (\fadc|Count2\(17) $ (((!\fadc|Add0~92\ & \fadc|Add0~82\) # (\fadc|Add0~92\ & \fadc|Add0~82COUT1_173\))))
-- \fadc|Add0~77\ = CARRY(((!\fadc|Add0~82\) # (!\fadc|Count2\(17))))
-- \fadc|Add0~77COUT1_174\ = CARRY(((!\fadc|Add0~82COUT1_173\) # (!\fadc|Count2\(17))))

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
	datab => \fadc|Count2\(17),
	cin => \fadc|Add0~92\,
	cin0 => \fadc|Add0~82\,
	cin1 => \fadc|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~75_combout\,
	cout0 => \fadc|Add0~77\,
	cout1 => \fadc|Add0~77COUT1_174\);

-- Location: LC_X9_Y7_N6
\fadc|Count2[17]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(17) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~75_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(17));

-- Location: LC_X7_Y7_N2
\fadc|Add0~70\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~70_combout\ = \fadc|Count2\(18) $ ((((!(!\fadc|Add0~92\ & \fadc|Add0~77\) # (\fadc|Add0~92\ & \fadc|Add0~77COUT1_174\)))))
-- \fadc|Add0~72\ = CARRY((\fadc|Count2\(18) & ((!\fadc|Add0~77\))))
-- \fadc|Add0~72COUT1_175\ = CARRY((\fadc|Count2\(18) & ((!\fadc|Add0~77COUT1_174\))))

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
	dataa => \fadc|Count2\(18),
	cin => \fadc|Add0~92\,
	cin0 => \fadc|Add0~77\,
	cin1 => \fadc|Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~70_combout\,
	cout0 => \fadc|Add0~72\,
	cout1 => \fadc|Add0~72COUT1_175\);

-- Location: LC_X9_Y7_N9
\fadc|Count2[18]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(18) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~70_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(18));

-- Location: LC_X7_Y7_N3
\fadc|Add0~65\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~65_combout\ = (\fadc|Count2\(19) $ (((!\fadc|Add0~92\ & \fadc|Add0~72\) # (\fadc|Add0~92\ & \fadc|Add0~72COUT1_175\))))
-- \fadc|Add0~67\ = CARRY(((!\fadc|Add0~72\) # (!\fadc|Count2\(19))))
-- \fadc|Add0~67COUT1_176\ = CARRY(((!\fadc|Add0~72COUT1_175\) # (!\fadc|Count2\(19))))

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
	datab => \fadc|Count2\(19),
	cin => \fadc|Add0~92\,
	cin0 => \fadc|Add0~72\,
	cin1 => \fadc|Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~65_combout\,
	cout0 => \fadc|Add0~67\,
	cout1 => \fadc|Add0~67COUT1_176\);

-- Location: LC_X9_Y7_N4
\fadc|Count2[19]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(19) = DFFEAS((\fadc|Add0~65_combout\ & (((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	dataa => \fadc|Add0~65_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(19));

-- Location: LC_X7_Y7_N4
\fadc|Add0~60\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~60_combout\ = \fadc|Count2\(20) $ ((((!(!\fadc|Add0~92\ & \fadc|Add0~67\) # (\fadc|Add0~92\ & \fadc|Add0~67COUT1_176\)))))
-- \fadc|Add0~62\ = CARRY((\fadc|Count2\(20) & ((!\fadc|Add0~67COUT1_176\))))

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
	dataa => \fadc|Count2\(20),
	cin => \fadc|Add0~92\,
	cin0 => \fadc|Add0~67\,
	cin1 => \fadc|Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~60_combout\,
	cout => \fadc|Add0~62\);

-- Location: LC_X4_Y7_N3
\fadc|Count2[20]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(20) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~60_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(20));

-- Location: LC_X7_Y7_N5
\fadc|Add0~55\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~55_combout\ = (\fadc|Count2\(21) $ ((\fadc|Add0~62\)))
-- \fadc|Add0~57\ = CARRY(((!\fadc|Add0~62\) # (!\fadc|Count2\(21))))
-- \fadc|Add0~57COUT1_177\ = CARRY(((!\fadc|Add0~62\) # (!\fadc|Count2\(21))))

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
	datab => \fadc|Count2\(21),
	cin => \fadc|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~55_combout\,
	cout0 => \fadc|Add0~57\,
	cout1 => \fadc|Add0~57COUT1_177\);

-- Location: LC_X4_Y7_N8
\fadc|Count2[21]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(21) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~55_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(21));

-- Location: LC_X7_Y7_N6
\fadc|Add0~50\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~50_combout\ = (\fadc|Count2\(22) $ ((!(!\fadc|Add0~62\ & \fadc|Add0~57\) # (\fadc|Add0~62\ & \fadc|Add0~57COUT1_177\))))
-- \fadc|Add0~52\ = CARRY(((\fadc|Count2\(22) & !\fadc|Add0~57\)))
-- \fadc|Add0~52COUT1_178\ = CARRY(((\fadc|Count2\(22) & !\fadc|Add0~57COUT1_177\)))

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
	datab => \fadc|Count2\(22),
	cin => \fadc|Add0~62\,
	cin0 => \fadc|Add0~57\,
	cin1 => \fadc|Add0~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~50_combout\,
	cout0 => \fadc|Add0~52\,
	cout1 => \fadc|Add0~52COUT1_178\);

-- Location: LC_X4_Y7_N9
\fadc|Count2[22]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(22) = DFFEAS((((\fadc|Add0~50_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~50_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(22));

-- Location: LC_X7_Y7_N7
\fadc|Add0~45\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~45_combout\ = (\fadc|Count2\(23) $ (((!\fadc|Add0~62\ & \fadc|Add0~52\) # (\fadc|Add0~62\ & \fadc|Add0~52COUT1_178\))))
-- \fadc|Add0~47\ = CARRY(((!\fadc|Add0~52\) # (!\fadc|Count2\(23))))
-- \fadc|Add0~47COUT1_179\ = CARRY(((!\fadc|Add0~52COUT1_178\) # (!\fadc|Count2\(23))))

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
	datab => \fadc|Count2\(23),
	cin => \fadc|Add0~62\,
	cin0 => \fadc|Add0~52\,
	cin1 => \fadc|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~45_combout\,
	cout0 => \fadc|Add0~47\,
	cout1 => \fadc|Add0~47COUT1_179\);

-- Location: LC_X4_Y7_N7
\fadc|Count2[23]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(23) = DFFEAS((((\fadc|Add0~45_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~45_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(23));

-- Location: LC_X4_Y7_N5
\fadc|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~2_combout\ = (\fadc|Count2\(21)) # ((\fadc|Count2\(22)) # ((\fadc|Count2\(23)) # (\fadc|Count2\(20))))

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
	dataa => \fadc|Count2\(21),
	datab => \fadc|Count2\(22),
	datac => \fadc|Count2\(23),
	datad => \fadc|Count2\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~2_combout\);

-- Location: LC_X9_Y7_N5
\fadc|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~3_combout\ = (\fadc|Count2\(17)) # ((\fadc|Count2\(16)) # ((\fadc|Count2\(19)) # (\fadc|Count2\(18))))

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
	dataa => \fadc|Count2\(17),
	datab => \fadc|Count2\(16),
	datac => \fadc|Count2\(19),
	datad => \fadc|Count2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~3_combout\);

-- Location: LC_X7_Y7_N8
\fadc|Add0~40\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~40_combout\ = (\fadc|Count2\(24) $ ((!(!\fadc|Add0~62\ & \fadc|Add0~47\) # (\fadc|Add0~62\ & \fadc|Add0~47COUT1_179\))))
-- \fadc|Add0~42\ = CARRY(((\fadc|Count2\(24) & !\fadc|Add0~47\)))
-- \fadc|Add0~42COUT1_180\ = CARRY(((\fadc|Count2\(24) & !\fadc|Add0~47COUT1_179\)))

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
	datab => \fadc|Count2\(24),
	cin => \fadc|Add0~62\,
	cin0 => \fadc|Add0~47\,
	cin1 => \fadc|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~40_combout\,
	cout0 => \fadc|Add0~42\,
	cout1 => \fadc|Add0~42COUT1_180\);

-- Location: LC_X7_Y8_N2
\fadc|Count2[24]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(24) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~40_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(24));

-- Location: LC_X7_Y7_N9
\fadc|Add0~35\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~35_combout\ = (\fadc|Count2\(25) $ (((!\fadc|Add0~62\ & \fadc|Add0~42\) # (\fadc|Add0~62\ & \fadc|Add0~42COUT1_180\))))
-- \fadc|Add0~37\ = CARRY(((!\fadc|Add0~42COUT1_180\) # (!\fadc|Count2\(25))))

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
	datab => \fadc|Count2\(25),
	cin => \fadc|Add0~62\,
	cin0 => \fadc|Add0~42\,
	cin1 => \fadc|Add0~42COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~35_combout\,
	cout => \fadc|Add0~37\);

-- Location: LC_X7_Y8_N3
\fadc|Count2[25]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(25) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~35_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(25));

-- Location: LC_X8_Y7_N0
\fadc|Add0~30\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~30_combout\ = (\fadc|Count2\(26) $ ((!\fadc|Add0~37\)))
-- \fadc|Add0~32\ = CARRY(((\fadc|Count2\(26) & !\fadc|Add0~37\)))
-- \fadc|Add0~32COUT1_181\ = CARRY(((\fadc|Count2\(26) & !\fadc|Add0~37\)))

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
	datab => \fadc|Count2\(26),
	cin => \fadc|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~30_combout\,
	cout0 => \fadc|Add0~32\,
	cout1 => \fadc|Add0~32COUT1_181\);

-- Location: LC_X8_Y7_N7
\fadc|Count2[26]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(26) = DFFEAS((((\fadc|Add0~30_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~30_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(26));

-- Location: LC_X8_Y7_N1
\fadc|Add0~25\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~25_combout\ = \fadc|Count2\(27) $ (((((!\fadc|Add0~37\ & \fadc|Add0~32\) # (\fadc|Add0~37\ & \fadc|Add0~32COUT1_181\)))))
-- \fadc|Add0~27\ = CARRY(((!\fadc|Add0~32\)) # (!\fadc|Count2\(27)))
-- \fadc|Add0~27COUT1_182\ = CARRY(((!\fadc|Add0~32COUT1_181\)) # (!\fadc|Count2\(27)))

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
	dataa => \fadc|Count2\(27),
	cin => \fadc|Add0~37\,
	cin0 => \fadc|Add0~32\,
	cin1 => \fadc|Add0~32COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~25_combout\,
	cout0 => \fadc|Add0~27\,
	cout1 => \fadc|Add0~27COUT1_182\);

-- Location: LC_X8_Y7_N8
\fadc|Count2[27]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(27) = DFFEAS(((\fadc|Add0~25_combout\ & ((\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datab => \fadc|Add0~25_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(27));

-- Location: LC_X8_Y7_N2
\fadc|Add0~20\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~20_combout\ = \fadc|Count2\(28) $ ((((!(!\fadc|Add0~37\ & \fadc|Add0~27\) # (\fadc|Add0~37\ & \fadc|Add0~27COUT1_182\)))))
-- \fadc|Add0~22\ = CARRY((\fadc|Count2\(28) & ((!\fadc|Add0~27\))))
-- \fadc|Add0~22COUT1_183\ = CARRY((\fadc|Count2\(28) & ((!\fadc|Add0~27COUT1_182\))))

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
	dataa => \fadc|Count2\(28),
	cin => \fadc|Add0~37\,
	cin0 => \fadc|Add0~27\,
	cin1 => \fadc|Add0~27COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~20_combout\,
	cout0 => \fadc|Add0~22\,
	cout1 => \fadc|Add0~22COUT1_183\);

-- Location: LC_X8_Y5_N3
\fadc|Count2[28]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(28) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~20_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(28));

-- Location: LC_X8_Y7_N3
\fadc|Add0~15\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~15_combout\ = (\fadc|Count2\(29) $ (((!\fadc|Add0~37\ & \fadc|Add0~22\) # (\fadc|Add0~37\ & \fadc|Add0~22COUT1_183\))))
-- \fadc|Add0~17\ = CARRY(((!\fadc|Add0~22\) # (!\fadc|Count2\(29))))
-- \fadc|Add0~17COUT1_184\ = CARRY(((!\fadc|Add0~22COUT1_183\) # (!\fadc|Count2\(29))))

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
	datab => \fadc|Count2\(29),
	cin => \fadc|Add0~37\,
	cin0 => \fadc|Add0~22\,
	cin1 => \fadc|Add0~22COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~15_combout\,
	cout0 => \fadc|Add0~17\,
	cout1 => \fadc|Add0~17COUT1_184\);

-- Location: LC_X9_Y7_N8
\fadc|Count2[29]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(29) = DFFEAS((((\fadc|fsm_state.s1~regout\ & \fadc|Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|fsm_state.s1~regout\,
	datad => \fadc|Add0~15_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(29));

-- Location: LC_X8_Y7_N4
\fadc|Add0~10\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~10_combout\ = (\fadc|Count2\(30) $ ((!(!\fadc|Add0~37\ & \fadc|Add0~17\) # (\fadc|Add0~37\ & \fadc|Add0~17COUT1_184\))))
-- \fadc|Add0~12\ = CARRY(((\fadc|Count2\(30) & !\fadc|Add0~17COUT1_184\)))

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
	datab => \fadc|Count2\(30),
	cin => \fadc|Add0~37\,
	cin0 => \fadc|Add0~17\,
	cin1 => \fadc|Add0~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~10_combout\,
	cout => \fadc|Add0~12\);

-- Location: LC_X8_Y7_N9
\fadc|Count2[30]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(30) = DFFEAS((((\fadc|Add0~10_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~10_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(30));

-- Location: LC_X8_Y7_N5
\fadc|Add0~5\ : maxv_lcell
-- Equation(s):
-- \fadc|Add0~5_combout\ = ((\fadc|Add0~12\ $ (\fadc|Count2\(31))))

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
	datad => \fadc|Count2\(31),
	cin => \fadc|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add0~5_combout\);

-- Location: LC_X8_Y7_N6
\fadc|Count2[31]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count2\(31) = DFFEAS((((\fadc|Add0~5_combout\ & \fadc|fsm_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	datac => \fadc|Add0~5_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count2\(31));

-- Location: LC_X7_Y5_N0
\fadc|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~0_combout\ = (\fadc|Count2\(28)) # ((\fadc|Count2\(31)) # ((\fadc|Count2\(29)) # (\fadc|Count2\(30))))

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
	dataa => \fadc|Count2\(28),
	datab => \fadc|Count2\(31),
	datac => \fadc|Count2\(29),
	datad => \fadc|Count2\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~0_combout\);

-- Location: LC_X7_Y8_N5
\fadc|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~1_combout\ = (\fadc|Count2\(25)) # ((\fadc|Count2\(24)) # ((\fadc|Count2\(26)) # (\fadc|Count2\(27))))

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
	dataa => \fadc|Count2\(25),
	datab => \fadc|Count2\(24),
	datac => \fadc|Count2\(26),
	datad => \fadc|Count2\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~1_combout\);

-- Location: LC_X7_Y5_N8
\fadc|LessThan1~4\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan1~4_combout\ = (\fadc|LessThan1~2_combout\) # ((\fadc|LessThan1~3_combout\) # ((\fadc|LessThan1~0_combout\) # (\fadc|LessThan1~1_combout\)))

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
	dataa => \fadc|LessThan1~2_combout\,
	datab => \fadc|LessThan1~3_combout\,
	datac => \fadc|LessThan1~0_combout\,
	datad => \fadc|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan1~4_combout\);

-- Location: LC_X7_Y5_N3
\fadc|fsm_state~15\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~15_combout\ = (\fadc|fsm_state.s8~regout\ & ((\fadc|LessThan1~4_combout\) # ((\fadc|fsm_state~14_combout\ & \fadc|Count2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|fsm_state.s8~regout\,
	datab => \fadc|fsm_state~14_combout\,
	datac => \fadc|Count2\(14),
	datad => \fadc|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~15_combout\);

-- Location: LC_X7_Y5_N1
\fadc|fsm_state~19\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~19_combout\ = ((\fadc|fsm_state~15_combout\) # ((!\fadc|fsm_state.s8~regout\ & \fadc|fsm_state~16_combout\))) # (!\fadc|fsm_state~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|fsm_state.s8~regout\,
	datab => \fadc|fsm_state~16_combout\,
	datac => \fadc|fsm_state~18_combout\,
	datad => \fadc|fsm_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~19_combout\);

-- Location: LC_X7_Y5_N5
\fadc|fsm_state.s8\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s8~regout\ = DFFEAS((\fadc|fsm_state~19_combout\ & (((\fadc|fsm_state~12_combout\ & \fadc|fsm_state.s7~regout\)))) # (!\fadc|fsm_state~19_combout\ & (\fadc|fsm_state.s8~regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fadc|fsm_state.s8~regout\,
	datab => \fadc|fsm_state~12_combout\,
	datac => \fadc|fsm_state.s7~regout\,
	datad => \fadc|fsm_state~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s8~regout\);

-- Location: LC_X7_Y5_N7
\fadc|WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \fadc|WideOr7~0_combout\ = (\fadc|fsm_state.s5~regout\) # ((\fadc|fsm_state.s4~regout\) # ((\fadc|fsm_state.s8~regout\) # (!\fadc|fsm_state.s1~regout\)))

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
	dataa => \fadc|fsm_state.s5~regout\,
	datab => \fadc|fsm_state.s4~regout\,
	datac => \fadc|fsm_state.s8~regout\,
	datad => \fadc|fsm_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|WideOr7~0_combout\);

-- Location: LC_X7_Y4_N4
\fadc|Selector47~0\ : maxv_lcell
-- Equation(s):
-- \fadc|Selector47~0_combout\ = ((\fadc|fsm_state.s2~regout\) # ((\fadc|Count\(0)) # (\fadc|fsm_state.s6~regout\)))

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
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|Count\(0),
	datad => \fadc|fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Selector47~0_combout\);

-- Location: LC_X7_Y4_N5
\fadc|next_count[0]\ : maxv_lcell
-- Equation(s):
-- \fadc|next_count\(0) = ((GLOBAL(\fadc|WideOr7~0_combout\) & (\fadc|next_count\(0))) # (!GLOBAL(\fadc|WideOr7~0_combout\) & ((!\fadc|Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|next_count\(0),
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|next_count\(0));

-- Location: LC_X7_Y4_N6
\fadc|Count[0]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count\(0) = DFFEAS((\fadc|next_count~0_combout\ & ((\fadc|WideOr7~0_combout\ & ((\fadc|next_count\(0)))) # (!\fadc|WideOr7~0_combout\ & (!\fadc|Count\(0))))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fadc|next_count~0_combout\,
	datab => \fadc|Count\(0),
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|next_count\(0),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count\(0));

-- Location: LC_X7_Y4_N8
\fadc|Add1~2\ : maxv_lcell
-- Equation(s):
-- \fadc|Add1~2_combout\ = (\fadc|Count\(1) $ ((\fadc|Count\(0))))

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
	datab => \fadc|Count\(1),
	datac => \fadc|Count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add1~2_combout\);

-- Location: LC_X7_Y4_N9
\fadc|Selector49~0\ : maxv_lcell
-- Equation(s):
-- \fadc|Selector49~0_combout\ = (!\fadc|fsm_state.s2~regout\ & (!\fadc|fsm_state.s6~regout\ & (\fadc|Count\(0) $ (\fadc|Count\(1)))))

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
	dataa => \fadc|Count\(0),
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|Count\(1),
	datad => \fadc|fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Selector49~0_combout\);

-- Location: LC_X7_Y4_N1
\fadc|next_count[1]\ : maxv_lcell
-- Equation(s):
-- \fadc|next_count\(1) = ((GLOBAL(\fadc|WideOr7~0_combout\) & (\fadc|next_count\(1))) # (!GLOBAL(\fadc|WideOr7~0_combout\) & ((\fadc|Selector49~0_combout\))))

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
	datab => \fadc|next_count\(1),
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|next_count\(1));

-- Location: LC_X7_Y4_N0
\fadc|Count[1]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count\(1) = DFFEAS((\fadc|next_count~0_combout\ & ((\fadc|WideOr7~0_combout\ & ((\fadc|next_count\(1)))) # (!\fadc|WideOr7~0_combout\ & (\fadc|Add1~2_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

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
	dataa => \fadc|next_count~0_combout\,
	datab => \fadc|Add1~2_combout\,
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|next_count\(1),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count\(1));

-- Location: LC_X8_Y4_N1
\fadc|Add1~0\ : maxv_lcell
-- Equation(s):
-- \fadc|Add1~0_combout\ = \fadc|Count\(2) $ ((((\fadc|Count\(0) & \fadc|Count\(1)))))

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
	dataa => \fadc|Count\(2),
	datac => \fadc|Count\(0),
	datad => \fadc|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add1~0_combout\);

-- Location: LC_X8_Y4_N2
\fadc|Selector50~4\ : maxv_lcell
-- Equation(s):
-- \fadc|Selector50~4_combout\ = ((!\fadc|fsm_state.s2~regout\ & (!\fadc|fsm_state.s6~regout\ & \fadc|Add1~0_combout\)))

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
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|fsm_state.s6~regout\,
	datad => \fadc|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Selector50~4_combout\);

-- Location: LC_X8_Y4_N3
\fadc|next_count[2]\ : maxv_lcell
-- Equation(s):
-- \fadc|next_count\(2) = ((GLOBAL(\fadc|WideOr7~0_combout\) & (\fadc|next_count\(2))) # (!GLOBAL(\fadc|WideOr7~0_combout\) & ((\fadc|Selector50~4_combout\))))

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
	dataa => \fadc|next_count\(2),
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|Selector50~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|next_count\(2));

-- Location: LC_X8_Y4_N4
\fadc|Count[2]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count\(2) = DFFEAS((\fadc|next_count~0_combout\ & ((\fadc|WideOr7~0_combout\ & ((\fadc|next_count\(2)))) # (!\fadc|WideOr7~0_combout\ & (\fadc|Add1~0_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

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
	dataa => \fadc|next_count~0_combout\,
	datab => \fadc|Add1~0_combout\,
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|next_count\(2),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count\(2));

-- Location: LC_X9_Y4_N9
\fadc|fsm_state.s3\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s3~regout\ = DFFEAS((\fadc|fsm_state.s2~regout\) # ((!\fadc|Count\(3) & (!\fadc|Count\(2) & \fadc|fsm_state.s3~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

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
	clk => \clk~combout\,
	dataa => \fadc|Count\(3),
	datab => \fadc|Count\(2),
	datac => \fadc|fsm_state.s2~regout\,
	datad => \fadc|fsm_state.s3~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s3~regout\);

-- Location: LC_X9_Y4_N7
\fadc|cs~0\ : maxv_lcell
-- Equation(s):
-- \fadc|cs~0_combout\ = ((!\fadc|fsm_state.s3~regout\ & ((!\fadc|fsm_state.s7~regout\))))

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
	datab => \fadc|fsm_state.s3~regout\,
	datad => \fadc|fsm_state.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|cs~0_combout\);

-- Location: LC_X7_Y4_N7
\fadc|fsm_state~17\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~17_combout\ = (!\reset~combout\ & (!\fadc|fsm_state.s2~regout\ & (!\fadc|fsm_state.s4~regout\ & !\fadc|fsm_state.s6~regout\)))

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
	dataa => \reset~combout\,
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|fsm_state.s4~regout\,
	datad => \fadc|fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~17_combout\);

-- Location: LC_X7_Y5_N6
\fadc|fsm_state~18\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state~18_combout\ = (\fadc|fsm_state~17_combout\ & (\fadc|fsm_state.s1~regout\ & ((\fadc|cs~0_combout\) # (!\fadc|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|cs~0_combout\,
	datab => \fadc|fsm_state~17_combout\,
	datac => \fadc|LessThan0~0_combout\,
	datad => \fadc|fsm_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|fsm_state~18_combout\);

-- Location: LC_X7_Y5_N9
\fadc|fsm_state.s1\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s1~regout\ = DFFEAS((!\fadc|fsm_state~15_combout\ & (((!\fadc|fsm_state~16_combout\ & \fadc|fsm_state~18_combout\)) # (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0075",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \fadc|fsm_state~16_combout\,
	datac => \fadc|fsm_state~18_combout\,
	datad => \fadc|fsm_state~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s1~regout\);

-- Location: LC_X7_Y4_N2
\fadc|fsm_state.s2\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s2~regout\ = DFFEAS((!\reset~combout\ & (((!\fadc|fsm_state.s1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datad => \fadc|fsm_state.s1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s2~regout\);

-- Location: LC_X9_Y4_N1
\fadc|next_count~0\ : maxv_lcell
-- Equation(s):
-- \fadc|next_count~0_combout\ = (((!\fadc|fsm_state.s2~regout\ & !\fadc|fsm_state.s6~regout\)))

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
	datac => \fadc|fsm_state.s2~regout\,
	datad => \fadc|fsm_state.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|next_count~0_combout\);

-- Location: LC_X8_Y4_N6
\fadc|Add1~1\ : maxv_lcell
-- Equation(s):
-- \fadc|Add1~1_combout\ = \fadc|Count\(3) $ (((\fadc|Count\(2) & (\fadc|Count\(0) & \fadc|Count\(1)))))

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
	dataa => \fadc|Count\(2),
	datab => \fadc|Count\(3),
	datac => \fadc|Count\(0),
	datad => \fadc|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Add1~1_combout\);

-- Location: LC_X8_Y4_N7
\fadc|Selector51~2\ : maxv_lcell
-- Equation(s):
-- \fadc|Selector51~2_combout\ = ((!\fadc|fsm_state.s2~regout\ & (!\fadc|fsm_state.s6~regout\ & \fadc|Add1~1_combout\)))

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
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|fsm_state.s6~regout\,
	datad => \fadc|Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|Selector51~2_combout\);

-- Location: LC_X8_Y4_N8
\fadc|next_count[3]\ : maxv_lcell
-- Equation(s):
-- \fadc|next_count\(3) = ((GLOBAL(\fadc|WideOr7~0_combout\) & (\fadc|next_count\(3))) # (!GLOBAL(\fadc|WideOr7~0_combout\) & ((\fadc|Selector51~2_combout\))))

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
	dataa => \fadc|next_count\(3),
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|Selector51~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|next_count\(3));

-- Location: LC_X8_Y4_N9
\fadc|Count[3]\ : maxv_lcell
-- Equation(s):
-- \fadc|Count\(3) = DFFEAS((\fadc|next_count~0_combout\ & ((\fadc|WideOr7~0_combout\ & ((\fadc|next_count\(3)))) # (!\fadc|WideOr7~0_combout\ & (\fadc|Add1~1_combout\)))), GLOBAL(\clk~combout\), VCC, , !\reset~combout\, , , , )

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
	dataa => \fadc|next_count~0_combout\,
	datab => \fadc|Add1~1_combout\,
	datac => \fadc|WideOr7~0_combout\,
	datad => \fadc|next_count\(3),
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|Count\(3));

-- Location: LC_X9_Y4_N2
\fadc|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \fadc|LessThan0~0_combout\ = (((\fadc|Count\(3)) # (\fadc|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \fadc|Count\(3),
	datad => \fadc|Count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|LessThan0~0_combout\);

-- Location: LC_X7_Y5_N2
\fadc|fsm_state.s4\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s4~regout\ = DFFEAS((!\reset~combout\ & (\fadc|LessThan0~0_combout\ & (\fadc|fsm_state.s3~regout\ & \fadc|fsm_state~19_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \fadc|LessThan0~0_combout\,
	datac => \fadc|fsm_state.s3~regout\,
	datad => \fadc|fsm_state~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s4~regout\);

-- Location: LC_X7_Y5_N4
\fadc|fsm_state.s5\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s5~regout\ = DFFEAS(((\fadc|fsm_state.s4~regout\) # ((\INTR~combout\ & \fadc|fsm_state.s5~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \INTR~combout\,
	datac => \fadc|fsm_state.s5~regout\,
	datad => \fadc|fsm_state.s4~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s5~regout\);

-- Location: LC_X8_Y4_N5
\fadc|fsm_state.s6\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s6~regout\ = DFFEAS((!\INTR~combout\ & (!\reset~combout\ & ((\fadc|fsm_state.s5~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datab => \reset~combout\,
	datad => \fadc|fsm_state.s5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s6~regout\);

-- Location: LC_X10_Y4_N1
\fadc|fsm_state.s7\ : maxv_lcell
-- Equation(s):
-- \fadc|fsm_state.s7~regout\ = DFFEAS((\fadc|fsm_state.s6~regout\) # ((!\fadc|Count\(3) & (!\fadc|Count\(2) & \fadc|fsm_state.s7~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fadc|fsm_state.s6~regout\,
	datab => \fadc|Count\(3),
	datac => \fadc|Count\(2),
	datad => \fadc|fsm_state.s7~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|fsm_state.s7~regout\);

-- Location: LC_X11_Y6_N8
\f|fsm_state\ : maxv_lcell
-- Equation(s):
-- \f|fsm_state~regout\ = DFFEAS((!\f|fsm_state~regout\ & (\fadc|fsm_state.s7~regout\ & ((\fadc|Count\(2)) # (\fadc|Count\(3))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|fsm_state~regout\,
	datab => \fadc|Count\(2),
	datac => \fadc|fsm_state.s7~regout\,
	datad => \fadc|Count\(3),
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|fsm_state~regout\);

-- Location: LC_X11_Y6_N3
\f|r3[4]~0\ : maxv_lcell
-- Equation(s):
-- \f|r3[4]~0_combout\ = (\reset~combout\) # ((\fadc|fsm_state.s7~regout\ & (\fadc|LessThan0~0_combout\ & !\f|fsm_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|fsm_state.s7~regout\,
	datab => \reset~combout\,
	datac => \fadc|LessThan0~0_combout\,
	datad => \f|fsm_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|r3[4]~0_combout\);

-- Location: LC_X12_Y5_N4
\f|r0[3]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(3) = DFFEAS((((!\reset~combout\ & \ADC_out~combout\(3)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \ADC_out~combout\(3),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(3));

-- Location: LC_X12_Y5_N9
\f|r1[3]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(3) = DFFEAS((\f|r0\(3) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|r0\(3),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(3));

-- Location: LC_X10_Y7_N7
\f|r2[3]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(3) = DFFEAS((!\reset~combout\ & (((\f|r1\(3))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datad => \f|r1\(3),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(3));

-- Location: LC_X10_Y7_N1
\f|r3[3]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(3) = DFFEAS((((\f|r2\(3) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r2\(3),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(3));

-- Location: LC_X11_Y6_N4
\f|r4[3]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(3) = DFFEAS((\f|r3\(3) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|r3\(3),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(3));

-- Location: LC_X6_Y6_N6
\f|r5[3]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(3) = DFFEAS((((\f|r4\(3) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r4\(3),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(3));

-- Location: LC_X10_Y6_N3
\f|r6[3]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(3) = DFFEAS(((\f|r5\(3) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r5\(3),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(3));

-- Location: LC_X10_Y6_N5
\f|r7[3]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(3) = DFFEAS((\f|r6\(3) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|r6\(3),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(2),
	combout => \ADC_out~combout\(2));

-- Location: LC_X12_Y5_N3
\f|r0[2]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(2) = DFFEAS((((!\reset~combout\ & \ADC_out~combout\(2)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \ADC_out~combout\(2),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(2));

-- Location: LC_X11_Y5_N9
\f|r1[2]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(2) = DFFEAS((((\f|r0\(2) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r0\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(2));

-- Location: LC_X10_Y7_N5
\f|r2[2]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(2) = DFFEAS((((\f|r1\(2) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r1\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(2));

-- Location: LC_X10_Y7_N2
\f|r3[2]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(2) = DFFEAS((((\f|r2\(2) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r2\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(2));

-- Location: LC_X6_Y6_N2
\f|r4[2]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(2) = DFFEAS(((\f|r3\(2) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r3\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(2));

-- Location: LC_X6_Y6_N1
\f|r5[2]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(2) = DFFEAS(((\f|r4\(2) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r4\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(2));

-- Location: LC_X10_Y6_N2
\f|r6[2]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(2) = DFFEAS((((\f|r5\(2) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(2));

-- Location: LC_X10_Y6_N1
\f|r7[2]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(2) = DFFEAS(((\f|r6\(2) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r6\(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(1),
	combout => \ADC_out~combout\(1));

-- Location: LC_X12_Y5_N5
\f|r0[1]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(1) = DFFEAS(((\ADC_out~combout\(1) & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ADC_out~combout\(1),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(1));

-- Location: LC_X12_Y5_N1
\f|r1[1]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(1) = DFFEAS((!\reset~combout\ & (((\f|r0\(1))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datac => \f|r0\(1),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(1));

-- Location: LC_X10_Y7_N8
\f|r2[1]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(1) = DFFEAS((((\f|r1\(1) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r1\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(1));

-- Location: LC_X10_Y7_N3
\f|r3[1]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(1) = DFFEAS((\f|r2\(1) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|r2\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(1));

-- Location: LC_X6_Y6_N7
\f|r4[1]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(1) = DFFEAS((((\f|r3\(1) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r3\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(1));

-- Location: LC_X6_Y6_N5
\f|r5[1]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(1) = DFFEAS((((\f|r4\(1) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r4\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(1));

-- Location: LC_X6_Y6_N9
\f|r6[1]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(1) = DFFEAS((((\f|r5\(1) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(1));

-- Location: LC_X10_Y4_N8
\f|r7[1]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(1) = DFFEAS(((\f|r6\(1) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r6\(1),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(0),
	combout => \ADC_out~combout\(0));

-- Location: LC_X12_Y5_N0
\f|r0[0]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(0) = DFFEAS((\ADC_out~combout\(0) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ADC_out~combout\(0),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(0));

-- Location: LC_X12_Y5_N8
\f|r1[0]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(0) = DFFEAS((((!\reset~combout\ & \f|r0\(0)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r0\(0),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(0));

-- Location: LC_X11_Y7_N9
\f|r2[0]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(0) = DFFEAS(((\f|r1\(0) & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r1\(0),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(0));

-- Location: LC_X10_Y7_N0
\f|r3[0]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(0) = DFFEAS((((\f|r2\(0) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r2\(0),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(0));

-- Location: LC_X7_Y6_N9
\f|r4[0]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(0) = DFFEAS((((!\reset~combout\ & \f|r3\(0)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r3\(0),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(0));

-- Location: LC_X6_Y6_N0
\f|r5[0]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(0) = DFFEAS((((\f|r4\(0) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r4\(0),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(0));

-- Location: LC_X9_Y6_N9
\f|r6[0]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(0) = DFFEAS((((\f|r5\(0) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(0),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(0));

-- Location: LC_X10_Y6_N0
\f|r7[0]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(0) = DFFEAS((((\f|r6\(0) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r6\(0),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(0));

-- Location: LC_X9_Y6_N0
\f|Add5~40\ : maxv_lcell
-- Equation(s):
-- \f|Add5~40_combout\ = \f|r7\(0) $ ((\f|r6\(0)))
-- \f|Add5~42\ = CARRY((\f|r7\(0) & (\f|r6\(0))))
-- \f|Add5~42COUT1_46\ = CARRY((\f|r7\(0) & (\f|r6\(0))))

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
	dataa => \f|r7\(0),
	datab => \f|r6\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~40_combout\,
	cout0 => \f|Add5~42\,
	cout1 => \f|Add5~42COUT1_46\);

-- Location: LC_X9_Y6_N1
\f|Add5~35\ : maxv_lcell
-- Equation(s):
-- \f|Add5~35_combout\ = \f|r6\(1) $ (\f|r7\(1) $ ((\f|Add5~42\)))
-- \f|Add5~37\ = CARRY((\f|r6\(1) & (!\f|r7\(1) & !\f|Add5~42\)) # (!\f|r6\(1) & ((!\f|Add5~42\) # (!\f|r7\(1)))))
-- \f|Add5~37COUT1_47\ = CARRY((\f|r6\(1) & (!\f|r7\(1) & !\f|Add5~42COUT1_46\)) # (!\f|r6\(1) & ((!\f|Add5~42COUT1_46\) # (!\f|r7\(1)))))

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
	dataa => \f|r6\(1),
	datab => \f|r7\(1),
	cin0 => \f|Add5~42\,
	cin1 => \f|Add5~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~35_combout\,
	cout0 => \f|Add5~37\,
	cout1 => \f|Add5~37COUT1_47\);

-- Location: LC_X9_Y6_N2
\f|Add5~30\ : maxv_lcell
-- Equation(s):
-- \f|Add5~30_combout\ = \f|r7\(2) $ (\f|r6\(2) $ ((!\f|Add5~37\)))
-- \f|Add5~32\ = CARRY((\f|r7\(2) & ((\f|r6\(2)) # (!\f|Add5~37\))) # (!\f|r7\(2) & (\f|r6\(2) & !\f|Add5~37\)))
-- \f|Add5~32COUT1_48\ = CARRY((\f|r7\(2) & ((\f|r6\(2)) # (!\f|Add5~37COUT1_47\))) # (!\f|r7\(2) & (\f|r6\(2) & !\f|Add5~37COUT1_47\)))

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
	dataa => \f|r7\(2),
	datab => \f|r6\(2),
	cin0 => \f|Add5~37\,
	cin1 => \f|Add5~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~30_combout\,
	cout0 => \f|Add5~32\,
	cout1 => \f|Add5~32COUT1_48\);

-- Location: LC_X9_Y6_N3
\f|Add5~0\ : maxv_lcell
-- Equation(s):
-- \f|Add5~0_combout\ = \f|r6\(3) $ (\f|r7\(3) $ ((\f|Add5~32\)))
-- \f|Add5~2\ = CARRY((\f|r6\(3) & (!\f|r7\(3) & !\f|Add5~32\)) # (!\f|r6\(3) & ((!\f|Add5~32\) # (!\f|r7\(3)))))
-- \f|Add5~2COUT1_49\ = CARRY((\f|r6\(3) & (!\f|r7\(3) & !\f|Add5~32COUT1_48\)) # (!\f|r6\(3) & ((!\f|Add5~32COUT1_48\) # (!\f|r7\(3)))))

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
	dataa => \f|r6\(3),
	datab => \f|r7\(3),
	cin0 => \f|Add5~32\,
	cin1 => \f|Add5~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~0_combout\,
	cout0 => \f|Add5~2\,
	cout1 => \f|Add5~2COUT1_49\);

-- Location: LC_X7_Y6_N0
\f|Add3~40\ : maxv_lcell
-- Equation(s):
-- \f|Add3~40_combout\ = \f|r5\(0) $ ((\f|r4\(0)))
-- \f|Add3~42\ = CARRY((\f|r5\(0) & (\f|r4\(0))))
-- \f|Add3~42COUT1_46\ = CARRY((\f|r5\(0) & (\f|r4\(0))))

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
	dataa => \f|r5\(0),
	datab => \f|r4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~40_combout\,
	cout0 => \f|Add3~42\,
	cout1 => \f|Add3~42COUT1_46\);

-- Location: LC_X7_Y6_N1
\f|Add3~35\ : maxv_lcell
-- Equation(s):
-- \f|Add3~35_combout\ = \f|r5\(1) $ (\f|r4\(1) $ ((\f|Add3~42\)))
-- \f|Add3~37\ = CARRY((\f|r5\(1) & (!\f|r4\(1) & !\f|Add3~42\)) # (!\f|r5\(1) & ((!\f|Add3~42\) # (!\f|r4\(1)))))
-- \f|Add3~37COUT1_47\ = CARRY((\f|r5\(1) & (!\f|r4\(1) & !\f|Add3~42COUT1_46\)) # (!\f|r5\(1) & ((!\f|Add3~42COUT1_46\) # (!\f|r4\(1)))))

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
	dataa => \f|r5\(1),
	datab => \f|r4\(1),
	cin0 => \f|Add3~42\,
	cin1 => \f|Add3~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~35_combout\,
	cout0 => \f|Add3~37\,
	cout1 => \f|Add3~37COUT1_47\);

-- Location: LC_X7_Y6_N2
\f|Add3~30\ : maxv_lcell
-- Equation(s):
-- \f|Add3~30_combout\ = \f|r5\(2) $ (\f|r4\(2) $ ((!\f|Add3~37\)))
-- \f|Add3~32\ = CARRY((\f|r5\(2) & ((\f|r4\(2)) # (!\f|Add3~37\))) # (!\f|r5\(2) & (\f|r4\(2) & !\f|Add3~37\)))
-- \f|Add3~32COUT1_48\ = CARRY((\f|r5\(2) & ((\f|r4\(2)) # (!\f|Add3~37COUT1_47\))) # (!\f|r5\(2) & (\f|r4\(2) & !\f|Add3~37COUT1_47\)))

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
	dataa => \f|r5\(2),
	datab => \f|r4\(2),
	cin0 => \f|Add3~37\,
	cin1 => \f|Add3~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~30_combout\,
	cout0 => \f|Add3~32\,
	cout1 => \f|Add3~32COUT1_48\);

-- Location: LC_X7_Y6_N3
\f|Add3~0\ : maxv_lcell
-- Equation(s):
-- \f|Add3~0_combout\ = \f|r4\(3) $ (\f|r5\(3) $ ((\f|Add3~32\)))
-- \f|Add3~2\ = CARRY((\f|r4\(3) & (!\f|r5\(3) & !\f|Add3~32\)) # (!\f|r4\(3) & ((!\f|Add3~32\) # (!\f|r5\(3)))))
-- \f|Add3~2COUT1_49\ = CARRY((\f|r4\(3) & (!\f|r5\(3) & !\f|Add3~32COUT1_48\)) # (!\f|r4\(3) & ((!\f|Add3~32COUT1_48\) # (!\f|r5\(3)))))

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
	dataa => \f|r4\(3),
	datab => \f|r5\(3),
	cin0 => \f|Add3~32\,
	cin1 => \f|Add3~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~0_combout\,
	cout0 => \f|Add3~2\,
	cout1 => \f|Add3~2COUT1_49\);

-- Location: LC_X8_Y6_N0
\f|Add4~45\ : maxv_lcell
-- Equation(s):
-- \f|Add4~45_combout\ = \f|Add5~40_combout\ $ ((\f|Add3~40_combout\))
-- \f|Add4~47\ = CARRY((\f|Add5~40_combout\ & (\f|Add3~40_combout\)))
-- \f|Add4~47COUT1_51\ = CARRY((\f|Add5~40_combout\ & (\f|Add3~40_combout\)))

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
	dataa => \f|Add5~40_combout\,
	datab => \f|Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~45_combout\,
	cout0 => \f|Add4~47\,
	cout1 => \f|Add4~47COUT1_51\);

-- Location: LC_X8_Y6_N1
\f|Add4~40\ : maxv_lcell
-- Equation(s):
-- \f|Add4~40_combout\ = \f|Add3~35_combout\ $ (\f|Add5~35_combout\ $ ((\f|Add4~47\)))
-- \f|Add4~42\ = CARRY((\f|Add3~35_combout\ & (!\f|Add5~35_combout\ & !\f|Add4~47\)) # (!\f|Add3~35_combout\ & ((!\f|Add4~47\) # (!\f|Add5~35_combout\))))
-- \f|Add4~42COUT1_52\ = CARRY((\f|Add3~35_combout\ & (!\f|Add5~35_combout\ & !\f|Add4~47COUT1_51\)) # (!\f|Add3~35_combout\ & ((!\f|Add4~47COUT1_51\) # (!\f|Add5~35_combout\))))

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
	dataa => \f|Add3~35_combout\,
	datab => \f|Add5~35_combout\,
	cin0 => \f|Add4~47\,
	cin1 => \f|Add4~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~40_combout\,
	cout0 => \f|Add4~42\,
	cout1 => \f|Add4~42COUT1_52\);

-- Location: LC_X8_Y6_N2
\f|Add4~35\ : maxv_lcell
-- Equation(s):
-- \f|Add4~35_combout\ = \f|Add3~30_combout\ $ (\f|Add5~30_combout\ $ ((!\f|Add4~42\)))
-- \f|Add4~37\ = CARRY((\f|Add3~30_combout\ & ((\f|Add5~30_combout\) # (!\f|Add4~42\))) # (!\f|Add3~30_combout\ & (\f|Add5~30_combout\ & !\f|Add4~42\)))
-- \f|Add4~37COUT1_53\ = CARRY((\f|Add3~30_combout\ & ((\f|Add5~30_combout\) # (!\f|Add4~42COUT1_52\))) # (!\f|Add3~30_combout\ & (\f|Add5~30_combout\ & !\f|Add4~42COUT1_52\)))

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
	dataa => \f|Add3~30_combout\,
	datab => \f|Add5~30_combout\,
	cin0 => \f|Add4~42\,
	cin1 => \f|Add4~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~35_combout\,
	cout0 => \f|Add4~37\,
	cout1 => \f|Add4~37COUT1_53\);

-- Location: LC_X8_Y6_N3
\f|Add4~0\ : maxv_lcell
-- Equation(s):
-- \f|Add4~0_combout\ = \f|Add5~0_combout\ $ (\f|Add3~0_combout\ $ ((\f|Add4~37\)))
-- \f|Add4~2\ = CARRY((\f|Add5~0_combout\ & (!\f|Add3~0_combout\ & !\f|Add4~37\)) # (!\f|Add5~0_combout\ & ((!\f|Add4~37\) # (!\f|Add3~0_combout\))))
-- \f|Add4~2COUT1_54\ = CARRY((\f|Add5~0_combout\ & (!\f|Add3~0_combout\ & !\f|Add4~37COUT1_53\)) # (!\f|Add5~0_combout\ & ((!\f|Add4~37COUT1_53\) # (!\f|Add3~0_combout\))))

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
	dataa => \f|Add5~0_combout\,
	datab => \f|Add3~0_combout\,
	cin0 => \f|Add4~37\,
	cin1 => \f|Add4~37COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~0_combout\,
	cout0 => \f|Add4~2\,
	cout1 => \f|Add4~2COUT1_54\);

-- Location: LC_X11_Y7_N0
\f|Add1~40\ : maxv_lcell
-- Equation(s):
-- \f|Add1~40_combout\ = \f|r3\(0) $ ((\f|r2\(0)))
-- \f|Add1~42\ = CARRY((\f|r3\(0) & (\f|r2\(0))))
-- \f|Add1~42COUT1_46\ = CARRY((\f|r3\(0) & (\f|r2\(0))))

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
	dataa => \f|r3\(0),
	datab => \f|r2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~40_combout\,
	cout0 => \f|Add1~42\,
	cout1 => \f|Add1~42COUT1_46\);

-- Location: LC_X11_Y7_N1
\f|Add1~35\ : maxv_lcell
-- Equation(s):
-- \f|Add1~35_combout\ = \f|r2\(1) $ (\f|r3\(1) $ ((\f|Add1~42\)))
-- \f|Add1~37\ = CARRY((\f|r2\(1) & (!\f|r3\(1) & !\f|Add1~42\)) # (!\f|r2\(1) & ((!\f|Add1~42\) # (!\f|r3\(1)))))
-- \f|Add1~37COUT1_47\ = CARRY((\f|r2\(1) & (!\f|r3\(1) & !\f|Add1~42COUT1_46\)) # (!\f|r2\(1) & ((!\f|Add1~42COUT1_46\) # (!\f|r3\(1)))))

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
	dataa => \f|r2\(1),
	datab => \f|r3\(1),
	cin0 => \f|Add1~42\,
	cin1 => \f|Add1~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~35_combout\,
	cout0 => \f|Add1~37\,
	cout1 => \f|Add1~37COUT1_47\);

-- Location: LC_X11_Y7_N2
\f|Add1~30\ : maxv_lcell
-- Equation(s):
-- \f|Add1~30_combout\ = \f|r2\(2) $ (\f|r3\(2) $ ((!\f|Add1~37\)))
-- \f|Add1~32\ = CARRY((\f|r2\(2) & ((\f|r3\(2)) # (!\f|Add1~37\))) # (!\f|r2\(2) & (\f|r3\(2) & !\f|Add1~37\)))
-- \f|Add1~32COUT1_48\ = CARRY((\f|r2\(2) & ((\f|r3\(2)) # (!\f|Add1~37COUT1_47\))) # (!\f|r2\(2) & (\f|r3\(2) & !\f|Add1~37COUT1_47\)))

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
	dataa => \f|r2\(2),
	datab => \f|r3\(2),
	cin0 => \f|Add1~37\,
	cin1 => \f|Add1~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~30_combout\,
	cout0 => \f|Add1~32\,
	cout1 => \f|Add1~32COUT1_48\);

-- Location: LC_X11_Y7_N3
\f|Add1~0\ : maxv_lcell
-- Equation(s):
-- \f|Add1~0_combout\ = \f|r3\(3) $ (\f|r2\(3) $ ((\f|Add1~32\)))
-- \f|Add1~2\ = CARRY((\f|r3\(3) & (!\f|r2\(3) & !\f|Add1~32\)) # (!\f|r3\(3) & ((!\f|Add1~32\) # (!\f|r2\(3)))))
-- \f|Add1~2COUT1_49\ = CARRY((\f|r3\(3) & (!\f|r2\(3) & !\f|Add1~32COUT1_48\)) # (!\f|r3\(3) & ((!\f|Add1~32COUT1_48\) # (!\f|r2\(3)))))

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
	dataa => \f|r3\(3),
	datab => \f|r2\(3),
	cin0 => \f|Add1~32\,
	cin1 => \f|Add1~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~0_combout\,
	cout0 => \f|Add1~2\,
	cout1 => \f|Add1~2COUT1_49\);

-- Location: LC_X11_Y5_N0
\f|Add0~40\ : maxv_lcell
-- Equation(s):
-- \f|Add0~40_combout\ = \f|r0\(0) $ ((\f|r1\(0)))
-- \f|Add0~42\ = CARRY((\f|r0\(0) & (\f|r1\(0))))
-- \f|Add0~42COUT1_46\ = CARRY((\f|r0\(0) & (\f|r1\(0))))

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
	dataa => \f|r0\(0),
	datab => \f|r1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~40_combout\,
	cout0 => \f|Add0~42\,
	cout1 => \f|Add0~42COUT1_46\);

-- Location: LC_X11_Y5_N1
\f|Add0~35\ : maxv_lcell
-- Equation(s):
-- \f|Add0~35_combout\ = \f|r1\(1) $ (\f|r0\(1) $ ((\f|Add0~42\)))
-- \f|Add0~37\ = CARRY((\f|r1\(1) & (!\f|r0\(1) & !\f|Add0~42\)) # (!\f|r1\(1) & ((!\f|Add0~42\) # (!\f|r0\(1)))))
-- \f|Add0~37COUT1_47\ = CARRY((\f|r1\(1) & (!\f|r0\(1) & !\f|Add0~42COUT1_46\)) # (!\f|r1\(1) & ((!\f|Add0~42COUT1_46\) # (!\f|r0\(1)))))

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
	dataa => \f|r1\(1),
	datab => \f|r0\(1),
	cin0 => \f|Add0~42\,
	cin1 => \f|Add0~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~35_combout\,
	cout0 => \f|Add0~37\,
	cout1 => \f|Add0~37COUT1_47\);

-- Location: LC_X11_Y5_N2
\f|Add0~30\ : maxv_lcell
-- Equation(s):
-- \f|Add0~30_combout\ = \f|r0\(2) $ (\f|r1\(2) $ ((!\f|Add0~37\)))
-- \f|Add0~32\ = CARRY((\f|r0\(2) & ((\f|r1\(2)) # (!\f|Add0~37\))) # (!\f|r0\(2) & (\f|r1\(2) & !\f|Add0~37\)))
-- \f|Add0~32COUT1_48\ = CARRY((\f|r0\(2) & ((\f|r1\(2)) # (!\f|Add0~37COUT1_47\))) # (!\f|r0\(2) & (\f|r1\(2) & !\f|Add0~37COUT1_47\)))

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
	dataa => \f|r0\(2),
	datab => \f|r1\(2),
	cin0 => \f|Add0~37\,
	cin1 => \f|Add0~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~30_combout\,
	cout0 => \f|Add0~32\,
	cout1 => \f|Add0~32COUT1_48\);

-- Location: LC_X11_Y5_N3
\f|Add0~0\ : maxv_lcell
-- Equation(s):
-- \f|Add0~0_combout\ = \f|r1\(3) $ (\f|r0\(3) $ ((\f|Add0~32\)))
-- \f|Add0~2\ = CARRY((\f|r1\(3) & (!\f|r0\(3) & !\f|Add0~32\)) # (!\f|r1\(3) & ((!\f|Add0~32\) # (!\f|r0\(3)))))
-- \f|Add0~2COUT1_49\ = CARRY((\f|r1\(3) & (!\f|r0\(3) & !\f|Add0~32COUT1_48\)) # (!\f|r1\(3) & ((!\f|Add0~32COUT1_48\) # (!\f|r0\(3)))))

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
	dataa => \f|r1\(3),
	datab => \f|r0\(3),
	cin0 => \f|Add0~32\,
	cin1 => \f|Add0~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~0_combout\,
	cout0 => \f|Add0~2\,
	cout1 => \f|Add0~2COUT1_49\);

-- Location: LC_X10_Y5_N0
\f|Add2~45\ : maxv_lcell
-- Equation(s):
-- \f|Add2~45_combout\ = \f|Add0~40_combout\ $ ((\f|Add1~40_combout\))
-- \f|Add2~47\ = CARRY((\f|Add0~40_combout\ & (\f|Add1~40_combout\)))
-- \f|Add2~47COUT1_51\ = CARRY((\f|Add0~40_combout\ & (\f|Add1~40_combout\)))

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
	dataa => \f|Add0~40_combout\,
	datab => \f|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~45_combout\,
	cout0 => \f|Add2~47\,
	cout1 => \f|Add2~47COUT1_51\);

-- Location: LC_X10_Y5_N1
\f|Add2~40\ : maxv_lcell
-- Equation(s):
-- \f|Add2~40_combout\ = \f|Add1~35_combout\ $ (\f|Add0~35_combout\ $ ((\f|Add2~47\)))
-- \f|Add2~42\ = CARRY((\f|Add1~35_combout\ & (!\f|Add0~35_combout\ & !\f|Add2~47\)) # (!\f|Add1~35_combout\ & ((!\f|Add2~47\) # (!\f|Add0~35_combout\))))
-- \f|Add2~42COUT1_52\ = CARRY((\f|Add1~35_combout\ & (!\f|Add0~35_combout\ & !\f|Add2~47COUT1_51\)) # (!\f|Add1~35_combout\ & ((!\f|Add2~47COUT1_51\) # (!\f|Add0~35_combout\))))

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
	dataa => \f|Add1~35_combout\,
	datab => \f|Add0~35_combout\,
	cin0 => \f|Add2~47\,
	cin1 => \f|Add2~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~40_combout\,
	cout0 => \f|Add2~42\,
	cout1 => \f|Add2~42COUT1_52\);

-- Location: LC_X10_Y5_N2
\f|Add2~35\ : maxv_lcell
-- Equation(s):
-- \f|Add2~35_combout\ = \f|Add1~30_combout\ $ (\f|Add0~30_combout\ $ ((!\f|Add2~42\)))
-- \f|Add2~37\ = CARRY((\f|Add1~30_combout\ & ((\f|Add0~30_combout\) # (!\f|Add2~42\))) # (!\f|Add1~30_combout\ & (\f|Add0~30_combout\ & !\f|Add2~42\)))
-- \f|Add2~37COUT1_53\ = CARRY((\f|Add1~30_combout\ & ((\f|Add0~30_combout\) # (!\f|Add2~42COUT1_52\))) # (!\f|Add1~30_combout\ & (\f|Add0~30_combout\ & !\f|Add2~42COUT1_52\)))

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
	dataa => \f|Add1~30_combout\,
	datab => \f|Add0~30_combout\,
	cin0 => \f|Add2~42\,
	cin1 => \f|Add2~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~35_combout\,
	cout0 => \f|Add2~37\,
	cout1 => \f|Add2~37COUT1_53\);

-- Location: LC_X10_Y5_N3
\f|Add2~0\ : maxv_lcell
-- Equation(s):
-- \f|Add2~0_combout\ = \f|Add1~0_combout\ $ (\f|Add0~0_combout\ $ ((\f|Add2~37\)))
-- \f|Add2~2\ = CARRY((\f|Add1~0_combout\ & (!\f|Add0~0_combout\ & !\f|Add2~37\)) # (!\f|Add1~0_combout\ & ((!\f|Add2~37\) # (!\f|Add0~0_combout\))))
-- \f|Add2~2COUT1_54\ = CARRY((\f|Add1~0_combout\ & (!\f|Add0~0_combout\ & !\f|Add2~37COUT1_53\)) # (!\f|Add1~0_combout\ & ((!\f|Add2~37COUT1_53\) # (!\f|Add0~0_combout\))))

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
	dataa => \f|Add1~0_combout\,
	datab => \f|Add0~0_combout\,
	cin0 => \f|Add2~37\,
	cin1 => \f|Add2~37COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~0_combout\,
	cout0 => \f|Add2~2\,
	cout1 => \f|Add2~2COUT1_54\);

-- Location: LC_X8_Y5_N5
\f|Add6~60\ : maxv_lcell
-- Equation(s):
-- \f|Add6~60_cout0\ = CARRY((\f|Add2~45_combout\ & (\f|Add4~45_combout\)))
-- \f|Add6~60COUT1_64\ = CARRY((\f|Add2~45_combout\ & (\f|Add4~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add2~45_combout\,
	datab => \f|Add4~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~58\,
	cout0 => \f|Add6~60_cout0\,
	cout1 => \f|Add6~60COUT1_64\);

-- Location: LC_X8_Y5_N6
\f|Add6~55\ : maxv_lcell
-- Equation(s):
-- \f|Add6~55_cout0\ = CARRY((\f|Add4~40_combout\ & (!\f|Add2~40_combout\ & !\f|Add6~60_cout0\)) # (!\f|Add4~40_combout\ & ((!\f|Add6~60_cout0\) # (!\f|Add2~40_combout\))))
-- \f|Add6~55COUT1_65\ = CARRY((\f|Add4~40_combout\ & (!\f|Add2~40_combout\ & !\f|Add6~60COUT1_64\)) # (!\f|Add4~40_combout\ & ((!\f|Add6~60COUT1_64\) # (!\f|Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff17",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add4~40_combout\,
	datab => \f|Add2~40_combout\,
	cin0 => \f|Add6~60_cout0\,
	cin1 => \f|Add6~60COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~53\,
	cout0 => \f|Add6~55_cout0\,
	cout1 => \f|Add6~55COUT1_65\);

-- Location: LC_X8_Y5_N7
\f|Add6~50\ : maxv_lcell
-- Equation(s):
-- \f|Add6~50_cout0\ = CARRY((\f|Add4~35_combout\ & ((\f|Add2~35_combout\) # (!\f|Add6~55_cout0\))) # (!\f|Add4~35_combout\ & (\f|Add2~35_combout\ & !\f|Add6~55_cout0\)))
-- \f|Add6~50COUT1_66\ = CARRY((\f|Add4~35_combout\ & ((\f|Add2~35_combout\) # (!\f|Add6~55COUT1_65\))) # (!\f|Add4~35_combout\ & (\f|Add2~35_combout\ & !\f|Add6~55COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add4~35_combout\,
	datab => \f|Add2~35_combout\,
	cin0 => \f|Add6~55_cout0\,
	cin1 => \f|Add6~55COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~48\,
	cout0 => \f|Add6~50_cout0\,
	cout1 => \f|Add6~50COUT1_66\);

-- Location: LC_X8_Y5_N8
\f|Add6~0\ : maxv_lcell
-- Equation(s):
-- \f|Add6~0_combout\ = \f|Add4~0_combout\ $ (\f|Add2~0_combout\ $ ((\f|Add6~50_cout0\)))
-- \f|Add6~2\ = CARRY((\f|Add4~0_combout\ & (!\f|Add2~0_combout\ & !\f|Add6~50_cout0\)) # (!\f|Add4~0_combout\ & ((!\f|Add6~50_cout0\) # (!\f|Add2~0_combout\))))
-- \f|Add6~2COUT1_67\ = CARRY((\f|Add4~0_combout\ & (!\f|Add2~0_combout\ & !\f|Add6~50COUT1_66\)) # (!\f|Add4~0_combout\ & ((!\f|Add6~50COUT1_66\) # (!\f|Add2~0_combout\))))

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
	dataa => \f|Add4~0_combout\,
	datab => \f|Add2~0_combout\,
	cin0 => \f|Add6~50_cout0\,
	cin1 => \f|Add6~50COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~0_combout\,
	cout0 => \f|Add6~2\,
	cout1 => \f|Add6~2COUT1_67\);

-- Location: LC_X8_Y5_N1
\f|Add6~5\ : maxv_lcell
-- Equation(s):
-- \f|Add6~5_combout\ = (\f|fsm_state~regout\ & (\f|Add6~0_combout\)) # (!\f|fsm_state~regout\ & (((\f|Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add6~0_combout\,
	datab => \f|Add6~5_combout\,
	datac => \f|fsm_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~5_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(4),
	combout => \ADC_out~combout\(4));

-- Location: LC_X11_Y6_N2
\f|r0[4]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(4) = DFFEAS((!\reset~combout\ & (((\ADC_out~combout\(4))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datad => \ADC_out~combout\(4),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(4));

-- Location: LC_X11_Y6_N6
\f|r1[4]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(4) = DFFEAS(((\f|r0\(4) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r0\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(4));

-- Location: LC_X10_Y7_N4
\f|r2[4]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(4) = DFFEAS(((\f|r1\(4) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r1\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(4));

-- Location: LC_X10_Y7_N6
\f|r3[4]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(4) = DFFEAS(((\f|r2\(4) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r2\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(4));

-- Location: LC_X6_Y6_N3
\f|r4[4]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(4) = DFFEAS((((\f|r3\(4) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r3\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(4));

-- Location: LC_X11_Y6_N0
\f|r5[4]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(4) = DFFEAS((((\f|r4\(4) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r4\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(4));

-- Location: LC_X7_Y6_N4
\f|Add3~5\ : maxv_lcell
-- Equation(s):
-- \f|Add3~5_combout\ = \f|r5\(4) $ (\f|r4\(4) $ ((!\f|Add3~2\)))
-- \f|Add3~7\ = CARRY((\f|r5\(4) & ((\f|r4\(4)) # (!\f|Add3~2COUT1_49\))) # (!\f|r5\(4) & (\f|r4\(4) & !\f|Add3~2COUT1_49\)))

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
	dataa => \f|r5\(4),
	datab => \f|r4\(4),
	cin0 => \f|Add3~2\,
	cin1 => \f|Add3~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~5_combout\,
	cout => \f|Add3~7\);

-- Location: LC_X10_Y6_N4
\f|r6[4]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(4) = DFFEAS((((\f|r5\(4) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(4));

-- Location: LC_X10_Y6_N7
\f|r7[4]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(4) = DFFEAS((((\f|r6\(4) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r6\(4),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(4));

-- Location: LC_X9_Y6_N4
\f|Add5~5\ : maxv_lcell
-- Equation(s):
-- \f|Add5~5_combout\ = \f|r7\(4) $ (\f|r6\(4) $ ((!\f|Add5~2\)))
-- \f|Add5~7\ = CARRY((\f|r7\(4) & ((\f|r6\(4)) # (!\f|Add5~2COUT1_49\))) # (!\f|r7\(4) & (\f|r6\(4) & !\f|Add5~2COUT1_49\)))

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
	dataa => \f|r7\(4),
	datab => \f|r6\(4),
	cin0 => \f|Add5~2\,
	cin1 => \f|Add5~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~5_combout\,
	cout => \f|Add5~7\);

-- Location: LC_X8_Y6_N4
\f|Add4~5\ : maxv_lcell
-- Equation(s):
-- \f|Add4~5_combout\ = \f|Add3~5_combout\ $ (\f|Add5~5_combout\ $ ((!\f|Add4~2\)))
-- \f|Add4~7\ = CARRY((\f|Add3~5_combout\ & ((\f|Add5~5_combout\) # (!\f|Add4~2COUT1_54\))) # (!\f|Add3~5_combout\ & (\f|Add5~5_combout\ & !\f|Add4~2COUT1_54\)))

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
	dataa => \f|Add3~5_combout\,
	datab => \f|Add5~5_combout\,
	cin0 => \f|Add4~2\,
	cin1 => \f|Add4~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~5_combout\,
	cout => \f|Add4~7\);

-- Location: LC_X11_Y5_N4
\f|Add0~5\ : maxv_lcell
-- Equation(s):
-- \f|Add0~5_combout\ = \f|r0\(4) $ (\f|r1\(4) $ ((!\f|Add0~2\)))
-- \f|Add0~7\ = CARRY((\f|r0\(4) & ((\f|r1\(4)) # (!\f|Add0~2COUT1_49\))) # (!\f|r0\(4) & (\f|r1\(4) & !\f|Add0~2COUT1_49\)))

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
	dataa => \f|r0\(4),
	datab => \f|r1\(4),
	cin0 => \f|Add0~2\,
	cin1 => \f|Add0~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~5_combout\,
	cout => \f|Add0~7\);

-- Location: LC_X11_Y7_N4
\f|Add1~5\ : maxv_lcell
-- Equation(s):
-- \f|Add1~5_combout\ = \f|r2\(4) $ (\f|r3\(4) $ ((!\f|Add1~2\)))
-- \f|Add1~7\ = CARRY((\f|r2\(4) & ((\f|r3\(4)) # (!\f|Add1~2COUT1_49\))) # (!\f|r2\(4) & (\f|r3\(4) & !\f|Add1~2COUT1_49\)))

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
	dataa => \f|r2\(4),
	datab => \f|r3\(4),
	cin0 => \f|Add1~2\,
	cin1 => \f|Add1~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~5_combout\,
	cout => \f|Add1~7\);

-- Location: LC_X10_Y5_N4
\f|Add2~5\ : maxv_lcell
-- Equation(s):
-- \f|Add2~5_combout\ = \f|Add0~5_combout\ $ (\f|Add1~5_combout\ $ ((!\f|Add2~2\)))
-- \f|Add2~7\ = CARRY((\f|Add0~5_combout\ & ((\f|Add1~5_combout\) # (!\f|Add2~2COUT1_54\))) # (!\f|Add0~5_combout\ & (\f|Add1~5_combout\ & !\f|Add2~2COUT1_54\)))

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
	dataa => \f|Add0~5_combout\,
	datab => \f|Add1~5_combout\,
	cin0 => \f|Add2~2\,
	cin1 => \f|Add2~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~5_combout\,
	cout => \f|Add2~7\);

-- Location: LC_X8_Y5_N9
\f|Add6~6\ : maxv_lcell
-- Equation(s):
-- \f|Add6~6_combout\ = \f|Add4~5_combout\ $ (\f|Add2~5_combout\ $ ((!\f|Add6~2\)))
-- \f|Add6~8\ = CARRY((\f|Add4~5_combout\ & ((\f|Add2~5_combout\) # (!\f|Add6~2COUT1_67\))) # (!\f|Add4~5_combout\ & (\f|Add2~5_combout\ & !\f|Add6~2COUT1_67\)))

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
	dataa => \f|Add4~5_combout\,
	datab => \f|Add2~5_combout\,
	cin0 => \f|Add6~2\,
	cin1 => \f|Add6~2COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~6_combout\,
	cout => \f|Add6~8\);

-- Location: LC_X8_Y5_N0
\f|Add6~11\ : maxv_lcell
-- Equation(s):
-- \f|Add6~11_combout\ = ((\f|fsm_state~regout\ & (\f|Add6~6_combout\)) # (!\f|fsm_state~regout\ & ((\f|Add6~11_combout\))))

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
	datab => \f|Add6~6_combout\,
	datac => \f|fsm_state~regout\,
	datad => \f|Add6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~11_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(5),
	combout => \ADC_out~combout\(5));

-- Location: LC_X12_Y6_N3
\f|r0[5]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(5) = DFFEAS((((!\reset~combout\ & \ADC_out~combout\(5)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \ADC_out~combout\(5),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(5));

-- Location: LC_X12_Y6_N6
\f|r1[5]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(5) = DFFEAS((\f|r0\(5) & (((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \f|r0\(5),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(5));

-- Location: LC_X12_Y7_N2
\f|r2[5]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(5) = DFFEAS((!\reset~combout\ & (((\f|r1\(5))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datac => \f|r1\(5),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(5));

-- Location: LC_X12_Y7_N6
\f|r3[5]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(5) = DFFEAS(((\f|r2\(5) & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r2\(5),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(5));

-- Location: LC_X11_Y6_N9
\f|r4[5]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(5) = DFFEAS((((\f|r3\(5) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r3\(5),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(5));

-- Location: LC_X11_Y6_N5
\f|r5[5]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(5) = DFFEAS(((\f|r4\(5) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r4\(5),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(5));

-- Location: LC_X7_Y6_N5
\f|Add3~10\ : maxv_lcell
-- Equation(s):
-- \f|Add3~10_combout\ = \f|r4\(5) $ (\f|r5\(5) $ ((\f|Add3~7\)))
-- \f|Add3~12\ = CARRY((\f|r4\(5) & (!\f|r5\(5) & !\f|Add3~7\)) # (!\f|r4\(5) & ((!\f|Add3~7\) # (!\f|r5\(5)))))
-- \f|Add3~12COUT1_50\ = CARRY((\f|r4\(5) & (!\f|r5\(5) & !\f|Add3~7\)) # (!\f|r4\(5) & ((!\f|Add3~7\) # (!\f|r5\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r4\(5),
	datab => \f|r5\(5),
	cin => \f|Add3~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~10_combout\,
	cout0 => \f|Add3~12\,
	cout1 => \f|Add3~12COUT1_50\);

-- Location: LC_X10_Y6_N6
\f|r6[5]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(5) = DFFEAS((((\f|r5\(5) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(5),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(5));

-- Location: LC_X10_Y6_N9
\f|r7[5]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(5) = DFFEAS((((\f|r6\(5) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r6\(5),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(5));

-- Location: LC_X9_Y6_N5
\f|Add5~10\ : maxv_lcell
-- Equation(s):
-- \f|Add5~10_combout\ = \f|r6\(5) $ (\f|r7\(5) $ ((\f|Add5~7\)))
-- \f|Add5~12\ = CARRY((\f|r6\(5) & (!\f|r7\(5) & !\f|Add5~7\)) # (!\f|r6\(5) & ((!\f|Add5~7\) # (!\f|r7\(5)))))
-- \f|Add5~12COUT1_50\ = CARRY((\f|r6\(5) & (!\f|r7\(5) & !\f|Add5~7\)) # (!\f|r6\(5) & ((!\f|Add5~7\) # (!\f|r7\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r6\(5),
	datab => \f|r7\(5),
	cin => \f|Add5~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~10_combout\,
	cout0 => \f|Add5~12\,
	cout1 => \f|Add5~12COUT1_50\);

-- Location: LC_X8_Y6_N5
\f|Add4~10\ : maxv_lcell
-- Equation(s):
-- \f|Add4~10_combout\ = \f|Add3~10_combout\ $ (\f|Add5~10_combout\ $ ((\f|Add4~7\)))
-- \f|Add4~12\ = CARRY((\f|Add3~10_combout\ & (!\f|Add5~10_combout\ & !\f|Add4~7\)) # (!\f|Add3~10_combout\ & ((!\f|Add4~7\) # (!\f|Add5~10_combout\))))
-- \f|Add4~12COUT1_55\ = CARRY((\f|Add3~10_combout\ & (!\f|Add5~10_combout\ & !\f|Add4~7\)) # (!\f|Add3~10_combout\ & ((!\f|Add4~7\) # (!\f|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add3~10_combout\,
	datab => \f|Add5~10_combout\,
	cin => \f|Add4~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~10_combout\,
	cout0 => \f|Add4~12\,
	cout1 => \f|Add4~12COUT1_55\);

-- Location: LC_X11_Y7_N5
\f|Add1~10\ : maxv_lcell
-- Equation(s):
-- \f|Add1~10_combout\ = \f|r3\(5) $ (\f|r2\(5) $ ((\f|Add1~7\)))
-- \f|Add1~12\ = CARRY((\f|r3\(5) & (!\f|r2\(5) & !\f|Add1~7\)) # (!\f|r3\(5) & ((!\f|Add1~7\) # (!\f|r2\(5)))))
-- \f|Add1~12COUT1_50\ = CARRY((\f|r3\(5) & (!\f|r2\(5) & !\f|Add1~7\)) # (!\f|r3\(5) & ((!\f|Add1~7\) # (!\f|r2\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r3\(5),
	datab => \f|r2\(5),
	cin => \f|Add1~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~10_combout\,
	cout0 => \f|Add1~12\,
	cout1 => \f|Add1~12COUT1_50\);

-- Location: LC_X11_Y5_N5
\f|Add0~10\ : maxv_lcell
-- Equation(s):
-- \f|Add0~10_combout\ = \f|r1\(5) $ (\f|r0\(5) $ ((\f|Add0~7\)))
-- \f|Add0~12\ = CARRY((\f|r1\(5) & (!\f|r0\(5) & !\f|Add0~7\)) # (!\f|r1\(5) & ((!\f|Add0~7\) # (!\f|r0\(5)))))
-- \f|Add0~12COUT1_50\ = CARRY((\f|r1\(5) & (!\f|r0\(5) & !\f|Add0~7\)) # (!\f|r1\(5) & ((!\f|Add0~7\) # (!\f|r0\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r1\(5),
	datab => \f|r0\(5),
	cin => \f|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~10_combout\,
	cout0 => \f|Add0~12\,
	cout1 => \f|Add0~12COUT1_50\);

-- Location: LC_X10_Y5_N5
\f|Add2~10\ : maxv_lcell
-- Equation(s):
-- \f|Add2~10_combout\ = \f|Add1~10_combout\ $ (\f|Add0~10_combout\ $ ((\f|Add2~7\)))
-- \f|Add2~12\ = CARRY((\f|Add1~10_combout\ & (!\f|Add0~10_combout\ & !\f|Add2~7\)) # (!\f|Add1~10_combout\ & ((!\f|Add2~7\) # (!\f|Add0~10_combout\))))
-- \f|Add2~12COUT1_55\ = CARRY((\f|Add1~10_combout\ & (!\f|Add0~10_combout\ & !\f|Add2~7\)) # (!\f|Add1~10_combout\ & ((!\f|Add2~7\) # (!\f|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add1~10_combout\,
	datab => \f|Add0~10_combout\,
	cin => \f|Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~10_combout\,
	cout0 => \f|Add2~12\,
	cout1 => \f|Add2~12COUT1_55\);

-- Location: LC_X9_Y5_N0
\f|Add6~12\ : maxv_lcell
-- Equation(s):
-- \f|Add6~12_combout\ = \f|Add4~10_combout\ $ (\f|Add2~10_combout\ $ ((\f|Add6~8\)))
-- \f|Add6~14\ = CARRY((\f|Add4~10_combout\ & (!\f|Add2~10_combout\ & !\f|Add6~8\)) # (!\f|Add4~10_combout\ & ((!\f|Add6~8\) # (!\f|Add2~10_combout\))))
-- \f|Add6~14COUT1_68\ = CARRY((\f|Add4~10_combout\ & (!\f|Add2~10_combout\ & !\f|Add6~8\)) # (!\f|Add4~10_combout\ & ((!\f|Add6~8\) # (!\f|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add4~10_combout\,
	datab => \f|Add2~10_combout\,
	cin => \f|Add6~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~12_combout\,
	cout0 => \f|Add6~14\,
	cout1 => \f|Add6~14COUT1_68\);

-- Location: LC_X8_Y5_N2
\f|Add6~17\ : maxv_lcell
-- Equation(s):
-- \f|Add6~17_combout\ = ((\f|fsm_state~regout\ & (\f|Add6~12_combout\)) # (!\f|fsm_state~regout\ & ((\f|Add6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \f|fsm_state~regout\,
	datac => \f|Add6~12_combout\,
	datad => \f|Add6~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~17_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(6),
	combout => \ADC_out~combout\(6));

-- Location: LC_X12_Y5_N7
\f|r0[6]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(6) = DFFEAS((((!\reset~combout\ & \ADC_out~combout\(6)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \ADC_out~combout\(6),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(6));

-- Location: LC_X12_Y6_N0
\f|r1[6]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(6) = DFFEAS((((!\reset~combout\ & \f|r0\(6)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r0\(6),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(6));

-- Location: LC_X11_Y5_N6
\f|Add0~15\ : maxv_lcell
-- Equation(s):
-- \f|Add0~15_combout\ = \f|r1\(6) $ (\f|r0\(6) $ ((!(!\f|Add0~7\ & \f|Add0~12\) # (\f|Add0~7\ & \f|Add0~12COUT1_50\))))
-- \f|Add0~17\ = CARRY((\f|r1\(6) & ((\f|r0\(6)) # (!\f|Add0~12\))) # (!\f|r1\(6) & (\f|r0\(6) & !\f|Add0~12\)))
-- \f|Add0~17COUT1_51\ = CARRY((\f|r1\(6) & ((\f|r0\(6)) # (!\f|Add0~12COUT1_50\))) # (!\f|r1\(6) & (\f|r0\(6) & !\f|Add0~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r1\(6),
	datab => \f|r0\(6),
	cin => \f|Add0~7\,
	cin0 => \f|Add0~12\,
	cin1 => \f|Add0~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~15_combout\,
	cout0 => \f|Add0~17\,
	cout1 => \f|Add0~17COUT1_51\);

-- Location: LC_X12_Y7_N5
\f|r2[6]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(6) = DFFEAS((((!\reset~combout\ & \f|r1\(6)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r1\(6),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(6));

-- Location: LC_X12_Y6_N1
\f|r3[6]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(6) = DFFEAS((((!\reset~combout\ & \f|r2\(6)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r2\(6),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(6));

-- Location: LC_X11_Y7_N6
\f|Add1~15\ : maxv_lcell
-- Equation(s):
-- \f|Add1~15_combout\ = \f|r3\(6) $ (\f|r2\(6) $ ((!(!\f|Add1~7\ & \f|Add1~12\) # (\f|Add1~7\ & \f|Add1~12COUT1_50\))))
-- \f|Add1~17\ = CARRY((\f|r3\(6) & ((\f|r2\(6)) # (!\f|Add1~12\))) # (!\f|r3\(6) & (\f|r2\(6) & !\f|Add1~12\)))
-- \f|Add1~17COUT1_51\ = CARRY((\f|r3\(6) & ((\f|r2\(6)) # (!\f|Add1~12COUT1_50\))) # (!\f|r3\(6) & (\f|r2\(6) & !\f|Add1~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r3\(6),
	datab => \f|r2\(6),
	cin => \f|Add1~7\,
	cin0 => \f|Add1~12\,
	cin1 => \f|Add1~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~15_combout\,
	cout0 => \f|Add1~17\,
	cout1 => \f|Add1~17COUT1_51\);

-- Location: LC_X10_Y5_N6
\f|Add2~15\ : maxv_lcell
-- Equation(s):
-- \f|Add2~15_combout\ = \f|Add0~15_combout\ $ (\f|Add1~15_combout\ $ ((!(!\f|Add2~7\ & \f|Add2~12\) # (\f|Add2~7\ & \f|Add2~12COUT1_55\))))
-- \f|Add2~17\ = CARRY((\f|Add0~15_combout\ & ((\f|Add1~15_combout\) # (!\f|Add2~12\))) # (!\f|Add0~15_combout\ & (\f|Add1~15_combout\ & !\f|Add2~12\)))
-- \f|Add2~17COUT1_56\ = CARRY((\f|Add0~15_combout\ & ((\f|Add1~15_combout\) # (!\f|Add2~12COUT1_55\))) # (!\f|Add0~15_combout\ & (\f|Add1~15_combout\ & !\f|Add2~12COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add0~15_combout\,
	datab => \f|Add1~15_combout\,
	cin => \f|Add2~7\,
	cin0 => \f|Add2~12\,
	cin1 => \f|Add2~12COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~15_combout\,
	cout0 => \f|Add2~17\,
	cout1 => \f|Add2~17COUT1_56\);

-- Location: LC_X12_Y6_N2
\f|r4[6]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(6) = DFFEAS(((\f|r3\(6) & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r3\(6),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(6));

-- Location: LC_X11_Y6_N7
\f|r5[6]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(6) = DFFEAS((((\f|r4\(6) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r4\(6),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(6));

-- Location: LC_X11_Y6_N1
\f|r6[6]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(6) = DFFEAS((((\f|r5\(6) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r5\(6),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(6));

-- Location: LC_X10_Y6_N8
\f|r7[6]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(6) = DFFEAS((((\f|r6\(6) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r6\(6),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(6));

-- Location: LC_X9_Y6_N6
\f|Add5~15\ : maxv_lcell
-- Equation(s):
-- \f|Add5~15_combout\ = \f|r6\(6) $ (\f|r7\(6) $ ((!(!\f|Add5~7\ & \f|Add5~12\) # (\f|Add5~7\ & \f|Add5~12COUT1_50\))))
-- \f|Add5~17\ = CARRY((\f|r6\(6) & ((\f|r7\(6)) # (!\f|Add5~12\))) # (!\f|r6\(6) & (\f|r7\(6) & !\f|Add5~12\)))
-- \f|Add5~17COUT1_51\ = CARRY((\f|r6\(6) & ((\f|r7\(6)) # (!\f|Add5~12COUT1_50\))) # (!\f|r6\(6) & (\f|r7\(6) & !\f|Add5~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r6\(6),
	datab => \f|r7\(6),
	cin => \f|Add5~7\,
	cin0 => \f|Add5~12\,
	cin1 => \f|Add5~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~15_combout\,
	cout0 => \f|Add5~17\,
	cout1 => \f|Add5~17COUT1_51\);

-- Location: LC_X7_Y6_N6
\f|Add3~15\ : maxv_lcell
-- Equation(s):
-- \f|Add3~15_combout\ = \f|r4\(6) $ (\f|r5\(6) $ ((!(!\f|Add3~7\ & \f|Add3~12\) # (\f|Add3~7\ & \f|Add3~12COUT1_50\))))
-- \f|Add3~17\ = CARRY((\f|r4\(6) & ((\f|r5\(6)) # (!\f|Add3~12\))) # (!\f|r4\(6) & (\f|r5\(6) & !\f|Add3~12\)))
-- \f|Add3~17COUT1_51\ = CARRY((\f|r4\(6) & ((\f|r5\(6)) # (!\f|Add3~12COUT1_50\))) # (!\f|r4\(6) & (\f|r5\(6) & !\f|Add3~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r4\(6),
	datab => \f|r5\(6),
	cin => \f|Add3~7\,
	cin0 => \f|Add3~12\,
	cin1 => \f|Add3~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~15_combout\,
	cout0 => \f|Add3~17\,
	cout1 => \f|Add3~17COUT1_51\);

-- Location: LC_X8_Y6_N6
\f|Add4~15\ : maxv_lcell
-- Equation(s):
-- \f|Add4~15_combout\ = \f|Add5~15_combout\ $ (\f|Add3~15_combout\ $ ((!(!\f|Add4~7\ & \f|Add4~12\) # (\f|Add4~7\ & \f|Add4~12COUT1_55\))))
-- \f|Add4~17\ = CARRY((\f|Add5~15_combout\ & ((\f|Add3~15_combout\) # (!\f|Add4~12\))) # (!\f|Add5~15_combout\ & (\f|Add3~15_combout\ & !\f|Add4~12\)))
-- \f|Add4~17COUT1_56\ = CARRY((\f|Add5~15_combout\ & ((\f|Add3~15_combout\) # (!\f|Add4~12COUT1_55\))) # (!\f|Add5~15_combout\ & (\f|Add3~15_combout\ & !\f|Add4~12COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add5~15_combout\,
	datab => \f|Add3~15_combout\,
	cin => \f|Add4~7\,
	cin0 => \f|Add4~12\,
	cin1 => \f|Add4~12COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~15_combout\,
	cout0 => \f|Add4~17\,
	cout1 => \f|Add4~17COUT1_56\);

-- Location: LC_X9_Y5_N1
\f|Add6~18\ : maxv_lcell
-- Equation(s):
-- \f|Add6~18_combout\ = \f|Add2~15_combout\ $ (\f|Add4~15_combout\ $ ((!(!\f|Add6~8\ & \f|Add6~14\) # (\f|Add6~8\ & \f|Add6~14COUT1_68\))))
-- \f|Add6~20\ = CARRY((\f|Add2~15_combout\ & ((\f|Add4~15_combout\) # (!\f|Add6~14\))) # (!\f|Add2~15_combout\ & (\f|Add4~15_combout\ & !\f|Add6~14\)))
-- \f|Add6~20COUT1_69\ = CARRY((\f|Add2~15_combout\ & ((\f|Add4~15_combout\) # (!\f|Add6~14COUT1_68\))) # (!\f|Add2~15_combout\ & (\f|Add4~15_combout\ & !\f|Add6~14COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add2~15_combout\,
	datab => \f|Add4~15_combout\,
	cin => \f|Add6~8\,
	cin0 => \f|Add6~14\,
	cin1 => \f|Add6~14COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~18_combout\,
	cout0 => \f|Add6~20\,
	cout1 => \f|Add6~20COUT1_69\);

-- Location: LC_X9_Y5_N6
\f|Add6~23\ : maxv_lcell
-- Equation(s):
-- \f|Add6~23_combout\ = ((\f|fsm_state~regout\ & ((\f|Add6~18_combout\))) # (!\f|fsm_state~regout\ & (\f|Add6~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add6~23_combout\,
	datac => \f|fsm_state~regout\,
	datad => \f|Add6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~23_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_out(7),
	combout => \ADC_out~combout\(7));

-- Location: LC_X12_Y6_N9
\f|r0[7]\ : maxv_lcell
-- Equation(s):
-- \f|r0\(7) = DFFEAS((((!\reset~combout\ & \ADC_out~combout\(7)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \ADC_out~combout\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r0\(7));

-- Location: LC_X12_Y6_N7
\f|r1[7]\ : maxv_lcell
-- Equation(s):
-- \f|r1\(7) = DFFEAS((((!\reset~combout\ & \f|r0\(7)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r0\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r1\(7));

-- Location: LC_X11_Y5_N7
\f|Add0~20\ : maxv_lcell
-- Equation(s):
-- \f|Add0~20_combout\ = \f|r1\(7) $ (\f|r0\(7) $ (((!\f|Add0~7\ & \f|Add0~17\) # (\f|Add0~7\ & \f|Add0~17COUT1_51\))))
-- \f|Add0~22\ = CARRY((\f|r1\(7) & (!\f|r0\(7) & !\f|Add0~17\)) # (!\f|r1\(7) & ((!\f|Add0~17\) # (!\f|r0\(7)))))
-- \f|Add0~22COUT1_52\ = CARRY((\f|r1\(7) & (!\f|r0\(7) & !\f|Add0~17COUT1_51\)) # (!\f|r1\(7) & ((!\f|Add0~17COUT1_51\) # (!\f|r0\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r1\(7),
	datab => \f|r0\(7),
	cin => \f|Add0~7\,
	cin0 => \f|Add0~17\,
	cin1 => \f|Add0~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~20_combout\,
	cout0 => \f|Add0~22\,
	cout1 => \f|Add0~22COUT1_52\);

-- Location: LC_X12_Y7_N8
\f|r2[7]\ : maxv_lcell
-- Equation(s):
-- \f|r2\(7) = DFFEAS(((\f|r1\(7) & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \f|r1\(7),
	datac => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r2\(7));

-- Location: LC_X12_Y6_N4
\f|r3[7]\ : maxv_lcell
-- Equation(s):
-- \f|r3\(7) = DFFEAS((((!\reset~combout\ & \f|r2\(7)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r2\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r3\(7));

-- Location: LC_X11_Y7_N7
\f|Add1~20\ : maxv_lcell
-- Equation(s):
-- \f|Add1~20_combout\ = \f|r3\(7) $ (\f|r2\(7) $ (((!\f|Add1~7\ & \f|Add1~17\) # (\f|Add1~7\ & \f|Add1~17COUT1_51\))))
-- \f|Add1~22\ = CARRY((\f|r3\(7) & (!\f|r2\(7) & !\f|Add1~17\)) # (!\f|r3\(7) & ((!\f|Add1~17\) # (!\f|r2\(7)))))
-- \f|Add1~22COUT1_52\ = CARRY((\f|r3\(7) & (!\f|r2\(7) & !\f|Add1~17COUT1_51\)) # (!\f|r3\(7) & ((!\f|Add1~17COUT1_51\) # (!\f|r2\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r3\(7),
	datab => \f|r2\(7),
	cin => \f|Add1~7\,
	cin0 => \f|Add1~17\,
	cin1 => \f|Add1~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~20_combout\,
	cout0 => \f|Add1~22\,
	cout1 => \f|Add1~22COUT1_52\);

-- Location: LC_X10_Y5_N7
\f|Add2~20\ : maxv_lcell
-- Equation(s):
-- \f|Add2~20_combout\ = \f|Add0~20_combout\ $ (\f|Add1~20_combout\ $ (((!\f|Add2~7\ & \f|Add2~17\) # (\f|Add2~7\ & \f|Add2~17COUT1_56\))))
-- \f|Add2~22\ = CARRY((\f|Add0~20_combout\ & (!\f|Add1~20_combout\ & !\f|Add2~17\)) # (!\f|Add0~20_combout\ & ((!\f|Add2~17\) # (!\f|Add1~20_combout\))))
-- \f|Add2~22COUT1_57\ = CARRY((\f|Add0~20_combout\ & (!\f|Add1~20_combout\ & !\f|Add2~17COUT1_56\)) # (!\f|Add0~20_combout\ & ((!\f|Add2~17COUT1_56\) # (!\f|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add0~20_combout\,
	datab => \f|Add1~20_combout\,
	cin => \f|Add2~7\,
	cin0 => \f|Add2~17\,
	cin1 => \f|Add2~17COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~20_combout\,
	cout0 => \f|Add2~22\,
	cout1 => \f|Add2~22COUT1_57\);

-- Location: LC_X6_Y6_N4
\f|r4[7]\ : maxv_lcell
-- Equation(s):
-- \f|r4\(7) = DFFEAS((((\f|r3\(7) & !\reset~combout\))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \f|r3\(7),
	datad => \reset~combout\,
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r4\(7));

-- Location: LC_X6_Y6_N8
\f|r5[7]\ : maxv_lcell
-- Equation(s):
-- \f|r5\(7) = DFFEAS((!\reset~combout\ & (((\f|r4\(7))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datac => \f|r4\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r5\(7));

-- Location: LC_X12_Y6_N5
\f|r6[7]\ : maxv_lcell
-- Equation(s):
-- \f|r6\(7) = DFFEAS((((!\reset~combout\ & \f|r5\(7)))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \f|r5\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r6\(7));

-- Location: LC_X12_Y6_N8
\f|r7[7]\ : maxv_lcell
-- Equation(s):
-- \f|r7\(7) = DFFEAS((!\reset~combout\ & (((\f|r6\(7))))), GLOBAL(\clk~combout\), VCC, , \f|r3[4]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datac => \f|r6\(7),
	aclr => GND,
	ena => \f|r3[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|r7\(7));

-- Location: LC_X9_Y6_N7
\f|Add5~20\ : maxv_lcell
-- Equation(s):
-- \f|Add5~20_combout\ = \f|r7\(7) $ (\f|r6\(7) $ (((!\f|Add5~7\ & \f|Add5~17\) # (\f|Add5~7\ & \f|Add5~17COUT1_51\))))
-- \f|Add5~22\ = CARRY((\f|r7\(7) & (!\f|r6\(7) & !\f|Add5~17\)) # (!\f|r7\(7) & ((!\f|Add5~17\) # (!\f|r6\(7)))))
-- \f|Add5~22COUT1_52\ = CARRY((\f|r7\(7) & (!\f|r6\(7) & !\f|Add5~17COUT1_51\)) # (!\f|r7\(7) & ((!\f|Add5~17COUT1_51\) # (!\f|r6\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r7\(7),
	datab => \f|r6\(7),
	cin => \f|Add5~7\,
	cin0 => \f|Add5~17\,
	cin1 => \f|Add5~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~20_combout\,
	cout0 => \f|Add5~22\,
	cout1 => \f|Add5~22COUT1_52\);

-- Location: LC_X7_Y6_N7
\f|Add3~20\ : maxv_lcell
-- Equation(s):
-- \f|Add3~20_combout\ = \f|r5\(7) $ (\f|r4\(7) $ (((!\f|Add3~7\ & \f|Add3~17\) # (\f|Add3~7\ & \f|Add3~17COUT1_51\))))
-- \f|Add3~22\ = CARRY((\f|r5\(7) & (!\f|r4\(7) & !\f|Add3~17\)) # (!\f|r5\(7) & ((!\f|Add3~17\) # (!\f|r4\(7)))))
-- \f|Add3~22COUT1_52\ = CARRY((\f|r5\(7) & (!\f|r4\(7) & !\f|Add3~17COUT1_51\)) # (!\f|r5\(7) & ((!\f|Add3~17COUT1_51\) # (!\f|r4\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|r5\(7),
	datab => \f|r4\(7),
	cin => \f|Add3~7\,
	cin0 => \f|Add3~17\,
	cin1 => \f|Add3~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~20_combout\,
	cout0 => \f|Add3~22\,
	cout1 => \f|Add3~22COUT1_52\);

-- Location: LC_X8_Y6_N7
\f|Add4~20\ : maxv_lcell
-- Equation(s):
-- \f|Add4~20_combout\ = \f|Add5~20_combout\ $ (\f|Add3~20_combout\ $ (((!\f|Add4~7\ & \f|Add4~17\) # (\f|Add4~7\ & \f|Add4~17COUT1_56\))))
-- \f|Add4~22\ = CARRY((\f|Add5~20_combout\ & (!\f|Add3~20_combout\ & !\f|Add4~17\)) # (!\f|Add5~20_combout\ & ((!\f|Add4~17\) # (!\f|Add3~20_combout\))))
-- \f|Add4~22COUT1_57\ = CARRY((\f|Add5~20_combout\ & (!\f|Add3~20_combout\ & !\f|Add4~17COUT1_56\)) # (!\f|Add5~20_combout\ & ((!\f|Add4~17COUT1_56\) # (!\f|Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add5~20_combout\,
	datab => \f|Add3~20_combout\,
	cin => \f|Add4~7\,
	cin0 => \f|Add4~17\,
	cin1 => \f|Add4~17COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~20_combout\,
	cout0 => \f|Add4~22\,
	cout1 => \f|Add4~22COUT1_57\);

-- Location: LC_X9_Y5_N2
\f|Add6~24\ : maxv_lcell
-- Equation(s):
-- \f|Add6~24_combout\ = \f|Add2~20_combout\ $ (\f|Add4~20_combout\ $ (((!\f|Add6~8\ & \f|Add6~20\) # (\f|Add6~8\ & \f|Add6~20COUT1_69\))))
-- \f|Add6~26\ = CARRY((\f|Add2~20_combout\ & (!\f|Add4~20_combout\ & !\f|Add6~20\)) # (!\f|Add2~20_combout\ & ((!\f|Add6~20\) # (!\f|Add4~20_combout\))))
-- \f|Add6~26COUT1_70\ = CARRY((\f|Add2~20_combout\ & (!\f|Add4~20_combout\ & !\f|Add6~20COUT1_69\)) # (!\f|Add2~20_combout\ & ((!\f|Add6~20COUT1_69\) # (!\f|Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add2~20_combout\,
	datab => \f|Add4~20_combout\,
	cin => \f|Add6~8\,
	cin0 => \f|Add6~20\,
	cin1 => \f|Add6~20COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~24_combout\,
	cout0 => \f|Add6~26\,
	cout1 => \f|Add6~26COUT1_70\);

-- Location: LC_X9_Y5_N9
\f|Add6~29\ : maxv_lcell
-- Equation(s):
-- \f|Add6~29_combout\ = ((\f|fsm_state~regout\ & ((\f|Add6~24_combout\))) # (!\f|fsm_state~regout\ & (\f|Add6~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add6~29_combout\,
	datac => \f|fsm_state~regout\,
	datad => \f|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~29_combout\);

-- Location: LC_X7_Y6_N8
\f|Add3~25\ : maxv_lcell
-- Equation(s):
-- \f|Add3~25_combout\ = (((!(!\f|Add3~7\ & \f|Add3~22\) # (\f|Add3~7\ & \f|Add3~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add3~7\,
	cin0 => \f|Add3~22\,
	cin1 => \f|Add3~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add3~25_combout\);

-- Location: LC_X9_Y6_N8
\f|Add5~25\ : maxv_lcell
-- Equation(s):
-- \f|Add5~25_combout\ = (((!(!\f|Add5~7\ & \f|Add5~22\) # (\f|Add5~7\ & \f|Add5~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add5~7\,
	cin0 => \f|Add5~22\,
	cin1 => \f|Add5~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add5~25_combout\);

-- Location: LC_X8_Y6_N8
\f|Add4~25\ : maxv_lcell
-- Equation(s):
-- \f|Add4~25_combout\ = \f|Add3~25_combout\ $ (\f|Add5~25_combout\ $ ((!(!\f|Add4~7\ & \f|Add4~22\) # (\f|Add4~7\ & \f|Add4~22COUT1_57\))))
-- \f|Add4~27\ = CARRY((\f|Add3~25_combout\ & ((\f|Add5~25_combout\) # (!\f|Add4~22\))) # (!\f|Add3~25_combout\ & (\f|Add5~25_combout\ & !\f|Add4~22\)))
-- \f|Add4~27COUT1_58\ = CARRY((\f|Add3~25_combout\ & ((\f|Add5~25_combout\) # (!\f|Add4~22COUT1_57\))) # (!\f|Add3~25_combout\ & (\f|Add5~25_combout\ & !\f|Add4~22COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add3~25_combout\,
	datab => \f|Add5~25_combout\,
	cin => \f|Add4~7\,
	cin0 => \f|Add4~22\,
	cin1 => \f|Add4~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~25_combout\,
	cout0 => \f|Add4~27\,
	cout1 => \f|Add4~27COUT1_58\);

-- Location: LC_X11_Y7_N8
\f|Add1~25\ : maxv_lcell
-- Equation(s):
-- \f|Add1~25_combout\ = (((!(!\f|Add1~7\ & \f|Add1~22\) # (\f|Add1~7\ & \f|Add1~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add1~7\,
	cin0 => \f|Add1~22\,
	cin1 => \f|Add1~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add1~25_combout\);

-- Location: LC_X11_Y5_N8
\f|Add0~25\ : maxv_lcell
-- Equation(s):
-- \f|Add0~25_combout\ = (((!(!\f|Add0~7\ & \f|Add0~22\) # (\f|Add0~7\ & \f|Add0~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add0~7\,
	cin0 => \f|Add0~22\,
	cin1 => \f|Add0~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add0~25_combout\);

-- Location: LC_X10_Y5_N8
\f|Add2~25\ : maxv_lcell
-- Equation(s):
-- \f|Add2~25_combout\ = \f|Add1~25_combout\ $ (\f|Add0~25_combout\ $ ((!(!\f|Add2~7\ & \f|Add2~22\) # (\f|Add2~7\ & \f|Add2~22COUT1_57\))))
-- \f|Add2~27\ = CARRY((\f|Add1~25_combout\ & ((\f|Add0~25_combout\) # (!\f|Add2~22\))) # (!\f|Add1~25_combout\ & (\f|Add0~25_combout\ & !\f|Add2~22\)))
-- \f|Add2~27COUT1_58\ = CARRY((\f|Add1~25_combout\ & ((\f|Add0~25_combout\) # (!\f|Add2~22COUT1_57\))) # (!\f|Add1~25_combout\ & (\f|Add0~25_combout\ & !\f|Add2~22COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add1~25_combout\,
	datab => \f|Add0~25_combout\,
	cin => \f|Add2~7\,
	cin0 => \f|Add2~22\,
	cin1 => \f|Add2~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~25_combout\,
	cout0 => \f|Add2~27\,
	cout1 => \f|Add2~27COUT1_58\);

-- Location: LC_X9_Y5_N3
\f|Add6~30\ : maxv_lcell
-- Equation(s):
-- \f|Add6~30_combout\ = \f|Add4~25_combout\ $ (\f|Add2~25_combout\ $ ((!(!\f|Add6~8\ & \f|Add6~26\) # (\f|Add6~8\ & \f|Add6~26COUT1_70\))))
-- \f|Add6~32\ = CARRY((\f|Add4~25_combout\ & ((\f|Add2~25_combout\) # (!\f|Add6~26\))) # (!\f|Add4~25_combout\ & (\f|Add2~25_combout\ & !\f|Add6~26\)))
-- \f|Add6~32COUT1_71\ = CARRY((\f|Add4~25_combout\ & ((\f|Add2~25_combout\) # (!\f|Add6~26COUT1_70\))) # (!\f|Add4~25_combout\ & (\f|Add2~25_combout\ & !\f|Add6~26COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add4~25_combout\,
	datab => \f|Add2~25_combout\,
	cin => \f|Add6~8\,
	cin0 => \f|Add6~26\,
	cin1 => \f|Add6~26COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~30_combout\,
	cout0 => \f|Add6~32\,
	cout1 => \f|Add6~32COUT1_71\);

-- Location: LC_X8_Y5_N4
\f|Add6~35\ : maxv_lcell
-- Equation(s):
-- \f|Add6~35_combout\ = (\f|fsm_state~regout\ & (((\f|Add6~30_combout\)))) # (!\f|fsm_state~regout\ & (\f|Add6~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add6~35_combout\,
	datab => \f|fsm_state~regout\,
	datac => \f|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~35_combout\);

-- Location: LC_X8_Y6_N9
\f|Add4~30\ : maxv_lcell
-- Equation(s):
-- \f|Add4~30_combout\ = ((((!\f|Add4~7\ & \f|Add4~27\) # (\f|Add4~7\ & \f|Add4~27COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add4~7\,
	cin0 => \f|Add4~27\,
	cin1 => \f|Add4~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add4~30_combout\);

-- Location: LC_X10_Y5_N9
\f|Add2~30\ : maxv_lcell
-- Equation(s):
-- \f|Add2~30_combout\ = ((((!\f|Add2~7\ & \f|Add2~27\) # (\f|Add2~7\ & \f|Add2~27COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add2~7\,
	cin0 => \f|Add2~27\,
	cin1 => \f|Add2~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add2~30_combout\);

-- Location: LC_X9_Y5_N4
\f|Add6~36\ : maxv_lcell
-- Equation(s):
-- \f|Add6~36_combout\ = \f|Add4~30_combout\ $ (\f|Add2~30_combout\ $ (((!\f|Add6~8\ & \f|Add6~32\) # (\f|Add6~8\ & \f|Add6~32COUT1_71\))))
-- \f|Add6~38\ = CARRY((\f|Add4~30_combout\ & (!\f|Add2~30_combout\ & !\f|Add6~32COUT1_71\)) # (!\f|Add4~30_combout\ & ((!\f|Add6~32COUT1_71\) # (!\f|Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add4~30_combout\,
	datab => \f|Add2~30_combout\,
	cin => \f|Add6~8\,
	cin0 => \f|Add6~32\,
	cin1 => \f|Add6~32COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~36_combout\,
	cout => \f|Add6~38\);

-- Location: LC_X9_Y5_N7
\f|Add6~41\ : maxv_lcell
-- Equation(s):
-- \f|Add6~41_combout\ = ((\f|fsm_state~regout\ & ((\f|Add6~36_combout\))) # (!\f|fsm_state~regout\ & (\f|Add6~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \f|Add6~41_combout\,
	datac => \f|fsm_state~regout\,
	datad => \f|Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~41_combout\);

-- Location: LC_X9_Y5_N5
\f|Add6~42\ : maxv_lcell
-- Equation(s):
-- \f|Add6~42_combout\ = (((!\f|Add6~38\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \f|Add6~38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~42_combout\);

-- Location: LC_X9_Y5_N8
\f|Add6~47\ : maxv_lcell
-- Equation(s):
-- \f|Add6~47_combout\ = (\f|fsm_state~regout\ & (((\f|Add6~42_combout\)))) # (!\f|fsm_state~regout\ & (\f|Add6~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f|Add6~47_combout\,
	datab => \f|fsm_state~regout\,
	datac => \f|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \f|Add6~47_combout\);

-- Location: LC_X9_Y4_N8
\fadc|cs~2\ : maxv_lcell
-- Equation(s):
-- \fadc|cs~2_combout\ = (!\fadc|fsm_state.s4~regout\ & (((!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fadc|fsm_state.s4~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|cs~2_combout\);

-- Location: LC_X9_Y4_N3
\fadc|cs~1\ : maxv_lcell
-- Equation(s):
-- \fadc|cs~1_combout\ = (((\INTR~combout\ & \fadc|fsm_state.s5~regout\)) # (!\fadc|next_count~0_combout\)) # (!\fadc|cs~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTR~combout\,
	datab => \fadc|fsm_state.s5~regout\,
	datac => \fadc|cs~0_combout\,
	datad => \fadc|next_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|cs~1_combout\);

-- Location: LC_X9_Y4_N4
\fadc|C\ : maxv_lcell
-- Equation(s):
-- \fadc|cs~3\ = ((\fadc|fsm_state.s8~regout\) # ((C1_C & \fadc|cs~1_combout\))) # (!\fadc|cs~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fddd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fadc|cs~2_combout\,
	datab => \fadc|fsm_state.s8~regout\,
	datad => \fadc|cs~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|cs~3\,
	regout => \fadc|C~regout\);

-- Location: LC_X9_Y4_N5
\fadc|cs\ : maxv_lcell
-- Equation(s):
-- \fadc|cs~regout\ = DFFEAS((((\fadc|cs~3\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \fadc|cs~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fadc|cs~regout\);

-- Location: LC_X11_Y4_N7
\fadc|wr\ : maxv_lcell
-- Equation(s):
-- \fadc|wr~1\ = (\reset~combout\) # ((\fadc|wr~0\) # ((\fadc|fsm_state.s3~regout\ & \fadc|LessThan0~0_combout\)))
-- \fadc|wr~regout\ = DFFEAS(\fadc|wr~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \fadc|fsm_state.s3~regout\,
	datac => \fadc|LessThan0~0_combout\,
	datad => \fadc|wr~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|wr~1\,
	regout => \fadc|wr~regout\);

-- Location: LC_X11_Y4_N8
\fadc|W\ : maxv_lcell
-- Equation(s):
-- \fadc|wr~0\ = ((C1_W & ((\fadc|fsm_state.s3~regout\) # (!\fadc|fsm_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \fadc|fsm_state.s2~regout\,
	datac => \fadc|wr~1\,
	datad => \fadc|fsm_state.s3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|wr~0\,
	regout => \fadc|W~regout\);

-- Location: LC_X11_Y4_N6
\fadc|rd\ : maxv_lcell
-- Equation(s):
-- \fadc|rd~1\ = (\reset~combout\) # ((\fadc|rd~0\) # ((\fadc|LessThan0~0_combout\ & \fadc|fsm_state.s7~regout\)))
-- \fadc|rd~regout\ = DFFEAS(\fadc|rd~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \fadc|LessThan0~0_combout\,
	datac => \fadc|fsm_state.s7~regout\,
	datad => \fadc|rd~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|rd~1\,
	regout => \fadc|rd~regout\);

-- Location: LC_X11_Y4_N9
\fadc|R\ : maxv_lcell
-- Equation(s):
-- \fadc|rd~0\ = ((C1_R & ((\fadc|fsm_state.s7~regout\) # (!\fadc|fsm_state.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fadc|fsm_state.s7~regout\,
	datac => \fadc|rd~1\,
	datad => \fadc|fsm_state.s6~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fadc|rd~0\,
	regout => \fadc|R~regout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~5_combout\,
	oe => VCC,
	padio => ww_DAC_in(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~11_combout\,
	oe => VCC,
	padio => ww_DAC_in(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~17_combout\,
	oe => VCC,
	padio => ww_DAC_in(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~23_combout\,
	oe => VCC,
	padio => ww_DAC_in(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~29_combout\,
	oe => VCC,
	padio => ww_DAC_in(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~35_combout\,
	oe => VCC,
	padio => ww_DAC_in(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~41_combout\,
	oe => VCC,
	padio => ww_DAC_in(6));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DAC_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \f|Add6~47_combout\,
	oe => VCC,
	padio => ww_DAC_in(7));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fadc|cs~regout\,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\WR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fadc|wr~regout\,
	oe => VCC,
	padio => ww_WR);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \fadc|rd~regout\,
	oe => VCC,
	padio => ww_RD);
END structure;


