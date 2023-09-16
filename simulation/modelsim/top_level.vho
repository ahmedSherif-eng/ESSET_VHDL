-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "09/16/2023 15:31:15"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Level IS
    PORT (
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_7__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_6__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_5__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_4__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_3__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_2__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_1__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_out_buffer_0__gl_output\ : OUT std_logic;
	\global.bp.work.Common_Ports.data_sniffing_status_internal_gl_output\ : OUT std_logic;
	in_toplvl_1bit_channel : IN std_logic;
	out_toplvl_8bit_channel : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	toplvl_status : OUT std_logic
	);
END Top_Level;

-- Design Ports Information
-- out_toplvl_8bit_channel[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_toplvl_8bit_channel[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toplvl_status	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_toplvl_1bit_channel	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.Common_Ports.data_sniffing_status_internal_gl_output\ : std_logic;
SIGNAL ww_in_toplvl_1bit_channel : std_logic;
SIGNAL ww_out_toplvl_8bit_channel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_toplvl_status : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_toplvl_8bit_channel[0]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[1]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[2]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[3]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[4]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[5]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[6]~output_o\ : std_logic;
SIGNAL \out_toplvl_8bit_channel[7]~output_o\ : std_logic;
SIGNAL \toplvl_status~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_toplvl_1bit_channel~input_o\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~0_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|counter~1_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~1\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~2_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~3\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~4_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~5\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~6_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|counter~0_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~7\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~8_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~9\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~10_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~11\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~12_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~13\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~14_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~15\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~16_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~17\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~18_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~19\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~20_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~21\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~22_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~23\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~24_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~25\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~26_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~27\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~28_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~29\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~30_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~31\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~32_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~33\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~34_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~35\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~36_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~37\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~38_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~39\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~40_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~41\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~42_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~43\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~44_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~45\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~46_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~47\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~48_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~49\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~50_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~51\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~52_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~53\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~54_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~55\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~56_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~57\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~58_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~59\ : std_logic;
SIGNAL \Data_Sniffing_instance|Add0~60_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~1_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~0_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~2_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~3_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~4_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~5_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~6_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~7_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~8_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|Equal0~9_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~0_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_sniff_8bit_channel[0]~feeder_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~1_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_sniff_8bit_channel[1]~feeder_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~2_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~3_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_sniff_8bit_channel[3]~feeder_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~4_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_sniff_8bit_channel[4]~feeder_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~5_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~6_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|out_buffer~7_combout\ : std_logic;
SIGNAL \Data_Sniffing_instance|sniff_status~q\ : std_logic;
SIGNAL \Data_Sniffing_instance|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Data_Sniffing_instance|out_sniff_8bit_channel\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Sniffing_instance|out_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

\global.bp.work.Common_Ports.data_sniffing_out_buffer_7__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_7__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_6__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_6__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_5__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_5__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_4__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_4__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_3__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_3__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_2__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_2__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_1__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_1__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_out_buffer_0__gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_0__gl_output\;
\global.bp.work.Common_Ports.data_sniffing_status_internal_gl_output\ <= \ww_global.bp.work.Common_Ports.data_sniffing_status_internal_gl_output\;
ww_in_toplvl_1bit_channel <= in_toplvl_1bit_channel;
out_toplvl_8bit_channel <= ww_out_toplvl_8bit_channel;
ww_clk <= clk;
toplvl_status <= ww_toplvl_status;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(7) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(7);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(6) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(6);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(5) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(5);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(4) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(4);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(3) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(3);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(2) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(2);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(1) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(1);
\Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(0) <= NOT \Data_Sniffing_instance|out_sniff_8bit_channel\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N23
\out_toplvl_8bit_channel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(0),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\out_toplvl_8bit_channel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(1),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\out_toplvl_8bit_channel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(2),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\out_toplvl_8bit_channel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(3),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[3]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\out_toplvl_8bit_channel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(4),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\out_toplvl_8bit_channel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(5),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\out_toplvl_8bit_channel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(6),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\out_toplvl_8bit_channel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|ALT_INV_out_sniff_8bit_channel\(7),
	devoe => ww_devoe,
	o => \out_toplvl_8bit_channel[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\toplvl_status~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Sniffing_instance|sniff_status~q\,
	devoe => ww_devoe,
	o => \toplvl_status~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X34_Y19_N15
\in_toplvl_1bit_channel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_toplvl_1bit_channel,
	o => \in_toplvl_1bit_channel~input_o\);

-- Location: FF_X31_Y22_N27
\Data_Sniffing_instance|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(28));

-- Location: LCCOMB_X31_Y23_N2
\Data_Sniffing_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~0_combout\ = \Data_Sniffing_instance|counter\(0) $ (VCC)
-- \Data_Sniffing_instance|Add0~1\ = CARRY(\Data_Sniffing_instance|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(0),
	datad => VCC,
	combout => \Data_Sniffing_instance|Add0~0_combout\,
	cout => \Data_Sniffing_instance|Add0~1\);

-- Location: LCCOMB_X32_Y23_N0
\Data_Sniffing_instance|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|counter~1_combout\ = (\Data_Sniffing_instance|Add0~0_combout\ & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~0_combout\,
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|counter~1_combout\);

-- Location: FF_X31_Y23_N3
\Data_Sniffing_instance|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data_Sniffing_instance|counter~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(0));

