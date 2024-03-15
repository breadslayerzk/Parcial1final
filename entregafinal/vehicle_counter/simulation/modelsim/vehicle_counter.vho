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

-- DATE "03/12/2024 17:19:04"

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

ENTITY 	vehicle_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	count : OUT std_logic_vector(6 DOWNTO 0)
	);
END vehicle_counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vehicle_counter IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_count : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \count[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count_reg[0]~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \count_reg[0]~8\ : std_logic;
SIGNAL \count_reg[1]~9_combout\ : std_logic;
SIGNAL \count_reg[1]~10\ : std_logic;
SIGNAL \count_reg[2]~11_combout\ : std_logic;
SIGNAL \count_reg[2]~12\ : std_logic;
SIGNAL \count_reg[3]~13_combout\ : std_logic;
SIGNAL \count_reg[3]~14\ : std_logic;
SIGNAL \count_reg[4]~15_combout\ : std_logic;
SIGNAL \count_reg[4]~16\ : std_logic;
SIGNAL \count_reg[5]~17_combout\ : std_logic;
SIGNAL \count_reg[5]~18\ : std_logic;
SIGNAL \count_reg[6]~19_combout\ : std_logic;
SIGNAL count_reg : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;

-- Location: IOOBUF_X0_Y4_N23
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\count[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(6),
	devoe => ww_devoe,
	o => \count[6]~output_o\);

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

-- Location: LCCOMB_X1_Y4_N12
\count_reg[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[0]~7_combout\ = count_reg(0) $ (VCC)
-- \count_reg[0]~8\ = CARRY(count_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(0),
	datad => VCC,
	combout => \count_reg[0]~7_combout\,
	cout => \count_reg[0]~8\);

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

-- Location: IOIBUF_X0_Y4_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X1_Y4_N13
\count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(0));

-- Location: LCCOMB_X1_Y4_N14
\count_reg[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[1]~9_combout\ = (count_reg(1) & (!\count_reg[0]~8\)) # (!count_reg(1) & ((\count_reg[0]~8\) # (GND)))
-- \count_reg[1]~10\ = CARRY((!\count_reg[0]~8\) # (!count_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(1),
	datad => VCC,
	cin => \count_reg[0]~8\,
	combout => \count_reg[1]~9_combout\,
	cout => \count_reg[1]~10\);

-- Location: FF_X1_Y4_N15
\count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[1]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(1));

-- Location: LCCOMB_X1_Y4_N16
\count_reg[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[2]~11_combout\ = (count_reg(2) & (\count_reg[1]~10\ $ (GND))) # (!count_reg(2) & (!\count_reg[1]~10\ & VCC))
-- \count_reg[2]~12\ = CARRY((count_reg(2) & !\count_reg[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(2),
	datad => VCC,
	cin => \count_reg[1]~10\,
	combout => \count_reg[2]~11_combout\,
	cout => \count_reg[2]~12\);

-- Location: FF_X1_Y4_N17
\count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(2));

-- Location: LCCOMB_X1_Y4_N18
\count_reg[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[3]~13_combout\ = (count_reg(3) & (!\count_reg[2]~12\)) # (!count_reg(3) & ((\count_reg[2]~12\) # (GND)))
-- \count_reg[3]~14\ = CARRY((!\count_reg[2]~12\) # (!count_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(3),
	datad => VCC,
	cin => \count_reg[2]~12\,
	combout => \count_reg[3]~13_combout\,
	cout => \count_reg[3]~14\);

-- Location: FF_X1_Y4_N19
\count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[3]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(3));

-- Location: LCCOMB_X1_Y4_N20
\count_reg[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[4]~15_combout\ = (count_reg(4) & (\count_reg[3]~14\ $ (GND))) # (!count_reg(4) & (!\count_reg[3]~14\ & VCC))
-- \count_reg[4]~16\ = CARRY((count_reg(4) & !\count_reg[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(4),
	datad => VCC,
	cin => \count_reg[3]~14\,
	combout => \count_reg[4]~15_combout\,
	cout => \count_reg[4]~16\);

-- Location: FF_X1_Y4_N21
\count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[4]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(4));

-- Location: LCCOMB_X1_Y4_N22
\count_reg[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[5]~17_combout\ = (count_reg(5) & (!\count_reg[4]~16\)) # (!count_reg(5) & ((\count_reg[4]~16\) # (GND)))
-- \count_reg[5]~18\ = CARRY((!\count_reg[4]~16\) # (!count_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(5),
	datad => VCC,
	cin => \count_reg[4]~16\,
	combout => \count_reg[5]~17_combout\,
	cout => \count_reg[5]~18\);

-- Location: FF_X1_Y4_N23
\count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[5]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(5));

-- Location: LCCOMB_X1_Y4_N24
\count_reg[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[6]~19_combout\ = \count_reg[5]~18\ $ (!count_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_reg(6),
	cin => \count_reg[5]~18\,
	combout => \count_reg[6]~19_combout\);

-- Location: FF_X1_Y4_N25
\count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[6]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(6));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_count(6) <= \count[6]~output_o\;
END structure;


