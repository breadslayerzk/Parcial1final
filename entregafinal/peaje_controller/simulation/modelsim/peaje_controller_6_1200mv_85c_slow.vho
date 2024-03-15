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

-- DATE "03/14/2024 08:08:09"

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

ENTITY 	peaje_controller IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor : IN std_logic;
	back_sensor : IN std_logic;
	tag_read : IN std_logic_vector(4 DOWNTO 0);
	tag_valid : IN std_logic;
	cat_code : IN std_logic_vector(1 DOWNTO 0);
	timeout : IN std_logic;
	led_toggle : IN std_logic;
	max_attempts : IN std_logic;
	entry_green : OUT std_logic;
	entry_red : OUT std_logic;
	exit_green : OUT std_logic;
	exit_red : OUT std_logic;
	entry_barrier : OUT std_logic;
	exit_barrier : OUT std_logic;
	green_led : OUT std_logic;
	red_led : OUT std_logic;
	alarm : OUT std_logic;
	cat_display : OUT std_logic_vector(1 DOWNTO 0)
	);
END peaje_controller;

-- Design Ports Information
-- tag_read[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_green	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_red	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_green	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_red	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_barrier	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_barrier	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_valid	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeout	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_toggle	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_attempts	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_code[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_code[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF peaje_controller IS
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
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_tag_read : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_tag_valid : std_logic;
SIGNAL ww_cat_code : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_timeout : std_logic;
SIGNAL ww_led_toggle : std_logic;
SIGNAL ww_max_attempts : std_logic;
SIGNAL ww_entry_green : std_logic;
SIGNAL ww_entry_red : std_logic;
SIGNAL ww_exit_green : std_logic;
SIGNAL ww_exit_red : std_logic;
SIGNAL ww_entry_barrier : std_logic;
SIGNAL ww_exit_barrier : std_logic;
SIGNAL ww_green_led : std_logic;
SIGNAL ww_red_led : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_cat_display : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tag_read[2]~input_o\ : std_logic;
SIGNAL \tag_read[3]~input_o\ : std_logic;
SIGNAL \tag_read[4]~input_o\ : std_logic;
SIGNAL \entry_green~output_o\ : std_logic;
SIGNAL \entry_red~output_o\ : std_logic;
SIGNAL \exit_green~output_o\ : std_logic;
SIGNAL \exit_red~output_o\ : std_logic;
SIGNAL \entry_barrier~output_o\ : std_logic;
SIGNAL \exit_barrier~output_o\ : std_logic;
SIGNAL \green_led~output_o\ : std_logic;
SIGNAL \red_led~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \cat_display[0]~output_o\ : std_logic;
SIGNAL \cat_display[1]~output_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \tag_valid~input_o\ : std_logic;
SIGNAL \timeout~input_o\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \entry_green_int~0_combout\ : std_logic;
SIGNAL \vehicle_passed~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entry_barrier_reg~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \entry_barrier_reg~q\ : std_logic;
SIGNAL \exit_barrier_reg~0_combout\ : std_logic;
SIGNAL \exit_barrier_reg~q\ : std_logic;
SIGNAL \led_toggle~input_o\ : std_logic;
SIGNAL \green_led~0_combout\ : std_logic;
SIGNAL \max_attempts~input_o\ : std_logic;
SIGNAL \red_led~2_combout\ : std_logic;
SIGNAL \red_led~3_combout\ : std_logic;
SIGNAL \alarm~0_combout\ : std_logic;
SIGNAL \tag_read[0]~input_o\ : std_logic;
SIGNAL \cat_code[0]~input_o\ : std_logic;
SIGNAL \entry_green_int~1_combout\ : std_logic;
SIGNAL \cat_display~0_combout\ : std_logic;
SIGNAL \tag_read[1]~input_o\ : std_logic;
SIGNAL \cat_code[1]~input_o\ : std_logic;
SIGNAL \cat_display~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_exit_barrier_reg~q\ : std_logic;
SIGNAL \ALT_INV_entry_barrier_reg~q\ : std_logic;
SIGNAL \ALT_INV_vehicle_passed~0_combout\ : std_logic;
SIGNAL \ALT_INV_entry_green_int~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor <= front_sensor;
ww_back_sensor <= back_sensor;
ww_tag_read <= tag_read;
ww_tag_valid <= tag_valid;
ww_cat_code <= cat_code;
ww_timeout <= timeout;
ww_led_toggle <= led_toggle;
ww_max_attempts <= max_attempts;
entry_green <= ww_entry_green;
entry_red <= ww_entry_red;
exit_green <= ww_exit_green;
exit_red <= ww_exit_red;
entry_barrier <= ww_entry_barrier;
exit_barrier <= ww_exit_barrier;
green_led <= ww_green_led;
red_led <= ww_red_led;
alarm <= ww_alarm;
cat_display <= ww_cat_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_exit_barrier_reg~q\ <= NOT \exit_barrier_reg~q\;
\ALT_INV_entry_barrier_reg~q\ <= NOT \entry_barrier_reg~q\;
\ALT_INV_vehicle_passed~0_combout\ <= NOT \vehicle_passed~0_combout\;
\ALT_INV_entry_green_int~0_combout\ <= NOT \entry_green_int~0_combout\;

-- Location: IOOBUF_X0_Y9_N23
\entry_green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entry_green_int~0_combout\,
	devoe => ww_devoe,
	o => \entry_green~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\entry_red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_entry_green_int~0_combout\,
	devoe => ww_devoe,
	o => \entry_red~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\exit_green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vehicle_passed~0_combout\,
	devoe => ww_devoe,
	o => \exit_green~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\exit_red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vehicle_passed~0_combout\,
	devoe => ww_devoe,
	o => \exit_red~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\entry_barrier~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_entry_barrier_reg~q\,
	devoe => ww_devoe,
	o => \entry_barrier~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\exit_barrier~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_exit_barrier_reg~q\,
	devoe => ww_devoe,
	o => \exit_barrier~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\green_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_led~0_combout\,
	devoe => ww_devoe,
	o => \green_led~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\red_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red_led~3_combout\,
	devoe => ww_devoe,
	o => \red_led~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm~0_combout\,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\cat_display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cat_display~0_combout\,
	devoe => ww_devoe,
	o => \cat_display[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\cat_display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cat_display~1_combout\,
	devoe => ww_devoe,
	o => \cat_display[1]~output_o\);

-- Location: IOIBUF_X0_Y9_N1
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\tag_valid~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_valid,
	o => \tag_valid~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\timeout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeout,
	o => \timeout~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\entry_green_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \entry_green_int~0_combout\ = (\front_sensor~input_o\ & (\tag_valid~input_o\ & (!\timeout~input_o\ & !\back_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \tag_valid~input_o\,
	datac => \timeout~input_o\,
	datad => \back_sensor~input_o\,
	combout => \entry_green_int~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\vehicle_passed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_passed~0_combout\ = (!\front_sensor~input_o\ & \back_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => \back_sensor~input_o\,
	combout => \vehicle_passed~0_combout\);

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

-- Location: LCCOMB_X1_Y8_N8
\entry_barrier_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \entry_barrier_reg~0_combout\ = (\front_sensor~input_o\ & ((\entry_barrier_reg~q\) # ((\tag_valid~input_o\ & !\back_sensor~input_o\)))) # (!\front_sensor~input_o\ & (((\entry_barrier_reg~q\ & !\back_sensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \tag_valid~input_o\,
	datac => \entry_barrier_reg~q\,
	datad => \back_sensor~input_o\,
	combout => \entry_barrier_reg~0_combout\);

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

-- Location: FF_X1_Y8_N9
entry_barrier_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \entry_barrier_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry_barrier_reg~q\);

-- Location: LCCOMB_X1_Y8_N22
\exit_barrier_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \exit_barrier_reg~0_combout\ = (\front_sensor~input_o\ & (\exit_barrier_reg~q\)) # (!\front_sensor~input_o\ & ((\back_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => \exit_barrier_reg~q\,
	datad => \back_sensor~input_o\,
	combout => \exit_barrier_reg~0_combout\);

-- Location: FF_X1_Y8_N23
exit_barrier_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exit_barrier_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exit_barrier_reg~q\);

-- Location: IOIBUF_X0_Y7_N1
\led_toggle~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_toggle,
	o => \led_toggle~input_o\);

-- Location: LCCOMB_X1_Y8_N4
\green_led~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green_led~0_combout\ = (\front_sensor~input_o\ & (\tag_valid~input_o\ & (\led_toggle~input_o\ & !\back_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \tag_valid~input_o\,
	datac => \led_toggle~input_o\,
	datad => \back_sensor~input_o\,
	combout => \green_led~0_combout\);

-- Location: IOIBUF_X0_Y7_N22
\max_attempts~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max_attempts,
	o => \max_attempts~input_o\);

-- Location: LCCOMB_X1_Y8_N12
\red_led~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red_led~2_combout\ = (\led_toggle~input_o\ & ((\timeout~input_o\) # ((!\tag_valid~input_o\ & !\max_attempts~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_toggle~input_o\,
	datab => \tag_valid~input_o\,
	datac => \timeout~input_o\,
	datad => \max_attempts~input_o\,
	combout => \red_led~2_combout\);

-- Location: LCCOMB_X1_Y8_N26
\red_led~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red_led~3_combout\ = (\front_sensor~input_o\ & (!\back_sensor~input_o\ & \red_led~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => \back_sensor~input_o\,
	datad => \red_led~2_combout\,
	combout => \red_led~3_combout\);

-- Location: LCCOMB_X1_Y8_N14
\alarm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarm~0_combout\ = (\front_sensor~input_o\ & (!\tag_valid~input_o\ & (!\back_sensor~input_o\ & \max_attempts~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \tag_valid~input_o\,
	datac => \back_sensor~input_o\,
	datad => \max_attempts~input_o\,
	combout => \alarm~0_combout\);

-- Location: IOIBUF_X0_Y7_N8
\tag_read[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read(0),
	o => \tag_read[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\cat_code[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat_code(0),
	o => \cat_code[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N10
\entry_green_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \entry_green_int~1_combout\ = (\front_sensor~input_o\ & !\back_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => \back_sensor~input_o\,
	combout => \entry_green_int~1_combout\);

-- Location: LCCOMB_X1_Y8_N16
\cat_display~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cat_display~0_combout\ = (\entry_green_int~1_combout\ & ((\tag_valid~input_o\ & ((\cat_code[0]~input_o\))) # (!\tag_valid~input_o\ & (\tag_read[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read[0]~input_o\,
	datab => \cat_code[0]~input_o\,
	datac => \tag_valid~input_o\,
	datad => \entry_green_int~1_combout\,
	combout => \cat_display~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\tag_read[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read(1),
	o => \tag_read[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\cat_code[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat_code(1),
	o => \cat_code[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\cat_display~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cat_display~1_combout\ = (\entry_green_int~1_combout\ & ((\tag_valid~input_o\ & ((\cat_code[1]~input_o\))) # (!\tag_valid~input_o\ & (\tag_read[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read[1]~input_o\,
	datab => \tag_valid~input_o\,
	datac => \cat_code[1]~input_o\,
	datad => \entry_green_int~1_combout\,
	combout => \cat_display~1_combout\);

-- Location: IOIBUF_X41_Y25_N1
\tag_read[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read(2),
	o => \tag_read[2]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\tag_read[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read(3),
	o => \tag_read[3]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\tag_read[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read(4),
	o => \tag_read[4]~input_o\);

ww_entry_green <= \entry_green~output_o\;

ww_entry_red <= \entry_red~output_o\;

ww_exit_green <= \exit_green~output_o\;

ww_exit_red <= \exit_red~output_o\;

ww_entry_barrier <= \entry_barrier~output_o\;

ww_exit_barrier <= \exit_barrier~output_o\;

ww_green_led <= \green_led~output_o\;

ww_red_led <= \red_led~output_o\;

ww_alarm <= \alarm~output_o\;

ww_cat_display(0) <= \cat_display[0]~output_o\;

ww_cat_display(1) <= \cat_display[1]~output_o\;
END structure;