-- Location: LCCOMB_X31_Y23_N4
\Data_Sniffing_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~2_combout\ = (\Data_Sniffing_instance|counter\(1) & (!\Data_Sniffing_instance|Add0~1\)) # (!\Data_Sniffing_instance|counter\(1) & ((\Data_Sniffing_instance|Add0~1\) # (GND)))
-- \Data_Sniffing_instance|Add0~3\ = CARRY((!\Data_Sniffing_instance|Add0~1\) # (!\Data_Sniffing_instance|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(1),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~1\,
	combout => \Data_Sniffing_instance|Add0~2_combout\,
	cout => \Data_Sniffing_instance|Add0~3\);

-- Location: FF_X31_Y23_N5
\Data_Sniffing_instance|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(1));

-- Location: LCCOMB_X31_Y23_N6
\Data_Sniffing_instance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~4_combout\ = (\Data_Sniffing_instance|counter\(2) & (\Data_Sniffing_instance|Add0~3\ $ (GND))) # (!\Data_Sniffing_instance|counter\(2) & (!\Data_Sniffing_instance|Add0~3\ & VCC))
-- \Data_Sniffing_instance|Add0~5\ = CARRY((\Data_Sniffing_instance|counter\(2) & !\Data_Sniffing_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(2),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~3\,
	combout => \Data_Sniffing_instance|Add0~4_combout\,
	cout => \Data_Sniffing_instance|Add0~5\);

-- Location: FF_X31_Y23_N7
\Data_Sniffing_instance|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(2));

-- Location: LCCOMB_X31_Y23_N8
\Data_Sniffing_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~6_combout\ = (\Data_Sniffing_instance|counter\(3) & (!\Data_Sniffing_instance|Add0~5\)) # (!\Data_Sniffing_instance|counter\(3) & ((\Data_Sniffing_instance|Add0~5\) # (GND)))
-- \Data_Sniffing_instance|Add0~7\ = CARRY((!\Data_Sniffing_instance|Add0~5\) # (!\Data_Sniffing_instance|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(3),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~5\,
	combout => \Data_Sniffing_instance|Add0~6_combout\,
	cout => \Data_Sniffing_instance|Add0~7\);

-- Location: LCCOMB_X33_Y23_N24
\Data_Sniffing_instance|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|counter~0_combout\ = (\Data_Sniffing_instance|Add0~6_combout\ & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|Add0~6_combout\,
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|counter~0_combout\);

-- Location: FF_X33_Y23_N25
\Data_Sniffing_instance|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(3));

-- Location: LCCOMB_X31_Y23_N10
\Data_Sniffing_instance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~8_combout\ = (\Data_Sniffing_instance|counter\(4) & (\Data_Sniffing_instance|Add0~7\ $ (GND))) # (!\Data_Sniffing_instance|counter\(4) & (!\Data_Sniffing_instance|Add0~7\ & VCC))
-- \Data_Sniffing_instance|Add0~9\ = CARRY((\Data_Sniffing_instance|counter\(4) & !\Data_Sniffing_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(4),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~7\,
	combout => \Data_Sniffing_instance|Add0~8_combout\,
	cout => \Data_Sniffing_instance|Add0~9\);

-- Location: FF_X31_Y23_N11
\Data_Sniffing_instance|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(4));

-- Location: LCCOMB_X31_Y23_N12
\Data_Sniffing_instance|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~10_combout\ = (\Data_Sniffing_instance|counter\(5) & (!\Data_Sniffing_instance|Add0~9\)) # (!\Data_Sniffing_instance|counter\(5) & ((\Data_Sniffing_instance|Add0~9\) # (GND)))
-- \Data_Sniffing_instance|Add0~11\ = CARRY((!\Data_Sniffing_instance|Add0~9\) # (!\Data_Sniffing_instance|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(5),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~9\,
	combout => \Data_Sniffing_instance|Add0~10_combout\,
	cout => \Data_Sniffing_instance|Add0~11\);

-- Location: FF_X31_Y23_N13
\Data_Sniffing_instance|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(5));

-- Location: LCCOMB_X31_Y23_N14
\Data_Sniffing_instance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~12_combout\ = (\Data_Sniffing_instance|counter\(6) & (\Data_Sniffing_instance|Add0~11\ $ (GND))) # (!\Data_Sniffing_instance|counter\(6) & (!\Data_Sniffing_instance|Add0~11\ & VCC))
-- \Data_Sniffing_instance|Add0~13\ = CARRY((\Data_Sniffing_instance|counter\(6) & !\Data_Sniffing_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(6),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~11\,
	combout => \Data_Sniffing_instance|Add0~12_combout\,
	cout => \Data_Sniffing_instance|Add0~13\);

-- Location: FF_X31_Y23_N15
\Data_Sniffing_instance|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(6));

