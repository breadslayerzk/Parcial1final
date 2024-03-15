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

-- DATE "03/12/2024 17:16:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	output_interface IS
    PORT (
	entry_green : IN std_logic;
	entry_red : IN std_logic;
	exit_green : IN std_logic;
	exit_red : IN std_logic;
	entry_barrier : IN std_logic;
	exit_barrier : IN std_logic;
	green_led : IN std_logic;
	red_led : IN std_logic;
	alarm : IN std_logic;
	cat_display : IN std_logic_vector(1 DOWNTO 0);
	time_display : IN std_logic_vector(6 DOWNTO 0);
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
END output_interface;

-- Design Ports Information
-- entry_green_out	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_red_out	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_green_out	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_red_out	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_barrier_out	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_barrier_out	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led_out	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led_out	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm_out	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display_out[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display_out[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_green	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_red	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_green	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_red	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry_barrier	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exit_barrier	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat_display[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_display[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF output_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
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
SIGNAL ww_time_display : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \entry_green~input_o\ : std_logic;
SIGNAL \entry_red~input_o\ : std_logic;
SIGNAL \exit_green~input_o\ : std_logic;
SIGNAL \exit_red~input_o\ : std_logic;
SIGNAL \entry_barrier~input_o\ : std_logic;
SIGNAL \exit_barrier~input_o\ : std_logic;
SIGNAL \green_led~input_o\ : std_logic;
SIGNAL \red_led~input_o\ : std_logic;
SIGNAL \alarm~input_o\ : std_logic;
SIGNAL \cat_display[0]~input_o\ : std_logic;
SIGNAL \cat_display[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \time_display[5]~input_o\ : std_logic;
SIGNAL \time_display[0]~input_o\ : std_logic;
SIGNAL \time_display[3]~input_o\ : std_logic;
SIGNAL \time_display[1]~input_o\ : std_logic;
SIGNAL \time_display[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \time_display[6]~input_o\ : std_logic;
SIGNAL \time_display[4]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_cat_display[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_entry_green <= entry_green;
ww_entry_red <= entry_red;
ww_exit_green <= exit_green;
ww_exit_red <= exit_red;
ww_entry_barrier <= entry_barrier;
ww_exit_barrier <= exit_barrier;
ww_green_led <= green_led;
ww_red_led <= red_led;
ww_alarm <= alarm;
ww_cat_display <= cat_display;
ww_time_display <= time_display;
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
\ALT_INV_cat_display[1]~input_o\ <= NOT \cat_display[1]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X19_Y0_N9
\entry_green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entry_green~input_o\,
	devoe => ww_devoe,
	o => \entry_green_out~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\entry_red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entry_red~input_o\,
	devoe => ww_devoe,
	o => \entry_red_out~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\exit_green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exit_green~input_o\,
	devoe => ww_devoe,
	o => \exit_green_out~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\exit_red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exit_red~input_o\,
	devoe => ww_devoe,
	o => \exit_red_out~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\entry_barrier_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entry_barrier~input_o\,
	devoe => ww_devoe,
	o => \entry_barrier_out~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\exit_barrier_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exit_barrier~input_o\,
	devoe => ww_devoe,
	o => \exit_barrier_out~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\green_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_led~input_o\,
	devoe => ww_devoe,
	o => \green_led_out~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\red_led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red_led~input_o\,
	devoe => ww_devoe,
	o => \red_led_out~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\alarm_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm~input_o\,
	devoe => ww_devoe,
	o => \alarm_out~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\cat_display_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\cat_display_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\cat_display_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[2]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\cat_display_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cat_display[1]~input_o\,
	devoe => ww_devoe,
	o => \cat_display_out[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\cat_display_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N30
\cat_display_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cat_display_out[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\time_display_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[0]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\time_display_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[1]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\time_display_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\time_display_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[3]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\time_display_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[4]~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\time_display_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\time_display_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \time_display_out[6]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\entry_green~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry_green,
	o => \entry_green~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\entry_red~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry_red,
	o => \entry_red~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\exit_green~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exit_green,
	o => \exit_green~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\exit_red~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exit_red,
	o => \exit_red~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\entry_barrier~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry_barrier,
	o => \entry_barrier~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\exit_barrier~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exit_barrier,
	o => \exit_barrier~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\green_led~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_led,
	o => \green_led~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\red_led~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_red_led,
	o => \red_led~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\alarm~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alarm,
	o => \alarm~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\cat_display[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat_display(0),
	o => \cat_display[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\cat_display[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat_display(1),
	o => \cat_display[1]~input_o\);

-- Location: LCCOMB_X2_Y1_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\cat_display[0]~input_o\) # (\cat_display[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cat_display[0]~input_o\,
	datad => \cat_display[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y1_N2
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\cat_display[1]~input_o\) # (!\cat_display[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cat_display[0]~input_o\,
	datad => \cat_display[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X2_Y1_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\cat_display[0]~input_o\) # (!\cat_display[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cat_display[0]~input_o\,
	datad => \cat_display[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y1_N30
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\cat_display[0]~input_o\ & \cat_display[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cat_display[0]~input_o\,
	datad => \cat_display[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X37_Y29_N8
\time_display[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(5),
	o => \time_display[5]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\time_display[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(0),
	o => \time_display[0]~input_o\);

-- Location: IOIBUF_X41_Y27_N8
\time_display[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(3),
	o => \time_display[3]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\time_display[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(1),
	o => \time_display[1]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\time_display[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(2),
	o => \time_display[2]~input_o\);

-- Location: LCCOMB_X40_Y26_N0
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\time_display[1]~input_o\ & (((\time_display[3]~input_o\)))) # (!\time_display[1]~input_o\ & (\time_display[2]~input_o\ $ (((\time_display[0]~input_o\ & !\time_display[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X41_Y25_N22
\time_display[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(6),
	o => \time_display[6]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\time_display[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_display(4),
	o => \time_display[4]~input_o\);

-- Location: LCCOMB_X40_Y26_N2
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\time_display[5]~input_o\) # ((\Mux11~0_combout\) # ((\time_display[6]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X40_Y26_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\time_display[3]~input_o\ & (((\time_display[1]~input_o\) # (\time_display[2]~input_o\)))) # (!\time_display[3]~input_o\ & (\time_display[2]~input_o\ & (\time_display[0]~input_o\ $ (\time_display[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X40_Y26_N6
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\time_display[5]~input_o\) # ((\Mux10~0_combout\) # ((\time_display[6]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X40_Y26_N8
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\time_display[2]~input_o\ & (((\time_display[3]~input_o\)))) # (!\time_display[2]~input_o\ & (\time_display[1]~input_o\ & ((\time_display[3]~input_o\) # (!\time_display[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X40_Y26_N26
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\time_display[5]~input_o\) # ((\Mux9~0_combout\) # ((\time_display[6]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X40_Y26_N12
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\time_display[1]~input_o\ & ((\time_display[3]~input_o\) # ((\time_display[0]~input_o\ & \time_display[2]~input_o\)))) # (!\time_display[1]~input_o\ & (\time_display[2]~input_o\ $ (((\time_display[0]~input_o\ & 
-- !\time_display[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X40_Y26_N14
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\time_display[6]~input_o\) # ((\time_display[5]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \time_display[6]~input_o\,
	datac => \time_display[5]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X40_Y26_N16
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\time_display[0]~input_o\) # ((\time_display[1]~input_o\ & (\time_display[3]~input_o\)) # (!\time_display[1]~input_o\ & ((\time_display[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X40_Y26_N10
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\time_display[5]~input_o\) # ((\Mux7~0_combout\) # ((\time_display[6]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X40_Y26_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\time_display[0]~input_o\ & ((\time_display[1]~input_o\) # (\time_display[3]~input_o\ $ (!\time_display[2]~input_o\)))) # (!\time_display[0]~input_o\ & ((\time_display[2]~input_o\ & (\time_display[3]~input_o\)) # 
-- (!\time_display[2]~input_o\ & ((\time_display[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y26_N22
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\time_display[5]~input_o\) # ((\Mux6~0_combout\) # ((\time_display[6]~input_o\) # (\time_display[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X40_Y26_N24
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\time_display[1]~input_o\ & (!\time_display[3]~input_o\ & ((!\time_display[2]~input_o\) # (!\time_display[0]~input_o\)))) # (!\time_display[1]~input_o\ & ((\time_display[3]~input_o\ $ (\time_display[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[0]~input_o\,
	datab => \time_display[3]~input_o\,
	datac => \time_display[1]~input_o\,
	datad => \time_display[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y26_N18
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\time_display[5]~input_o\) # (((\time_display[6]~input_o\) # (\time_display[4]~input_o\)) # (!\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_display[5]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \time_display[6]~input_o\,
	datad => \time_display[4]~input_o\,
	combout => \Mux5~1_combout\);

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


