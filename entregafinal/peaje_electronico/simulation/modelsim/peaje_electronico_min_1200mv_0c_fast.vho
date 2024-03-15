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

-- DATE "03/14/2024 08:11:35"

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

ENTITY 	peaje_electronico IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor_raw : IN std_logic;
	back_sensor_raw : IN std_logic;
	tag_read_raw : IN std_logic_vector(4 DOWNTO 0);
	entry_green_out : OUT std_logic;
	entry_red_out : OUT std_logic;
	exit_green_out : OUT std_logic;
	exit_red_out : OUT std_logic;
	entry_barrier_out : OUT std_logic;
	exit_barrier_out : OUT std_logic;
	green_led_out : OUT std_logic;
	red_led_out : OUT std_logic;
	alarm_out : OUT std_logic;
	cat_display_out : OUT std_logic_vector(6 DOWNTO 0);
	time_display_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END peaje_electronico;

-- Design Ports Information
-- entry_green_out	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_red_out	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_green_out	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_red_out	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_barrier_out	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_barrier_out	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led_out	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led_out	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm_out	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_read_raw[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor_raw	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor_raw	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF peaje_electronico IS
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
SIGNAL ww_entry_green_out : std_logic;
SIGNAL ww_entry_red_out : std_logic;
SIGNAL ww_exit_green_out : std_logic;
SIGNAL ww_exit_red_out : std_logic;
SIGNAL ww_entry_barrier_out : std_logic;
SIGNAL ww_exit_barrier_out : std_logic;
SIGNAL ww_green_led_out : std_logic;
SIGNAL ww_red_led_out : std_logic;
SIGNAL ww_alarm_out : std_logic;
SIGNAL ww_cat_display_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_time_display_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entry_green_out~output_o\ : std_logic;
SIGNAL \entry_red_out~output_o\ : std_logic;
SIGNAL \exit_green_out~output_o\ : std_logic;
SIGNAL \exit_red_out~output_o\ : std_logic;
SIGNAL \entry_barrier_out~output_o\ : std_logic;
SIGNAL \exit_barrier_out~output_o\ : std_logic;
SIGNAL \green_led_out~output_o\ : std_logic;
SIGNAL \red_led_out~output_o\ : std_logic;
SIGNAL \alarm_out~output_o\ : std_logic;
SIGNAL \cat_display_out[0]~output_o\ : std_logic;
SIGNAL \cat_display_out[1]~output_o\ : std_logic;
SIGNAL \cat_display_out[2]~output_o\ : std_logic;
SIGNAL \cat_display_out[3]~output_o\ : std_logic;
SIGNAL \cat_display_out[4]~output_o\ : std_logic;
SIGNAL \cat_display_out[5]~output_o\ : std_logic;
SIGNAL \cat_display_out[6]~output_o\ : std_logic;
SIGNAL \time_display_out[0]~output_o\ : std_logic;
SIGNAL \time_display_out[1]~output_o\ : std_logic;
SIGNAL \time_display_out[2]~output_o\ : std_logic;
SIGNAL \time_display_out[3]~output_o\ : std_logic;
SIGNAL \time_display_out[4]~output_o\ : std_logic;
SIGNAL \time_display_out[5]~output_o\ : std_logic;
SIGNAL \time_display_out[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tag_read_raw[4]~input_o\ : std_logic;
SIGNAL \tag_read_raw[1]~input_o\ : std_logic;
SIGNAL \tag_read_raw[3]~input_o\ : std_logic;
SIGNAL \tag_read_raw[0]~input_o\ : std_logic;
SIGNAL \tag_read_raw[2]~input_o\ : std_logic;
SIGNAL \input_interface_inst|Equal0~0_combout\ : std_logic;
SIGNAL \input_interface_inst|Equal0~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_interface_inst|tag_valid~q\ : std_logic;
SIGNAL \back_sensor_raw~input_o\ : std_logic;
SIGNAL \input_interface_inst|back_sensor~q\ : std_logic;
SIGNAL \front_sensor_raw~input_o\ : std_logic;
SIGNAL \input_interface_inst|front_sensor~q\ : std_logic;
SIGNAL \peaje_controller_inst|entry_green~0_combout\ : std_logic;
SIGNAL \peaje_controller_inst|exit_green~combout\ : std_logic;
SIGNAL \peaje_controller_inst|entry_barrier_reg~0_combout\ : std_logic;
SIGNAL \peaje_controller_inst|entry_barrier_reg~q\ : std_logic;
SIGNAL \peaje_controller_inst|exit_barrier_reg~0_combout\ : std_logic;
SIGNAL \peaje_controller_inst|exit_barrier_reg~q\ : std_logic;
SIGNAL \input_interface_inst|attempt_count~0_combout\ : std_logic;
SIGNAL \input_interface_inst|attempt_count~1_combout\ : std_logic;
SIGNAL \input_interface_inst|max_attempts~0_combout\ : std_logic;
SIGNAL \input_interface_inst|max_attempts~q\ : std_logic;
SIGNAL \peaje_controller_inst|alarm~combout\ : std_logic;
SIGNAL \peaje_controller_inst|entry_green_int~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux0~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux3~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux2~0_combout\ : std_logic;
SIGNAL \peaje_controller_inst|cat_display[1]~0_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[0]~18_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[1]~6_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[1]~7\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[2]~8_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[2]~9\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[3]~10_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[3]~11\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[4]~12_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[4]~13\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[5]~14_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux11~0_combout\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[5]~15\ : std_logic;
SIGNAL \vehicle_counter_inst|count_reg[6]~16_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux11~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux10~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux10~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux9~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux9~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux8~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux8~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux7~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux7~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux6~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux6~1_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux5~0_combout\ : std_logic;
SIGNAL \output_interface_inst|Mux5~1_combout\ : std_logic;
SIGNAL \input_interface_inst|tag_read\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_interface_inst|attempt_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vehicle_counter_inst|count_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \peaje_controller_inst|ALT_INV_cat_display[1]~0_combout\ : std_logic;
SIGNAL \output_interface_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \output_interface_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \peaje_controller_inst|ALT_INV_exit_barrier_reg~q\ : std_logic;
SIGNAL \peaje_controller_inst|ALT_INV_entry_barrier_reg~q\ : std_logic;
SIGNAL \peaje_controller_inst|ALT_INV_exit_green~combout\ : std_logic;
SIGNAL \peaje_controller_inst|ALT_INV_entry_green~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor_raw <= front_sensor_raw;
ww_back_sensor_raw <= back_sensor_raw;
ww_tag_read_raw <= tag_read_raw;
entry_green_out <= ww_entry_green_out;
entry_red_out <= ww_entry_red_out;
exit_green_out <= ww_exit_green_out;
exit_red_out <= ww_exit_red_out;
entry_barrier_out <= ww_entry_barrier_out;
exit_barrier_out <= ww_exit_barrier_out;
green_led_out <= ww_green_led_out;
red_led_out <= ww_red_led_out;
alarm_out <= ww_alarm_out;
cat_display_out <= ww_cat_display_out;
time_display_out <= ww_time_display_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\peaje_controller_inst|ALT_INV_cat_display[1]~0_combout\ <= NOT \peaje_controller_inst|cat_display[1]~0_combout\;
\output_interface_inst|ALT_INV_Mux2~0_combout\ <= NOT \output_interface_inst|Mux2~0_combout\;
\output_interface_inst|ALT_INV_Mux0~0_combout\ <= NOT \output_interface_inst|Mux0~0_combout\;
\peaje_controller_inst|ALT_INV_exit_barrier_reg~q\ <= NOT \peaje_controller_inst|exit_barrier_reg~q\;
\peaje_controller_inst|ALT_INV_entry_barrier_reg~q\ <= NOT \peaje_controller_inst|entry_barrier_reg~q\;
\peaje_controller_inst|ALT_INV_exit_green~combout\ <= NOT \peaje_controller_inst|exit_green~combout\;
\peaje_controller_inst|ALT_INV_entry_green~0_combout\ <= NOT \peaje_controller_inst|entry_green~0_combout\;

-- Location: IOOBUF_X0_Y4_N16
\entry_green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|entry_green~0_combout\,
	devoe => ww_devoe,
	o => \entry_green_out~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\entry_red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|ALT_INV_entry_green~0_combout\,
	devoe => ww_devoe,
	o => \entry_red_out~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\exit_green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|exit_green~combout\,
	devoe => ww_devoe,
	o => \exit_green_out~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\exit_red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|ALT_INV_exit_green~combout\,
	devoe => ww_devoe,
	o => \exit_red_out~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\entry_barrier_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|ALT_INV_entry_barrier_reg~q\,
	devoe => ww_devoe,
	o => \entry_barrier_out~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\exit_barrier_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|ALT_INV_exit_barrier_reg~q\,
	devoe => ww_devoe,
	o => \exit_barrier_out~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\green_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_led_out~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\red_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \red_led_out~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\alarm_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|alarm~combout\,
	devoe => ww_devoe,
	o => \alarm_out~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\cat_display_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\cat_display_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\cat_display_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\cat_display_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \peaje_controller_inst|ALT_INV_cat_display[1]~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\cat_display_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\cat_display_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cat_display_out[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\cat_display_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\time_display_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\time_display_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\time_display_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\time_display_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\time_display_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\time_display_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\time_display_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_interface_inst|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[6]~output_o\);

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

-- Location: IOIBUF_X1_Y0_N8
\tag_read_raw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(4),
	o => \tag_read_raw[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\tag_read_raw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(1),
	o => \tag_read_raw[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\tag_read_raw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(3),
	o => \tag_read_raw[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\tag_read_raw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(0),
	o => \tag_read_raw[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\tag_read_raw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_read_raw(2),
	o => \tag_read_raw[2]~input_o\);

-- Location: LCCOMB_X1_Y2_N4
\input_interface_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_interface_inst|Equal0~0_combout\ = (!\tag_read_raw[1]~input_o\ & (!\tag_read_raw[3]~input_o\ & (!\tag_read_raw[0]~input_o\ & !\tag_read_raw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[1]~input_o\,
	datab => \tag_read_raw[3]~input_o\,
	datac => \tag_read_raw[0]~input_o\,
	datad => \tag_read_raw[2]~input_o\,
	combout => \input_interface_inst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y2_N22
\input_interface_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_interface_inst|Equal0~1_combout\ = (\tag_read_raw[4]~input_o\) # (!\input_interface_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[4]~input_o\,
	datac => \input_interface_inst|Equal0~0_combout\,
	combout => \input_interface_inst|Equal0~1_combout\);

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

-- Location: FF_X1_Y2_N13
\input_interface_inst|tag_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_interface_inst|Equal0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|tag_valid~q\);

-- Location: IOIBUF_X0_Y2_N1
\back_sensor_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor_raw,
	o => \back_sensor_raw~input_o\);

-- Location: FF_X1_Y2_N29
\input_interface_inst|back_sensor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \back_sensor_raw~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|back_sensor~q\);

-- Location: IOIBUF_X1_Y0_N29
\front_sensor_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor_raw,
	o => \front_sensor_raw~input_o\);

-- Location: FF_X1_Y2_N3
\input_interface_inst|front_sensor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \front_sensor_raw~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|front_sensor~q\);

-- Location: LCCOMB_X1_Y2_N10
\peaje_controller_inst|entry_green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|entry_green~0_combout\ = (\input_interface_inst|tag_valid~q\ & (!\input_interface_inst|back_sensor~q\ & \input_interface_inst|front_sensor~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|tag_valid~q\,
	datab => \input_interface_inst|back_sensor~q\,
	datac => \input_interface_inst|front_sensor~q\,
	combout => \peaje_controller_inst|entry_green~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\peaje_controller_inst|exit_green\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|exit_green~combout\ = (!\input_interface_inst|front_sensor~q\ & \input_interface_inst|back_sensor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_interface_inst|front_sensor~q\,
	datad => \input_interface_inst|back_sensor~q\,
	combout => \peaje_controller_inst|exit_green~combout\);

-- Location: LCCOMB_X1_Y2_N18
\peaje_controller_inst|entry_barrier_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|entry_barrier_reg~0_combout\ = (\input_interface_inst|back_sensor~q\ & (((\peaje_controller_inst|entry_barrier_reg~q\ & \input_interface_inst|front_sensor~q\)))) # (!\input_interface_inst|back_sensor~q\ & 
-- ((\peaje_controller_inst|entry_barrier_reg~q\) # ((\input_interface_inst|tag_valid~q\ & \input_interface_inst|front_sensor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|tag_valid~q\,
	datab => \input_interface_inst|back_sensor~q\,
	datac => \peaje_controller_inst|entry_barrier_reg~q\,
	datad => \input_interface_inst|front_sensor~q\,
	combout => \peaje_controller_inst|entry_barrier_reg~0_combout\);

-- Location: FF_X1_Y2_N19
\peaje_controller_inst|entry_barrier_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \peaje_controller_inst|entry_barrier_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \peaje_controller_inst|entry_barrier_reg~q\);

-- Location: LCCOMB_X1_Y2_N16
\peaje_controller_inst|exit_barrier_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|exit_barrier_reg~0_combout\ = (\input_interface_inst|front_sensor~q\ & (\peaje_controller_inst|exit_barrier_reg~q\)) # (!\input_interface_inst|front_sensor~q\ & ((\input_interface_inst|back_sensor~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_interface_inst|front_sensor~q\,
	datac => \peaje_controller_inst|exit_barrier_reg~q\,
	datad => \input_interface_inst|back_sensor~q\,
	combout => \peaje_controller_inst|exit_barrier_reg~0_combout\);

-- Location: FF_X1_Y2_N17
\peaje_controller_inst|exit_barrier_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \peaje_controller_inst|exit_barrier_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \peaje_controller_inst|exit_barrier_reg~q\);

-- Location: LCCOMB_X1_Y2_N20
\input_interface_inst|attempt_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_interface_inst|attempt_count~0_combout\ = (!\tag_read_raw[4]~input_o\ & (\input_interface_inst|Equal0~0_combout\ & ((\input_interface_inst|attempt_count\(1)) # (\input_interface_inst|attempt_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[4]~input_o\,
	datab => \input_interface_inst|Equal0~0_combout\,
	datac => \input_interface_inst|attempt_count\(1),
	datad => \input_interface_inst|attempt_count\(0),
	combout => \input_interface_inst|attempt_count~0_combout\);

-- Location: FF_X1_Y2_N21
\input_interface_inst|attempt_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_interface_inst|attempt_count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|attempt_count\(1));

-- Location: LCCOMB_X1_Y2_N6
\input_interface_inst|attempt_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_interface_inst|attempt_count~1_combout\ = (!\tag_read_raw[4]~input_o\ & (\input_interface_inst|Equal0~0_combout\ & ((\input_interface_inst|attempt_count\(1)) # (!\input_interface_inst|attempt_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_read_raw[4]~input_o\,
	datab => \input_interface_inst|Equal0~0_combout\,
	datac => \input_interface_inst|attempt_count\(0),
	datad => \input_interface_inst|attempt_count\(1),
	combout => \input_interface_inst|attempt_count~1_combout\);

-- Location: FF_X1_Y2_N7
\input_interface_inst|attempt_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_interface_inst|attempt_count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|attempt_count\(0));

-- Location: LCCOMB_X1_Y2_N14
\input_interface_inst|max_attempts~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_interface_inst|max_attempts~0_combout\ = (!\input_interface_inst|Equal0~1_combout\ & ((\input_interface_inst|max_attempts~q\) # ((\input_interface_inst|attempt_count\(0) & \input_interface_inst|attempt_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|attempt_count\(0),
	datab => \input_interface_inst|Equal0~1_combout\,
	datac => \input_interface_inst|max_attempts~q\,
	datad => \input_interface_inst|attempt_count\(1),
	combout => \input_interface_inst|max_attempts~0_combout\);

-- Location: FF_X1_Y2_N15
\input_interface_inst|max_attempts\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_interface_inst|max_attempts~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|max_attempts~q\);

-- Location: LCCOMB_X1_Y2_N2
\peaje_controller_inst|alarm\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|alarm~combout\ = (!\input_interface_inst|tag_valid~q\ & (\input_interface_inst|max_attempts~q\ & (\input_interface_inst|front_sensor~q\ & !\input_interface_inst|back_sensor~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|tag_valid~q\,
	datab => \input_interface_inst|max_attempts~q\,
	datac => \input_interface_inst|front_sensor~q\,
	datad => \input_interface_inst|back_sensor~q\,
	combout => \peaje_controller_inst|alarm~combout\);

-- Location: FF_X1_Y2_N31
\input_interface_inst|tag_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_read_raw[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|tag_read\(0));

-- Location: FF_X1_Y2_N9
\input_interface_inst|tag_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_read_raw[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_interface_inst|tag_read\(1));

-- Location: LCCOMB_X1_Y2_N28
\peaje_controller_inst|entry_green_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|entry_green_int~0_combout\ = (\input_interface_inst|front_sensor~q\ & (!\input_interface_inst|back_sensor~q\ & !\input_interface_inst|tag_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|front_sensor~q\,
	datac => \input_interface_inst|back_sensor~q\,
	datad => \input_interface_inst|tag_valid~q\,
	combout => \peaje_controller_inst|entry_green_int~0_combout\);

-- Location: LCCOMB_X1_Y2_N24
\output_interface_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux0~0_combout\ = (\peaje_controller_inst|entry_green_int~0_combout\ & ((\input_interface_inst|tag_read\(0)) # (\input_interface_inst|tag_read\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|tag_read\(0),
	datac => \input_interface_inst|tag_read\(1),
	datad => \peaje_controller_inst|entry_green_int~0_combout\,
	combout => \output_interface_inst|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y2_N26
\output_interface_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux3~0_combout\ = ((\input_interface_inst|tag_read\(1)) # (!\peaje_controller_inst|entry_green_int~0_combout\)) # (!\input_interface_inst|tag_read\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|tag_read\(0),
	datac => \input_interface_inst|tag_read\(1),
	datad => \peaje_controller_inst|entry_green_int~0_combout\,
	combout => \output_interface_inst|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y2_N30
\output_interface_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux2~0_combout\ = (\input_interface_inst|tag_read\(1) & (!\input_interface_inst|tag_read\(0) & \peaje_controller_inst|entry_green_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_interface_inst|tag_read\(1),
	datac => \input_interface_inst|tag_read\(0),
	datad => \peaje_controller_inst|entry_green_int~0_combout\,
	combout => \output_interface_inst|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y2_N8
\peaje_controller_inst|cat_display[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \peaje_controller_inst|cat_display[1]~0_combout\ = (\input_interface_inst|front_sensor~q\ & (!\input_interface_inst|back_sensor~q\ & (\input_interface_inst|tag_read\(1) & !\input_interface_inst|tag_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_interface_inst|front_sensor~q\,
	datab => \input_interface_inst|back_sensor~q\,
	datac => \input_interface_inst|tag_read\(1),
	datad => \input_interface_inst|tag_valid~q\,
	combout => \peaje_controller_inst|cat_display[1]~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\vehicle_counter_inst|count_reg[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[0]~18_combout\ = !\vehicle_counter_inst|count_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vehicle_counter_inst|count_reg\(0),
	combout => \vehicle_counter_inst|count_reg[0]~18_combout\);

-- Location: FF_X29_Y28_N13
\vehicle_counter_inst|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[0]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(0));

-- Location: LCCOMB_X29_Y28_N14
\vehicle_counter_inst|count_reg[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[1]~6_combout\ = (\vehicle_counter_inst|count_reg\(0) & (\vehicle_counter_inst|count_reg\(1) $ (VCC))) # (!\vehicle_counter_inst|count_reg\(0) & (\vehicle_counter_inst|count_reg\(1) & VCC))
-- \vehicle_counter_inst|count_reg[1]~7\ = CARRY((\vehicle_counter_inst|count_reg\(0) & \vehicle_counter_inst|count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(0),
	datab => \vehicle_counter_inst|count_reg\(1),
	datad => VCC,
	combout => \vehicle_counter_inst|count_reg[1]~6_combout\,
	cout => \vehicle_counter_inst|count_reg[1]~7\);

-- Location: FF_X29_Y28_N15
\vehicle_counter_inst|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(1));

-- Location: LCCOMB_X29_Y28_N16
\vehicle_counter_inst|count_reg[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[2]~8_combout\ = (\vehicle_counter_inst|count_reg\(2) & (!\vehicle_counter_inst|count_reg[1]~7\)) # (!\vehicle_counter_inst|count_reg\(2) & ((\vehicle_counter_inst|count_reg[1]~7\) # (GND)))
-- \vehicle_counter_inst|count_reg[2]~9\ = CARRY((!\vehicle_counter_inst|count_reg[1]~7\) # (!\vehicle_counter_inst|count_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vehicle_counter_inst|count_reg\(2),
	datad => VCC,
	cin => \vehicle_counter_inst|count_reg[1]~7\,
	combout => \vehicle_counter_inst|count_reg[2]~8_combout\,
	cout => \vehicle_counter_inst|count_reg[2]~9\);

-- Location: FF_X29_Y28_N17
\vehicle_counter_inst|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[2]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(2));

-- Location: LCCOMB_X29_Y28_N18
\vehicle_counter_inst|count_reg[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[3]~10_combout\ = (\vehicle_counter_inst|count_reg\(3) & (\vehicle_counter_inst|count_reg[2]~9\ $ (GND))) # (!\vehicle_counter_inst|count_reg\(3) & (!\vehicle_counter_inst|count_reg[2]~9\ & VCC))
-- \vehicle_counter_inst|count_reg[3]~11\ = CARRY((\vehicle_counter_inst|count_reg\(3) & !\vehicle_counter_inst|count_reg[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vehicle_counter_inst|count_reg\(3),
	datad => VCC,
	cin => \vehicle_counter_inst|count_reg[2]~9\,
	combout => \vehicle_counter_inst|count_reg[3]~10_combout\,
	cout => \vehicle_counter_inst|count_reg[3]~11\);

-- Location: FF_X29_Y28_N19
\vehicle_counter_inst|count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[3]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(3));

-- Location: LCCOMB_X29_Y28_N20
\vehicle_counter_inst|count_reg[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[4]~12_combout\ = (\vehicle_counter_inst|count_reg\(4) & (!\vehicle_counter_inst|count_reg[3]~11\)) # (!\vehicle_counter_inst|count_reg\(4) & ((\vehicle_counter_inst|count_reg[3]~11\) # (GND)))
-- \vehicle_counter_inst|count_reg[4]~13\ = CARRY((!\vehicle_counter_inst|count_reg[3]~11\) # (!\vehicle_counter_inst|count_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vehicle_counter_inst|count_reg\(4),
	datad => VCC,
	cin => \vehicle_counter_inst|count_reg[3]~11\,
	combout => \vehicle_counter_inst|count_reg[4]~12_combout\,
	cout => \vehicle_counter_inst|count_reg[4]~13\);

-- Location: FF_X29_Y28_N21
\vehicle_counter_inst|count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[4]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(4));

-- Location: LCCOMB_X29_Y28_N22
\vehicle_counter_inst|count_reg[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[5]~14_combout\ = (\vehicle_counter_inst|count_reg\(5) & (\vehicle_counter_inst|count_reg[4]~13\ $ (GND))) # (!\vehicle_counter_inst|count_reg\(5) & (!\vehicle_counter_inst|count_reg[4]~13\ & VCC))
-- \vehicle_counter_inst|count_reg[5]~15\ = CARRY((\vehicle_counter_inst|count_reg\(5) & !\vehicle_counter_inst|count_reg[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(5),
	datad => VCC,
	cin => \vehicle_counter_inst|count_reg[4]~13\,
	combout => \vehicle_counter_inst|count_reg[5]~14_combout\,
	cout => \vehicle_counter_inst|count_reg[5]~15\);

-- Location: FF_X29_Y28_N23
\vehicle_counter_inst|count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[5]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(5));

-- Location: LCCOMB_X29_Y28_N26
\output_interface_inst|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux11~0_combout\ = (\vehicle_counter_inst|count_reg\(1) & (\vehicle_counter_inst|count_reg\(3))) # (!\vehicle_counter_inst|count_reg\(1) & (\vehicle_counter_inst|count_reg\(2) $ (((!\vehicle_counter_inst|count_reg\(3) & 
-- \vehicle_counter_inst|count_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux11~0_combout\);

-- Location: LCCOMB_X29_Y28_N24
\vehicle_counter_inst|count_reg[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehicle_counter_inst|count_reg[6]~16_combout\ = \vehicle_counter_inst|count_reg[5]~15\ $ (\vehicle_counter_inst|count_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vehicle_counter_inst|count_reg\(6),
	cin => \vehicle_counter_inst|count_reg[5]~15\,
	combout => \vehicle_counter_inst|count_reg[6]~16_combout\);

-- Location: FF_X29_Y28_N25
\vehicle_counter_inst|count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehicle_counter_inst|count_reg[6]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehicle_counter_inst|count_reg\(6));

-- Location: LCCOMB_X30_Y28_N0
\output_interface_inst|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux11~1_combout\ = (\vehicle_counter_inst|count_reg\(4)) # ((\vehicle_counter_inst|count_reg\(5)) # ((\output_interface_inst|Mux11~0_combout\) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(4),
	datab => \vehicle_counter_inst|count_reg\(5),
	datac => \output_interface_inst|Mux11~0_combout\,
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux11~1_combout\);

-- Location: LCCOMB_X29_Y28_N4
\output_interface_inst|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux10~0_combout\ = (\vehicle_counter_inst|count_reg\(3) & ((\vehicle_counter_inst|count_reg\(2)) # ((\vehicle_counter_inst|count_reg\(1))))) # (!\vehicle_counter_inst|count_reg\(3) & (\vehicle_counter_inst|count_reg\(2) & 
-- (\vehicle_counter_inst|count_reg\(0) $ (\vehicle_counter_inst|count_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\output_interface_inst|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux10~1_combout\ = (\vehicle_counter_inst|count_reg\(4)) # ((\vehicle_counter_inst|count_reg\(5)) # ((\output_interface_inst|Mux10~0_combout\) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(4),
	datab => \vehicle_counter_inst|count_reg\(5),
	datac => \output_interface_inst|Mux10~0_combout\,
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux10~1_combout\);

-- Location: LCCOMB_X29_Y28_N6
\output_interface_inst|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux9~0_combout\ = (\vehicle_counter_inst|count_reg\(2) & (\vehicle_counter_inst|count_reg\(3))) # (!\vehicle_counter_inst|count_reg\(2) & (\vehicle_counter_inst|count_reg\(1) & ((\vehicle_counter_inst|count_reg\(3)) # 
-- (!\vehicle_counter_inst|count_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux9~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\output_interface_inst|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux9~1_combout\ = (\vehicle_counter_inst|count_reg\(4)) # ((\vehicle_counter_inst|count_reg\(5)) # ((\output_interface_inst|Mux9~0_combout\) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(4),
	datab => \vehicle_counter_inst|count_reg\(5),
	datac => \output_interface_inst|Mux9~0_combout\,
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux9~1_combout\);

-- Location: LCCOMB_X29_Y28_N8
\output_interface_inst|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux8~0_combout\ = (\vehicle_counter_inst|count_reg\(1) & ((\vehicle_counter_inst|count_reg\(3)) # ((\vehicle_counter_inst|count_reg\(2) & \vehicle_counter_inst|count_reg\(0))))) # (!\vehicle_counter_inst|count_reg\(1) & 
-- (\vehicle_counter_inst|count_reg\(2) $ (((!\vehicle_counter_inst|count_reg\(3) & \vehicle_counter_inst|count_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\output_interface_inst|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux8~1_combout\ = (\output_interface_inst|Mux8~0_combout\) # ((\vehicle_counter_inst|count_reg\(5)) # ((\vehicle_counter_inst|count_reg\(4)) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_interface_inst|Mux8~0_combout\,
	datab => \vehicle_counter_inst|count_reg\(5),
	datac => \vehicle_counter_inst|count_reg\(4),
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux8~1_combout\);

-- Location: LCCOMB_X29_Y28_N10
\output_interface_inst|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux7~0_combout\ = (\vehicle_counter_inst|count_reg\(0)) # ((\vehicle_counter_inst|count_reg\(1) & (\vehicle_counter_inst|count_reg\(3))) # (!\vehicle_counter_inst|count_reg\(1) & ((\vehicle_counter_inst|count_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\output_interface_inst|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux7~1_combout\ = (\output_interface_inst|Mux7~0_combout\) # ((\vehicle_counter_inst|count_reg\(4)) # ((\vehicle_counter_inst|count_reg\(5)) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_interface_inst|Mux7~0_combout\,
	datab => \vehicle_counter_inst|count_reg\(4),
	datac => \vehicle_counter_inst|count_reg\(5),
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux7~1_combout\);

-- Location: LCCOMB_X29_Y28_N30
\output_interface_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux6~0_combout\ = (\vehicle_counter_inst|count_reg\(2) & ((\vehicle_counter_inst|count_reg\(3)) # ((\vehicle_counter_inst|count_reg\(0) & \vehicle_counter_inst|count_reg\(1))))) # (!\vehicle_counter_inst|count_reg\(2) & 
-- ((\vehicle_counter_inst|count_reg\(1)) # ((!\vehicle_counter_inst|count_reg\(3) & \vehicle_counter_inst|count_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y28_N28
\output_interface_inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux6~1_combout\ = (\output_interface_inst|Mux6~0_combout\) # ((\vehicle_counter_inst|count_reg\(4)) # ((\vehicle_counter_inst|count_reg\(5)) # (\vehicle_counter_inst|count_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_interface_inst|Mux6~0_combout\,
	datab => \vehicle_counter_inst|count_reg\(4),
	datac => \vehicle_counter_inst|count_reg\(5),
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y28_N2
\output_interface_inst|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux5~0_combout\ = (\vehicle_counter_inst|count_reg\(2) & (!\vehicle_counter_inst|count_reg\(3) & ((!\vehicle_counter_inst|count_reg\(1)) # (!\vehicle_counter_inst|count_reg\(0))))) # (!\vehicle_counter_inst|count_reg\(2) & 
-- (\vehicle_counter_inst|count_reg\(3) $ (((\vehicle_counter_inst|count_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_counter_inst|count_reg\(3),
	datab => \vehicle_counter_inst|count_reg\(2),
	datac => \vehicle_counter_inst|count_reg\(0),
	datad => \vehicle_counter_inst|count_reg\(1),
	combout => \output_interface_inst|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\output_interface_inst|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_interface_inst|Mux5~1_combout\ = ((\vehicle_counter_inst|count_reg\(5)) # ((\vehicle_counter_inst|count_reg\(4)) # (\vehicle_counter_inst|count_reg\(6)))) # (!\output_interface_inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_interface_inst|Mux5~0_combout\,
	datab => \vehicle_counter_inst|count_reg\(5),
	datac => \vehicle_counter_inst|count_reg\(4),
	datad => \vehicle_counter_inst|count_reg\(6),
	combout => \output_interface_inst|Mux5~1_combout\);

ww_entry_green_out <= \entry_green_out~output_o\;

ww_entry_red_out <= \entry_red_out~output_o\;

ww_exit_green_out <= \exit_green_out~output_o\;

ww_exit_red_out <= \exit_red_out~output_o\;

ww_entry_barrier_out <= \entry_barrier_out~output_o\;

ww_exit_barrier_out <= \exit_barrier_out~output_o\;

ww_green_led_out <= \green_led_out~output_o\;

ww_red_led_out <= \red_led_out~output_o\;

ww_alarm_out <= \alarm_out~output_o\;

ww_cat_display_out(0) <= \cat_display_out[0]~output_o\;

ww_cat_display_out(1) <= \cat_display_out[1]~output_o\;

ww_cat_display_out(2) <= \cat_display_out[2]~output_o\;

ww_cat_display_out(3) <= \cat_display_out[3]~output_o\;

ww_cat_display_out(4) <= \cat_display_out[4]~output_o\;

ww_cat_display_out(5) <= \cat_display_out[5]~output_o\;

ww_cat_display_out(6) <= \cat_display_out[6]~output_o\;

ww_time_display_out(0) <= \time_display_out[0]~output_o\;

ww_time_display_out(1) <= \time_display_out[1]~output_o\;

ww_time_display_out(2) <= \time_display_out[2]~output_o\;

ww_time_display_out(3) <= \time_display_out[3]~output_o\;

ww_time_display_out(4) <= \time_display_out[4]~output_o\;

ww_time_display_out(5) <= \time_display_out[5]~output_o\;

ww_time_display_out(6) <= \time_display_out[6]~output_o\;
END structure;