-- Location: LCCOMB_X31_Y23_N16
\Data_Sniffing_instance|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~14_combout\ = (\Data_Sniffing_instance|counter\(7) & (!\Data_Sniffing_instance|Add0~13\)) # (!\Data_Sniffing_instance|counter\(7) & ((\Data_Sniffing_instance|Add0~13\) # (GND)))
-- \Data_Sniffing_instance|Add0~15\ = CARRY((!\Data_Sniffing_instance|Add0~13\) # (!\Data_Sniffing_instance|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(7),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~13\,
	combout => \Data_Sniffing_instance|Add0~14_combout\,
	cout => \Data_Sniffing_instance|Add0~15\);

-- Location: FF_X31_Y23_N17
\Data_Sniffing_instance|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(7));

-- Location: LCCOMB_X31_Y23_N18
\Data_Sniffing_instance|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~16_combout\ = (\Data_Sniffing_instance|counter\(8) & (\Data_Sniffing_instance|Add0~15\ $ (GND))) # (!\Data_Sniffing_instance|counter\(8) & (!\Data_Sniffing_instance|Add0~15\ & VCC))
-- \Data_Sniffing_instance|Add0~17\ = CARRY((\Data_Sniffing_instance|counter\(8) & !\Data_Sniffing_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(8),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~15\,
	combout => \Data_Sniffing_instance|Add0~16_combout\,
	cout => \Data_Sniffing_instance|Add0~17\);

-- Location: FF_X31_Y23_N19
\Data_Sniffing_instance|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(8));

-- Location: LCCOMB_X31_Y23_N20
\Data_Sniffing_instance|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~18_combout\ = (\Data_Sniffing_instance|counter\(9) & (!\Data_Sniffing_instance|Add0~17\)) # (!\Data_Sniffing_instance|counter\(9) & ((\Data_Sniffing_instance|Add0~17\) # (GND)))
-- \Data_Sniffing_instance|Add0~19\ = CARRY((!\Data_Sniffing_instance|Add0~17\) # (!\Data_Sniffing_instance|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(9),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~17\,
	combout => \Data_Sniffing_instance|Add0~18_combout\,
	cout => \Data_Sniffing_instance|Add0~19\);

-- Location: FF_X31_Y23_N21
\Data_Sniffing_instance|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(9));

-- Location: LCCOMB_X31_Y23_N22
\Data_Sniffing_instance|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~20_combout\ = (\Data_Sniffing_instance|counter\(10) & (\Data_Sniffing_instance|Add0~19\ $ (GND))) # (!\Data_Sniffing_instance|counter\(10) & (!\Data_Sniffing_instance|Add0~19\ & VCC))
-- \Data_Sniffing_instance|Add0~21\ = CARRY((\Data_Sniffing_instance|counter\(10) & !\Data_Sniffing_instance|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(10),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~19\,
	combout => \Data_Sniffing_instance|Add0~20_combout\,
	cout => \Data_Sniffing_instance|Add0~21\);

-- Location: FF_X31_Y23_N23
\Data_Sniffing_instance|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(10));

-- Location: LCCOMB_X31_Y23_N24
\Data_Sniffing_instance|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~22_combout\ = (\Data_Sniffing_instance|counter\(11) & (!\Data_Sniffing_instance|Add0~21\)) # (!\Data_Sniffing_instance|counter\(11) & ((\Data_Sniffing_instance|Add0~21\) # (GND)))
-- \Data_Sniffing_instance|Add0~23\ = CARRY((!\Data_Sniffing_instance|Add0~21\) # (!\Data_Sniffing_instance|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(11),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~21\,
	combout => \Data_Sniffing_instance|Add0~22_combout\,
	cout => \Data_Sniffing_instance|Add0~23\);

-- Location: FF_X31_Y23_N25
\Data_Sniffing_instance|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(11));

-- Location: LCCOMB_X31_Y23_N26
\Data_Sniffing_instance|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~24_combout\ = (\Data_Sniffing_instance|counter\(12) & (\Data_Sniffing_instance|Add0~23\ $ (GND))) # (!\Data_Sniffing_instance|counter\(12) & (!\Data_Sniffing_instance|Add0~23\ & VCC))
-- \Data_Sniffing_instance|Add0~25\ = CARRY((\Data_Sniffing_instance|counter\(12) & !\Data_Sniffing_instance|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(12),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~23\,
	combout => \Data_Sniffing_instance|Add0~24_combout\,
	cout => \Data_Sniffing_instance|Add0~25\);

-- Location: FF_X31_Y23_N27
\Data_Sniffing_instance|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(12));

-- Location: LCCOMB_X31_Y23_N28
\Data_Sniffing_instance|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~26_combout\ = (\Data_Sniffing_instance|counter\(13) & (!\Data_Sniffing_instance|Add0~25\)) # (!\Data_Sniffing_instance|counter\(13) & ((\Data_Sniffing_instance|Add0~25\) # (GND)))
-- \Data_Sniffing_instance|Add0~27\ = CARRY((!\Data_Sniffing_instance|Add0~25\) # (!\Data_Sniffing_instance|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(13),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~25\,
	combout => \Data_Sniffing_instance|Add0~26_combout\,
	cout => \Data_Sniffing_instance|Add0~27\);

-- Location: FF_X31_Y23_N29
\Data_Sniffing_instance|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(13));

