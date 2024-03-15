-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/12/2024 17:27:16"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	input_interface IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor_raw : IN std_logic;
	back_sensor_raw : IN std_logic;
	tag_read_raw : IN std_logic_vector(4 DOWNTO 0);
	front_sensor : OUT std_logic;
	back_sensor : OUT std_logic;
	tag_read : OUT std_logic_vector(4 DOWNTO 0);
	tag_valid : OUT std_logic;
	max_attempts : OUT std_logic
	);
END input_interface;

-- Design Ports Information
-- front_sensor	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_valid	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_attempts	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor_raw	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor_raw	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF input_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_front_sensor_raw : std_logic;
SIGNAL ww_back_sensor_raw : std_logic;
SIGNAL ww_tag_read_raw : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_tag_read : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_tag_valid : std_logic;
SIGNAL ww_max_attempts : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \front_sensor~output_o\ : std_logic;
SIGNAL \back_sensor~output_o\ : std_logic;
SIGNAL \tag_read[0]~output_o\ : std_logic;
SIGNAL \tag_read[1]~output_o\ : std_logic;
SIGNAL \tag_read[2]~output_o\ : std_logic;
SIGNAL \tag_read[3]~output_o\ : std_logic;
SIGNAL \tag_read[4]~output_o\ : std_logic;
SIGNAL \tag_valid~output_o\ : std_logic;
SIGNAL \max_attempts~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \front_sensor_raw~input_o\ : std_logic;
SIGNAL \front_sensor~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \front_sensor~reg0_q\ : std_logic;
SIGNAL \back_sensor_raw~input_o\ : std_logic;
SIGNAL \back_sensor~reg0feeder_combout\ : std_logic;
SIGNAL \back_sensor~reg0_q\ : std_logic;
SIGNAL \tag_read_raw[0]~input_o\ : std_logic;
SIGNAL \tag_read[0]~reg0feeder_combout\ : std_logic;
SIGNAL \tag_read[0]~reg0_q\ : std_logic;
SIGNAL \tag_read_raw[1]~input_o\ : std_logic;
SIGNAL \tag_read[1]~reg0feeder_combout\ : std_logic;
SIGNAL \tag_read[1]~reg0_q\ : std_logic;
SIGNAL \tag_read_raw[2]~input_o\ : std_logic;
SIGNAL \tag_read[2]~reg0feeder_combout\ : std_logic;
SIGNAL \tag_read[2]~reg0_q\ : std_logic;
SIGNAL \tag_read_raw[3]~input_o\ : std_logic;
SIGNAL \tag_read[3]~reg0feeder_combout\ : std_logic;
SIGNAL \tag_read[3]~reg0_q\ : std_logic;
SIGNAL \tag_read_raw[4]~input_o\ : std_logic;
SIGNAL \tag_read[4]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tag_valid~reg0feeder_combout\ : std_logic;
SIGNAL \tag_valid~reg0_q\ : std_logic;
SIGNAL \attempt_count~0_combout\ : std_logic;
SIGNAL \attempt_count~1_combout\ : std_logic;
SIGNAL \max_attempts~0_combout\ : std_logic;
SIGNAL \max_attempts~reg0_q\ : std_logic;
SIGNAL attempt_count : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor_raw <= front_sensor_raw;
ww_back_sensor_raw <= back_sensor_raw;
ww_tag_read_raw <= tag_read_raw;
front_sensor <= ww_front_sensor;
back_sensor <= ww_back_sensor;
tag_read <= ww_tag_read;
tag_valid <= ww_tag_valid;
max_attempts <= ww_max_attempts;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X26_Y0_N23
\front_sensor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \front_sensor~reg0_q\,
	devoe => ww_devoe,
	o => \front_sensor~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\back_sensor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \back_sensor~reg0_q\,
	devoe => ww_devoe,
	o => \back_sensor~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\tag_read[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_read[0]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_read[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\tag_read[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_read[1]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_read[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\tag_read[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_read[2]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_read[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\tag_read[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_read[3]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_read[3]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\tag_read[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_read[4]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_read[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\tag_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_valid~reg0_q\,
	devoe => ww_devoe,
	o => \tag_valid~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\max_attempts~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_attempts~reg0_q\,
	devoe => ww_devoe,
	o => \max_attempts~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N8
\front_sensor_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor_raw,
	o => \front_sensor_raw~input_o\);

-- Location: LCCOMB_X26_Y1_N28
\front_sensor~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \front_sensor~reg0feeder_combout\ = \front_sensor_raw~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \front_sensor_raw~input_o\,
	combout => \front_sensor~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X26_Y1_N29
\front_sensor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \front_sensor~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \front_sensor~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\back_sensor_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor_raw,
	o => \back_sensor_raw~input_o\);

-- Location: LCCOMB_X21_Y1_N16
\back_sensor~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \back_sensor~reg0feeder_combout\ = \back_sensor_raw~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \back_sensor_raw~input_o\,
	combout => \back_sensor~reg0feeder_combout\);

-- Location: FF_X21_Y1_N17
\back_sensor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \back_sensor~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \back_sensor~reg0_q\);

-- Location: IOIBUF_X1_Y29_N1
\tag_read_raw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(0),
	o => \tag_read_raw[0]~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\tag_read[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tag_read[0]~reg0feeder_combout\ = \tag_read_raw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_read_raw[0]~input_o\,
	combout => \tag_read[0]~reg0feeder_combout\);

-- Location: FF_X1_Y26_N17
\tag_read[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tag_read[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_read[0]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N15
\tag_read_raw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(1),
	o => \tag_read_raw[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\tag_read[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tag_read[1]~reg0feeder_combout\ = \tag_read_raw[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_read_raw[1]~input_o\,
	combout => \tag_read[1]~reg0feeder_combout\);

-- Location: FF_X1_Y26_N15
\tag_read[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tag_read[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_read[1]~reg0_q\);

-- Location: IOIBUF_X1_Y29_N8
\tag_read_raw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(2),
	o => \tag_read_raw[2]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\tag_read[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tag_read[2]~reg0feeder_combout\ = \tag_read_raw[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_read_raw[2]~input_o\,
	combout => \tag_read[2]~reg0feeder_combout\);

-- Location: FF_X1_Y26_N1
\tag_read[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tag_read[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_read[2]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N22
\tag_read_raw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(3),
	o => \tag_read_raw[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\tag_read[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tag_read[3]~reg0feeder_combout\ = \tag_read_raw[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_read_raw[3]~input_o\,
	combout => \tag_read[3]~reg0feeder_combout\);

-- Location: FF_X1_Y26_N23
\tag_read[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tag_read[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_read[3]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N1
\tag_read_raw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(4),
	o => \tag_read_raw[4]~input_o\);

-- Location: FF_X1_Y26_N25
\tag_read[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_read_raw[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_read[4]~reg0_q\);

-- Location: LCCOMB_X1_Y26_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\tag_read_raw[0]~input_o\ & (!\tag_read_raw[3]~input_o\ & (!\tag_read_raw[1]~input_o\ & !\tag_read_raw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[0]~input_o\,
	datab => \tag_read_raw[3]~input_o\,
	datac => \tag_read_raw[1]~input_o\,
	datad => \tag_read_raw[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\tag_read_raw[4]~input_o\) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_read_raw[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y26_N30
\tag_valid~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tag_valid~reg0feeder_combout\ = \Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~1_combout\,
	combout => \tag_valid~reg0feeder_combout\);

-- Location: FF_X1_Y26_N31
\tag_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tag_valid~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_valid~reg0_q\);

-- Location: LCCOMB_X1_Y26_N6
\attempt_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \attempt_count~0_combout\ = (!\tag_read_raw[4]~input_o\ & (\Equal0~0_combout\ & ((attempt_count(1)) # (attempt_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => attempt_count(1),
	datad => attempt_count(0),
	combout => \attempt_count~0_combout\);

-- Location: FF_X1_Y26_N7
\attempt_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \attempt_count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => attempt_count(1));

-- Location: LCCOMB_X1_Y26_N28
\attempt_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \attempt_count~1_combout\ = (!\tag_read_raw[4]~input_o\ & (\Equal0~0_combout\ & ((attempt_count(1)) # (!attempt_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => attempt_count(0),
	datad => attempt_count(1),
	combout => \attempt_count~1_combout\);

-- Location: FF_X1_Y26_N29
\attempt_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \attempt_count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => attempt_count(0));

-- Location: LCCOMB_X1_Y26_N4
\max_attempts~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \max_attempts~0_combout\ = (!\Equal0~1_combout\ & ((\max_attempts~reg0_q\) # ((attempt_count(0) & attempt_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => attempt_count(0),
	datac => \max_attempts~reg0_q\,
	datad => attempt_count(1),
	combout => \max_attempts~0_combout\);

-- Location: FF_X1_Y26_N5
\max_attempts~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \max_attempts~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \max_attempts~reg0_q\);

ww_front_sensor <= \front_sensor~output_o\;

ww_back_sensor <= \back_sensor~output_o\;

ww_tag_read(0) <= \tag_read[0]~output_o\;

ww_tag_read(1) <= \tag_read[1]~output_o\;

ww_tag_read(2) <= \tag_read[2]~output_o\;

ww_tag_read(3) <= \tag_read[3]~output_o\;

ww_tag_read(4) <= \tag_read[4]~output_o\;

ww_tag_valid <= \tag_valid~output_o\;

ww_max_attempts <= \max_attempts~output_o\;
END structure;