-- Location: LCCOMB_X31_Y23_N30
\Data_Sniffing_instance|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~28_combout\ = (\Data_Sniffing_instance|counter\(14) & (\Data_Sniffing_instance|Add0~27\ $ (GND))) # (!\Data_Sniffing_instance|counter\(14) & (!\Data_Sniffing_instance|Add0~27\ & VCC))
-- \Data_Sniffing_instance|Add0~29\ = CARRY((\Data_Sniffing_instance|counter\(14) & !\Data_Sniffing_instance|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(14),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~27\,
	combout => \Data_Sniffing_instance|Add0~28_combout\,
	cout => \Data_Sniffing_instance|Add0~29\);

-- Location: FF_X31_Y23_N31
\Data_Sniffing_instance|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(14));

-- Location: LCCOMB_X31_Y22_N0
\Data_Sniffing_instance|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~30_combout\ = (\Data_Sniffing_instance|counter\(15) & (!\Data_Sniffing_instance|Add0~29\)) # (!\Data_Sniffing_instance|counter\(15) & ((\Data_Sniffing_instance|Add0~29\) # (GND)))
-- \Data_Sniffing_instance|Add0~31\ = CARRY((!\Data_Sniffing_instance|Add0~29\) # (!\Data_Sniffing_instance|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(15),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~29\,
	combout => \Data_Sniffing_instance|Add0~30_combout\,
	cout => \Data_Sniffing_instance|Add0~31\);

-- Location: FF_X31_Y22_N1
\Data_Sniffing_instance|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(15));

-- Location: LCCOMB_X31_Y22_N2
\Data_Sniffing_instance|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~32_combout\ = (\Data_Sniffing_instance|counter\(16) & (\Data_Sniffing_instance|Add0~31\ $ (GND))) # (!\Data_Sniffing_instance|counter\(16) & (!\Data_Sniffing_instance|Add0~31\ & VCC))
-- \Data_Sniffing_instance|Add0~33\ = CARRY((\Data_Sniffing_instance|counter\(16) & !\Data_Sniffing_instance|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(16),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~31\,
	combout => \Data_Sniffing_instance|Add0~32_combout\,
	cout => \Data_Sniffing_instance|Add0~33\);

-- Location: FF_X31_Y22_N3
\Data_Sniffing_instance|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(16));

-- Location: LCCOMB_X31_Y22_N4
\Data_Sniffing_instance|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~34_combout\ = (\Data_Sniffing_instance|counter\(17) & (!\Data_Sniffing_instance|Add0~33\)) # (!\Data_Sniffing_instance|counter\(17) & ((\Data_Sniffing_instance|Add0~33\) # (GND)))
-- \Data_Sniffing_instance|Add0~35\ = CARRY((!\Data_Sniffing_instance|Add0~33\) # (!\Data_Sniffing_instance|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(17),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~33\,
	combout => \Data_Sniffing_instance|Add0~34_combout\,
	cout => \Data_Sniffing_instance|Add0~35\);

-- Location: FF_X31_Y22_N5
\Data_Sniffing_instance|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(17));

-- Location: LCCOMB_X31_Y22_N6
\Data_Sniffing_instance|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~36_combout\ = (\Data_Sniffing_instance|counter\(18) & (\Data_Sniffing_instance|Add0~35\ $ (GND))) # (!\Data_Sniffing_instance|counter\(18) & (!\Data_Sniffing_instance|Add0~35\ & VCC))
-- \Data_Sniffing_instance|Add0~37\ = CARRY((\Data_Sniffing_instance|counter\(18) & !\Data_Sniffing_instance|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(18),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~35\,
	combout => \Data_Sniffing_instance|Add0~36_combout\,
	cout => \Data_Sniffing_instance|Add0~37\);

-- Location: FF_X31_Y22_N7
\Data_Sniffing_instance|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(18));

-- Location: LCCOMB_X31_Y22_N8
\Data_Sniffing_instance|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~38_combout\ = (\Data_Sniffing_instance|counter\(19) & (!\Data_Sniffing_instance|Add0~37\)) # (!\Data_Sniffing_instance|counter\(19) & ((\Data_Sniffing_instance|Add0~37\) # (GND)))
-- \Data_Sniffing_instance|Add0~39\ = CARRY((!\Data_Sniffing_instance|Add0~37\) # (!\Data_Sniffing_instance|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(19),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~37\,
	combout => \Data_Sniffing_instance|Add0~38_combout\,
	cout => \Data_Sniffing_instance|Add0~39\);

-- Location: FF_X31_Y22_N9
\Data_Sniffing_instance|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(19));

-- Location: LCCOMB_X31_Y22_N10
\Data_Sniffing_instance|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~40_combout\ = (\Data_Sniffing_instance|counter\(20) & (\Data_Sniffing_instance|Add0~39\ $ (GND))) # (!\Data_Sniffing_instance|counter\(20) & (!\Data_Sniffing_instance|Add0~39\ & VCC))
-- \Data_Sniffing_instance|Add0~41\ = CARRY((\Data_Sniffing_instance|counter\(20) & !\Data_Sniffing_instance|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(20),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~39\,
	combout => \Data_Sniffing_instance|Add0~40_combout\,
	cout => \Data_Sniffing_instance|Add0~41\);

-- Location: FF_X31_Y22_N11
\Data_Sniffing_instance|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(20));

-- Location: LCCOMB_X31_Y22_N12
\Data_Sniffing_instance|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~42_combout\ = (\Data_Sniffing_instance|counter\(21) & (!\Data_Sniffing_instance|Add0~41\)) # (!\Data_Sniffing_instance|counter\(21) & ((\Data_Sniffing_instance|Add0~41\) # (GND)))
-- \Data_Sniffing_instance|Add0~43\ = CARRY((!\Data_Sniffing_instance|Add0~41\) # (!\Data_Sniffing_instance|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(21),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~41\,
	combout => \Data_Sniffing_instance|Add0~42_combout\,
	cout => \Data_Sniffing_instance|Add0~43\);

-- Location: FF_X31_Y22_N13
\Data_Sniffing_instance|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(21));

-- Location: LCCOMB_X31_Y22_N14
\Data_Sniffing_instance|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~44_combout\ = (\Data_Sniffing_instance|counter\(22) & (\Data_Sniffing_instance|Add0~43\ $ (GND))) # (!\Data_Sniffing_instance|counter\(22) & (!\Data_Sniffing_instance|Add0~43\ & VCC))
-- \Data_Sniffing_instance|Add0~45\ = CARRY((\Data_Sniffing_instance|counter\(22) & !\Data_Sniffing_instance|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(22),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~43\,
	combout => \Data_Sniffing_instance|Add0~44_combout\,
	cout => \Data_Sniffing_instance|Add0~45\);

-- Location: FF_X31_Y22_N15
\Data_Sniffing_instance|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(22));

-- Location: LCCOMB_X31_Y22_N16
\Data_Sniffing_instance|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~46_combout\ = (\Data_Sniffing_instance|counter\(23) & (!\Data_Sniffing_instance|Add0~45\)) # (!\Data_Sniffing_instance|counter\(23) & ((\Data_Sniffing_instance|Add0~45\) # (GND)))
-- \Data_Sniffing_instance|Add0~47\ = CARRY((!\Data_Sniffing_instance|Add0~45\) # (!\Data_Sniffing_instance|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(23),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~45\,
	combout => \Data_Sniffing_instance|Add0~46_combout\,
	cout => \Data_Sniffing_instance|Add0~47\);

-- Location: FF_X31_Y22_N17
\Data_Sniffing_instance|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(23));

-- Location: LCCOMB_X31_Y22_N18
\Data_Sniffing_instance|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~48_combout\ = (\Data_Sniffing_instance|counter\(24) & (\Data_Sniffing_instance|Add0~47\ $ (GND))) # (!\Data_Sniffing_instance|counter\(24) & (!\Data_Sniffing_instance|Add0~47\ & VCC))
-- \Data_Sniffing_instance|Add0~49\ = CARRY((\Data_Sniffing_instance|counter\(24) & !\Data_Sniffing_instance|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(24),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~47\,
	combout => \Data_Sniffing_instance|Add0~48_combout\,
	cout => \Data_Sniffing_instance|Add0~49\);

-- Location: FF_X31_Y22_N19
\Data_Sniffing_instance|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(24));

-- Location: LCCOMB_X31_Y22_N20
\Data_Sniffing_instance|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~50_combout\ = (\Data_Sniffing_instance|counter\(25) & (!\Data_Sniffing_instance|Add0~49\)) # (!\Data_Sniffing_instance|counter\(25) & ((\Data_Sniffing_instance|Add0~49\) # (GND)))
-- \Data_Sniffing_instance|Add0~51\ = CARRY((!\Data_Sniffing_instance|Add0~49\) # (!\Data_Sniffing_instance|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(25),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~49\,
	combout => \Data_Sniffing_instance|Add0~50_combout\,
	cout => \Data_Sniffing_instance|Add0~51\);

-- Location: FF_X31_Y22_N21
\Data_Sniffing_instance|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(25));

-- Location: LCCOMB_X31_Y22_N22
\Data_Sniffing_instance|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~52_combout\ = (\Data_Sniffing_instance|counter\(26) & (\Data_Sniffing_instance|Add0~51\ $ (GND))) # (!\Data_Sniffing_instance|counter\(26) & (!\Data_Sniffing_instance|Add0~51\ & VCC))
-- \Data_Sniffing_instance|Add0~53\ = CARRY((\Data_Sniffing_instance|counter\(26) & !\Data_Sniffing_instance|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(26),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~51\,
	combout => \Data_Sniffing_instance|Add0~52_combout\,
	cout => \Data_Sniffing_instance|Add0~53\);

-- Location: FF_X31_Y22_N23
\Data_Sniffing_instance|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(26));

-- Location: LCCOMB_X31_Y22_N24
\Data_Sniffing_instance|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~54_combout\ = (\Data_Sniffing_instance|counter\(27) & (!\Data_Sniffing_instance|Add0~53\)) # (!\Data_Sniffing_instance|counter\(27) & ((\Data_Sniffing_instance|Add0~53\) # (GND)))
-- \Data_Sniffing_instance|Add0~55\ = CARRY((!\Data_Sniffing_instance|Add0~53\) # (!\Data_Sniffing_instance|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(27),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~53\,
	combout => \Data_Sniffing_instance|Add0~54_combout\,
	cout => \Data_Sniffing_instance|Add0~55\);

-- Location: FF_X31_Y22_N25
\Data_Sniffing_instance|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(27));

-- Location: LCCOMB_X31_Y22_N26
\Data_Sniffing_instance|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~56_combout\ = (\Data_Sniffing_instance|counter\(28) & (\Data_Sniffing_instance|Add0~55\ $ (GND))) # (!\Data_Sniffing_instance|counter\(28) & (!\Data_Sniffing_instance|Add0~55\ & VCC))
-- \Data_Sniffing_instance|Add0~57\ = CARRY((\Data_Sniffing_instance|counter\(28) & !\Data_Sniffing_instance|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(28),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~55\,
	combout => \Data_Sniffing_instance|Add0~56_combout\,
	cout => \Data_Sniffing_instance|Add0~57\);

-- Location: FF_X31_Y22_N29
\Data_Sniffing_instance|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(29));

-- Location: LCCOMB_X31_Y22_N28
\Data_Sniffing_instance|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~58_combout\ = (\Data_Sniffing_instance|counter\(29) & (!\Data_Sniffing_instance|Add0~57\)) # (!\Data_Sniffing_instance|counter\(29) & ((\Data_Sniffing_instance|Add0~57\) # (GND)))
-- \Data_Sniffing_instance|Add0~59\ = CARRY((!\Data_Sniffing_instance|Add0~57\) # (!\Data_Sniffing_instance|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|counter\(29),
	datad => VCC,
	cin => \Data_Sniffing_instance|Add0~57\,
	combout => \Data_Sniffing_instance|Add0~58_combout\,
	cout => \Data_Sniffing_instance|Add0~59\);

-- Location: FF_X31_Y22_N31
\Data_Sniffing_instance|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|counter\(30));

-- Location: LCCOMB_X31_Y22_N30
\Data_Sniffing_instance|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Add0~60_combout\ = \Data_Sniffing_instance|counter\(30) $ (!\Data_Sniffing_instance|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|counter\(30),
	cin => \Data_Sniffing_instance|Add0~59\,
	combout => \Data_Sniffing_instance|Add0~60_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Data_Sniffing_instance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~1_combout\ = (!\Data_Sniffing_instance|Add0~14_combout\ & (!\Data_Sniffing_instance|Add0~8_combout\ & (!\Data_Sniffing_instance|Add0~10_combout\ & !\Data_Sniffing_instance|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~14_combout\,
	datab => \Data_Sniffing_instance|Add0~8_combout\,
	datac => \Data_Sniffing_instance|Add0~10_combout\,
	datad => \Data_Sniffing_instance|Add0~12_combout\,
	combout => \Data_Sniffing_instance|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y23_N22
\Data_Sniffing_instance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~0_combout\ = (!\Data_Sniffing_instance|Add0~4_combout\ & (!\Data_Sniffing_instance|Add0~2_combout\ & (\Data_Sniffing_instance|Add0~0_combout\ & \Data_Sniffing_instance|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~4_combout\,
	datab => \Data_Sniffing_instance|Add0~2_combout\,
	datac => \Data_Sniffing_instance|Add0~0_combout\,
	datad => \Data_Sniffing_instance|Add0~6_combout\,
	combout => \Data_Sniffing_instance|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Data_Sniffing_instance|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~2_combout\ = (!\Data_Sniffing_instance|Add0~20_combout\ & (!\Data_Sniffing_instance|Add0~16_combout\ & (!\Data_Sniffing_instance|Add0~18_combout\ & !\Data_Sniffing_instance|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~20_combout\,
	datab => \Data_Sniffing_instance|Add0~16_combout\,
	datac => \Data_Sniffing_instance|Add0~18_combout\,
	datad => \Data_Sniffing_instance|Add0~22_combout\,
	combout => \Data_Sniffing_instance|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Data_Sniffing_instance|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~3_combout\ = (!\Data_Sniffing_instance|Add0~24_combout\ & (!\Data_Sniffing_instance|Add0~26_combout\ & (!\Data_Sniffing_instance|Add0~30_combout\ & !\Data_Sniffing_instance|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~24_combout\,
	datab => \Data_Sniffing_instance|Add0~26_combout\,
	datac => \Data_Sniffing_instance|Add0~30_combout\,
	datad => \Data_Sniffing_instance|Add0~28_combout\,
	combout => \Data_Sniffing_instance|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y23_N8
\Data_Sniffing_instance|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~4_combout\ = (\Data_Sniffing_instance|Equal0~1_combout\ & (\Data_Sniffing_instance|Equal0~0_combout\ & (\Data_Sniffing_instance|Equal0~2_combout\ & \Data_Sniffing_instance|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Equal0~1_combout\,
	datab => \Data_Sniffing_instance|Equal0~0_combout\,
	datac => \Data_Sniffing_instance|Equal0~2_combout\,
	datad => \Data_Sniffing_instance|Equal0~3_combout\,
	combout => \Data_Sniffing_instance|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y23_N10
\Data_Sniffing_instance|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~5_combout\ = (!\Data_Sniffing_instance|Add0~32_combout\ & (!\Data_Sniffing_instance|Add0~34_combout\ & (!\Data_Sniffing_instance|Add0~36_combout\ & !\Data_Sniffing_instance|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~32_combout\,
	datab => \Data_Sniffing_instance|Add0~34_combout\,
	datac => \Data_Sniffing_instance|Add0~36_combout\,
	datad => \Data_Sniffing_instance|Add0~38_combout\,
	combout => \Data_Sniffing_instance|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y23_N28
\Data_Sniffing_instance|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~6_combout\ = (!\Data_Sniffing_instance|Add0~44_combout\ & (!\Data_Sniffing_instance|Add0~42_combout\ & (!\Data_Sniffing_instance|Add0~40_combout\ & \Data_Sniffing_instance|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~44_combout\,
	datab => \Data_Sniffing_instance|Add0~42_combout\,
	datac => \Data_Sniffing_instance|Add0~40_combout\,
	datad => \Data_Sniffing_instance|Equal0~5_combout\,
	combout => \Data_Sniffing_instance|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y23_N6
\Data_Sniffing_instance|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~7_combout\ = (!\Data_Sniffing_instance|Add0~48_combout\ & (!\Data_Sniffing_instance|Add0~46_combout\ & (\Data_Sniffing_instance|Equal0~4_combout\ & \Data_Sniffing_instance|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~48_combout\,
	datab => \Data_Sniffing_instance|Add0~46_combout\,
	datac => \Data_Sniffing_instance|Equal0~4_combout\,
	datad => \Data_Sniffing_instance|Equal0~6_combout\,
	combout => \Data_Sniffing_instance|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y23_N20
\Data_Sniffing_instance|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~8_combout\ = (!\Data_Sniffing_instance|Add0~50_combout\ & (!\Data_Sniffing_instance|Add0~52_combout\ & (!\Data_Sniffing_instance|Add0~54_combout\ & \Data_Sniffing_instance|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~50_combout\,
	datab => \Data_Sniffing_instance|Add0~52_combout\,
	datac => \Data_Sniffing_instance|Add0~54_combout\,
	datad => \Data_Sniffing_instance|Equal0~7_combout\,
	combout => \Data_Sniffing_instance|Equal0~8_combout\);

-- Location: LCCOMB_X32_Y23_N2
\Data_Sniffing_instance|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|Equal0~9_combout\ = (!\Data_Sniffing_instance|Add0~56_combout\ & (!\Data_Sniffing_instance|Add0~58_combout\ & (!\Data_Sniffing_instance|Add0~60_combout\ & \Data_Sniffing_instance|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|Add0~56_combout\,
	datab => \Data_Sniffing_instance|Add0~58_combout\,
	datac => \Data_Sniffing_instance|Add0~60_combout\,
	datad => \Data_Sniffing_instance|Equal0~8_combout\,
	combout => \Data_Sniffing_instance|Equal0~9_combout\);

-- Location: LCCOMB_X33_Y23_N18
\Data_Sniffing_instance|out_buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~0_combout\ = (\in_toplvl_1bit_channel~input_o\ & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_toplvl_1bit_channel~input_o\,
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~0_combout\);

-- Location: FF_X33_Y23_N19
\Data_Sniffing_instance|out_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(0));

-- Location: LCCOMB_X32_Y23_N4
\Data_Sniffing_instance|out_sniff_8bit_channel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_sniff_8bit_channel[0]~feeder_combout\ = \Data_Sniffing_instance|out_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Sniffing_instance|out_buffer\(0),
	combout => \Data_Sniffing_instance|out_sniff_8bit_channel[0]~feeder_combout\);

-- Location: FF_X32_Y23_N5
\Data_Sniffing_instance|out_sniff_8bit_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_sniff_8bit_channel[0]~feeder_combout\,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(0));

-- Location: LCCOMB_X33_Y23_N28
\Data_Sniffing_instance|out_buffer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~1_combout\ = (\Data_Sniffing_instance|out_buffer\(0) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|out_buffer\(0),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~1_combout\);

-- Location: FF_X33_Y23_N29
\Data_Sniffing_instance|out_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(1));

-- Location: LCCOMB_X32_Y23_N26
\Data_Sniffing_instance|out_sniff_8bit_channel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_sniff_8bit_channel[1]~feeder_combout\ = \Data_Sniffing_instance|out_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Sniffing_instance|out_buffer\(1),
	combout => \Data_Sniffing_instance|out_sniff_8bit_channel[1]~feeder_combout\);

-- Location: FF_X32_Y23_N27
\Data_Sniffing_instance|out_sniff_8bit_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_sniff_8bit_channel[1]~feeder_combout\,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(1));

-- Location: LCCOMB_X33_Y23_N30
\Data_Sniffing_instance|out_buffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~2_combout\ = (\Data_Sniffing_instance|out_buffer\(1) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|out_buffer\(1),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~2_combout\);

-- Location: FF_X33_Y23_N31
\Data_Sniffing_instance|out_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(2));

-- Location: FF_X32_Y23_N1
\Data_Sniffing_instance|out_sniff_8bit_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data_Sniffing_instance|out_buffer\(2),
	sload => VCC,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(2));

-- Location: LCCOMB_X33_Y23_N4
\Data_Sniffing_instance|out_buffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~3_combout\ = (\Data_Sniffing_instance|out_buffer\(2) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|out_buffer\(2),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~3_combout\);

-- Location: FF_X33_Y23_N5
\Data_Sniffing_instance|out_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(3));

-- Location: LCCOMB_X32_Y23_N22
\Data_Sniffing_instance|out_sniff_8bit_channel[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_sniff_8bit_channel[3]~feeder_combout\ = \Data_Sniffing_instance|out_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Sniffing_instance|out_buffer\(3),
	combout => \Data_Sniffing_instance|out_sniff_8bit_channel[3]~feeder_combout\);

-- Location: FF_X32_Y23_N23
\Data_Sniffing_instance|out_sniff_8bit_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_sniff_8bit_channel[3]~feeder_combout\,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(3));

-- Location: LCCOMB_X33_Y23_N10
\Data_Sniffing_instance|out_buffer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~4_combout\ = (\Data_Sniffing_instance|out_buffer\(3) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_Sniffing_instance|out_buffer\(3),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~4_combout\);

-- Location: FF_X33_Y23_N11
\Data_Sniffing_instance|out_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(4));

-- Location: LCCOMB_X33_Y23_N8
\Data_Sniffing_instance|out_sniff_8bit_channel[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_sniff_8bit_channel[4]~feeder_combout\ = \Data_Sniffing_instance|out_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_Sniffing_instance|out_buffer\(4),
	combout => \Data_Sniffing_instance|out_sniff_8bit_channel[4]~feeder_combout\);

-- Location: FF_X33_Y23_N9
\Data_Sniffing_instance|out_sniff_8bit_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_sniff_8bit_channel[4]~feeder_combout\,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(4));

-- Location: LCCOMB_X33_Y23_N12
\Data_Sniffing_instance|out_buffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~5_combout\ = (\Data_Sniffing_instance|out_buffer\(4) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|out_buffer\(4),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~5_combout\);

-- Location: FF_X33_Y23_N13
\Data_Sniffing_instance|out_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(5));

-- Location: FF_X32_Y23_N17
\Data_Sniffing_instance|out_sniff_8bit_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data_Sniffing_instance|out_buffer\(5),
	sload => VCC,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(5));

-- Location: LCCOMB_X33_Y23_N14
\Data_Sniffing_instance|out_buffer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~6_combout\ = (\Data_Sniffing_instance|out_buffer\(5) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Sniffing_instance|out_buffer\(5),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~6_combout\);

-- Location: FF_X33_Y23_N15
\Data_Sniffing_instance|out_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(6));

-- Location: FF_X32_Y23_N31
\Data_Sniffing_instance|out_sniff_8bit_channel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data_Sniffing_instance|out_buffer\(6),
	sload => VCC,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(6));

-- Location: LCCOMB_X32_Y23_N14
\Data_Sniffing_instance|out_buffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_Sniffing_instance|out_buffer~7_combout\ = (\Data_Sniffing_instance|out_buffer\(6) & !\Data_Sniffing_instance|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_Sniffing_instance|out_buffer\(6),
	datad => \Data_Sniffing_instance|Equal0~9_combout\,
	combout => \Data_Sniffing_instance|out_buffer~7_combout\);

-- Location: FF_X32_Y23_N15
\Data_Sniffing_instance|out_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|out_buffer~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_buffer\(7));

-- Location: FF_X32_Y23_N25
\Data_Sniffing_instance|out_sniff_8bit_channel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Data_Sniffing_instance|out_buffer\(7),
	sload => VCC,
	ena => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|out_sniff_8bit_channel\(7));

-- Location: FF_X32_Y23_N3
\Data_Sniffing_instance|sniff_status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Data_Sniffing_instance|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Sniffing_instance|sniff_status~q\);

ww_out_toplvl_8bit_channel(0) <= \out_toplvl_8bit_channel[0]~output_o\;

ww_out_toplvl_8bit_channel(1) <= \out_toplvl_8bit_channel[1]~output_o\;

ww_out_toplvl_8bit_channel(2) <= \out_toplvl_8bit_channel[2]~output_o\;

ww_out_toplvl_8bit_channel(3) <= \out_toplvl_8bit_channel[3]~output_o\;

ww_out_toplvl_8bit_channel(4) <= \out_toplvl_8bit_channel[4]~output_o\;

ww_out_toplvl_8bit_channel(5) <= \out_toplvl_8bit_channel[5]~output_o\;

ww_out_toplvl_8bit_channel(6) <= \out_toplvl_8bit_channel[6]~output_o\;

ww_out_toplvl_8bit_channel(7) <= \out_toplvl_8bit_channel[7]~output_o\;

ww_toplvl_status <= \toplvl_status~output_o\;

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_7__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(7);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_6__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(6);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_5__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(5);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_4__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(4);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_3__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(3);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_2__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(2);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_1__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(1);

\ww_global.bp.work.Common_Ports.data_sniffing_out_buffer_0__gl_output\ <= \Data_Sniffing_instance|out_sniff_8bit_channel\(0);

\ww_global.bp.work.Common_Ports.data_sniffing_status_internal_gl_output\ <= \Data_Sniffing_instance|sniff_status~q\;
END structure;


