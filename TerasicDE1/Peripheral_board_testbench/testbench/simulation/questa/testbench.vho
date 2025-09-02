-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "04/15/2025 14:41:23"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testbench IS
    PORT (
	LED1 : OUT std_logic;
	SW1 : IN std_logic;
	LED2 : OUT std_logic;
	SW2 : IN std_logic;
	LED3 : OUT std_logic;
	SW3 : IN std_logic;
	LED4 : OUT std_logic;
	SW4 : IN std_logic;
	LED5 : OUT std_logic;
	SW5 : IN std_logic;
	LED6 : OUT std_logic;
	SW6 : IN std_logic;
	LED7 : OUT std_logic;
	SW7 : IN std_logic;
	LED8 : OUT std_logic;
	SW8 : IN std_logic;
	I2C_SCK : OUT std_logic;
	RESET : IN std_logic;
	EXT_CLK : IN std_logic;
	START : IN std_logic;
	I2C_SDA : OUT std_logic;
	AUD_BCLK : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCK : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	DACDAT : OUT std_logic;
	AUD_XCK : OUT std_logic;
	ADC_CHSEL : OUT std_logic;
	BSW9 : IN std_logic;
	ADC_DOUT : IN std_logic;
	BSW8 : IN std_logic;
	ADC_CS : OUT std_logic;
	SPI_SCLK : OUT std_logic;
	DAC_DIN : OUT std_logic;
	BSW : IN std_logic_vector(7 DOWNTO 0);
	DAC_SYNC : OUT std_logic;
	BLED : OUT std_logic_vector(9 DOWNTO 0);
	CLK : IN std_logic
	);
END testbench;

-- Design Ports Information
-- LED1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCK	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDA	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DACDAT	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CHSEL	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_SCLK	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC_DIN	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC_SYNC	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLED[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXT_CLK	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW8	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW9	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testbench IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_I2C_SCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_EXT_CLK : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_I2C_SDA : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_ADC_CHSEL : std_logic;
SIGNAL ww_BSW9 : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_BSW8 : std_logic;
SIGNAL ww_ADC_CS : std_logic;
SIGNAL ww_SPI_SCLK : std_logic;
SIGNAL ww_DAC_DIN : std_logic;
SIGNAL ww_BSW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DAC_SYNC : std_logic;
SIGNAL ww_BLED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|clk_div_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|bclk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clk_div_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \I2C_SDA~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \LED5~output_o\ : std_logic;
SIGNAL \LED6~output_o\ : std_logic;
SIGNAL \LED7~output_o\ : std_logic;
SIGNAL \LED8~output_o\ : std_logic;
SIGNAL \I2C_SCK~output_o\ : std_logic;
SIGNAL \AUD_BCLK~output_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~output_o\ : std_logic;
SIGNAL \AUD_DACLRCK~output_o\ : std_logic;
SIGNAL \DACDAT~output_o\ : std_logic;
SIGNAL \AUD_XCK~output_o\ : std_logic;
SIGNAL \ADC_CHSEL~output_o\ : std_logic;
SIGNAL \ADC_CS~output_o\ : std_logic;
SIGNAL \SPI_SCLK~output_o\ : std_logic;
SIGNAL \DAC_DIN~output_o\ : std_logic;
SIGNAL \DAC_SYNC~output_o\ : std_logic;
SIGNAL \BLED[9]~output_o\ : std_logic;
SIGNAL \BLED[8]~output_o\ : std_logic;
SIGNAL \BLED[7]~output_o\ : std_logic;
SIGNAL \BLED[6]~output_o\ : std_logic;
SIGNAL \BLED[5]~output_o\ : std_logic;
SIGNAL \BLED[4]~output_o\ : std_logic;
SIGNAL \BLED[3]~output_o\ : std_logic;
SIGNAL \BLED[2]~output_o\ : std_logic;
SIGNAL \BLED[1]~output_o\ : std_logic;
SIGNAL \BLED[0]~output_o\ : std_logic;
SIGNAL \EXT_CLK~input_o\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|process_1:counter[0]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|process_1:counter[0]~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|count~5_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|count~3_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|clk_div_sig~0_combout\ : std_logic;
SIGNAL \inst2|clk_div_sig~q\ : std_logic;
SIGNAL \inst2|clk_div_sig~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~93_combout\ : std_logic;
SIGNAL \inst4|Add1~24_combout\ : std_logic;
SIGNAL \inst4|Add1~107_combout\ : std_logic;
SIGNAL \inst4|tick_count[2]~0_combout\ : std_logic;
SIGNAL \inst4|Add1~25\ : std_logic;
SIGNAL \inst4|Add1~26_combout\ : std_logic;
SIGNAL \inst4|Add1~106_combout\ : std_logic;
SIGNAL \inst4|Add1~27\ : std_logic;
SIGNAL \inst4|Add1~28_combout\ : std_logic;
SIGNAL \inst4|Add1~105_combout\ : std_logic;
SIGNAL \inst4|Add1~29\ : std_logic;
SIGNAL \inst4|Add1~30_combout\ : std_logic;
SIGNAL \inst4|Add1~104_combout\ : std_logic;
SIGNAL \inst4|Add1~31\ : std_logic;
SIGNAL \inst4|Add1~32_combout\ : std_logic;
SIGNAL \inst4|Add1~103_combout\ : std_logic;
SIGNAL \inst4|Add1~33\ : std_logic;
SIGNAL \inst4|Add1~34_combout\ : std_logic;
SIGNAL \inst4|Add1~102_combout\ : std_logic;
SIGNAL \inst4|Add1~35\ : std_logic;
SIGNAL \inst4|Add1~36_combout\ : std_logic;
SIGNAL \inst4|Add1~101_combout\ : std_logic;
SIGNAL \inst4|Add1~37\ : std_logic;
SIGNAL \inst4|Add1~38_combout\ : std_logic;
SIGNAL \inst4|Add1~100_combout\ : std_logic;
SIGNAL \inst4|Add1~39\ : std_logic;
SIGNAL \inst4|Add1~40_combout\ : std_logic;
SIGNAL \inst4|Add1~99_combout\ : std_logic;
SIGNAL \inst4|Add1~41\ : std_logic;
SIGNAL \inst4|Add1~42_combout\ : std_logic;
SIGNAL \inst4|Add1~98_combout\ : std_logic;
SIGNAL \inst4|Add1~43\ : std_logic;
SIGNAL \inst4|Add1~44_combout\ : std_logic;
SIGNAL \inst4|Add1~97_combout\ : std_logic;
SIGNAL \inst4|Add1~45\ : std_logic;
SIGNAL \inst4|Add1~46_combout\ : std_logic;
SIGNAL \inst4|Add1~96_combout\ : std_logic;
SIGNAL \inst4|Add1~47\ : std_logic;
SIGNAL \inst4|Add1~48_combout\ : std_logic;
SIGNAL \inst4|Add1~95_combout\ : std_logic;
SIGNAL \inst4|Add1~49\ : std_logic;
SIGNAL \inst4|Add1~50_combout\ : std_logic;
SIGNAL \inst4|Add1~94_combout\ : std_logic;
SIGNAL \inst4|Add1~51\ : std_logic;
SIGNAL \inst4|Add1~53\ : std_logic;
SIGNAL \inst4|Add1~54_combout\ : std_logic;
SIGNAL \inst4|Add1~92_combout\ : std_logic;
SIGNAL \inst4|Add1~55\ : std_logic;
SIGNAL \inst4|Add1~56_combout\ : std_logic;
SIGNAL \inst4|Add1~91_combout\ : std_logic;
SIGNAL \inst4|Add1~57\ : std_logic;
SIGNAL \inst4|Add1~58_combout\ : std_logic;
SIGNAL \inst4|Add1~90_combout\ : std_logic;
SIGNAL \inst4|Add1~59\ : std_logic;
SIGNAL \inst4|Add1~60_combout\ : std_logic;
SIGNAL \inst4|Add1~89_combout\ : std_logic;
SIGNAL \inst4|Add1~61\ : std_logic;
SIGNAL \inst4|Add1~62_combout\ : std_logic;
SIGNAL \inst4|Add1~88_combout\ : std_logic;
SIGNAL \inst4|Add1~63\ : std_logic;
SIGNAL \inst4|Add1~64_combout\ : std_logic;
SIGNAL \inst4|Add1~119_combout\ : std_logic;
SIGNAL \inst4|Add1~65\ : std_logic;
SIGNAL \inst4|Add1~66_combout\ : std_logic;
SIGNAL \inst4|Add1~118_combout\ : std_logic;
SIGNAL \inst4|Add1~67\ : std_logic;
SIGNAL \inst4|Add1~68_combout\ : std_logic;
SIGNAL \inst4|Add1~117_combout\ : std_logic;
SIGNAL \inst4|Add1~69\ : std_logic;
SIGNAL \inst4|Add1~70_combout\ : std_logic;
SIGNAL \inst4|Add1~116_combout\ : std_logic;
SIGNAL \inst4|Add1~71\ : std_logic;
SIGNAL \inst4|Add1~72_combout\ : std_logic;
SIGNAL \inst4|Add1~115_combout\ : std_logic;
SIGNAL \inst4|Add1~73\ : std_logic;
SIGNAL \inst4|Add1~74_combout\ : std_logic;
SIGNAL \inst4|Add1~114_combout\ : std_logic;
SIGNAL \inst4|Add1~75\ : std_logic;
SIGNAL \inst4|Add1~76_combout\ : std_logic;
SIGNAL \inst4|Add1~113_combout\ : std_logic;
SIGNAL \inst4|Add1~77\ : std_logic;
SIGNAL \inst4|Add1~78_combout\ : std_logic;
SIGNAL \inst4|Add1~112_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Add1~79\ : std_logic;
SIGNAL \inst4|Add1~80_combout\ : std_logic;
SIGNAL \inst4|Add1~110_combout\ : std_logic;
SIGNAL \inst4|Add1~81\ : std_logic;
SIGNAL \inst4|Add1~82_combout\ : std_logic;
SIGNAL \inst4|Add1~109_combout\ : std_logic;
SIGNAL \inst4|Add1~83\ : std_logic;
SIGNAL \inst4|Add1~84_combout\ : std_logic;
SIGNAL \inst4|Add1~108_combout\ : std_logic;
SIGNAL \inst4|Add1~85\ : std_logic;
SIGNAL \inst4|Add1~86_combout\ : std_logic;
SIGNAL \inst4|Add1~111_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|Add1~52_combout\ : std_logic;
SIGNAL \inst4|Add1~93_combout\ : std_logic;
SIGNAL \inst4|Equal0~5_combout\ : std_logic;
SIGNAL \inst4|Equal0~7_combout\ : std_logic;
SIGNAL \inst4|Equal0~6_combout\ : std_logic;
SIGNAL \inst4|Equal0~8_combout\ : std_logic;
SIGNAL \inst4|Equal0~9_combout\ : std_logic;
SIGNAL \inst4|Equal0~10_combout\ : std_logic;
SIGNAL \inst4|Selector6~0_combout\ : std_logic;
SIGNAL \inst4|state.s_ack2~q\ : std_logic;
SIGNAL \inst4|WideOr6~combout\ : std_logic;
SIGNAL \inst4|bit_count[31]~2_combout\ : std_logic;
SIGNAL \inst4|bit_count[31]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~95_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~94_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~92_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~91_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~90_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~89_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|Add0~88_combout\ : std_logic;
SIGNAL \inst4|Equal1~8_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add0~87_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Add0~86_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Add0~85_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Add0~84_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Add0~83_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|Add0~82_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~81_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~80_combout\ : std_logic;
SIGNAL \inst4|Equal1~5_combout\ : std_logic;
SIGNAL \inst4|Equal1~6_combout\ : std_logic;
SIGNAL \inst4|Equal1~7_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|Add0~79_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Add0~78_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|Add0~77_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Add0~76_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|Add0~75_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Add0~74_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|Add0~73_combout\ : std_logic;
SIGNAL \inst4|Add0~45\ : std_logic;
SIGNAL \inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst4|Add0~72_combout\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|Equal1~3_combout\ : std_logic;
SIGNAL \inst4|Add0~47\ : std_logic;
SIGNAL \inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst4|Add0~71_combout\ : std_logic;
SIGNAL \inst4|Add0~49\ : std_logic;
SIGNAL \inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst4|Add0~70_combout\ : std_logic;
SIGNAL \inst4|Add0~51\ : std_logic;
SIGNAL \inst4|Add0~52_combout\ : std_logic;
SIGNAL \inst4|Add0~69_combout\ : std_logic;
SIGNAL \inst4|Add0~53\ : std_logic;
SIGNAL \inst4|Add0~54_combout\ : std_logic;
SIGNAL \inst4|Add0~68_combout\ : std_logic;
SIGNAL \inst4|Add0~55\ : std_logic;
SIGNAL \inst4|Add0~56_combout\ : std_logic;
SIGNAL \inst4|Add0~64_combout\ : std_logic;
SIGNAL \inst4|Add0~57\ : std_logic;
SIGNAL \inst4|Add0~58_combout\ : std_logic;
SIGNAL \inst4|Add0~63_combout\ : std_logic;
SIGNAL \inst4|bit_count[31]~4_combout\ : std_logic;
SIGNAL \inst4|Add0~59\ : std_logic;
SIGNAL \inst4|Add0~60_combout\ : std_logic;
SIGNAL \inst4|Add0~62_combout\ : std_logic;
SIGNAL \inst4|Add0~61\ : std_logic;
SIGNAL \inst4|Add0~65_combout\ : std_logic;
SIGNAL \inst4|Add0~67_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|Equal1~4_combout\ : std_logic;
SIGNAL \inst4|Equal1~9_combout\ : std_logic;
SIGNAL \inst4|Equal1~10_combout\ : std_logic;
SIGNAL \inst4|Selector7~0_combout\ : std_logic;
SIGNAL \inst4|state.s_byte2~q\ : std_logic;
SIGNAL \inst4|Selector8~0_combout\ : std_logic;
SIGNAL \inst4|state.s_ack3~q\ : std_logic;
SIGNAL \inst4|Selector9~0_combout\ : std_logic;
SIGNAL \inst4|state.s_stop1~q\ : std_logic;
SIGNAL \inst4|state.s_stop2~q\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|idle~q\ : std_logic;
SIGNAL \inst5|Selector2~0_combout\ : std_logic;
SIGNAL \inst5|state.wait0~q\ : std_logic;
SIGNAL \inst5|state~11_combout\ : std_logic;
SIGNAL \inst5|state.wait1~q\ : std_logic;
SIGNAL \inst5|Selector3~0_combout\ : std_logic;
SIGNAL \inst5|state.wait2~q\ : std_logic;
SIGNAL \inst5|state~12_combout\ : std_logic;
SIGNAL \inst5|state.config1~q\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|Add0~55\ : std_logic;
SIGNAL \inst5|Add0~56_combout\ : std_logic;
SIGNAL \inst5|Add0~57\ : std_logic;
SIGNAL \inst5|Add0~58_combout\ : std_logic;
SIGNAL \inst5|Add0~59\ : std_logic;
SIGNAL \inst5|Add0~60_combout\ : std_logic;
SIGNAL \inst5|process_0~6_combout\ : std_logic;
SIGNAL \inst5|process_0~1_combout\ : std_logic;
SIGNAL \inst5|process_0~3_combout\ : std_logic;
SIGNAL \inst5|process_0~2_combout\ : std_logic;
SIGNAL \inst5|process_0~4_combout\ : std_logic;
SIGNAL \inst5|process_0~5_combout\ : std_logic;
SIGNAL \inst5|process_0~7_combout\ : std_logic;
SIGNAL \inst5|process_0~8_combout\ : std_logic;
SIGNAL \inst5|process_0~9_combout\ : std_logic;
SIGNAL \inst5|rom_ptr~4_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|rom_ptr~5_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|process_0~0_combout\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|Selector0~0_combout\ : std_logic;
SIGNAL \inst5|Selector0~1_combout\ : std_logic;
SIGNAL \inst5|state.idle~q\ : std_logic;
SIGNAL \inst5|Selector1~1_combout\ : std_logic;
SIGNAL \inst5|delay_counter[30]~0_combout\ : std_logic;
SIGNAL \inst5|last_sclk~0_combout\ : std_logic;
SIGNAL \inst5|last_sclk~1_combout\ : std_logic;
SIGNAL \inst5|last_sclk~q\ : std_logic;
SIGNAL \inst5|process_0~10_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|delay_counter~4_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|delay_counter~3_combout\ : std_logic;
SIGNAL \inst5|Add1~15\ : std_logic;
SIGNAL \inst5|Add1~16_combout\ : std_logic;
SIGNAL \inst5|Add1~17\ : std_logic;
SIGNAL \inst5|Add1~18_combout\ : std_logic;
SIGNAL \inst5|delay_counter~2_combout\ : std_logic;
SIGNAL \inst5|Add1~19\ : std_logic;
SIGNAL \inst5|Add1~20_combout\ : std_logic;
SIGNAL \inst5|delay_counter~1_combout\ : std_logic;
SIGNAL \inst5|Add1~21\ : std_logic;
SIGNAL \inst5|Add1~22_combout\ : std_logic;
SIGNAL \inst5|Add1~23\ : std_logic;
SIGNAL \inst5|Add1~24_combout\ : std_logic;
SIGNAL \inst5|Add1~25\ : std_logic;
SIGNAL \inst5|Add1~26_combout\ : std_logic;
SIGNAL \inst5|Add1~27\ : std_logic;
SIGNAL \inst5|Add1~28_combout\ : std_logic;
SIGNAL \inst5|Add1~29\ : std_logic;
SIGNAL \inst5|Add1~30_combout\ : std_logic;
SIGNAL \inst5|Add1~31\ : std_logic;
SIGNAL \inst5|Add1~32_combout\ : std_logic;
SIGNAL \inst5|Add1~33\ : std_logic;
SIGNAL \inst5|Add1~34_combout\ : std_logic;
SIGNAL \inst5|Add1~35\ : std_logic;
SIGNAL \inst5|Add1~36_combout\ : std_logic;
SIGNAL \inst5|Add1~37\ : std_logic;
SIGNAL \inst5|Add1~38_combout\ : std_logic;
SIGNAL \inst5|Add1~39\ : std_logic;
SIGNAL \inst5|Add1~40_combout\ : std_logic;
SIGNAL \inst5|Add1~41\ : std_logic;
SIGNAL \inst5|Add1~42_combout\ : std_logic;
SIGNAL \inst5|Add1~43\ : std_logic;
SIGNAL \inst5|Add1~44_combout\ : std_logic;
SIGNAL \inst5|Add1~45\ : std_logic;
SIGNAL \inst5|Add1~46_combout\ : std_logic;
SIGNAL \inst5|Add1~47\ : std_logic;
SIGNAL \inst5|Add1~48_combout\ : std_logic;
SIGNAL \inst5|Add1~49\ : std_logic;
SIGNAL \inst5|Add1~50_combout\ : std_logic;
SIGNAL \inst5|Add1~51\ : std_logic;
SIGNAL \inst5|Add1~52_combout\ : std_logic;
SIGNAL \inst5|Add1~53\ : std_logic;
SIGNAL \inst5|Add1~54_combout\ : std_logic;
SIGNAL \inst5|Add1~55\ : std_logic;
SIGNAL \inst5|Add1~56_combout\ : std_logic;
SIGNAL \inst5|Add1~57\ : std_logic;
SIGNAL \inst5|Add1~58_combout\ : std_logic;
SIGNAL \inst5|Add1~59\ : std_logic;
SIGNAL \inst5|Add1~60_combout\ : std_logic;
SIGNAL \inst5|Equal3~5_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst5|Equal3~1_combout\ : std_logic;
SIGNAL \inst5|Equal3~2_combout\ : std_logic;
SIGNAL \inst5|Equal3~3_combout\ : std_logic;
SIGNAL \inst5|Equal3~4_combout\ : std_logic;
SIGNAL \inst5|Equal3~6_combout\ : std_logic;
SIGNAL \inst5|Equal3~7_combout\ : std_logic;
SIGNAL \inst5|Equal3~8_combout\ : std_logic;
SIGNAL \inst5|Equal3~9_combout\ : std_logic;
SIGNAL \inst5|Selector6~0_combout\ : std_logic;
SIGNAL \inst5|Selector4~0_combout\ : std_logic;
SIGNAL \inst5|state.chargedelay~q\ : std_logic;
SIGNAL \inst5|Selector1~0_combout\ : std_logic;
SIGNAL \inst5|Selector1~2_combout\ : std_logic;
SIGNAL \inst5|state.config0~q\ : std_logic;
SIGNAL \inst5|Selector5~0_combout\ : std_logic;
SIGNAL \inst5|codec_start~q\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|state.s_idle~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|state.s_start~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|state.s_addr~q\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|state.s_ack1~q\ : std_logic;
SIGNAL \inst4|Selector5~0_combout\ : std_logic;
SIGNAL \inst4|state.s_byte1~q\ : std_logic;
SIGNAL \inst4|WideOr4~0_combout\ : std_logic;
SIGNAL \inst4|Selector13~0_combout\ : std_logic;
SIGNAL \inst4|Selector18~5_combout\ : std_logic;
SIGNAL \inst4|Selector18~3_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|reg_data[5]~0_combout\ : std_logic;
SIGNAL \inst4|Selector18~2_combout\ : std_logic;
SIGNAL \inst4|Selector18~4_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Selector17~0_combout\ : std_logic;
SIGNAL \inst4|sreg[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Selector16~0_combout\ : std_logic;
SIGNAL \inst4|Selector16~1_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Selector16~2_combout\ : std_logic;
SIGNAL \inst4|Selector16~3_combout\ : std_logic;
SIGNAL \inst4|Selector16~4_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Selector15~0_combout\ : std_logic;
SIGNAL \inst4|sreg[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|Selector14~0_combout\ : std_logic;
SIGNAL \inst4|sreg[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Selector13~1_combout\ : std_logic;
SIGNAL \inst4|Selector13~2_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Selector13~3_combout\ : std_logic;
SIGNAL \inst4|Selector13~4_combout\ : std_logic;
SIGNAL \inst4|Selector13~5_combout\ : std_logic;
SIGNAL \inst4|Selector12~0_combout\ : std_logic;
SIGNAL \inst4|Selector11~0_combout\ : std_logic;
SIGNAL \inst4|Selector85~0_combout\ : std_logic;
SIGNAL \inst4|i2c_sda~reg0_q\ : std_logic;
SIGNAL \inst4|WideOr5~combout\ : std_logic;
SIGNAL \inst4|i2c_sda~en_q\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \inst4|Selector83~0_combout\ : std_logic;
SIGNAL \inst4|en_scl~q\ : std_logic;
SIGNAL \inst4|aux_scl~0_combout\ : std_logic;
SIGNAL \inst4|aux_scl~q\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|process_1:counter[1]~q\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|process_1:counter[2]~q\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|process_1:counter[3]~q\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|process_1:counter[4]~q\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|process_1:counter[5]~q\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|process_1:counter[6]~q\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|process_1:counter[7]~q\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|bclk_sig~0_combout\ : std_logic;
SIGNAL \inst|bclk_sig~feeder_combout\ : std_logic;
SIGNAL \inst|bclk_sig~q\ : std_logic;
SIGNAL \inst|Add0~1_cout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|left_right~0_combout\ : std_logic;
SIGNAL \inst|left_right~feeder_combout\ : std_logic;
SIGNAL \inst|left_right~q\ : std_logic;
SIGNAL \inst|bclk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \inst|left_right_1~feeder_combout\ : std_logic;
SIGNAL \inst|left_right_1~q\ : std_logic;
SIGNAL \inst|adc_sreg[8]~0_combout\ : std_logic;
SIGNAL \inst|adc_sreg[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[3]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[4]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[8]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[9]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[10]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[11]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[12]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[13]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[14]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_sreg[15]~feeder_combout\ : std_logic;
SIGNAL \inst|right_out[15]~0_combout\ : std_logic;
SIGNAL \inst|left_out[15]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[15]~0_combout\ : std_logic;
SIGNAL \inst|dacdat~0_combout\ : std_logic;
SIGNAL \inst|dacdat~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[14]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[14]~0_combout\ : std_logic;
SIGNAL \inst|dac_sreg[14]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[13]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[13]~1_combout\ : std_logic;
SIGNAL \inst|dac_sreg[13]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[12]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[12]~2_combout\ : std_logic;
SIGNAL \inst|dac_sreg[12]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[11]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[11]~3_combout\ : std_logic;
SIGNAL \inst|dac_sreg[11]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[10]~4_combout\ : std_logic;
SIGNAL \inst|dac_sreg[10]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[9]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[9]~5_combout\ : std_logic;
SIGNAL \inst|dac_sreg[9]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[8]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[8]~6_combout\ : std_logic;
SIGNAL \inst|dac_sreg[8]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[7]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[7]~7_combout\ : std_logic;
SIGNAL \inst|dac_sreg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[6]~8_combout\ : std_logic;
SIGNAL \inst|dac_sreg[6]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst|right_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[5]~9_combout\ : std_logic;
SIGNAL \inst|dac_sreg[5]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[4]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[4]~10_combout\ : std_logic;
SIGNAL \inst|dac_sreg[4]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[3]~11_combout\ : std_logic;
SIGNAL \inst|dac_sreg[3]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[2]~12_combout\ : std_logic;
SIGNAL \inst|dac_sreg[2]~feeder_combout\ : std_logic;
SIGNAL \inst|left_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg[1]~13_combout\ : std_logic;
SIGNAL \inst|dac_sreg[1]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg~14_combout\ : std_logic;
SIGNAL \inst|process_2~0_combout\ : std_logic;
SIGNAL \inst|dacdat~q\ : std_logic;
SIGNAL \BSW8~input_o\ : std_logic;
SIGNAL \inst6|count~2_combout\ : std_logic;
SIGNAL \inst6|count~1_combout\ : std_logic;
SIGNAL \inst6|count[1]~0_combout\ : std_logic;
SIGNAL \inst6|clk_div_sig~0_combout\ : std_logic;
SIGNAL \inst6|clk_div_sig~feeder_combout\ : std_logic;
SIGNAL \inst6|clk_div_sig~q\ : std_logic;
SIGNAL \inst6|clk_div_sig~clkctrl_outclk\ : std_logic;
SIGNAL \BSW9~input_o\ : std_logic;
SIGNAL \inst13|process_0~0_combout\ : std_logic;
SIGNAL \inst13|bit_count[0]~5_combout\ : std_logic;
SIGNAL \inst13|bit_count~4_combout\ : std_logic;
SIGNAL \inst13|bit_count[0]~6\ : std_logic;
SIGNAL \inst13|bit_count[1]~7_combout\ : std_logic;
SIGNAL \inst13|bit_count[1]~8\ : std_logic;
SIGNAL \inst13|bit_count[2]~9_combout\ : std_logic;
SIGNAL \inst13|bit_count[2]~10\ : std_logic;
SIGNAL \inst13|bit_count[3]~11_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|busy~2_combout\ : std_logic;
SIGNAL \inst13|busy~q\ : std_logic;
SIGNAL \inst13|cs~0_combout\ : std_logic;
SIGNAL \inst13|cs~1_combout\ : std_logic;
SIGNAL \inst13|cs~q\ : std_logic;
SIGNAL \BSW[5]~input_o\ : std_logic;
SIGNAL \BSW[1]~input_o\ : std_logic;
SIGNAL \BSW[0]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~16_combout\ : std_logic;
SIGNAL \inst1|data_reg~15_combout\ : std_logic;
SIGNAL \inst1|data_reg[15]~1_combout\ : std_logic;
SIGNAL \BSW[2]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~14_combout\ : std_logic;
SIGNAL \BSW[3]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~13_combout\ : std_logic;
SIGNAL \BSW[4]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~12_combout\ : std_logic;
SIGNAL \inst1|data_reg~11_combout\ : std_logic;
SIGNAL \BSW[6]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~10_combout\ : std_logic;
SIGNAL \BSW[7]~input_o\ : std_logic;
SIGNAL \inst1|data_reg~9_combout\ : std_logic;
SIGNAL \inst1|data_reg~8_combout\ : std_logic;
SIGNAL \inst1|data_reg~7_combout\ : std_logic;
SIGNAL \inst1|data_reg~6_combout\ : std_logic;
SIGNAL \inst1|data_reg~5_combout\ : std_logic;
SIGNAL \inst1|data_reg~4_combout\ : std_logic;
SIGNAL \inst1|data_reg~3_combout\ : std_logic;
SIGNAL \inst1|data_reg~2_combout\ : std_logic;
SIGNAL \inst1|data_reg~0_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst13|data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[11]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|data_reg[13]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[9]~0_combout\ : std_logic;
SIGNAL \inst13|data[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|dac_sreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|sreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|data_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|right_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|left_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|data_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|adc_sreg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|tick_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|bit_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|rom_ptr\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|delay_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|reg_data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|reg_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_i2c_sda~en_q\ : std_logic;
SIGNAL \inst4|ALT_INV_i2c_sda~reg0_q\ : std_logic;
SIGNAL \inst13|ALT_INV_cs~q\ : std_logic;
SIGNAL \inst4|ALT_INV_aux_scl~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED1 <= ww_LED1;
ww_SW1 <= SW1;
LED2 <= ww_LED2;
ww_SW2 <= SW2;
LED3 <= ww_LED3;
ww_SW3 <= SW3;
LED4 <= ww_LED4;
ww_SW4 <= SW4;
LED5 <= ww_LED5;
ww_SW5 <= SW5;
LED6 <= ww_LED6;
ww_SW6 <= SW6;
LED7 <= ww_LED7;
ww_SW7 <= SW7;
LED8 <= ww_LED8;
ww_SW8 <= SW8;
I2C_SCK <= ww_I2C_SCK;
ww_RESET <= RESET;
ww_EXT_CLK <= EXT_CLK;
ww_START <= START;
I2C_SDA <= ww_I2C_SDA;
AUD_BCLK <= ww_AUD_BCLK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
AUD_DACLRCK <= ww_AUD_DACLRCK;
DACDAT <= ww_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ADC_CHSEL <= ww_ADC_CHSEL;
ww_BSW9 <= BSW9;
ww_ADC_DOUT <= ADC_DOUT;
ww_BSW8 <= BSW8;
ADC_CS <= ww_ADC_CS;
SPI_SCLK <= ww_SPI_SCLK;
DAC_DIN <= ww_DAC_DIN;
ww_BSW <= BSW;
DAC_SYNC <= ww_DAC_SYNC;
BLED <= ww_BLED;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst6|clk_div_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|clk_div_sig~q\);

\inst|bclk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|bclk_sig~q\);

\inst2|clk_div_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clk_div_sig~q\);
\inst2|ALT_INV_clk_div_sig~clkctrl_outclk\ <= NOT \inst2|clk_div_sig~clkctrl_outclk\;
\inst4|ALT_INV_i2c_sda~en_q\ <= NOT \inst4|i2c_sda~en_q\;
\inst4|ALT_INV_i2c_sda~reg0_q\ <= NOT \inst4|i2c_sda~reg0_q\;
\inst13|ALT_INV_cs~q\ <= NOT \inst13|cs~q\;
\inst4|ALT_INV_aux_scl~q\ <= NOT \inst4|aux_scl~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y0_N9
\I2C_SDA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_i2c_sda~reg0_q\,
	oe => \inst4|ALT_INV_i2c_sda~en_q\,
	devoe => ww_devoe,
	o => \I2C_SDA~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\LED1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1~input_o\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\LED2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2~input_o\,
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\LED3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW3~input_o\,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\LED4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW4~input_o\,
	devoe => ww_devoe,
	o => \LED4~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\LED5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW5~input_o\,
	devoe => ww_devoe,
	o => \LED5~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\LED6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW6~input_o\,
	devoe => ww_devoe,
	o => \LED6~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\LED7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW7~input_o\,
	devoe => ww_devoe,
	o => \LED7~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\LED8~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW8~input_o\,
	devoe => ww_devoe,
	o => \LED8~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\I2C_SCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_aux_scl~q\,
	devoe => ww_devoe,
	o => \I2C_SCK~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\AUD_BCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bclk_sig~q\,
	devoe => ww_devoe,
	o => \AUD_BCLK~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\AUD_ADCLRCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|left_right~q\,
	devoe => ww_devoe,
	o => \AUD_ADCLRCK~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\AUD_DACLRCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|left_right~q\,
	devoe => ww_devoe,
	o => \AUD_DACLRCK~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\DACDAT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dacdat~q\,
	devoe => ww_devoe,
	o => \DACDAT~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\AUD_XCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EXT_CLK~input_o\,
	devoe => ww_devoe,
	o => \AUD_XCK~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ADC_CHSEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BSW8~input_o\,
	devoe => ww_devoe,
	o => \ADC_CHSEL~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\ADC_CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_cs~q\,
	devoe => ww_devoe,
	o => \ADC_CS~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\SPI_SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|clk_div_sig~q\,
	devoe => ww_devoe,
	o => \SPI_SCLK~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\DAC_DIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data_reg\(15),
	devoe => ww_devoe,
	o => \DAC_DIN~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\DAC_SYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_cs~q\,
	devoe => ww_devoe,
	o => \DAC_SYNC~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\BLED[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(9),
	devoe => ww_devoe,
	o => \BLED[9]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\BLED[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(8),
	devoe => ww_devoe,
	o => \BLED[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\BLED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(7),
	devoe => ww_devoe,
	o => \BLED[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\BLED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(6),
	devoe => ww_devoe,
	o => \BLED[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\BLED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(5),
	devoe => ww_devoe,
	o => \BLED[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\BLED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(4),
	devoe => ww_devoe,
	o => \BLED[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\BLED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(3),
	devoe => ww_devoe,
	o => \BLED[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\BLED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(2),
	devoe => ww_devoe,
	o => \BLED[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\BLED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(1),
	devoe => ww_devoe,
	o => \BLED[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\BLED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|data\(0),
	devoe => ww_devoe,
	o => \BLED[0]~output_o\);

-- Location: IOIBUF_X40_Y0_N22
\EXT_CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_CLK,
	o => \EXT_CLK~input_o\);

-- Location: LCCOMB_X41_Y9_N14
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|process_1:counter[0]~q\ $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|process_1:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:counter[0]~q\,
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X41_Y7_N16
\inst|process_1:counter[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_1:counter[0]~feeder_combout\ = \inst|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add1~0_combout\,
	combout => \inst|process_1:counter[0]~feeder_combout\);

-- Location: IOIBUF_X46_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X41_Y7_N17
\inst|process_1:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|process_1:counter[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[0]~q\);

-- Location: LCCOMB_X40_Y4_N8
\inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst2|count\(1) & (\inst|process_1:counter[0]~q\ $ (VCC))) # (!\inst2|count\(1) & (\inst|process_1:counter[0]~q\ & VCC))
-- \inst2|Add0~1\ = CARRY((\inst2|count\(1) & \inst|process_1:counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst|process_1:counter[0]~q\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X40_Y4_N22
\inst2|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~5_combout\ = (\inst2|Add0~0_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|count~5_combout\);

-- Location: FF_X40_Y4_N23
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X40_Y4_N10
\inst2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|count\(2) & (!\inst2|Add0~1\)) # (!\inst2|count\(2) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X40_Y4_N11
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X40_Y4_N0
\inst2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|count\(2) & (\inst2|count\(3) & (!\inst2|count\(1) & \inst|process_1:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datab => \inst2|count\(3),
	datac => \inst2|count\(1),
	datad => \inst|process_1:counter[0]~q\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y4_N12
\inst2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|count\(3) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|count\(3) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|count\(3) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X40_Y4_N28
\inst2|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (\inst2|Add0~4_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|count~4_combout\);

-- Location: FF_X40_Y4_N29
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X40_Y4_N14
\inst2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|count\(4) & (!\inst2|Add0~5\)) # (!\inst2|count\(4) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X40_Y4_N6
\inst2|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (\inst2|Add0~6_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X40_Y4_N7
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X40_Y4_N16
\inst2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|count\(5) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|count\(5) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|count\(5) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X40_Y4_N24
\inst2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (\inst2|Add0~8_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|count~2_combout\);

-- Location: FF_X40_Y4_N25
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X40_Y4_N18
\inst2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|count\(6) & (!\inst2|Add0~9\)) # (!\inst2|count\(6) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X40_Y4_N30
\inst2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (\inst2|Add0~10_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|count~1_combout\);

-- Location: FF_X40_Y4_N31
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X40_Y4_N20
\inst2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = \inst2|count\(7) $ (!\inst2|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(7),
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\);

-- Location: LCCOMB_X40_Y4_N4
\inst2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (\inst2|Add0~12_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|count~0_combout\);

-- Location: FF_X40_Y4_N5
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst2|count~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X40_Y4_N2
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|count\(4) & (\inst2|count\(7) & (\inst2|count\(6) & \inst2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(4),
	datab => \inst2|count\(7),
	datac => \inst2|count\(6),
	datad => \inst2|count\(5),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y4_N26
\inst2|clk_div_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|clk_div_sig~0_combout\ = \inst2|clk_div_sig~q\ $ (((\inst2|Equal0~0_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|clk_div_sig~q\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|clk_div_sig~0_combout\);

-- Location: FF_X41_Y5_N1
\inst2|clk_div_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	asdata => \inst2|clk_div_sig~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_div_sig~q\);

-- Location: CLKCTRL_G17
\inst2|clk_div_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clk_div_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clk_div_sig~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y8_N0
\inst4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|bit_count\(0) $ (GND)
-- \inst4|Add0~1\ = CARRY(!\inst4|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X36_Y8_N14
\inst4|Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~93_combout\ = ((\inst4|WideOr4~0_combout\) # (!\inst4|Equal1~10_combout\)) # (!\inst4|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~0_combout\,
	datac => \inst4|WideOr4~0_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~93_combout\);

-- Location: LCCOMB_X31_Y7_N0
\inst4|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~24_combout\ = \inst4|tick_count\(0) $ (GND)
-- \inst4|Add1~25\ = CARRY(!\inst4|tick_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(0),
	datad => VCC,
	combout => \inst4|Add1~24_combout\,
	cout => \inst4|Add1~25\);

-- Location: LCCOMB_X30_Y7_N6
\inst4|Add1~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~107_combout\ = (\inst4|state.s_start~q\) # (((!\inst4|Equal0~9_combout\ & !\inst4|Equal0~4_combout\)) # (!\inst4|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Add1~24_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Add1~107_combout\);

-- Location: LCCOMB_X35_Y7_N28
\inst4|tick_count[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|tick_count[2]~0_combout\ = (\RESET~input_o\ & (!\inst4|state.s_stop1~q\ & (!\inst4|state.s_stop2~q\ & \inst4|state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst4|state.s_stop1~q\,
	datac => \inst4|state.s_stop2~q\,
	datad => \inst4|state.s_idle~q\,
	combout => \inst4|tick_count[2]~0_combout\);

-- Location: FF_X30_Y7_N7
\inst4|tick_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~107_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(0));

-- Location: LCCOMB_X31_Y7_N2
\inst4|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~26_combout\ = (\inst4|tick_count\(1) & (!\inst4|Add1~25\)) # (!\inst4|tick_count\(1) & ((\inst4|Add1~25\) # (GND)))
-- \inst4|Add1~27\ = CARRY((!\inst4|Add1~25\) # (!\inst4|tick_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(1),
	datad => VCC,
	cin => \inst4|Add1~25\,
	combout => \inst4|Add1~26_combout\,
	cout => \inst4|Add1~27\);

-- Location: LCCOMB_X30_Y7_N16
\inst4|Add1~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~106_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~26_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~26_combout\,
	combout => \inst4|Add1~106_combout\);

-- Location: FF_X30_Y7_N17
\inst4|tick_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~106_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(1));

-- Location: LCCOMB_X31_Y7_N4
\inst4|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~28_combout\ = (\inst4|tick_count\(2) & (\inst4|Add1~27\ $ (GND))) # (!\inst4|tick_count\(2) & (!\inst4|Add1~27\ & VCC))
-- \inst4|Add1~29\ = CARRY((\inst4|tick_count\(2) & !\inst4|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(2),
	datad => VCC,
	cin => \inst4|Add1~27\,
	combout => \inst4|Add1~28_combout\,
	cout => \inst4|Add1~29\);

-- Location: LCCOMB_X30_Y7_N14
\inst4|Add1~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~105_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~28_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~28_combout\,
	combout => \inst4|Add1~105_combout\);

-- Location: FF_X30_Y7_N15
\inst4|tick_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~105_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(2));

-- Location: LCCOMB_X31_Y7_N6
\inst4|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~30_combout\ = (\inst4|tick_count\(3) & (!\inst4|Add1~29\)) # (!\inst4|tick_count\(3) & ((\inst4|Add1~29\) # (GND)))
-- \inst4|Add1~31\ = CARRY((!\inst4|Add1~29\) # (!\inst4|tick_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(3),
	datad => VCC,
	cin => \inst4|Add1~29\,
	combout => \inst4|Add1~30_combout\,
	cout => \inst4|Add1~31\);

-- Location: LCCOMB_X30_Y7_N12
\inst4|Add1~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~104_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~30_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~30_combout\,
	combout => \inst4|Add1~104_combout\);

-- Location: FF_X30_Y7_N13
\inst4|tick_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~104_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(3));

-- Location: LCCOMB_X31_Y7_N8
\inst4|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~32_combout\ = (\inst4|tick_count\(4) & (\inst4|Add1~31\ $ (GND))) # (!\inst4|tick_count\(4) & (!\inst4|Add1~31\ & VCC))
-- \inst4|Add1~33\ = CARRY((\inst4|tick_count\(4) & !\inst4|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(4),
	datad => VCC,
	cin => \inst4|Add1~31\,
	combout => \inst4|Add1~32_combout\,
	cout => \inst4|Add1~33\);

-- Location: LCCOMB_X32_Y7_N20
\inst4|Add1~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~103_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~32_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~32_combout\,
	combout => \inst4|Add1~103_combout\);

-- Location: FF_X32_Y7_N21
\inst4|tick_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~103_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(4));

-- Location: LCCOMB_X31_Y7_N10
\inst4|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~34_combout\ = (\inst4|tick_count\(5) & (!\inst4|Add1~33\)) # (!\inst4|tick_count\(5) & ((\inst4|Add1~33\) # (GND)))
-- \inst4|Add1~35\ = CARRY((!\inst4|Add1~33\) # (!\inst4|tick_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(5),
	datad => VCC,
	cin => \inst4|Add1~33\,
	combout => \inst4|Add1~34_combout\,
	cout => \inst4|Add1~35\);

-- Location: LCCOMB_X32_Y7_N2
\inst4|Add1~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~102_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~34_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~34_combout\,
	combout => \inst4|Add1~102_combout\);

-- Location: FF_X32_Y7_N3
\inst4|tick_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~102_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(5));

-- Location: LCCOMB_X31_Y7_N12
\inst4|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~36_combout\ = (\inst4|tick_count\(6) & (\inst4|Add1~35\ $ (GND))) # (!\inst4|tick_count\(6) & (!\inst4|Add1~35\ & VCC))
-- \inst4|Add1~37\ = CARRY((\inst4|tick_count\(6) & !\inst4|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(6),
	datad => VCC,
	cin => \inst4|Add1~35\,
	combout => \inst4|Add1~36_combout\,
	cout => \inst4|Add1~37\);

-- Location: LCCOMB_X32_Y7_N4
\inst4|Add1~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~101_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~36_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~36_combout\,
	combout => \inst4|Add1~101_combout\);

-- Location: FF_X32_Y7_N5
\inst4|tick_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~101_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(6));

-- Location: LCCOMB_X31_Y7_N14
\inst4|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~38_combout\ = (\inst4|tick_count\(7) & (!\inst4|Add1~37\)) # (!\inst4|tick_count\(7) & ((\inst4|Add1~37\) # (GND)))
-- \inst4|Add1~39\ = CARRY((!\inst4|Add1~37\) # (!\inst4|tick_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(7),
	datad => VCC,
	cin => \inst4|Add1~37\,
	combout => \inst4|Add1~38_combout\,
	cout => \inst4|Add1~39\);

-- Location: LCCOMB_X32_Y7_N30
\inst4|Add1~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~100_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~38_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~38_combout\,
	combout => \inst4|Add1~100_combout\);

-- Location: FF_X32_Y7_N31
\inst4|tick_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~100_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(7));

-- Location: LCCOMB_X31_Y7_N16
\inst4|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~40_combout\ = (\inst4|tick_count\(8) & (\inst4|Add1~39\ $ (GND))) # (!\inst4|tick_count\(8) & (!\inst4|Add1~39\ & VCC))
-- \inst4|Add1~41\ = CARRY((\inst4|tick_count\(8) & !\inst4|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(8),
	datad => VCC,
	cin => \inst4|Add1~39\,
	combout => \inst4|Add1~40_combout\,
	cout => \inst4|Add1~41\);

-- Location: LCCOMB_X30_Y7_N0
\inst4|Add1~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~99_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~40_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~40_combout\,
	combout => \inst4|Add1~99_combout\);

-- Location: FF_X30_Y7_N1
\inst4|tick_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~99_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(8));

-- Location: LCCOMB_X31_Y7_N18
\inst4|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~42_combout\ = (\inst4|tick_count\(9) & (!\inst4|Add1~41\)) # (!\inst4|tick_count\(9) & ((\inst4|Add1~41\) # (GND)))
-- \inst4|Add1~43\ = CARRY((!\inst4|Add1~41\) # (!\inst4|tick_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(9),
	datad => VCC,
	cin => \inst4|Add1~41\,
	combout => \inst4|Add1~42_combout\,
	cout => \inst4|Add1~43\);

-- Location: LCCOMB_X30_Y7_N10
\inst4|Add1~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~98_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~42_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~42_combout\,
	combout => \inst4|Add1~98_combout\);

-- Location: FF_X30_Y7_N11
\inst4|tick_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~98_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(9));

-- Location: LCCOMB_X31_Y7_N20
\inst4|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~44_combout\ = (\inst4|tick_count\(10) & (\inst4|Add1~43\ $ (GND))) # (!\inst4|tick_count\(10) & (!\inst4|Add1~43\ & VCC))
-- \inst4|Add1~45\ = CARRY((\inst4|tick_count\(10) & !\inst4|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(10),
	datad => VCC,
	cin => \inst4|Add1~43\,
	combout => \inst4|Add1~44_combout\,
	cout => \inst4|Add1~45\);

-- Location: LCCOMB_X30_Y7_N20
\inst4|Add1~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~97_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~44_combout\ & ((\inst4|Equal0~9_combout\) # (\inst4|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|Add1~44_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Add1~97_combout\);

-- Location: FF_X30_Y7_N21
\inst4|tick_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~97_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(10));

-- Location: LCCOMB_X31_Y7_N22
\inst4|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~46_combout\ = (\inst4|tick_count\(11) & (!\inst4|Add1~45\)) # (!\inst4|tick_count\(11) & ((\inst4|Add1~45\) # (GND)))
-- \inst4|Add1~47\ = CARRY((!\inst4|Add1~45\) # (!\inst4|tick_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(11),
	datad => VCC,
	cin => \inst4|Add1~45\,
	combout => \inst4|Add1~46_combout\,
	cout => \inst4|Add1~47\);

-- Location: LCCOMB_X30_Y7_N22
\inst4|Add1~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~96_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~46_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~46_combout\,
	combout => \inst4|Add1~96_combout\);

-- Location: FF_X30_Y7_N23
\inst4|tick_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~96_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(11));

-- Location: LCCOMB_X31_Y7_N24
\inst4|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~48_combout\ = (\inst4|tick_count\(12) & (\inst4|Add1~47\ $ (GND))) # (!\inst4|tick_count\(12) & (!\inst4|Add1~47\ & VCC))
-- \inst4|Add1~49\ = CARRY((\inst4|tick_count\(12) & !\inst4|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(12),
	datad => VCC,
	cin => \inst4|Add1~47\,
	combout => \inst4|Add1~48_combout\,
	cout => \inst4|Add1~49\);

-- Location: LCCOMB_X30_Y7_N18
\inst4|Add1~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~95_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~48_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~48_combout\,
	combout => \inst4|Add1~95_combout\);

-- Location: FF_X30_Y7_N19
\inst4|tick_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~95_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(12));

-- Location: LCCOMB_X31_Y7_N26
\inst4|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~50_combout\ = (\inst4|tick_count\(13) & (!\inst4|Add1~49\)) # (!\inst4|tick_count\(13) & ((\inst4|Add1~49\) # (GND)))
-- \inst4|Add1~51\ = CARRY((!\inst4|Add1~49\) # (!\inst4|tick_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(13),
	datad => VCC,
	cin => \inst4|Add1~49\,
	combout => \inst4|Add1~50_combout\,
	cout => \inst4|Add1~51\);

-- Location: LCCOMB_X30_Y7_N28
\inst4|Add1~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~94_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~50_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~50_combout\,
	combout => \inst4|Add1~94_combout\);

-- Location: FF_X30_Y7_N29
\inst4|tick_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~94_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(13));

-- Location: LCCOMB_X31_Y7_N28
\inst4|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~52_combout\ = (\inst4|tick_count\(14) & (\inst4|Add1~51\ $ (GND))) # (!\inst4|tick_count\(14) & (!\inst4|Add1~51\ & VCC))
-- \inst4|Add1~53\ = CARRY((\inst4|tick_count\(14) & !\inst4|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(14),
	datad => VCC,
	cin => \inst4|Add1~51\,
	combout => \inst4|Add1~52_combout\,
	cout => \inst4|Add1~53\);

-- Location: LCCOMB_X31_Y7_N30
\inst4|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~54_combout\ = (\inst4|tick_count\(15) & (!\inst4|Add1~53\)) # (!\inst4|tick_count\(15) & ((\inst4|Add1~53\) # (GND)))
-- \inst4|Add1~55\ = CARRY((!\inst4|Add1~53\) # (!\inst4|tick_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(15),
	datad => VCC,
	cin => \inst4|Add1~53\,
	combout => \inst4|Add1~54_combout\,
	cout => \inst4|Add1~55\);

-- Location: LCCOMB_X30_Y7_N4
\inst4|Add1~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~92_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~54_combout\ & ((\inst4|Equal0~9_combout\) # (\inst4|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|Add1~54_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Add1~92_combout\);

-- Location: FF_X30_Y7_N5
\inst4|tick_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~92_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(15));

-- Location: LCCOMB_X31_Y6_N0
\inst4|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~56_combout\ = (\inst4|tick_count\(16) & (\inst4|Add1~55\ $ (GND))) # (!\inst4|tick_count\(16) & (!\inst4|Add1~55\ & VCC))
-- \inst4|Add1~57\ = CARRY((\inst4|tick_count\(16) & !\inst4|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(16),
	datad => VCC,
	cin => \inst4|Add1~55\,
	combout => \inst4|Add1~56_combout\,
	cout => \inst4|Add1~57\);

-- Location: LCCOMB_X35_Y6_N24
\inst4|Add1~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~91_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~56_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~56_combout\,
	combout => \inst4|Add1~91_combout\);

-- Location: FF_X35_Y6_N25
\inst4|tick_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~91_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(16));

-- Location: LCCOMB_X31_Y6_N2
\inst4|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~58_combout\ = (\inst4|tick_count\(17) & (!\inst4|Add1~57\)) # (!\inst4|tick_count\(17) & ((\inst4|Add1~57\) # (GND)))
-- \inst4|Add1~59\ = CARRY((!\inst4|Add1~57\) # (!\inst4|tick_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(17),
	datad => VCC,
	cin => \inst4|Add1~57\,
	combout => \inst4|Add1~58_combout\,
	cout => \inst4|Add1~59\);

-- Location: LCCOMB_X35_Y6_N30
\inst4|Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~90_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~58_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~58_combout\,
	combout => \inst4|Add1~90_combout\);

-- Location: FF_X35_Y6_N31
\inst4|tick_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~90_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(17));

-- Location: LCCOMB_X31_Y6_N4
\inst4|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~60_combout\ = (\inst4|tick_count\(18) & (\inst4|Add1~59\ $ (GND))) # (!\inst4|tick_count\(18) & (!\inst4|Add1~59\ & VCC))
-- \inst4|Add1~61\ = CARRY((\inst4|tick_count\(18) & !\inst4|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(18),
	datad => VCC,
	cin => \inst4|Add1~59\,
	combout => \inst4|Add1~60_combout\,
	cout => \inst4|Add1~61\);

-- Location: LCCOMB_X35_Y6_N28
\inst4|Add1~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~89_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~60_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~60_combout\,
	combout => \inst4|Add1~89_combout\);

-- Location: FF_X35_Y6_N29
\inst4|tick_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~89_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(18));

-- Location: LCCOMB_X31_Y6_N6
\inst4|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~62_combout\ = (\inst4|tick_count\(19) & (!\inst4|Add1~61\)) # (!\inst4|tick_count\(19) & ((\inst4|Add1~61\) # (GND)))
-- \inst4|Add1~63\ = CARRY((!\inst4|Add1~61\) # (!\inst4|tick_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(19),
	datad => VCC,
	cin => \inst4|Add1~61\,
	combout => \inst4|Add1~62_combout\,
	cout => \inst4|Add1~63\);

-- Location: LCCOMB_X35_Y6_N26
\inst4|Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~88_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~62_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~62_combout\,
	combout => \inst4|Add1~88_combout\);

-- Location: FF_X35_Y6_N27
\inst4|tick_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~88_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(19));

-- Location: LCCOMB_X31_Y6_N8
\inst4|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~64_combout\ = (\inst4|tick_count\(20) & (\inst4|Add1~63\ $ (GND))) # (!\inst4|tick_count\(20) & (!\inst4|Add1~63\ & VCC))
-- \inst4|Add1~65\ = CARRY((\inst4|tick_count\(20) & !\inst4|Add1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(20),
	datad => VCC,
	cin => \inst4|Add1~63\,
	combout => \inst4|Add1~64_combout\,
	cout => \inst4|Add1~65\);

-- Location: LCCOMB_X35_Y6_N12
\inst4|Add1~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~119_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~64_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~64_combout\,
	combout => \inst4|Add1~119_combout\);

-- Location: FF_X35_Y6_N13
\inst4|tick_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~119_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(20));

-- Location: LCCOMB_X31_Y6_N10
\inst4|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~66_combout\ = (\inst4|tick_count\(21) & (!\inst4|Add1~65\)) # (!\inst4|tick_count\(21) & ((\inst4|Add1~65\) # (GND)))
-- \inst4|Add1~67\ = CARRY((!\inst4|Add1~65\) # (!\inst4|tick_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(21),
	datad => VCC,
	cin => \inst4|Add1~65\,
	combout => \inst4|Add1~66_combout\,
	cout => \inst4|Add1~67\);

-- Location: LCCOMB_X35_Y6_N18
\inst4|Add1~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~118_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~66_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~66_combout\,
	combout => \inst4|Add1~118_combout\);

-- Location: FF_X35_Y6_N19
\inst4|tick_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~118_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(21));

-- Location: LCCOMB_X31_Y6_N12
\inst4|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~68_combout\ = (\inst4|tick_count\(22) & (\inst4|Add1~67\ $ (GND))) # (!\inst4|tick_count\(22) & (!\inst4|Add1~67\ & VCC))
-- \inst4|Add1~69\ = CARRY((\inst4|tick_count\(22) & !\inst4|Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(22),
	datad => VCC,
	cin => \inst4|Add1~67\,
	combout => \inst4|Add1~68_combout\,
	cout => \inst4|Add1~69\);

-- Location: LCCOMB_X32_Y6_N26
\inst4|Add1~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~117_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~68_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~4_combout\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|state.s_start~q\,
	datad => \inst4|Add1~68_combout\,
	combout => \inst4|Add1~117_combout\);

-- Location: FF_X32_Y6_N27
\inst4|tick_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~117_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(22));

-- Location: LCCOMB_X31_Y6_N14
\inst4|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~70_combout\ = (\inst4|tick_count\(23) & (!\inst4|Add1~69\)) # (!\inst4|tick_count\(23) & ((\inst4|Add1~69\) # (GND)))
-- \inst4|Add1~71\ = CARRY((!\inst4|Add1~69\) # (!\inst4|tick_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(23),
	datad => VCC,
	cin => \inst4|Add1~69\,
	combout => \inst4|Add1~70_combout\,
	cout => \inst4|Add1~71\);

-- Location: LCCOMB_X32_Y7_N24
\inst4|Add1~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~116_combout\ = (\inst4|Add1~70_combout\ & (!\inst4|state.s_start~q\ & ((\inst4|Equal0~9_combout\) # (\inst4|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~9_combout\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Add1~70_combout\,
	datad => \inst4|state.s_start~q\,
	combout => \inst4|Add1~116_combout\);

-- Location: FF_X32_Y7_N25
\inst4|tick_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~116_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(23));

-- Location: LCCOMB_X31_Y6_N16
\inst4|Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~72_combout\ = (\inst4|tick_count\(24) & (\inst4|Add1~71\ $ (GND))) # (!\inst4|tick_count\(24) & (!\inst4|Add1~71\ & VCC))
-- \inst4|Add1~73\ = CARRY((\inst4|tick_count\(24) & !\inst4|Add1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(24),
	datad => VCC,
	cin => \inst4|Add1~71\,
	combout => \inst4|Add1~72_combout\,
	cout => \inst4|Add1~73\);

-- Location: LCCOMB_X35_Y6_N4
\inst4|Add1~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~115_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~72_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~72_combout\,
	combout => \inst4|Add1~115_combout\);

-- Location: FF_X35_Y6_N5
\inst4|tick_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~115_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(24));

-- Location: LCCOMB_X31_Y6_N18
\inst4|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~74_combout\ = (\inst4|tick_count\(25) & (!\inst4|Add1~73\)) # (!\inst4|tick_count\(25) & ((\inst4|Add1~73\) # (GND)))
-- \inst4|Add1~75\ = CARRY((!\inst4|Add1~73\) # (!\inst4|tick_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(25),
	datad => VCC,
	cin => \inst4|Add1~73\,
	combout => \inst4|Add1~74_combout\,
	cout => \inst4|Add1~75\);

-- Location: LCCOMB_X35_Y6_N10
\inst4|Add1~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~114_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~74_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~74_combout\,
	combout => \inst4|Add1~114_combout\);

-- Location: FF_X35_Y6_N11
\inst4|tick_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~114_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(25));

-- Location: LCCOMB_X31_Y6_N20
\inst4|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~76_combout\ = (\inst4|tick_count\(26) & (\inst4|Add1~75\ $ (GND))) # (!\inst4|tick_count\(26) & (!\inst4|Add1~75\ & VCC))
-- \inst4|Add1~77\ = CARRY((\inst4|tick_count\(26) & !\inst4|Add1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(26),
	datad => VCC,
	cin => \inst4|Add1~75\,
	combout => \inst4|Add1~76_combout\,
	cout => \inst4|Add1~77\);

-- Location: LCCOMB_X35_Y6_N0
\inst4|Add1~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~113_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~76_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~76_combout\,
	combout => \inst4|Add1~113_combout\);

-- Location: FF_X35_Y6_N1
\inst4|tick_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~113_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(26));

-- Location: LCCOMB_X31_Y6_N22
\inst4|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~78_combout\ = (\inst4|tick_count\(27) & (!\inst4|Add1~77\)) # (!\inst4|tick_count\(27) & ((\inst4|Add1~77\) # (GND)))
-- \inst4|Add1~79\ = CARRY((!\inst4|Add1~77\) # (!\inst4|tick_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(27),
	datad => VCC,
	cin => \inst4|Add1~77\,
	combout => \inst4|Add1~78_combout\,
	cout => \inst4|Add1~79\);

-- Location: LCCOMB_X32_Y6_N0
\inst4|Add1~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~112_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~78_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~4_combout\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|state.s_start~q\,
	datad => \inst4|Add1~78_combout\,
	combout => \inst4|Add1~112_combout\);

-- Location: FF_X32_Y6_N1
\inst4|tick_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~112_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(27));

-- Location: LCCOMB_X35_Y7_N22
\inst4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst4|tick_count\(24)) # ((\inst4|tick_count\(26)) # ((\inst4|tick_count\(25)) # (\inst4|tick_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(24),
	datab => \inst4|tick_count\(26),
	datac => \inst4|tick_count\(25),
	datad => \inst4|tick_count\(27),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y6_N22
\inst4|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = (\inst4|tick_count\(19)) # ((\inst4|tick_count\(18)) # ((\inst4|tick_count\(17)) # (\inst4|tick_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(19),
	datab => \inst4|tick_count\(18),
	datac => \inst4|tick_count\(17),
	datad => \inst4|tick_count\(16),
	combout => \inst4|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y7_N4
\inst4|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (\inst4|tick_count\(23)) # ((\inst4|tick_count\(21)) # ((\inst4|tick_count\(20)) # (\inst4|tick_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(23),
	datab => \inst4|tick_count\(21),
	datac => \inst4|tick_count\(20),
	datad => \inst4|tick_count\(22),
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y6_N24
\inst4|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~80_combout\ = (\inst4|tick_count\(28) & (\inst4|Add1~79\ $ (GND))) # (!\inst4|tick_count\(28) & (!\inst4|Add1~79\ & VCC))
-- \inst4|Add1~81\ = CARRY((\inst4|tick_count\(28) & !\inst4|Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(28),
	datad => VCC,
	cin => \inst4|Add1~79\,
	combout => \inst4|Add1~80_combout\,
	cout => \inst4|Add1~81\);

-- Location: LCCOMB_X35_Y6_N6
\inst4|Add1~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~110_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~80_combout\ & ((\inst4|Equal0~9_combout\) # (\inst4|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|Add1~80_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Add1~110_combout\);

-- Location: FF_X35_Y6_N7
\inst4|tick_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~110_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(28));

-- Location: LCCOMB_X31_Y6_N26
\inst4|Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~82_combout\ = (\inst4|tick_count\(29) & (!\inst4|Add1~81\)) # (!\inst4|tick_count\(29) & ((\inst4|Add1~81\) # (GND)))
-- \inst4|Add1~83\ = CARRY((!\inst4|Add1~81\) # (!\inst4|tick_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|tick_count\(29),
	datad => VCC,
	cin => \inst4|Add1~81\,
	combout => \inst4|Add1~82_combout\,
	cout => \inst4|Add1~83\);

-- Location: LCCOMB_X35_Y6_N16
\inst4|Add1~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~109_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~82_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~82_combout\,
	combout => \inst4|Add1~109_combout\);

-- Location: FF_X35_Y6_N17
\inst4|tick_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~109_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(29));

-- Location: LCCOMB_X31_Y6_N28
\inst4|Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~84_combout\ = (\inst4|tick_count\(30) & (\inst4|Add1~83\ $ (GND))) # (!\inst4|tick_count\(30) & (!\inst4|Add1~83\ & VCC))
-- \inst4|Add1~85\ = CARRY((\inst4|tick_count\(30) & !\inst4|Add1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(30),
	datad => VCC,
	cin => \inst4|Add1~83\,
	combout => \inst4|Add1~84_combout\,
	cout => \inst4|Add1~85\);

-- Location: LCCOMB_X32_Y6_N4
\inst4|Add1~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~108_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~84_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~4_combout\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|state.s_start~q\,
	datad => \inst4|Add1~84_combout\,
	combout => \inst4|Add1~108_combout\);

-- Location: FF_X32_Y6_N5
\inst4|tick_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~108_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(30));

-- Location: LCCOMB_X31_Y6_N30
\inst4|Add1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~86_combout\ = \inst4|Add1~85\ $ (!\inst4|tick_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|tick_count\(31),
	cin => \inst4|Add1~85\,
	combout => \inst4|Add1~86_combout\);

-- Location: LCCOMB_X32_Y6_N22
\inst4|Add1~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~111_combout\ = (\inst4|state.s_start~q\) # (((!\inst4|Equal0~4_combout\ & !\inst4|Equal0~9_combout\)) # (!\inst4|Add1~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~4_combout\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|state.s_start~q\,
	datad => \inst4|Add1~86_combout\,
	combout => \inst4|Add1~111_combout\);

-- Location: FF_X32_Y6_N23
\inst4|tick_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~111_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(31));

-- Location: LCCOMB_X35_Y7_N2
\inst4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|tick_count\(29)) # ((\inst4|tick_count\(28)) # ((\inst4|tick_count\(30)) # (!\inst4|tick_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(29),
	datab => \inst4|tick_count\(28),
	datac => \inst4|tick_count\(31),
	datad => \inst4|tick_count\(30),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y7_N24
\inst4|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~4_combout\ = (\inst4|Equal0~1_combout\) # ((\inst4|Equal0~3_combout\) # ((\inst4|Equal0~2_combout\) # (\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~1_combout\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|Equal0~2_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y7_N26
\inst4|Add1~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add1~93_combout\ = (!\inst4|state.s_start~q\ & (\inst4|Add1~52_combout\ & ((\inst4|Equal0~4_combout\) # (\inst4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~4_combout\,
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Add1~52_combout\,
	combout => \inst4|Add1~93_combout\);

-- Location: FF_X30_Y7_N27
\inst4|tick_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add1~93_combout\,
	ena => \inst4|tick_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|tick_count\(14));

-- Location: LCCOMB_X30_Y7_N8
\inst4|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~5_combout\ = (\inst4|tick_count\(14)) # ((\inst4|tick_count\(12)) # ((\inst4|tick_count\(15)) # (\inst4|tick_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(14),
	datab => \inst4|tick_count\(12),
	datac => \inst4|tick_count\(15),
	datad => \inst4|tick_count\(13),
	combout => \inst4|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y7_N10
\inst4|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~7_combout\ = (\inst4|tick_count\(7)) # ((\inst4|tick_count\(5)) # ((\inst4|tick_count\(6)) # (\inst4|tick_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(7),
	datab => \inst4|tick_count\(5),
	datac => \inst4|tick_count\(6),
	datad => \inst4|tick_count\(4),
	combout => \inst4|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y7_N30
\inst4|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~6_combout\ = (\inst4|tick_count\(9)) # ((\inst4|tick_count\(10)) # ((\inst4|tick_count\(11)) # (\inst4|tick_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(9),
	datab => \inst4|tick_count\(10),
	datac => \inst4|tick_count\(11),
	datad => \inst4|tick_count\(8),
	combout => \inst4|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y7_N24
\inst4|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~8_combout\ = (\inst4|tick_count\(3)) # ((\inst4|tick_count\(1)) # ((\inst4|tick_count\(2)) # (\inst4|tick_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|tick_count\(3),
	datab => \inst4|tick_count\(1),
	datac => \inst4|tick_count\(2),
	datad => \inst4|tick_count\(0),
	combout => \inst4|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y7_N8
\inst4|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~9_combout\ = (\inst4|Equal0~5_combout\) # ((\inst4|Equal0~7_combout\) # ((\inst4|Equal0~6_combout\) # (\inst4|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~5_combout\,
	datab => \inst4|Equal0~7_combout\,
	datac => \inst4|Equal0~6_combout\,
	datad => \inst4|Equal0~8_combout\,
	combout => \inst4|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y7_N6
\inst4|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~10_combout\ = (\inst4|Equal0~9_combout\) # (\inst4|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Equal0~10_combout\);

-- Location: LCCOMB_X35_Y7_N10
\inst4|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector6~0_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_ack2~q\)))) # (!\inst4|Equal0~10_combout\ & (!\inst4|Equal1~10_combout\ & ((\inst4|state.s_byte1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~10_combout\,
	datab => \inst4|Equal1~10_combout\,
	datac => \inst4|state.s_ack2~q\,
	datad => \inst4|state.s_byte1~q\,
	combout => \inst4|Selector6~0_combout\);

-- Location: FF_X35_Y7_N11
\inst4|state.s_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector6~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_ack2~q\);

-- Location: LCCOMB_X35_Y7_N30
\inst4|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr6~combout\ = (\inst4|state.s_ack3~q\) # ((\inst4|state.s_stop2~q\) # ((\inst4|state.s_stop1~q\) # (!\inst4|state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_ack3~q\,
	datab => \inst4|state.s_stop2~q\,
	datac => \inst4|state.s_stop1~q\,
	datad => \inst4|state.s_idle~q\,
	combout => \inst4|WideOr6~combout\);

-- Location: LCCOMB_X35_Y7_N18
\inst4|bit_count[31]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|bit_count[31]~2_combout\ = (\RESET~input_o\ & (!\inst4|WideOr6~combout\ & ((\inst4|WideOr4~0_combout\) # (!\inst4|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr4~0_combout\,
	datab => \RESET~input_o\,
	datac => \inst4|WideOr6~combout\,
	datad => \inst4|Equal0~10_combout\,
	combout => \inst4|bit_count[31]~2_combout\);

-- Location: LCCOMB_X35_Y7_N0
\inst4|bit_count[31]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|bit_count[31]~3_combout\ = (\inst4|bit_count[31]~2_combout\ & (((!\inst4|state.s_ack1~q\ & !\inst4|state.s_ack2~q\)) # (!\inst4|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~10_combout\,
	datab => \inst4|state.s_ack1~q\,
	datac => \inst4|state.s_ack2~q\,
	datad => \inst4|bit_count[31]~2_combout\,
	combout => \inst4|bit_count[31]~3_combout\);

-- Location: FF_X36_Y8_N15
\inst4|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~93_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(0));

-- Location: LCCOMB_X37_Y8_N2
\inst4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|bit_count\(1) & (!\inst4|Add0~1\)) # (!\inst4|bit_count\(1) & ((\inst4|Add0~1\) # (GND)))
-- \inst4|Add0~3\ = CARRY((!\inst4|Add0~1\) # (!\inst4|bit_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X36_Y8_N6
\inst4|Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~95_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~2_combout\,
	combout => \inst4|Add0~95_combout\);

-- Location: FF_X36_Y8_N7
\inst4|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~95_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(1));

-- Location: LCCOMB_X37_Y8_N4
\inst4|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|bit_count\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|bit_count\(2) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst4|bit_count\(2) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X36_Y8_N28
\inst4|Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~94_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~4_combout\,
	combout => \inst4|Add0~94_combout\);

-- Location: FF_X36_Y8_N29
\inst4|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~94_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(2));

-- Location: LCCOMB_X37_Y8_N6
\inst4|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|bit_count\(3) & (!\inst4|Add0~5\)) # (!\inst4|bit_count\(3) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst4|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X36_Y8_N0
\inst4|Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~92_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~6_combout\,
	combout => \inst4|Add0~92_combout\);

-- Location: FF_X36_Y8_N1
\inst4|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~92_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(3));

-- Location: LCCOMB_X37_Y8_N8
\inst4|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|bit_count\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|bit_count\(4) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|bit_count\(4) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X36_Y8_N8
\inst4|Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~91_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~8_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~8_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~91_combout\);

-- Location: FF_X36_Y8_N9
\inst4|bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~91_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(4));

-- Location: LCCOMB_X37_Y8_N10
\inst4|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|bit_count\(5) & (!\inst4|Add0~9\)) # (!\inst4|bit_count\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst4|bit_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X36_Y8_N2
\inst4|Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~90_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~10_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~10_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~90_combout\);

-- Location: FF_X36_Y8_N3
\inst4|bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~90_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(5));

-- Location: LCCOMB_X37_Y8_N12
\inst4|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|bit_count\(6) & (\inst4|Add0~11\ $ (GND))) # (!\inst4|bit_count\(6) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst4|bit_count\(6) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X36_Y8_N4
\inst4|Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~89_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~12_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~12_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~89_combout\);

-- Location: FF_X36_Y8_N5
\inst4|bit_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~89_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(6));

-- Location: LCCOMB_X37_Y8_N14
\inst4|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|bit_count\(7) & (!\inst4|Add0~13\)) # (!\inst4|bit_count\(7) & ((\inst4|Add0~13\) # (GND)))
-- \inst4|Add0~15\ = CARRY((!\inst4|Add0~13\) # (!\inst4|bit_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X36_Y8_N22
\inst4|Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~88_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~14_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~14_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~88_combout\);

-- Location: FF_X36_Y8_N23
\inst4|bit_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~88_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(7));

-- Location: LCCOMB_X36_Y8_N26
\inst4|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~8_combout\ = (\inst4|bit_count\(7)) # ((\inst4|bit_count\(6)) # ((\inst4|bit_count\(4)) # (\inst4|bit_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(7),
	datab => \inst4|bit_count\(6),
	datac => \inst4|bit_count\(4),
	datad => \inst4|bit_count\(5),
	combout => \inst4|Equal1~8_combout\);

-- Location: LCCOMB_X37_Y8_N16
\inst4|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|bit_count\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|bit_count\(8) & (!\inst4|Add0~15\ & VCC))
-- \inst4|Add0~17\ = CARRY((\inst4|bit_count\(8) & !\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X36_Y8_N24
\inst4|Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~87_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~16_combout\,
	combout => \inst4|Add0~87_combout\);

-- Location: FF_X36_Y8_N25
\inst4|bit_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~87_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(8));

-- Location: LCCOMB_X37_Y8_N18
\inst4|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|bit_count\(9) & (!\inst4|Add0~17\)) # (!\inst4|bit_count\(9) & ((\inst4|Add0~17\) # (GND)))
-- \inst4|Add0~19\ = CARRY((!\inst4|Add0~17\) # (!\inst4|bit_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X36_Y8_N10
\inst4|Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~86_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~18_combout\,
	combout => \inst4|Add0~86_combout\);

-- Location: FF_X36_Y8_N11
\inst4|bit_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~86_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(9));

-- Location: LCCOMB_X37_Y8_N20
\inst4|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|bit_count\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|bit_count\(10) & (!\inst4|Add0~19\ & VCC))
-- \inst4|Add0~21\ = CARRY((\inst4|bit_count\(10) & !\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X35_Y8_N10
\inst4|Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~85_combout\ = (\inst4|Equal1~10_combout\ & (!\inst4|WideOr4~0_combout\ & \inst4|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~10_combout\,
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~20_combout\,
	combout => \inst4|Add0~85_combout\);

-- Location: FF_X35_Y8_N11
\inst4|bit_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~85_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(10));

-- Location: LCCOMB_X37_Y8_N22
\inst4|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|bit_count\(11) & (!\inst4|Add0~21\)) # (!\inst4|bit_count\(11) & ((\inst4|Add0~21\) # (GND)))
-- \inst4|Add0~23\ = CARRY((!\inst4|Add0~21\) # (!\inst4|bit_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X35_Y8_N12
\inst4|Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~84_combout\ = (\inst4|Equal1~10_combout\ & (!\inst4|WideOr4~0_combout\ & \inst4|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~10_combout\,
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~22_combout\,
	combout => \inst4|Add0~84_combout\);

-- Location: FF_X35_Y8_N13
\inst4|bit_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~84_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(11));

-- Location: LCCOMB_X37_Y8_N24
\inst4|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|bit_count\(12) & (\inst4|Add0~23\ $ (GND))) # (!\inst4|bit_count\(12) & (!\inst4|Add0~23\ & VCC))
-- \inst4|Add0~25\ = CARRY((\inst4|bit_count\(12) & !\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X36_Y8_N16
\inst4|Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~83_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~24_combout\,
	combout => \inst4|Add0~83_combout\);

-- Location: FF_X36_Y8_N17
\inst4|bit_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~83_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(12));

-- Location: LCCOMB_X37_Y8_N26
\inst4|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|bit_count\(13) & (!\inst4|Add0~25\)) # (!\inst4|bit_count\(13) & ((\inst4|Add0~25\) # (GND)))
-- \inst4|Add0~27\ = CARRY((!\inst4|Add0~25\) # (!\inst4|bit_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X36_Y8_N18
\inst4|Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~82_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~26_combout\,
	combout => \inst4|Add0~82_combout\);

-- Location: FF_X36_Y8_N19
\inst4|bit_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~82_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(13));

-- Location: LCCOMB_X37_Y8_N28
\inst4|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|bit_count\(14) & (\inst4|Add0~27\ $ (GND))) # (!\inst4|bit_count\(14) & (!\inst4|Add0~27\ & VCC))
-- \inst4|Add0~29\ = CARRY((\inst4|bit_count\(14) & !\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCCOMB_X36_Y8_N20
\inst4|Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~81_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~28_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~28_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~81_combout\);

-- Location: FF_X36_Y8_N21
\inst4|bit_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~81_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(14));

-- Location: LCCOMB_X37_Y8_N30
\inst4|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|bit_count\(15) & (!\inst4|Add0~29\)) # (!\inst4|bit_count\(15) & ((\inst4|Add0~29\) # (GND)))
-- \inst4|Add0~31\ = CARRY((!\inst4|Add0~29\) # (!\inst4|bit_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCCOMB_X35_Y8_N20
\inst4|Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~80_combout\ = (\inst4|Equal1~10_combout\ & (!\inst4|WideOr4~0_combout\ & \inst4|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~10_combout\,
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~30_combout\,
	combout => \inst4|Add0~80_combout\);

-- Location: FF_X35_Y8_N21
\inst4|bit_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~80_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(15));

-- Location: LCCOMB_X35_Y8_N30
\inst4|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~5_combout\ = (\inst4|bit_count\(14)) # (\inst4|bit_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|bit_count\(14),
	datad => \inst4|bit_count\(15),
	combout => \inst4|Equal1~5_combout\);

-- Location: LCCOMB_X35_Y8_N8
\inst4|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~6_combout\ = (\inst4|bit_count\(10)) # ((\inst4|bit_count\(8)) # ((\inst4|bit_count\(9)) # (\inst4|bit_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(10),
	datab => \inst4|bit_count\(8),
	datac => \inst4|bit_count\(9),
	datad => \inst4|bit_count\(11),
	combout => \inst4|Equal1~6_combout\);

-- Location: LCCOMB_X35_Y8_N6
\inst4|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~7_combout\ = (\inst4|Equal1~5_combout\) # ((\inst4|bit_count\(13)) # ((\inst4|Equal1~6_combout\) # (\inst4|bit_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~5_combout\,
	datab => \inst4|bit_count\(13),
	datac => \inst4|Equal1~6_combout\,
	datad => \inst4|bit_count\(12),
	combout => \inst4|Equal1~7_combout\);

-- Location: LCCOMB_X37_Y7_N0
\inst4|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|bit_count\(16) & (\inst4|Add0~31\ $ (GND))) # (!\inst4|bit_count\(16) & (!\inst4|Add0~31\ & VCC))
-- \inst4|Add0~33\ = CARRY((\inst4|bit_count\(16) & !\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X36_Y7_N14
\inst4|Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~79_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~32_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~32_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~79_combout\);

-- Location: FF_X36_Y7_N15
\inst4|bit_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~79_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(16));

-- Location: LCCOMB_X37_Y7_N2
\inst4|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|bit_count\(17) & (!\inst4|Add0~33\)) # (!\inst4|bit_count\(17) & ((\inst4|Add0~33\) # (GND)))
-- \inst4|Add0~35\ = CARRY((!\inst4|Add0~33\) # (!\inst4|bit_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X36_Y7_N0
\inst4|Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~78_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~34_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~34_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~78_combout\);

-- Location: FF_X36_Y7_N1
\inst4|bit_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~78_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(17));

-- Location: LCCOMB_X37_Y7_N4
\inst4|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|bit_count\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|bit_count\(18) & (!\inst4|Add0~35\ & VCC))
-- \inst4|Add0~37\ = CARRY((\inst4|bit_count\(18) & !\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X36_Y7_N2
\inst4|Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~77_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~36_combout\,
	combout => \inst4|Add0~77_combout\);

-- Location: FF_X36_Y7_N3
\inst4|bit_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~77_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(18));

-- Location: LCCOMB_X37_Y7_N6
\inst4|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|bit_count\(19) & (!\inst4|Add0~37\)) # (!\inst4|bit_count\(19) & ((\inst4|Add0~37\) # (GND)))
-- \inst4|Add0~39\ = CARRY((!\inst4|Add0~37\) # (!\inst4|bit_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCCOMB_X36_Y7_N12
\inst4|Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~76_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~38_combout\,
	combout => \inst4|Add0~76_combout\);

-- Location: FF_X36_Y7_N13
\inst4|bit_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~76_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(19));

-- Location: LCCOMB_X37_Y7_N8
\inst4|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|bit_count\(20) & (\inst4|Add0~39\ $ (GND))) # (!\inst4|bit_count\(20) & (!\inst4|Add0~39\ & VCC))
-- \inst4|Add0~41\ = CARRY((\inst4|bit_count\(20) & !\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X36_Y7_N24
\inst4|Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~75_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~40_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~40_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~75_combout\);

-- Location: FF_X36_Y7_N25
\inst4|bit_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~75_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(20));

-- Location: LCCOMB_X37_Y7_N10
\inst4|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|bit_count\(21) & (!\inst4|Add0~41\)) # (!\inst4|bit_count\(21) & ((\inst4|Add0~41\) # (GND)))
-- \inst4|Add0~43\ = CARRY((!\inst4|Add0~41\) # (!\inst4|bit_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X36_Y7_N10
\inst4|Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~74_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~42_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~42_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~74_combout\);

-- Location: FF_X36_Y7_N11
\inst4|bit_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~74_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(21));

-- Location: LCCOMB_X37_Y7_N12
\inst4|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = (\inst4|bit_count\(22) & (\inst4|Add0~43\ $ (GND))) # (!\inst4|bit_count\(22) & (!\inst4|Add0~43\ & VCC))
-- \inst4|Add0~45\ = CARRY((\inst4|bit_count\(22) & !\inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(22),
	datad => VCC,
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\,
	cout => \inst4|Add0~45\);

-- Location: LCCOMB_X36_Y7_N8
\inst4|Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~73_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~44_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~44_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~73_combout\);

-- Location: FF_X36_Y7_N9
\inst4|bit_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~73_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(22));

-- Location: LCCOMB_X37_Y7_N14
\inst4|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~46_combout\ = (\inst4|bit_count\(23) & (!\inst4|Add0~45\)) # (!\inst4|bit_count\(23) & ((\inst4|Add0~45\) # (GND)))
-- \inst4|Add0~47\ = CARRY((!\inst4|Add0~45\) # (!\inst4|bit_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(23),
	datad => VCC,
	cin => \inst4|Add0~45\,
	combout => \inst4|Add0~46_combout\,
	cout => \inst4|Add0~47\);

-- Location: LCCOMB_X36_Y7_N22
\inst4|Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~72_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~46_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~46_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~72_combout\);

-- Location: FF_X36_Y7_N23
\inst4|bit_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~72_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(23));

-- Location: LCCOMB_X36_Y7_N30
\inst4|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = (\inst4|bit_count\(23)) # ((\inst4|bit_count\(20)) # ((\inst4|bit_count\(22)) # (\inst4|bit_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(23),
	datab => \inst4|bit_count\(20),
	datac => \inst4|bit_count\(22),
	datad => \inst4|bit_count\(21),
	combout => \inst4|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y7_N20
\inst4|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~3_combout\ = (\inst4|bit_count\(19)) # ((\inst4|bit_count\(18)) # ((\inst4|bit_count\(16)) # (\inst4|bit_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(19),
	datab => \inst4|bit_count\(18),
	datac => \inst4|bit_count\(16),
	datad => \inst4|bit_count\(17),
	combout => \inst4|Equal1~3_combout\);

-- Location: LCCOMB_X37_Y7_N16
\inst4|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~48_combout\ = (\inst4|bit_count\(24) & (\inst4|Add0~47\ $ (GND))) # (!\inst4|bit_count\(24) & (!\inst4|Add0~47\ & VCC))
-- \inst4|Add0~49\ = CARRY((\inst4|bit_count\(24) & !\inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(24),
	datad => VCC,
	cin => \inst4|Add0~47\,
	combout => \inst4|Add0~48_combout\,
	cout => \inst4|Add0~49\);

-- Location: LCCOMB_X36_Y7_N6
\inst4|Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~71_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~48_combout\,
	combout => \inst4|Add0~71_combout\);

-- Location: FF_X36_Y7_N7
\inst4|bit_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~71_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(24));

-- Location: LCCOMB_X37_Y7_N18
\inst4|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~50_combout\ = (\inst4|bit_count\(25) & (!\inst4|Add0~49\)) # (!\inst4|bit_count\(25) & ((\inst4|Add0~49\) # (GND)))
-- \inst4|Add0~51\ = CARRY((!\inst4|Add0~49\) # (!\inst4|bit_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(25),
	datad => VCC,
	cin => \inst4|Add0~49\,
	combout => \inst4|Add0~50_combout\,
	cout => \inst4|Add0~51\);

-- Location: LCCOMB_X36_Y7_N16
\inst4|Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~70_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~50_combout\,
	combout => \inst4|Add0~70_combout\);

-- Location: FF_X36_Y7_N17
\inst4|bit_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~70_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(25));

-- Location: LCCOMB_X37_Y7_N20
\inst4|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~52_combout\ = (\inst4|bit_count\(26) & (\inst4|Add0~51\ $ (GND))) # (!\inst4|bit_count\(26) & (!\inst4|Add0~51\ & VCC))
-- \inst4|Add0~53\ = CARRY((\inst4|bit_count\(26) & !\inst4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(26),
	datad => VCC,
	cin => \inst4|Add0~51\,
	combout => \inst4|Add0~52_combout\,
	cout => \inst4|Add0~53\);

-- Location: LCCOMB_X36_Y7_N26
\inst4|Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~69_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~52_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~52_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~69_combout\);

-- Location: FF_X36_Y7_N27
\inst4|bit_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~69_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(26));

-- Location: LCCOMB_X37_Y7_N22
\inst4|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~54_combout\ = (\inst4|bit_count\(27) & (!\inst4|Add0~53\)) # (!\inst4|bit_count\(27) & ((\inst4|Add0~53\) # (GND)))
-- \inst4|Add0~55\ = CARRY((!\inst4|Add0~53\) # (!\inst4|bit_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(27),
	datad => VCC,
	cin => \inst4|Add0~53\,
	combout => \inst4|Add0~54_combout\,
	cout => \inst4|Add0~55\);

-- Location: LCCOMB_X36_Y7_N4
\inst4|Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~68_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Equal1~10_combout\ & \inst4|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr4~0_combout\,
	datac => \inst4|Equal1~10_combout\,
	datad => \inst4|Add0~54_combout\,
	combout => \inst4|Add0~68_combout\);

-- Location: FF_X36_Y7_N5
\inst4|bit_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~68_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(27));

-- Location: LCCOMB_X37_Y7_N24
\inst4|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~56_combout\ = (\inst4|bit_count\(28) & (\inst4|Add0~55\ $ (GND))) # (!\inst4|bit_count\(28) & (!\inst4|Add0~55\ & VCC))
-- \inst4|Add0~57\ = CARRY((\inst4|bit_count\(28) & !\inst4|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(28),
	datad => VCC,
	cin => \inst4|Add0~55\,
	combout => \inst4|Add0~56_combout\,
	cout => \inst4|Add0~57\);

-- Location: LCCOMB_X38_Y7_N10
\inst4|Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~64_combout\ = (\inst4|Equal1~10_combout\ & (!\inst4|WideOr4~0_combout\ & \inst4|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~10_combout\,
	datac => \inst4|WideOr4~0_combout\,
	datad => \inst4|Add0~56_combout\,
	combout => \inst4|Add0~64_combout\);

-- Location: FF_X38_Y7_N11
\inst4|bit_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~64_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(28));

-- Location: LCCOMB_X37_Y7_N26
\inst4|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~58_combout\ = (\inst4|bit_count\(29) & (!\inst4|Add0~57\)) # (!\inst4|bit_count\(29) & ((\inst4|Add0~57\) # (GND)))
-- \inst4|Add0~59\ = CARRY((!\inst4|Add0~57\) # (!\inst4|bit_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(29),
	datad => VCC,
	cin => \inst4|Add0~57\,
	combout => \inst4|Add0~58_combout\,
	cout => \inst4|Add0~59\);

-- Location: LCCOMB_X38_Y7_N24
\inst4|Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~63_combout\ = (!\inst4|WideOr4~0_combout\ & (\inst4|Add0~58_combout\ & \inst4|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr4~0_combout\,
	datac => \inst4|Add0~58_combout\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Add0~63_combout\);

-- Location: FF_X38_Y7_N25
\inst4|bit_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~63_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(29));

-- Location: LCCOMB_X38_Y7_N14
\inst4|bit_count[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|bit_count[31]~4_combout\ = (\inst4|Equal1~10_combout\ & ((\inst4|state.s_addr~q\) # ((\inst4|state.s_byte2~q\) # (\inst4|state.s_byte1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_addr~q\,
	datab => \inst4|state.s_byte2~q\,
	datac => \inst4|state.s_byte1~q\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|bit_count[31]~4_combout\);

-- Location: LCCOMB_X37_Y7_N28
\inst4|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~60_combout\ = (\inst4|bit_count\(30) & (\inst4|Add0~59\ $ (GND))) # (!\inst4|bit_count\(30) & (!\inst4|Add0~59\ & VCC))
-- \inst4|Add0~61\ = CARRY((\inst4|bit_count\(30) & !\inst4|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(30),
	datad => VCC,
	cin => \inst4|Add0~59\,
	combout => \inst4|Add0~60_combout\,
	cout => \inst4|Add0~61\);

-- Location: LCCOMB_X38_Y7_N18
\inst4|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~62_combout\ = (\inst4|bit_count[31]~4_combout\ & \inst4|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|bit_count[31]~4_combout\,
	datad => \inst4|Add0~60_combout\,
	combout => \inst4|Add0~62_combout\);

-- Location: FF_X38_Y7_N19
\inst4|bit_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~62_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(30));

-- Location: LCCOMB_X37_Y7_N30
\inst4|Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~65_combout\ = \inst4|bit_count\(31) $ (!\inst4|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|bit_count\(31),
	cin => \inst4|Add0~61\,
	combout => \inst4|Add0~65_combout\);

-- Location: LCCOMB_X38_Y7_N4
\inst4|Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Add0~67_combout\ = (!\inst4|Add0~65_combout\) # (!\inst4|bit_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|bit_count[31]~4_combout\,
	datad => \inst4|Add0~65_combout\,
	combout => \inst4|Add0~67_combout\);

-- Location: FF_X38_Y7_N5
\inst4|bit_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Add0~67_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|bit_count\(31));

-- Location: LCCOMB_X38_Y7_N22
\inst4|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst4|bit_count\(28)) # ((\inst4|bit_count\(29)) # ((\inst4|bit_count\(30)) # (!\inst4|bit_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(28),
	datab => \inst4|bit_count\(29),
	datac => \inst4|bit_count\(31),
	datad => \inst4|bit_count\(30),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y7_N28
\inst4|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (\inst4|bit_count\(26)) # ((\inst4|bit_count\(25)) # ((\inst4|bit_count\(27)) # (\inst4|bit_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(26),
	datab => \inst4|bit_count\(25),
	datac => \inst4|bit_count\(27),
	datad => \inst4|bit_count\(24),
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y7_N18
\inst4|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~4_combout\ = (\inst4|Equal1~2_combout\) # ((\inst4|Equal1~3_combout\) # ((\inst4|Equal1~0_combout\) # (\inst4|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~2_combout\,
	datab => \inst4|Equal1~3_combout\,
	datac => \inst4|Equal1~0_combout\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|Equal1~4_combout\);

-- Location: LCCOMB_X36_Y8_N12
\inst4|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~9_combout\ = ((\inst4|bit_count\(3)) # ((\inst4|bit_count\(0)) # (!\inst4|bit_count\(2)))) # (!\inst4|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|bit_count\(1),
	datab => \inst4|bit_count\(3),
	datac => \inst4|bit_count\(0),
	datad => \inst4|bit_count\(2),
	combout => \inst4|Equal1~9_combout\);

-- Location: LCCOMB_X36_Y8_N30
\inst4|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~10_combout\ = (\inst4|Equal1~8_combout\) # ((\inst4|Equal1~7_combout\) # ((\inst4|Equal1~4_combout\) # (\inst4|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~8_combout\,
	datab => \inst4|Equal1~7_combout\,
	datac => \inst4|Equal1~4_combout\,
	datad => \inst4|Equal1~9_combout\,
	combout => \inst4|Equal1~10_combout\);

-- Location: LCCOMB_X38_Y7_N26
\inst4|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector7~0_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_byte2~q\)))) # (!\inst4|Equal0~10_combout\ & ((\inst4|state.s_ack2~q\) # ((\inst4|Equal1~10_combout\ & \inst4|state.s_byte2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~10_combout\,
	datab => \inst4|state.s_ack2~q\,
	datac => \inst4|state.s_byte2~q\,
	datad => \inst4|Equal0~10_combout\,
	combout => \inst4|Selector7~0_combout\);

-- Location: FF_X38_Y7_N27
\inst4|state.s_byte2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector7~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_byte2~q\);

-- Location: LCCOMB_X35_Y7_N26
\inst4|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector8~0_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_ack3~q\)))) # (!\inst4|Equal0~10_combout\ & (\inst4|state.s_byte2~q\ & (!\inst4|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_byte2~q\,
	datab => \inst4|Equal1~10_combout\,
	datac => \inst4|state.s_ack3~q\,
	datad => \inst4|Equal0~10_combout\,
	combout => \inst4|Selector8~0_combout\);

-- Location: FF_X35_Y7_N27
\inst4|state.s_ack3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_ack3~q\);

-- Location: LCCOMB_X35_Y7_N14
\inst4|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector9~0_combout\ = (\inst4|state.s_ack3~q\ & (!\inst4|Equal0~9_combout\ & !\inst4|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_ack3~q\,
	datab => \inst4|Equal0~9_combout\,
	datac => \inst4|Equal0~4_combout\,
	combout => \inst4|Selector9~0_combout\);

-- Location: FF_X35_Y7_N15
\inst4|state.s_stop1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector9~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_stop1~q\);

-- Location: FF_X35_Y7_N29
\inst4|state.s_stop2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	asdata => \inst4|state.s_stop1~q\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_stop2~q\);

-- Location: IOIBUF_X49_Y54_N29
\START~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LCCOMB_X34_Y7_N18
\inst4|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|state.s_idle~q\ & ((\inst4|idle~q\) # (\inst4|state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s_idle~q\,
	datac => \inst4|idle~q\,
	datad => \inst4|state.s_start~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X34_Y7_N19
\inst4|idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|idle~q\);

-- Location: LCCOMB_X34_Y7_N24
\inst5|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector2~0_combout\ = (\inst5|state.config0~q\) # ((\inst5|state.wait0~q\ & \inst4|idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.config0~q\,
	datac => \inst5|state.wait0~q\,
	datad => \inst4|idle~q\,
	combout => \inst5|Selector2~0_combout\);

-- Location: FF_X34_Y7_N25
\inst5|state.wait0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.wait0~q\);

-- Location: LCCOMB_X34_Y7_N12
\inst5|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|state~11_combout\ = (!\inst4|idle~q\ & ((\inst5|state.wait0~q\) # (\inst5|state.wait1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.wait0~q\,
	datac => \inst5|state.wait1~q\,
	datad => \inst4|idle~q\,
	combout => \inst5|state~11_combout\);

-- Location: FF_X34_Y7_N13
\inst5|state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|state~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.wait1~q\);

-- Location: LCCOMB_X34_Y7_N30
\inst5|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector3~0_combout\ = (\inst4|idle~q\ & ((\inst5|state.wait1~q\) # (\inst5|state.wait2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.wait1~q\,
	datac => \inst5|state.wait2~q\,
	datad => \inst4|idle~q\,
	combout => \inst5|Selector3~0_combout\);

-- Location: FF_X34_Y7_N31
\inst5|state.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.wait2~q\);

-- Location: LCCOMB_X34_Y7_N22
\inst5|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|state~12_combout\ = (\inst5|state.wait2~q\ & !\inst4|idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state.wait2~q\,
	datad => \inst4|idle~q\,
	combout => \inst5|state~12_combout\);

-- Location: FF_X34_Y7_N23
\inst5|state.config1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|state~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.config1~q\);

-- Location: FF_X40_Y7_N3
\inst5|rom_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(0));

-- Location: LCCOMB_X40_Y7_N2
\inst5|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|rom_ptr\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|rom_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: FF_X40_Y6_N27
\inst5|rom_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~56_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(28));

-- Location: LCCOMB_X40_Y7_N4
\inst5|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|rom_ptr\(1) & (!\inst5|Add0~1\)) # (!\inst5|rom_ptr\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|rom_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X40_Y7_N6
\inst5|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|rom_ptr\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|rom_ptr\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|rom_ptr\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X40_Y7_N1
\inst5|rom_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	asdata => \inst5|Add0~4_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(2));

-- Location: LCCOMB_X40_Y7_N8
\inst5|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|rom_ptr\(3) & (!\inst5|Add0~5\)) # (!\inst5|rom_ptr\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|rom_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X40_Y7_N10
\inst5|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|rom_ptr\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|rom_ptr\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|rom_ptr\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X40_Y7_N11
\inst5|rom_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~8_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(4));

-- Location: LCCOMB_X40_Y7_N12
\inst5|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|rom_ptr\(5) & (!\inst5|Add0~9\)) # (!\inst5|rom_ptr\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|rom_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: FF_X40_Y7_N13
\inst5|rom_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~10_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(5));

-- Location: LCCOMB_X40_Y7_N14
\inst5|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|rom_ptr\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|rom_ptr\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|rom_ptr\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: FF_X40_Y7_N15
\inst5|rom_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~12_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(6));

-- Location: LCCOMB_X40_Y7_N16
\inst5|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|rom_ptr\(7) & (!\inst5|Add0~13\)) # (!\inst5|rom_ptr\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|rom_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: FF_X40_Y7_N17
\inst5|rom_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~14_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(7));

-- Location: LCCOMB_X40_Y7_N18
\inst5|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|rom_ptr\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|rom_ptr\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|rom_ptr\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: FF_X40_Y7_N19
\inst5|rom_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~16_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(8));

-- Location: LCCOMB_X40_Y7_N20
\inst5|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|rom_ptr\(9) & (!\inst5|Add0~17\)) # (!\inst5|rom_ptr\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|rom_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: FF_X40_Y7_N21
\inst5|rom_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~18_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(9));

-- Location: LCCOMB_X40_Y7_N22
\inst5|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|rom_ptr\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|rom_ptr\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|rom_ptr\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: FF_X40_Y7_N23
\inst5|rom_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~20_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(10));

-- Location: LCCOMB_X40_Y7_N24
\inst5|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|rom_ptr\(11) & (!\inst5|Add0~21\)) # (!\inst5|rom_ptr\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|rom_ptr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: FF_X40_Y7_N25
\inst5|rom_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~22_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(11));

-- Location: LCCOMB_X40_Y7_N26
\inst5|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|rom_ptr\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|rom_ptr\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|rom_ptr\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: FF_X40_Y7_N27
\inst5|rom_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~24_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(12));

-- Location: LCCOMB_X40_Y7_N28
\inst5|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|rom_ptr\(13) & (!\inst5|Add0~25\)) # (!\inst5|rom_ptr\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|rom_ptr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: FF_X40_Y7_N29
\inst5|rom_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~26_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(13));

-- Location: LCCOMB_X40_Y7_N30
\inst5|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|rom_ptr\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|rom_ptr\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|rom_ptr\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: FF_X40_Y7_N31
\inst5|rom_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~28_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(14));

-- Location: LCCOMB_X40_Y6_N0
\inst5|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|rom_ptr\(15) & (!\inst5|Add0~29\)) # (!\inst5|rom_ptr\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|rom_ptr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: FF_X40_Y6_N1
\inst5|rom_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~30_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(15));

-- Location: LCCOMB_X40_Y6_N2
\inst5|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|rom_ptr\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|rom_ptr\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|rom_ptr\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X40_Y6_N3
\inst5|rom_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~32_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(16));

-- Location: LCCOMB_X40_Y6_N4
\inst5|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|rom_ptr\(17) & (!\inst5|Add0~33\)) # (!\inst5|rom_ptr\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|rom_ptr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: FF_X40_Y6_N5
\inst5|rom_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~34_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(17));

-- Location: LCCOMB_X40_Y6_N6
\inst5|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|rom_ptr\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|rom_ptr\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|rom_ptr\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: FF_X40_Y6_N7
\inst5|rom_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~36_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(18));

-- Location: LCCOMB_X40_Y6_N8
\inst5|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|rom_ptr\(19) & (!\inst5|Add0~37\)) # (!\inst5|rom_ptr\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|rom_ptr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: FF_X40_Y6_N9
\inst5|rom_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~38_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(19));

-- Location: LCCOMB_X40_Y6_N10
\inst5|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|rom_ptr\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|rom_ptr\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|rom_ptr\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: FF_X40_Y6_N11
\inst5|rom_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~40_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(20));

-- Location: LCCOMB_X40_Y6_N12
\inst5|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|rom_ptr\(21) & (!\inst5|Add0~41\)) # (!\inst5|rom_ptr\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|rom_ptr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: FF_X40_Y6_N13
\inst5|rom_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~42_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(21));

-- Location: LCCOMB_X40_Y6_N14
\inst5|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|rom_ptr\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|rom_ptr\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|rom_ptr\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: FF_X40_Y6_N15
\inst5|rom_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~44_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(22));

-- Location: LCCOMB_X40_Y6_N16
\inst5|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|rom_ptr\(23) & (!\inst5|Add0~45\)) # (!\inst5|rom_ptr\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|rom_ptr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: FF_X40_Y6_N17
\inst5|rom_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~46_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(23));

-- Location: LCCOMB_X40_Y6_N18
\inst5|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|rom_ptr\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|rom_ptr\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|rom_ptr\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: FF_X40_Y6_N19
\inst5|rom_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~48_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(24));

-- Location: LCCOMB_X40_Y6_N20
\inst5|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|rom_ptr\(25) & (!\inst5|Add0~49\)) # (!\inst5|rom_ptr\(25) & ((\inst5|Add0~49\) # (GND)))
-- \inst5|Add0~51\ = CARRY((!\inst5|Add0~49\) # (!\inst5|rom_ptr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: FF_X40_Y6_N21
\inst5|rom_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~50_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(25));

-- Location: LCCOMB_X40_Y6_N22
\inst5|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|rom_ptr\(26) & (\inst5|Add0~51\ $ (GND))) # (!\inst5|rom_ptr\(26) & (!\inst5|Add0~51\ & VCC))
-- \inst5|Add0~53\ = CARRY((\inst5|rom_ptr\(26) & !\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: FF_X40_Y6_N23
\inst5|rom_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~52_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(26));

-- Location: LCCOMB_X40_Y6_N24
\inst5|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = (\inst5|rom_ptr\(27) & (!\inst5|Add0~53\)) # (!\inst5|rom_ptr\(27) & ((\inst5|Add0~53\) # (GND)))
-- \inst5|Add0~55\ = CARRY((!\inst5|Add0~53\) # (!\inst5|rom_ptr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(27),
	datad => VCC,
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\,
	cout => \inst5|Add0~55\);

-- Location: FF_X40_Y6_N25
\inst5|rom_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~54_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(27));

-- Location: LCCOMB_X40_Y6_N26
\inst5|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~56_combout\ = (\inst5|rom_ptr\(28) & (\inst5|Add0~55\ $ (GND))) # (!\inst5|rom_ptr\(28) & (!\inst5|Add0~55\ & VCC))
-- \inst5|Add0~57\ = CARRY((\inst5|rom_ptr\(28) & !\inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(28),
	datad => VCC,
	cin => \inst5|Add0~55\,
	combout => \inst5|Add0~56_combout\,
	cout => \inst5|Add0~57\);

-- Location: FF_X40_Y6_N29
\inst5|rom_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~58_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(29));

-- Location: LCCOMB_X40_Y6_N28
\inst5|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~58_combout\ = (\inst5|rom_ptr\(29) & (!\inst5|Add0~57\)) # (!\inst5|rom_ptr\(29) & ((\inst5|Add0~57\) # (GND)))
-- \inst5|Add0~59\ = CARRY((!\inst5|Add0~57\) # (!\inst5|rom_ptr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(29),
	datad => VCC,
	cin => \inst5|Add0~57\,
	combout => \inst5|Add0~58_combout\,
	cout => \inst5|Add0~59\);

-- Location: FF_X40_Y6_N31
\inst5|rom_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add0~60_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(30));

-- Location: LCCOMB_X40_Y6_N30
\inst5|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~60_combout\ = \inst5|rom_ptr\(30) $ (!\inst5|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(30),
	cin => \inst5|Add0~59\,
	combout => \inst5|Add0~60_combout\);

-- Location: LCCOMB_X41_Y7_N22
\inst5|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~6_combout\ = (!\inst5|Add0~44_combout\ & (!\inst5|Add0~38_combout\ & (!\inst5|Add0~40_combout\ & !\inst5|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~44_combout\,
	datab => \inst5|Add0~38_combout\,
	datac => \inst5|Add0~40_combout\,
	datad => \inst5|Add0~42_combout\,
	combout => \inst5|process_0~6_combout\);

-- Location: LCCOMB_X40_Y7_N0
\inst5|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~1_combout\ = (!\inst5|Add0~12_combout\ & (!\inst5|Add0~8_combout\ & (!\inst5|Add0~4_combout\ & !\inst5|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~12_combout\,
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~10_combout\,
	combout => \inst5|process_0~1_combout\);

-- Location: LCCOMB_X41_Y7_N4
\inst5|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~3_combout\ = (!\inst5|Add0~24_combout\ & (!\inst5|Add0~28_combout\ & (!\inst5|Add0~22_combout\ & !\inst5|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~24_combout\,
	datab => \inst5|Add0~28_combout\,
	datac => \inst5|Add0~22_combout\,
	datad => \inst5|Add0~26_combout\,
	combout => \inst5|process_0~3_combout\);

-- Location: LCCOMB_X41_Y7_N26
\inst5|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~2_combout\ = (!\inst5|Add0~14_combout\ & (!\inst5|Add0~16_combout\ & (!\inst5|Add0~18_combout\ & !\inst5|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~16_combout\,
	datac => \inst5|Add0~18_combout\,
	datad => \inst5|Add0~20_combout\,
	combout => \inst5|process_0~2_combout\);

-- Location: LCCOMB_X41_Y7_N2
\inst5|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~4_combout\ = (!\inst5|Add0~30_combout\ & (!\inst5|Add0~36_combout\ & (!\inst5|Add0~32_combout\ & !\inst5|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~30_combout\,
	datab => \inst5|Add0~36_combout\,
	datac => \inst5|Add0~32_combout\,
	datad => \inst5|Add0~34_combout\,
	combout => \inst5|process_0~4_combout\);

-- Location: LCCOMB_X41_Y7_N24
\inst5|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~5_combout\ = (\inst5|process_0~1_combout\ & (\inst5|process_0~3_combout\ & (\inst5|process_0~2_combout\ & \inst5|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~1_combout\,
	datab => \inst5|process_0~3_combout\,
	datac => \inst5|process_0~2_combout\,
	datad => \inst5|process_0~4_combout\,
	combout => \inst5|process_0~5_combout\);

-- Location: LCCOMB_X41_Y7_N0
\inst5|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~7_combout\ = (\inst5|process_0~6_combout\ & (!\inst5|Add0~46_combout\ & (!\inst5|Add0~48_combout\ & \inst5|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~6_combout\,
	datab => \inst5|Add0~46_combout\,
	datac => \inst5|Add0~48_combout\,
	datad => \inst5|process_0~5_combout\,
	combout => \inst5|process_0~7_combout\);

-- Location: LCCOMB_X41_Y7_N10
\inst5|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~8_combout\ = (!\inst5|Add0~52_combout\ & (!\inst5|Add0~50_combout\ & (!\inst5|Add0~54_combout\ & \inst5|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~52_combout\,
	datab => \inst5|Add0~50_combout\,
	datac => \inst5|Add0~54_combout\,
	datad => \inst5|process_0~7_combout\,
	combout => \inst5|process_0~8_combout\);

-- Location: LCCOMB_X41_Y7_N28
\inst5|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~9_combout\ = (!\inst5|Add0~56_combout\ & (!\inst5|Add0~58_combout\ & (!\inst5|Add0~60_combout\ & \inst5|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~56_combout\,
	datab => \inst5|Add0~58_combout\,
	datac => \inst5|Add0~60_combout\,
	datad => \inst5|process_0~8_combout\,
	combout => \inst5|process_0~9_combout\);

-- Location: LCCOMB_X41_Y7_N30
\inst5|rom_ptr~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|rom_ptr~4_combout\ = (\inst5|Add0~2_combout\ & (((\inst5|Add0~0_combout\) # (!\inst5|process_0~9_combout\)) # (!\inst5|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~2_combout\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|rom_ptr~4_combout\);

-- Location: FF_X41_Y7_N31
\inst5|rom_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|rom_ptr~4_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(1));

-- Location: LCCOMB_X41_Y7_N20
\inst5|rom_ptr~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|rom_ptr~5_combout\ = (\inst5|Add0~6_combout\ & ((\inst5|Add0~0_combout\) # ((!\inst5|process_0~9_combout\) # (!\inst5|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~2_combout\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|rom_ptr~5_combout\);

-- Location: FF_X41_Y7_N21
\inst5|rom_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|rom_ptr~5_combout\,
	clrn => \RESET~input_o\,
	ena => \inst5|state.config1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|rom_ptr\(3));

-- Location: LCCOMB_X41_Y7_N8
\inst5|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~0_combout\ = (!\inst5|Add0~2_combout\ & (\inst5|Add0~6_combout\ $ (\inst5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~2_combout\,
	combout => \inst5|process_0~0_combout\);

-- Location: LCCOMB_X41_Y7_N6
\inst5|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = ((\inst5|Add0~0_combout\) # (!\inst5|Add0~2_combout\)) # (!\inst5|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~2_combout\,
	combout => \inst5|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y7_N12
\inst5|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector0~0_combout\ = (!\inst5|process_0~0_combout\ & (!\inst5|Equal2~0_combout\ & (\inst5|state.config1~q\ & \inst5|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|Equal2~0_combout\,
	datac => \inst5|state.config1~q\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y7_N4
\inst5|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector0~1_combout\ = (!\inst5|Selector0~0_combout\ & ((\inst5|state.idle~q\) # (!\START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~input_o\,
	datac => \inst5|state.idle~q\,
	datad => \inst5|Selector0~0_combout\,
	combout => \inst5|Selector0~1_combout\);

-- Location: FF_X42_Y7_N5
\inst5|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector0~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.idle~q\);

-- Location: LCCOMB_X42_Y7_N30
\inst5|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector1~1_combout\ = (!\inst5|state.idle~q\ & !\START~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.idle~q\,
	datad => \START~input_o\,
	combout => \inst5|Selector1~1_combout\);

-- Location: LCCOMB_X42_Y7_N18
\inst5|delay_counter[30]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|delay_counter[30]~0_combout\ = (\RESET~input_o\ & \inst5|state.chargedelay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst5|state.chargedelay~q\,
	combout => \inst5|delay_counter[30]~0_combout\);

-- Location: FF_X41_Y4_N29
\inst5|delay_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~58_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(29));

-- Location: LCCOMB_X41_Y7_N18
\inst5|last_sclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|last_sclk~0_combout\ = (\inst5|state.config1~q\ & (\inst5|process_0~0_combout\ & (\RESET~input_o\ & \inst5|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.config1~q\,
	datab => \inst5|process_0~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|last_sclk~0_combout\);

-- Location: LCCOMB_X41_Y7_N14
\inst5|last_sclk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|last_sclk~1_combout\ = (\inst5|delay_counter[30]~0_combout\ & (\inst2|clk_div_sig~q\)) # (!\inst5|delay_counter[30]~0_combout\ & ((\inst5|last_sclk~0_combout\ & (\inst2|clk_div_sig~q\)) # (!\inst5|last_sclk~0_combout\ & ((\inst5|last_sclk~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_div_sig~q\,
	datab => \inst5|delay_counter[30]~0_combout\,
	datac => \inst5|last_sclk~q\,
	datad => \inst5|last_sclk~0_combout\,
	combout => \inst5|last_sclk~1_combout\);

-- Location: FF_X41_Y7_N15
\inst5|last_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|last_sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|last_sclk~q\);

-- Location: LCCOMB_X41_Y5_N0
\inst5|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|process_0~10_combout\ = (\inst2|clk_div_sig~q\ & !\inst5|last_sclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clk_div_sig~q\,
	datad => \inst5|last_sclk~q\,
	combout => \inst5|process_0~10_combout\);

-- Location: LCCOMB_X41_Y5_N2
\inst5|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = (\inst5|delay_counter\(0) & (\inst5|process_0~10_combout\ $ (VCC))) # (!\inst5|delay_counter\(0) & (\inst5|process_0~10_combout\ & VCC))
-- \inst5|Add1~1\ = CARRY((\inst5|delay_counter\(0) & \inst5|process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(0),
	datab => \inst5|process_0~10_combout\,
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: FF_X41_Y5_N3
\inst5|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~0_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(0));

-- Location: LCCOMB_X41_Y5_N4
\inst5|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|delay_counter\(1) & (!\inst5|Add1~1\)) # (!\inst5|delay_counter\(1) & ((\inst5|Add1~1\) # (GND)))
-- \inst5|Add1~3\ = CARRY((!\inst5|Add1~1\) # (!\inst5|delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(1),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: FF_X41_Y5_N5
\inst5|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~2_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(1));

-- Location: LCCOMB_X41_Y5_N6
\inst5|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|delay_counter\(2) & (\inst5|Add1~3\ $ (GND))) # (!\inst5|delay_counter\(2) & (!\inst5|Add1~3\ & VCC))
-- \inst5|Add1~5\ = CARRY((\inst5|delay_counter\(2) & !\inst5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(2),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: FF_X41_Y5_N7
\inst5|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~4_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(2));

-- Location: LCCOMB_X41_Y5_N8
\inst5|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|delay_counter\(3) & (!\inst5|Add1~5\)) # (!\inst5|delay_counter\(3) & ((\inst5|Add1~5\) # (GND)))
-- \inst5|Add1~7\ = CARRY((!\inst5|Add1~5\) # (!\inst5|delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(3),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: FF_X41_Y5_N9
\inst5|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~6_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(3));

-- Location: LCCOMB_X41_Y5_N10
\inst5|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|delay_counter\(4) & (\inst5|Add1~7\ $ (GND))) # (!\inst5|delay_counter\(4) & (!\inst5|Add1~7\ & VCC))
-- \inst5|Add1~9\ = CARRY((\inst5|delay_counter\(4) & !\inst5|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(4),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: FF_X41_Y5_N11
\inst5|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~8_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(4));

-- Location: LCCOMB_X41_Y5_N12
\inst5|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|delay_counter\(5) & (!\inst5|Add1~9\)) # (!\inst5|delay_counter\(5) & ((\inst5|Add1~9\) # (GND)))
-- \inst5|Add1~11\ = CARRY((!\inst5|Add1~9\) # (!\inst5|delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(5),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: FF_X41_Y5_N13
\inst5|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~10_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(5));

-- Location: LCCOMB_X41_Y5_N14
\inst5|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = (\inst5|delay_counter\(6) & (\inst5|Add1~11\ $ (GND))) # (!\inst5|delay_counter\(6) & (!\inst5|Add1~11\ & VCC))
-- \inst5|Add1~13\ = CARRY((\inst5|delay_counter\(6) & !\inst5|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(6),
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X42_Y4_N16
\inst5|delay_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|delay_counter~4_combout\ = (\inst5|Add1~12_combout\ & !\inst5|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~12_combout\,
	datad => \inst5|Equal3~9_combout\,
	combout => \inst5|delay_counter~4_combout\);

-- Location: FF_X42_Y4_N17
\inst5|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|delay_counter~4_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(6));

-- Location: LCCOMB_X41_Y5_N16
\inst5|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = (\inst5|delay_counter\(7) & (!\inst5|Add1~13\)) # (!\inst5|delay_counter\(7) & ((\inst5|Add1~13\) # (GND)))
-- \inst5|Add1~15\ = CARRY((!\inst5|Add1~13\) # (!\inst5|delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(7),
	datad => VCC,
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\,
	cout => \inst5|Add1~15\);

-- Location: LCCOMB_X42_Y4_N6
\inst5|delay_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|delay_counter~3_combout\ = (\inst5|Add1~14_combout\ & !\inst5|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~14_combout\,
	datad => \inst5|Equal3~9_combout\,
	combout => \inst5|delay_counter~3_combout\);

-- Location: FF_X42_Y4_N7
\inst5|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|delay_counter~3_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(7));

-- Location: LCCOMB_X41_Y5_N18
\inst5|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~16_combout\ = (\inst5|delay_counter\(8) & (\inst5|Add1~15\ $ (GND))) # (!\inst5|delay_counter\(8) & (!\inst5|Add1~15\ & VCC))
-- \inst5|Add1~17\ = CARRY((\inst5|delay_counter\(8) & !\inst5|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(8),
	datad => VCC,
	cin => \inst5|Add1~15\,
	combout => \inst5|Add1~16_combout\,
	cout => \inst5|Add1~17\);

-- Location: FF_X41_Y5_N19
\inst5|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~16_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(8));

-- Location: LCCOMB_X41_Y5_N20
\inst5|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~18_combout\ = (\inst5|delay_counter\(9) & (!\inst5|Add1~17\)) # (!\inst5|delay_counter\(9) & ((\inst5|Add1~17\) # (GND)))
-- \inst5|Add1~19\ = CARRY((!\inst5|Add1~17\) # (!\inst5|delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(9),
	datad => VCC,
	cin => \inst5|Add1~17\,
	combout => \inst5|Add1~18_combout\,
	cout => \inst5|Add1~19\);

-- Location: LCCOMB_X42_Y4_N0
\inst5|delay_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|delay_counter~2_combout\ = (\inst5|Add1~18_combout\ & !\inst5|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~18_combout\,
	datad => \inst5|Equal3~9_combout\,
	combout => \inst5|delay_counter~2_combout\);

-- Location: FF_X42_Y4_N1
\inst5|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|delay_counter~2_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(9));

-- Location: LCCOMB_X41_Y5_N22
\inst5|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~20_combout\ = (\inst5|delay_counter\(10) & (\inst5|Add1~19\ $ (GND))) # (!\inst5|delay_counter\(10) & (!\inst5|Add1~19\ & VCC))
-- \inst5|Add1~21\ = CARRY((\inst5|delay_counter\(10) & !\inst5|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(10),
	datad => VCC,
	cin => \inst5|Add1~19\,
	combout => \inst5|Add1~20_combout\,
	cout => \inst5|Add1~21\);

-- Location: LCCOMB_X42_Y4_N26
\inst5|delay_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|delay_counter~1_combout\ = (\inst5|Add1~20_combout\ & !\inst5|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add1~20_combout\,
	datad => \inst5|Equal3~9_combout\,
	combout => \inst5|delay_counter~1_combout\);

-- Location: FF_X42_Y4_N27
\inst5|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|delay_counter~1_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(10));

-- Location: LCCOMB_X41_Y5_N24
\inst5|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~22_combout\ = (\inst5|delay_counter\(11) & (!\inst5|Add1~21\)) # (!\inst5|delay_counter\(11) & ((\inst5|Add1~21\) # (GND)))
-- \inst5|Add1~23\ = CARRY((!\inst5|Add1~21\) # (!\inst5|delay_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(11),
	datad => VCC,
	cin => \inst5|Add1~21\,
	combout => \inst5|Add1~22_combout\,
	cout => \inst5|Add1~23\);

-- Location: FF_X41_Y5_N25
\inst5|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~22_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(11));

-- Location: LCCOMB_X41_Y5_N26
\inst5|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~24_combout\ = (\inst5|delay_counter\(12) & (\inst5|Add1~23\ $ (GND))) # (!\inst5|delay_counter\(12) & (!\inst5|Add1~23\ & VCC))
-- \inst5|Add1~25\ = CARRY((\inst5|delay_counter\(12) & !\inst5|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(12),
	datad => VCC,
	cin => \inst5|Add1~23\,
	combout => \inst5|Add1~24_combout\,
	cout => \inst5|Add1~25\);

-- Location: FF_X41_Y5_N27
\inst5|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~24_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(12));

-- Location: LCCOMB_X41_Y5_N28
\inst5|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~26_combout\ = (\inst5|delay_counter\(13) & (!\inst5|Add1~25\)) # (!\inst5|delay_counter\(13) & ((\inst5|Add1~25\) # (GND)))
-- \inst5|Add1~27\ = CARRY((!\inst5|Add1~25\) # (!\inst5|delay_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(13),
	datad => VCC,
	cin => \inst5|Add1~25\,
	combout => \inst5|Add1~26_combout\,
	cout => \inst5|Add1~27\);

-- Location: FF_X41_Y5_N29
\inst5|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~26_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(13));

-- Location: LCCOMB_X41_Y5_N30
\inst5|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~28_combout\ = (\inst5|delay_counter\(14) & (\inst5|Add1~27\ $ (GND))) # (!\inst5|delay_counter\(14) & (!\inst5|Add1~27\ & VCC))
-- \inst5|Add1~29\ = CARRY((\inst5|delay_counter\(14) & !\inst5|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(14),
	datad => VCC,
	cin => \inst5|Add1~27\,
	combout => \inst5|Add1~28_combout\,
	cout => \inst5|Add1~29\);

-- Location: FF_X41_Y5_N31
\inst5|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~28_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(14));

-- Location: LCCOMB_X41_Y4_N0
\inst5|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~30_combout\ = (\inst5|delay_counter\(15) & (!\inst5|Add1~29\)) # (!\inst5|delay_counter\(15) & ((\inst5|Add1~29\) # (GND)))
-- \inst5|Add1~31\ = CARRY((!\inst5|Add1~29\) # (!\inst5|delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(15),
	datad => VCC,
	cin => \inst5|Add1~29\,
	combout => \inst5|Add1~30_combout\,
	cout => \inst5|Add1~31\);

-- Location: FF_X41_Y4_N1
\inst5|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~30_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(15));

-- Location: LCCOMB_X41_Y4_N2
\inst5|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~32_combout\ = (\inst5|delay_counter\(16) & (\inst5|Add1~31\ $ (GND))) # (!\inst5|delay_counter\(16) & (!\inst5|Add1~31\ & VCC))
-- \inst5|Add1~33\ = CARRY((\inst5|delay_counter\(16) & !\inst5|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(16),
	datad => VCC,
	cin => \inst5|Add1~31\,
	combout => \inst5|Add1~32_combout\,
	cout => \inst5|Add1~33\);

-- Location: FF_X41_Y4_N3
\inst5|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~32_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(16));

-- Location: LCCOMB_X41_Y4_N4
\inst5|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~34_combout\ = (\inst5|delay_counter\(17) & (!\inst5|Add1~33\)) # (!\inst5|delay_counter\(17) & ((\inst5|Add1~33\) # (GND)))
-- \inst5|Add1~35\ = CARRY((!\inst5|Add1~33\) # (!\inst5|delay_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(17),
	datad => VCC,
	cin => \inst5|Add1~33\,
	combout => \inst5|Add1~34_combout\,
	cout => \inst5|Add1~35\);

-- Location: FF_X41_Y4_N5
\inst5|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~34_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(17));

-- Location: LCCOMB_X41_Y4_N6
\inst5|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~36_combout\ = (\inst5|delay_counter\(18) & (\inst5|Add1~35\ $ (GND))) # (!\inst5|delay_counter\(18) & (!\inst5|Add1~35\ & VCC))
-- \inst5|Add1~37\ = CARRY((\inst5|delay_counter\(18) & !\inst5|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(18),
	datad => VCC,
	cin => \inst5|Add1~35\,
	combout => \inst5|Add1~36_combout\,
	cout => \inst5|Add1~37\);

-- Location: FF_X41_Y4_N7
\inst5|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~36_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(18));

-- Location: LCCOMB_X41_Y4_N8
\inst5|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~38_combout\ = (\inst5|delay_counter\(19) & (!\inst5|Add1~37\)) # (!\inst5|delay_counter\(19) & ((\inst5|Add1~37\) # (GND)))
-- \inst5|Add1~39\ = CARRY((!\inst5|Add1~37\) # (!\inst5|delay_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(19),
	datad => VCC,
	cin => \inst5|Add1~37\,
	combout => \inst5|Add1~38_combout\,
	cout => \inst5|Add1~39\);

-- Location: FF_X41_Y4_N9
\inst5|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~38_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(19));

-- Location: LCCOMB_X41_Y4_N10
\inst5|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~40_combout\ = (\inst5|delay_counter\(20) & (\inst5|Add1~39\ $ (GND))) # (!\inst5|delay_counter\(20) & (!\inst5|Add1~39\ & VCC))
-- \inst5|Add1~41\ = CARRY((\inst5|delay_counter\(20) & !\inst5|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(20),
	datad => VCC,
	cin => \inst5|Add1~39\,
	combout => \inst5|Add1~40_combout\,
	cout => \inst5|Add1~41\);

-- Location: FF_X41_Y4_N11
\inst5|delay_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~40_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(20));

-- Location: LCCOMB_X41_Y4_N12
\inst5|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~42_combout\ = (\inst5|delay_counter\(21) & (!\inst5|Add1~41\)) # (!\inst5|delay_counter\(21) & ((\inst5|Add1~41\) # (GND)))
-- \inst5|Add1~43\ = CARRY((!\inst5|Add1~41\) # (!\inst5|delay_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(21),
	datad => VCC,
	cin => \inst5|Add1~41\,
	combout => \inst5|Add1~42_combout\,
	cout => \inst5|Add1~43\);

-- Location: FF_X41_Y4_N13
\inst5|delay_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~42_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(21));

-- Location: LCCOMB_X41_Y4_N14
\inst5|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~44_combout\ = (\inst5|delay_counter\(22) & (\inst5|Add1~43\ $ (GND))) # (!\inst5|delay_counter\(22) & (!\inst5|Add1~43\ & VCC))
-- \inst5|Add1~45\ = CARRY((\inst5|delay_counter\(22) & !\inst5|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(22),
	datad => VCC,
	cin => \inst5|Add1~43\,
	combout => \inst5|Add1~44_combout\,
	cout => \inst5|Add1~45\);

-- Location: FF_X41_Y4_N15
\inst5|delay_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~44_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(22));

-- Location: LCCOMB_X41_Y4_N16
\inst5|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~46_combout\ = (\inst5|delay_counter\(23) & (!\inst5|Add1~45\)) # (!\inst5|delay_counter\(23) & ((\inst5|Add1~45\) # (GND)))
-- \inst5|Add1~47\ = CARRY((!\inst5|Add1~45\) # (!\inst5|delay_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(23),
	datad => VCC,
	cin => \inst5|Add1~45\,
	combout => \inst5|Add1~46_combout\,
	cout => \inst5|Add1~47\);

-- Location: FF_X41_Y4_N17
\inst5|delay_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~46_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(23));

-- Location: LCCOMB_X41_Y4_N18
\inst5|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~48_combout\ = (\inst5|delay_counter\(24) & (\inst5|Add1~47\ $ (GND))) # (!\inst5|delay_counter\(24) & (!\inst5|Add1~47\ & VCC))
-- \inst5|Add1~49\ = CARRY((\inst5|delay_counter\(24) & !\inst5|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(24),
	datad => VCC,
	cin => \inst5|Add1~47\,
	combout => \inst5|Add1~48_combout\,
	cout => \inst5|Add1~49\);

-- Location: FF_X41_Y4_N19
\inst5|delay_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~48_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(24));

-- Location: LCCOMB_X41_Y4_N20
\inst5|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~50_combout\ = (\inst5|delay_counter\(25) & (!\inst5|Add1~49\)) # (!\inst5|delay_counter\(25) & ((\inst5|Add1~49\) # (GND)))
-- \inst5|Add1~51\ = CARRY((!\inst5|Add1~49\) # (!\inst5|delay_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(25),
	datad => VCC,
	cin => \inst5|Add1~49\,
	combout => \inst5|Add1~50_combout\,
	cout => \inst5|Add1~51\);

-- Location: FF_X41_Y4_N21
\inst5|delay_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~50_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(25));

-- Location: LCCOMB_X41_Y4_N22
\inst5|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~52_combout\ = (\inst5|delay_counter\(26) & (\inst5|Add1~51\ $ (GND))) # (!\inst5|delay_counter\(26) & (!\inst5|Add1~51\ & VCC))
-- \inst5|Add1~53\ = CARRY((\inst5|delay_counter\(26) & !\inst5|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(26),
	datad => VCC,
	cin => \inst5|Add1~51\,
	combout => \inst5|Add1~52_combout\,
	cout => \inst5|Add1~53\);

-- Location: FF_X41_Y4_N23
\inst5|delay_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~52_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(26));

-- Location: LCCOMB_X41_Y4_N24
\inst5|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~54_combout\ = (\inst5|delay_counter\(27) & (!\inst5|Add1~53\)) # (!\inst5|delay_counter\(27) & ((\inst5|Add1~53\) # (GND)))
-- \inst5|Add1~55\ = CARRY((!\inst5|Add1~53\) # (!\inst5|delay_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(27),
	datad => VCC,
	cin => \inst5|Add1~53\,
	combout => \inst5|Add1~54_combout\,
	cout => \inst5|Add1~55\);

-- Location: FF_X41_Y4_N25
\inst5|delay_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~54_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(27));

-- Location: LCCOMB_X41_Y4_N26
\inst5|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~56_combout\ = (\inst5|delay_counter\(28) & (\inst5|Add1~55\ $ (GND))) # (!\inst5|delay_counter\(28) & (!\inst5|Add1~55\ & VCC))
-- \inst5|Add1~57\ = CARRY((\inst5|delay_counter\(28) & !\inst5|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(28),
	datad => VCC,
	cin => \inst5|Add1~55\,
	combout => \inst5|Add1~56_combout\,
	cout => \inst5|Add1~57\);

-- Location: FF_X41_Y4_N27
\inst5|delay_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~56_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(28));

-- Location: LCCOMB_X41_Y4_N28
\inst5|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~58_combout\ = (\inst5|delay_counter\(29) & (!\inst5|Add1~57\)) # (!\inst5|delay_counter\(29) & ((\inst5|Add1~57\) # (GND)))
-- \inst5|Add1~59\ = CARRY((!\inst5|Add1~57\) # (!\inst5|delay_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_counter\(29),
	datad => VCC,
	cin => \inst5|Add1~57\,
	combout => \inst5|Add1~58_combout\,
	cout => \inst5|Add1~59\);

-- Location: FF_X41_Y4_N31
\inst5|delay_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Add1~60_combout\,
	ena => \inst5|delay_counter[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_counter\(30));

-- Location: LCCOMB_X41_Y4_N30
\inst5|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add1~60_combout\ = \inst5|delay_counter\(30) $ (!\inst5|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_counter\(30),
	cin => \inst5|Add1~59\,
	combout => \inst5|Add1~60_combout\);

-- Location: LCCOMB_X42_Y4_N4
\inst5|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~5_combout\ = (!\inst5|Add1~32_combout\ & (!\inst5|Add1~36_combout\ & (!\inst5|Add1~34_combout\ & !\inst5|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~32_combout\,
	datab => \inst5|Add1~36_combout\,
	datac => \inst5|Add1~34_combout\,
	datad => \inst5|Add1~38_combout\,
	combout => \inst5|Equal3~5_combout\);

-- Location: LCCOMB_X42_Y4_N30
\inst5|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = (!\inst5|Add1~6_combout\ & (!\inst5|Add1~2_combout\ & (!\inst5|Add1~0_combout\ & !\inst5|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~6_combout\,
	datab => \inst5|Add1~2_combout\,
	datac => \inst5|Add1~0_combout\,
	datad => \inst5|Add1~4_combout\,
	combout => \inst5|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y4_N8
\inst5|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~1_combout\ = (!\inst5|Add1~8_combout\ & (\inst5|Add1~14_combout\ & (!\inst5|Add1~10_combout\ & \inst5|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~8_combout\,
	datab => \inst5|Add1~14_combout\,
	datac => \inst5|Add1~10_combout\,
	datad => \inst5|Add1~12_combout\,
	combout => \inst5|Equal3~1_combout\);

-- Location: LCCOMB_X42_Y4_N14
\inst5|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~2_combout\ = (\inst5|Add1~18_combout\ & (\inst5|Add1~20_combout\ & (!\inst5|Add1~16_combout\ & !\inst5|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~18_combout\,
	datab => \inst5|Add1~20_combout\,
	datac => \inst5|Add1~16_combout\,
	datad => \inst5|Add1~22_combout\,
	combout => \inst5|Equal3~2_combout\);

-- Location: LCCOMB_X42_Y4_N28
\inst5|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~3_combout\ = (!\inst5|Add1~30_combout\ & (!\inst5|Add1~24_combout\ & (!\inst5|Add1~26_combout\ & !\inst5|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~30_combout\,
	datab => \inst5|Add1~24_combout\,
	datac => \inst5|Add1~26_combout\,
	datad => \inst5|Add1~28_combout\,
	combout => \inst5|Equal3~3_combout\);

-- Location: LCCOMB_X42_Y4_N22
\inst5|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~4_combout\ = (\inst5|Equal3~0_combout\ & (\inst5|Equal3~1_combout\ & (\inst5|Equal3~2_combout\ & \inst5|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal3~0_combout\,
	datab => \inst5|Equal3~1_combout\,
	datac => \inst5|Equal3~2_combout\,
	datad => \inst5|Equal3~3_combout\,
	combout => \inst5|Equal3~4_combout\);

-- Location: LCCOMB_X42_Y4_N2
\inst5|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~6_combout\ = (!\inst5|Add1~40_combout\ & (!\inst5|Add1~42_combout\ & (!\inst5|Add1~46_combout\ & !\inst5|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~40_combout\,
	datab => \inst5|Add1~42_combout\,
	datac => \inst5|Add1~46_combout\,
	datad => \inst5|Add1~44_combout\,
	combout => \inst5|Equal3~6_combout\);

-- Location: LCCOMB_X42_Y4_N12
\inst5|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~7_combout\ = (!\inst5|Add1~48_combout\ & (\inst5|Equal3~5_combout\ & (\inst5|Equal3~4_combout\ & \inst5|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~48_combout\,
	datab => \inst5|Equal3~5_combout\,
	datac => \inst5|Equal3~4_combout\,
	datad => \inst5|Equal3~6_combout\,
	combout => \inst5|Equal3~7_combout\);

-- Location: LCCOMB_X42_Y4_N10
\inst5|Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~8_combout\ = (!\inst5|Add1~54_combout\ & (!\inst5|Add1~52_combout\ & (!\inst5|Add1~50_combout\ & \inst5|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~54_combout\,
	datab => \inst5|Add1~52_combout\,
	datac => \inst5|Add1~50_combout\,
	datad => \inst5|Equal3~7_combout\,
	combout => \inst5|Equal3~8_combout\);

-- Location: LCCOMB_X42_Y4_N24
\inst5|Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal3~9_combout\ = (!\inst5|Add1~58_combout\ & (!\inst5|Add1~60_combout\ & (!\inst5|Add1~56_combout\ & \inst5|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~58_combout\,
	datab => \inst5|Add1~60_combout\,
	datac => \inst5|Add1~56_combout\,
	datad => \inst5|Equal3~8_combout\,
	combout => \inst5|Equal3~9_combout\);

-- Location: LCCOMB_X41_Y7_N12
\inst5|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector6~0_combout\ = (\inst5|state.config1~q\ & (\inst5|process_0~0_combout\ & \inst5|process_0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.config1~q\,
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|Selector6~0_combout\);

-- Location: LCCOMB_X42_Y4_N20
\inst5|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector4~0_combout\ = (\inst5|Selector6~0_combout\) # ((!\inst5|Equal3~9_combout\ & \inst5|state.chargedelay~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~9_combout\,
	datac => \inst5|state.chargedelay~q\,
	datad => \inst5|Selector6~0_combout\,
	combout => \inst5|Selector4~0_combout\);

-- Location: FF_X42_Y4_N21
\inst5|state.chargedelay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.chargedelay~q\);

-- Location: LCCOMB_X42_Y7_N22
\inst5|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector1~0_combout\ = (\inst5|state.config1~q\ & (((!\inst5|process_0~0_combout\ & \inst5|Equal2~0_combout\)) # (!\inst5|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|Equal2~0_combout\,
	datac => \inst5|state.config1~q\,
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|Selector1~0_combout\);

-- Location: LCCOMB_X42_Y7_N28
\inst5|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector1~2_combout\ = (\inst5|Selector1~1_combout\) # ((\inst5|Selector1~0_combout\) # ((\inst5|state.chargedelay~q\ & \inst5|Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Selector1~1_combout\,
	datab => \inst5|state.chargedelay~q\,
	datac => \inst5|Selector1~0_combout\,
	datad => \inst5|Equal3~9_combout\,
	combout => \inst5|Selector1~2_combout\);

-- Location: FF_X42_Y7_N29
\inst5|state.config0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector1~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.config0~q\);

-- Location: LCCOMB_X34_Y7_N28
\inst5|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Selector5~0_combout\ = (\inst5|state.wait1~q\ & (((\inst5|codec_start~q\ & !\inst4|idle~q\)))) # (!\inst5|state.wait1~q\ & ((\inst5|state.config0~q\) # ((\inst5|codec_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.config0~q\,
	datab => \inst5|state.wait1~q\,
	datac => \inst5|codec_start~q\,
	datad => \inst4|idle~q\,
	combout => \inst5|Selector5~0_combout\);

-- Location: FF_X34_Y7_N29
\inst5|codec_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Selector5~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|codec_start~q\);

-- Location: LCCOMB_X34_Y7_N6
\inst4|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (!\inst4|state.s_stop2~q\ & ((\inst4|state.s_idle~q\) # (\inst5|codec_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s_stop2~q\,
	datac => \inst4|state.s_idle~q\,
	datad => \inst5|codec_start~q\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X34_Y7_N7
\inst4|state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_idle~q\);

-- Location: LCCOMB_X34_Y7_N16
\inst4|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (!\inst4|state.s_idle~q\ & \inst5|codec_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|state.s_idle~q\,
	datad => \inst5|codec_start~q\,
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X34_Y7_N17
\inst4|state.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_start~q\);

-- Location: LCCOMB_X38_Y7_N30
\inst4|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst4|state.s_start~q\) # ((\inst4|state.s_addr~q\ & ((\inst4|Equal0~10_combout\) # (\inst4|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|Equal0~10_combout\,
	datac => \inst4|state.s_addr~q\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X38_Y7_N31
\inst4|state.s_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_addr~q\);

-- Location: LCCOMB_X38_Y7_N6
\inst4|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_ack1~q\)))) # (!\inst4|Equal0~10_combout\ & (\inst4|state.s_addr~q\ & ((!\inst4|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_addr~q\,
	datab => \inst4|Equal0~10_combout\,
	datac => \inst4|state.s_ack1~q\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Selector4~0_combout\);

-- Location: FF_X38_Y7_N7
\inst4|state.s_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_ack1~q\);

-- Location: LCCOMB_X38_Y7_N20
\inst4|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector5~0_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_byte1~q\)))) # (!\inst4|Equal0~10_combout\ & ((\inst4|state.s_ack1~q\) # ((\inst4|state.s_byte1~q\ & \inst4|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_ack1~q\,
	datab => \inst4|Equal0~10_combout\,
	datac => \inst4|state.s_byte1~q\,
	datad => \inst4|Equal1~10_combout\,
	combout => \inst4|Selector5~0_combout\);

-- Location: FF_X38_Y7_N21
\inst4|state.s_byte1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector5~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s_byte1~q\);

-- Location: LCCOMB_X38_Y7_N8
\inst4|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~0_combout\ = (!\inst4|state.s_byte1~q\ & (!\inst4|state.s_addr~q\ & !\inst4|state.s_byte2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s_byte1~q\,
	datac => \inst4|state.s_addr~q\,
	datad => \inst4|state.s_byte2~q\,
	combout => \inst4|WideOr4~0_combout\);

-- Location: LCCOMB_X38_Y7_N16
\inst4|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~0_combout\ = (\inst4|state.s_byte1~q\) # ((\inst4|state.s_addr~q\) # (\inst4|state.s_byte2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s_byte1~q\,
	datac => \inst4|state.s_addr~q\,
	datad => \inst4|state.s_byte2~q\,
	combout => \inst4|Selector13~0_combout\);

-- Location: LCCOMB_X38_Y7_N28
\inst4|Selector18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector18~5_combout\ = (!\inst4|state.s_ack1~q\ & (!\inst4|state.s_byte1~q\ & (!\inst4|state.s_addr~q\ & !\inst4|state.s_byte2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_ack1~q\,
	datab => \inst4|state.s_byte1~q\,
	datac => \inst4|state.s_addr~q\,
	datad => \inst4|state.s_byte2~q\,
	combout => \inst4|Selector18~5_combout\);

-- Location: LCCOMB_X35_Y4_N22
\inst4|Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector18~3_combout\ = (\inst4|WideOr6~combout\) # ((\inst4|Equal0~10_combout\ & ((\inst4|state.s_ack2~q\) # (!\inst4|Selector18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector18~5_combout\,
	datab => \inst4|WideOr6~combout\,
	datac => \inst4|state.s_ack2~q\,
	datad => \inst4|Equal0~10_combout\,
	combout => \inst4|Selector18~3_combout\);

-- Location: LCCOMB_X35_Y4_N26
\inst5|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\inst5|rom_ptr\(1) & (!\inst5|rom_ptr\(3) & (\inst5|rom_ptr\(0) & !\inst5|rom_ptr\(2)))) # (!\inst5|rom_ptr\(1) & (!\inst5|rom_ptr\(0) & (\inst5|rom_ptr\(3) $ (\inst5|rom_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(3),
	datab => \inst5|rom_ptr\(1),
	datac => \inst5|rom_ptr\(0),
	datad => \inst5|rom_ptr\(2),
	combout => \inst5|Mux8~0_combout\);

-- Location: LCCOMB_X35_Y4_N4
\inst5|reg_data[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|reg_data[5]~0_combout\ = (\RESET~input_o\ & \inst5|state.config0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst5|state.config0~q\,
	combout => \inst5|reg_data[5]~0_combout\);

-- Location: FF_X35_Y4_N27
\inst5|reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux8~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_data\(0));

-- Location: LCCOMB_X35_Y4_N0
\inst4|Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector18~2_combout\ = (!\inst4|Equal0~4_combout\ & (\inst5|reg_data\(0) & !\inst4|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~4_combout\,
	datac => \inst5|reg_data\(0),
	datad => \inst4|Equal0~9_combout\,
	combout => \inst4|Selector18~2_combout\);

-- Location: LCCOMB_X35_Y4_N8
\inst4|Selector18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector18~4_combout\ = (\inst4|Selector18~3_combout\ & ((\inst4|sreg\(0)) # ((\inst4|state.s_ack2~q\ & \inst4|Selector18~2_combout\)))) # (!\inst4|Selector18~3_combout\ & (\inst4|state.s_ack2~q\ & ((\inst4|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector18~3_combout\,
	datab => \inst4|state.s_ack2~q\,
	datac => \inst4|sreg\(0),
	datad => \inst4|Selector18~2_combout\,
	combout => \inst4|Selector18~4_combout\);

-- Location: FF_X35_Y4_N9
\inst4|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector18~4_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(0));

-- Location: LCCOMB_X36_Y4_N14
\inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst5|rom_ptr\(0) & ((\inst5|rom_ptr\(1)))) # (!\inst5|rom_ptr\(0) & (!\inst5|rom_ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(2),
	datab => \inst5|rom_ptr\(0),
	datac => \inst5|rom_ptr\(1),
	combout => \inst5|Mux3~0_combout\);

-- Location: FF_X36_Y4_N15
\inst5|reg_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux3~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_addr\(0));

-- Location: LCCOMB_X36_Y4_N16
\inst4|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector17~0_combout\ = (\inst4|state.s_ack1~q\ & (((\inst5|reg_addr\(0))))) # (!\inst4|state.s_ack1~q\ & (\inst4|sreg\(0) & (!\inst4|state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sreg\(0),
	datab => \inst4|state.s_start~q\,
	datac => \inst5|reg_addr\(0),
	datad => \inst4|state.s_ack1~q\,
	combout => \inst4|Selector17~0_combout\);

-- Location: LCCOMB_X36_Y4_N18
\inst4|sreg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sreg[1]~feeder_combout\ = \inst4|Selector17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Selector17~0_combout\,
	combout => \inst4|sreg[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y4_N26
\inst5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (!\inst5|rom_ptr\(0) & (\inst5|rom_ptr\(2) $ (\inst5|rom_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(2),
	datab => \inst5|rom_ptr\(0),
	datac => \inst5|rom_ptr\(1),
	combout => \inst5|Mux7~0_combout\);

-- Location: FF_X36_Y4_N27
\inst5|reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux7~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_data\(1));

-- Location: FF_X36_Y4_N19
\inst4|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|sreg[1]~feeder_combout\,
	asdata => \inst5|reg_data\(1),
	sload => \inst4|state.s_ack2~q\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(1));

-- Location: LCCOMB_X35_Y4_N20
\inst4|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~0_combout\ = (\inst4|Equal0~9_combout\ & (((\inst4|sreg\(2))))) # (!\inst4|Equal0~9_combout\ & ((\inst4|Equal0~4_combout\ & ((\inst4|sreg\(2)))) # (!\inst4|Equal0~4_combout\ & (\inst4|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~9_combout\,
	datab => \inst4|sreg\(1),
	datac => \inst4|sreg\(2),
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Selector16~0_combout\);

-- Location: LCCOMB_X35_Y4_N10
\inst4|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~1_combout\ = (\inst4|Selector13~0_combout\ & (\inst4|Selector16~0_combout\ & ((\inst4|sreg\(2)) # (!\inst4|state.s_ack2~q\)))) # (!\inst4|Selector13~0_combout\ & (((\inst4|sreg\(2))) # (!\inst4|state.s_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector13~0_combout\,
	datab => \inst4|state.s_ack2~q\,
	datac => \inst4|sreg\(2),
	datad => \inst4|Selector16~0_combout\,
	combout => \inst4|Selector16~1_combout\);

-- Location: LCCOMB_X36_Y4_N10
\inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (!\inst5|rom_ptr\(2) & ((\inst5|rom_ptr\(0) & ((!\inst5|rom_ptr\(1)))) # (!\inst5|rom_ptr\(0) & (!\inst5|rom_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(3),
	datab => \inst5|rom_ptr\(0),
	datac => \inst5|rom_ptr\(1),
	datad => \inst5|rom_ptr\(2),
	combout => \inst5|Mux2~0_combout\);

-- Location: FF_X35_Y4_N17
\inst5|reg_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	asdata => \inst5|Mux2~0_combout\,
	sload => VCC,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_addr\(1));

-- Location: LCCOMB_X35_Y4_N16
\inst4|Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~2_combout\ = (\inst4|Equal0~4_combout\ & (\inst4|sreg\(2))) # (!\inst4|Equal0~4_combout\ & ((\inst4|Equal0~9_combout\ & (\inst4|sreg\(2))) # (!\inst4|Equal0~9_combout\ & ((\inst5|reg_addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sreg\(2),
	datab => \inst4|Equal0~4_combout\,
	datac => \inst5|reg_addr\(1),
	datad => \inst4|Equal0~9_combout\,
	combout => \inst4|Selector16~2_combout\);

-- Location: LCCOMB_X35_Y4_N6
\inst4|Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~3_combout\ = (\inst4|Equal0~10_combout\ & (((\inst4|state.s_ack1~q\ & !\inst4|Selector16~2_combout\)))) # (!\inst4|Equal0~10_combout\ & ((\inst4|state.s_ack2~q\) # ((\inst4|state.s_ack1~q\ & !\inst4|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~10_combout\,
	datab => \inst4|state.s_ack2~q\,
	datac => \inst4|state.s_ack1~q\,
	datad => \inst4|Selector16~2_combout\,
	combout => \inst4|Selector16~3_combout\);

-- Location: LCCOMB_X35_Y4_N14
\inst4|Selector16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~4_combout\ = (\inst4|Selector16~1_combout\ & (!\inst4|Selector16~3_combout\ & ((\inst4|sreg\(2)) # (!\inst4|WideOr6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector16~1_combout\,
	datab => \inst4|WideOr6~combout\,
	datac => \inst4|sreg\(2),
	datad => \inst4|Selector16~3_combout\,
	combout => \inst4|Selector16~4_combout\);

-- Location: FF_X35_Y4_N15
\inst4|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector16~4_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(2));

-- Location: LCCOMB_X36_Y4_N8
\inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst5|rom_ptr\(3) & (\inst5|rom_ptr\(0) & (!\inst5|rom_ptr\(1) & !\inst5|rom_ptr\(2)))) # (!\inst5|rom_ptr\(3) & (((\inst5|rom_ptr\(0) & !\inst5|rom_ptr\(1))) # (!\inst5|rom_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(3),
	datab => \inst5|rom_ptr\(0),
	datac => \inst5|rom_ptr\(1),
	datad => \inst5|rom_ptr\(2),
	combout => \inst5|Mux1~0_combout\);

-- Location: FF_X36_Y4_N9
\inst5|reg_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux1~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_addr\(2));

-- Location: LCCOMB_X36_Y4_N24
\inst4|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector15~0_combout\ = (\inst4|state.s_ack1~q\ & (((\inst5|reg_addr\(2))))) # (!\inst4|state.s_ack1~q\ & (\inst4|sreg\(2) & (!\inst4|state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sreg\(2),
	datab => \inst4|state.s_start~q\,
	datac => \inst5|reg_addr\(2),
	datad => \inst4|state.s_ack1~q\,
	combout => \inst4|Selector15~0_combout\);

-- Location: LCCOMB_X36_Y4_N20
\inst4|sreg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sreg[3]~feeder_combout\ = \inst4|Selector15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Selector15~0_combout\,
	combout => \inst4|sreg[3]~feeder_combout\);

-- Location: LCCOMB_X36_Y4_N22
\inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst5|rom_ptr\(2) & \inst5|rom_ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(2),
	datac => \inst5|rom_ptr\(1),
	combout => \inst5|Mux6~0_combout\);

-- Location: FF_X36_Y4_N23
\inst5|reg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux6~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_data\(3));

-- Location: FF_X36_Y4_N21
\inst4|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|sreg[3]~feeder_combout\,
	asdata => \inst5|reg_data\(3),
	sload => \inst4|state.s_ack2~q\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(3));

-- Location: LCCOMB_X36_Y4_N30
\inst5|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = (!\inst5|rom_ptr\(1) & !\inst5|rom_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(1),
	datac => \inst5|rom_ptr\(0),
	combout => \inst5|Mux4~1_combout\);

-- Location: FF_X36_Y4_N31
\inst5|reg_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux4~1_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_addr\(3));

-- Location: LCCOMB_X36_Y4_N28
\inst4|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector14~0_combout\ = (\inst4|state.s_ack1~q\ & (((\inst5|reg_addr\(3))))) # (!\inst4|state.s_ack1~q\ & ((\inst4|sreg\(3)) # ((\inst4|state.s_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_ack1~q\,
	datab => \inst4|sreg\(3),
	datac => \inst5|reg_addr\(3),
	datad => \inst4|state.s_start~q\,
	combout => \inst4|Selector14~0_combout\);

-- Location: LCCOMB_X36_Y4_N12
\inst4|sreg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sreg[4]~feeder_combout\ = \inst4|Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Selector14~0_combout\,
	combout => \inst4|sreg[4]~feeder_combout\);

-- Location: LCCOMB_X36_Y4_N4
\inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (!\inst5|rom_ptr\(3) & ((\inst5|rom_ptr\(0)) # ((\inst5|rom_ptr\(1) & \inst5|rom_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|rom_ptr\(3),
	datab => \inst5|rom_ptr\(0),
	datac => \inst5|rom_ptr\(1),
	datad => \inst5|rom_ptr\(2),
	combout => \inst5|Mux5~0_combout\);

-- Location: FF_X36_Y4_N5
\inst5|reg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst5|Mux5~0_combout\,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_data\(4));

-- Location: FF_X36_Y4_N13
\inst4|sreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|sreg[4]~feeder_combout\,
	asdata => \inst5|reg_data\(4),
	sload => \inst4|state.s_ack2~q\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(4));

-- Location: LCCOMB_X35_Y4_N30
\inst4|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~1_combout\ = (\inst4|Equal0~9_combout\ & (\inst4|sreg\(5))) # (!\inst4|Equal0~9_combout\ & ((\inst4|Equal0~4_combout\ & (\inst4|sreg\(5))) # (!\inst4|Equal0~4_combout\ & ((\inst4|sreg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~9_combout\,
	datab => \inst4|sreg\(5),
	datac => \inst4|sreg\(4),
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Selector13~1_combout\);

-- Location: LCCOMB_X35_Y4_N12
\inst4|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~2_combout\ = (\inst4|Selector13~0_combout\ & (\inst4|Selector13~1_combout\ & ((\inst4|sreg\(5)) # (!\inst4|state.s_ack1~q\)))) # (!\inst4|Selector13~0_combout\ & ((\inst4|sreg\(5)) # ((!\inst4|state.s_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector13~0_combout\,
	datab => \inst4|sreg\(5),
	datac => \inst4|Selector13~1_combout\,
	datad => \inst4|state.s_ack1~q\,
	combout => \inst4|Selector13~2_combout\);

-- Location: LCCOMB_X35_Y4_N18
\inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (!\inst5|rom_ptr\(1) & (!\inst5|rom_ptr\(0) & \inst5|rom_ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|rom_ptr\(1),
	datac => \inst5|rom_ptr\(0),
	datad => \inst5|rom_ptr\(2),
	combout => \inst5|Mux4~0_combout\);

-- Location: FF_X35_Y4_N3
\inst5|reg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	asdata => \inst5|Mux4~0_combout\,
	sload => VCC,
	ena => \inst5|reg_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg_data\(5));

-- Location: LCCOMB_X35_Y4_N2
\inst4|Selector13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~3_combout\ = (\inst4|Equal0~9_combout\ & (\inst4|sreg\(5))) # (!\inst4|Equal0~9_combout\ & ((\inst4|Equal0~4_combout\ & (\inst4|sreg\(5))) # (!\inst4|Equal0~4_combout\ & ((\inst5|reg_data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~9_combout\,
	datab => \inst4|sreg\(5),
	datac => \inst5|reg_data\(5),
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Selector13~3_combout\);

-- Location: LCCOMB_X35_Y4_N28
\inst4|Selector13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~4_combout\ = (\inst4|Equal0~10_combout\ & (\inst4|state.s_ack2~q\ & ((!\inst4|Selector13~3_combout\)))) # (!\inst4|Equal0~10_combout\ & ((\inst4|state.s_ack1~q\) # ((\inst4|state.s_ack2~q\ & !\inst4|Selector13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~10_combout\,
	datab => \inst4|state.s_ack2~q\,
	datac => \inst4|state.s_ack1~q\,
	datad => \inst4|Selector13~3_combout\,
	combout => \inst4|Selector13~4_combout\);

-- Location: LCCOMB_X35_Y4_N24
\inst4|Selector13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~5_combout\ = (\inst4|Selector13~2_combout\ & (!\inst4|Selector13~4_combout\ & ((\inst4|sreg\(5)) # (!\inst4|WideOr6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector13~2_combout\,
	datab => \inst4|WideOr6~combout\,
	datac => \inst4|sreg\(5),
	datad => \inst4|Selector13~4_combout\,
	combout => \inst4|Selector13~5_combout\);

-- Location: FF_X35_Y4_N25
\inst4|sreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector13~5_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(5));

-- Location: LCCOMB_X38_Y7_N0
\inst4|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector12~0_combout\ = (\inst4|sreg\(5) & ((\inst4|state.s_addr~q\) # ((\inst4|state.s_byte1~q\) # (\inst4|state.s_byte2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_addr~q\,
	datab => \inst4|state.s_byte1~q\,
	datac => \inst4|sreg\(5),
	datad => \inst4|state.s_byte2~q\,
	combout => \inst4|Selector12~0_combout\);

-- Location: FF_X38_Y7_N1
\inst4|sreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector12~0_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(6));

-- Location: LCCOMB_X38_Y7_N12
\inst4|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector11~0_combout\ = (\inst4|sreg\(6) & ((\inst4|state.s_byte1~q\) # ((\inst4|state.s_addr~q\) # (\inst4|state.s_byte2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sreg\(6),
	datab => \inst4|state.s_byte1~q\,
	datac => \inst4|state.s_addr~q\,
	datad => \inst4|state.s_byte2~q\,
	combout => \inst4|Selector11~0_combout\);

-- Location: FF_X38_Y7_N13
\inst4|sreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector11~0_combout\,
	ena => \inst4|bit_count[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sreg\(7));

-- Location: LCCOMB_X35_Y7_N20
\inst4|Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector85~0_combout\ = (!\inst4|state.s_stop2~q\ & ((\inst4|WideOr4~0_combout\) # (!\inst4|sreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr4~0_combout\,
	datab => \inst4|state.s_stop2~q\,
	datad => \inst4|sreg\(7),
	combout => \inst4|Selector85~0_combout\);

-- Location: FF_X35_Y7_N21
\inst4|i2c_sda~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector85~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst4|state.s_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|i2c_sda~reg0_q\);

-- Location: LCCOMB_X35_Y7_N16
\inst4|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~combout\ = (\inst4|state.s_ack1~q\) # ((\inst4|state.s_ack3~q\) # (\inst4|state.s_ack2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s_ack1~q\,
	datac => \inst4|state.s_ack3~q\,
	datad => \inst4|state.s_ack2~q\,
	combout => \inst4|WideOr5~combout\);

-- Location: FF_X35_Y7_N17
\inst4|i2c_sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|WideOr5~combout\,
	clrn => \RESET~input_o\,
	ena => \inst4|state.s_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|i2c_sda~en_q\);

-- Location: IOIBUF_X29_Y0_N29
\SW1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\SW2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\SW3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\SW4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\SW5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\SW6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\SW7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\SW8~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: LCCOMB_X35_Y7_N12
\inst4|Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector83~0_combout\ = (\inst4|state.s_start~q\) # ((!\inst4|state.s_stop1~q\ & \inst4|en_scl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s_start~q\,
	datab => \inst4|state.s_stop1~q\,
	datac => \inst4|en_scl~q\,
	combout => \inst4|Selector83~0_combout\);

-- Location: FF_X35_Y7_N13
\inst4|en_scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clk_div_sig~clkctrl_outclk\,
	d => \inst4|Selector83~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|en_scl~q\);

-- Location: LCCOMB_X39_Y7_N0
\inst4|aux_scl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|aux_scl~0_combout\ = (!\inst4|aux_scl~q\ & \inst4|en_scl~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|aux_scl~q\,
	datad => \inst4|en_scl~q\,
	combout => \inst4|aux_scl~0_combout\);

-- Location: FF_X39_Y7_N1
\inst4|aux_scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clk_div_sig~clkctrl_outclk\,
	d => \inst4|aux_scl~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux_scl~q\);

-- Location: LCCOMB_X41_Y9_N4
\inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|process_1:counter[2]~q\ & (!\inst|process_1:counter[5]~q\ & (!\inst|process_1:counter[4]~q\ & !\inst|process_1:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[2]~q\,
	datab => \inst|process_1:counter[5]~q\,
	datac => \inst|process_1:counter[4]~q\,
	datad => \inst|process_1:counter[3]~q\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y9_N16
\inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|process_1:counter[1]~q\ & (!\inst|Add1~1\)) # (!\inst|process_1:counter[1]~q\ & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|process_1:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:counter[1]~q\,
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: FF_X41_Y9_N17
\inst|process_1:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[1]~q\);

-- Location: LCCOMB_X41_Y9_N18
\inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|process_1:counter[2]~q\ & (\inst|Add1~3\ $ (GND))) # (!\inst|process_1:counter[2]~q\ & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|process_1:counter[2]~q\ & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[2]~q\,
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X41_Y9_N6
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|Add1~4_combout\ & ((!\inst|Equal1~1_combout\) # (!\inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~4_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X41_Y9_N7
\inst|process_1:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|counter~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[2]~q\);

-- Location: LCCOMB_X41_Y9_N20
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|process_1:counter[3]~q\ & (!\inst|Add1~5\)) # (!\inst|process_1:counter[3]~q\ & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|process_1:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:counter[3]~q\,
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: FF_X41_Y9_N21
\inst|process_1:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[3]~q\);

-- Location: LCCOMB_X41_Y9_N22
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|process_1:counter[4]~q\ & (\inst|Add1~7\ $ (GND))) # (!\inst|process_1:counter[4]~q\ & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|process_1:counter[4]~q\ & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[4]~q\,
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: FF_X41_Y9_N23
\inst|process_1:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[4]~q\);

-- Location: LCCOMB_X41_Y9_N24
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|process_1:counter[5]~q\ & (!\inst|Add1~9\)) # (!\inst|process_1:counter[5]~q\ & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|process_1:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:counter[5]~q\,
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: FF_X41_Y9_N25
\inst|process_1:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[5]~q\);

-- Location: LCCOMB_X41_Y9_N26
\inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|process_1:counter[6]~q\ & (\inst|Add1~11\ $ (GND))) # (!\inst|process_1:counter[6]~q\ & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|process_1:counter[6]~q\ & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[6]~q\,
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: FF_X41_Y9_N27
\inst|process_1:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[6]~q\);

-- Location: LCCOMB_X41_Y9_N28
\inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst|Add1~13\ $ (\inst|process_1:counter[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|process_1:counter[7]~q\,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: FF_X41_Y9_N29
\inst|process_1:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add1~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:counter[7]~q\);

-- Location: LCCOMB_X41_Y9_N12
\inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|process_1:counter[7]~q\ & (\inst|process_1:counter[1]~q\ & (!\inst|process_1:counter[6]~q\ & \inst|process_1:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[7]~q\,
	datab => \inst|process_1:counter[1]~q\,
	datac => \inst|process_1:counter[6]~q\,
	datad => \inst|process_1:counter[0]~q\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y3_N30
\inst|bclk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|bclk_sig~0_combout\ = \inst|bclk_sig~q\ $ (((\inst|Equal1~0_combout\ & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bclk_sig~q\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|bclk_sig~0_combout\);

-- Location: LCCOMB_X41_Y3_N14
\inst|bclk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|bclk_sig~feeder_combout\ = \inst|bclk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|bclk_sig~0_combout\,
	combout => \inst|bclk_sig~feeder_combout\);

-- Location: FF_X41_Y3_N15
\inst|bclk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|bclk_sig~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bclk_sig~q\);

-- Location: LCCOMB_X42_Y11_N6
\inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~1_cout\ = CARRY((\inst|process_1:counter[1]~q\ & \inst|process_1:counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:counter[1]~q\,
	datab => \inst|process_1:counter[0]~q\,
	datad => VCC,
	cout => \inst|Add0~1_cout\);

-- Location: LCCOMB_X42_Y11_N8
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(2) & (!\inst|Add0~1_cout\)) # (!\inst|counter\(2) & ((\inst|Add0~1_cout\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1_cout\) # (!\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~1_cout\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X42_Y11_N9
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X42_Y11_N10
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(3) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(3) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(3) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X42_Y11_N0
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (!\inst|Equal0~3_combout\ & \inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X42_Y11_N1
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|counter~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X42_Y11_N12
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(4) & (!\inst|Add0~5\)) # (!\inst|counter\(4) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X42_Y11_N13
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X42_Y11_N14
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(5) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(5) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(5) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X42_Y11_N15
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X42_Y11_N16
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(6) & (!\inst|Add0~9\)) # (!\inst|counter\(6) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X42_Y11_N17
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X42_Y11_N18
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(7) & (\inst|Add0~11\ $ (GND))) # (!\inst|counter\(7) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|counter\(7) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X42_Y11_N4
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~3_combout\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X42_Y11_N5
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|counter~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X42_Y11_N20
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|counter\(8) & (!\inst|Add0~13\)) # (!\inst|counter\(8) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X42_Y11_N21
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X42_Y11_N22
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(9) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(9) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(9) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X42_Y11_N23
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X42_Y11_N24
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(10) & (!\inst|Add0~17\)) # (!\inst|counter\(10) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X42_Y11_N25
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~18_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X42_Y11_N30
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(9) & (!\inst|counter\(8) & (\inst|counter\(7) & !\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(8),
	datac => \inst|counter\(7),
	datad => \inst|counter\(10),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y11_N2
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|counter\(4) & (!\inst|counter\(6) & (!\inst|counter\(5) & !\inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(6),
	datac => \inst|counter\(5),
	datad => \inst|counter\(3),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y11_N26
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|counter\(11) & (\inst|Add0~19\ $ (GND))) # (!\inst|counter\(11) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|counter\(11) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X42_Y11_N27
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~20_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X42_Y11_N28
\inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = \inst|Add0~21\ $ (\inst|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(12),
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\);

-- Location: FF_X42_Y11_N29
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|Add0~22_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X42_Y13_N6
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|counter\(12) & (!\inst|counter\(11) & (\inst|process_1:counter[1]~q\ & \inst|process_1:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datab => \inst|counter\(11),
	datac => \inst|process_1:counter[1]~q\,
	datad => \inst|process_1:counter[0]~q\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y13_N28
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(2) & (\inst|Equal0~1_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y13_N18
\inst|left_right~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_right~0_combout\ = \inst|left_right~q\ $ (\inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|left_right~q\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|left_right~0_combout\);

-- Location: LCCOMB_X42_Y13_N4
\inst|left_right~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_right~feeder_combout\ = \inst|left_right~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|left_right~0_combout\,
	combout => \inst|left_right~feeder_combout\);

-- Location: FF_X42_Y13_N5
\inst|left_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst|left_right~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_right~q\);

-- Location: CLKCTRL_G18
\inst|bclk_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|bclk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|bclk_sig~clkctrl_outclk\);

-- Location: IOIBUF_X31_Y0_N29
\AUD_ADCDAT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: LCCOMB_X42_Y13_N24
\inst|left_right_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_right_1~feeder_combout\ = \inst|left_right~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	combout => \inst|left_right_1~feeder_combout\);

-- Location: FF_X42_Y13_N25
\inst|left_right_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_right_1~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_right_1~q\);

-- Location: LCCOMB_X41_Y13_N28
\inst|adc_sreg[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[8]~0_combout\ = (\RESET~input_o\ & (\inst|left_right~q\ $ (!\inst|left_right_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|left_right~q\,
	datad => \inst|left_right_1~q\,
	combout => \inst|adc_sreg[8]~0_combout\);

-- Location: FF_X41_Y13_N11
\inst|adc_sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \AUD_ADCDAT~input_o\,
	sload => VCC,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(0));

-- Location: LCCOMB_X41_Y13_N20
\inst|adc_sreg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[1]~feeder_combout\ = \inst|adc_sreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(0),
	combout => \inst|adc_sreg[1]~feeder_combout\);

-- Location: FF_X41_Y13_N21
\inst|adc_sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[1]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(1));

-- Location: LCCOMB_X41_Y13_N24
\inst|adc_sreg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[2]~feeder_combout\ = \inst|adc_sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(1),
	combout => \inst|adc_sreg[2]~feeder_combout\);

-- Location: FF_X41_Y13_N25
\inst|adc_sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[2]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(2));

-- Location: LCCOMB_X41_Y13_N16
\inst|adc_sreg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[3]~feeder_combout\ = \inst|adc_sreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(2),
	combout => \inst|adc_sreg[3]~feeder_combout\);

-- Location: FF_X41_Y13_N17
\inst|adc_sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[3]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(3));

-- Location: LCCOMB_X41_Y13_N4
\inst|adc_sreg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[4]~feeder_combout\ = \inst|adc_sreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(3),
	combout => \inst|adc_sreg[4]~feeder_combout\);

-- Location: FF_X41_Y13_N5
\inst|adc_sreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[4]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(4));

-- Location: FF_X41_Y13_N29
\inst|adc_sreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(4),
	sload => VCC,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(5));

-- Location: LCCOMB_X41_Y13_N6
\inst|adc_sreg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[6]~feeder_combout\ = \inst|adc_sreg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(5),
	combout => \inst|adc_sreg[6]~feeder_combout\);

-- Location: FF_X41_Y13_N7
\inst|adc_sreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[6]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(6));

-- Location: LCCOMB_X41_Y13_N12
\inst|adc_sreg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[7]~feeder_combout\ = \inst|adc_sreg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(6),
	combout => \inst|adc_sreg[7]~feeder_combout\);

-- Location: FF_X41_Y13_N13
\inst|adc_sreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[7]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(7));

-- Location: LCCOMB_X41_Y13_N30
\inst|adc_sreg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[8]~feeder_combout\ = \inst|adc_sreg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(7),
	combout => \inst|adc_sreg[8]~feeder_combout\);

-- Location: FF_X41_Y13_N31
\inst|adc_sreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[8]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(8));

-- Location: LCCOMB_X41_Y13_N8
\inst|adc_sreg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[9]~feeder_combout\ = \inst|adc_sreg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(8),
	combout => \inst|adc_sreg[9]~feeder_combout\);

-- Location: FF_X41_Y13_N9
\inst|adc_sreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[9]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(9));

-- Location: LCCOMB_X41_Y13_N0
\inst|adc_sreg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[10]~feeder_combout\ = \inst|adc_sreg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(9),
	combout => \inst|adc_sreg[10]~feeder_combout\);

-- Location: FF_X41_Y13_N1
\inst|adc_sreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[10]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(10));

-- Location: LCCOMB_X41_Y13_N26
\inst|adc_sreg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[11]~feeder_combout\ = \inst|adc_sreg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(10),
	combout => \inst|adc_sreg[11]~feeder_combout\);

-- Location: FF_X41_Y13_N27
\inst|adc_sreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[11]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(11));

-- Location: LCCOMB_X41_Y13_N22
\inst|adc_sreg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[12]~feeder_combout\ = \inst|adc_sreg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(11),
	combout => \inst|adc_sreg[12]~feeder_combout\);

-- Location: FF_X41_Y13_N23
\inst|adc_sreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[12]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(12));

-- Location: LCCOMB_X41_Y13_N14
\inst|adc_sreg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[13]~feeder_combout\ = \inst|adc_sreg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(12),
	combout => \inst|adc_sreg[13]~feeder_combout\);

-- Location: FF_X41_Y13_N15
\inst|adc_sreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[13]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(13));

-- Location: LCCOMB_X41_Y13_N18
\inst|adc_sreg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[14]~feeder_combout\ = \inst|adc_sreg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(13),
	combout => \inst|adc_sreg[14]~feeder_combout\);

-- Location: FF_X41_Y13_N19
\inst|adc_sreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[14]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(14));

-- Location: LCCOMB_X41_Y13_N2
\inst|adc_sreg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|adc_sreg[15]~feeder_combout\ = \inst|adc_sreg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(14),
	combout => \inst|adc_sreg[15]~feeder_combout\);

-- Location: FF_X41_Y13_N3
\inst|adc_sreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|adc_sreg[15]~feeder_combout\,
	ena => \inst|adc_sreg[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_sreg\(15));

-- Location: LCCOMB_X38_Y13_N10
\inst|right_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|right_out[15]~0_combout\ = (\RESET~input_o\ & (!\inst|left_right~q\ & \inst|left_right_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|left_right~q\,
	datad => \inst|left_right_1~q\,
	combout => \inst|right_out[15]~0_combout\);

-- Location: FF_X38_Y13_N9
\inst|right_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(15),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(15));

-- Location: LCCOMB_X40_Y13_N24
\inst|left_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[15]~feeder_combout\ = \inst|adc_sreg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(15),
	combout => \inst|left_out[15]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N2
\inst|left_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[15]~0_combout\ = (\inst|left_right~q\ & (\RESET~input_o\ & !\inst|left_right_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|left_right~q\,
	datab => \RESET~input_o\,
	datad => \inst|left_right_1~q\,
	combout => \inst|left_out[15]~0_combout\);

-- Location: FF_X40_Y13_N25
\inst|left_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[15]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(15));

-- Location: LCCOMB_X38_Y13_N8
\inst|dacdat~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dacdat~0_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(15)))) # (!\inst|left_right~q\ & (\inst|right_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(15),
	datad => \inst|left_out\(15),
	combout => \inst|dacdat~0_combout\);

-- Location: LCCOMB_X37_Y13_N10
\inst|dacdat~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dacdat~feeder_combout\ = \inst|dacdat~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dacdat~0_combout\,
	combout => \inst|dacdat~feeder_combout\);

-- Location: FF_X38_Y13_N23
\inst|right_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(14),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(14));

-- Location: LCCOMB_X40_Y13_N0
\inst|left_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[14]~feeder_combout\ = \inst|adc_sreg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(14),
	combout => \inst|left_out[14]~feeder_combout\);

-- Location: FF_X40_Y13_N1
\inst|left_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[14]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(14));

-- Location: LCCOMB_X38_Y13_N22
\inst|dac_sreg[14]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[14]~0_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(14)))) # (!\inst|left_right~q\ & (\inst|right_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(14),
	datad => \inst|left_out\(14),
	combout => \inst|dac_sreg[14]~0_combout\);

-- Location: LCCOMB_X37_Y13_N8
\inst|dac_sreg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[14]~feeder_combout\ = \inst|dac_sreg[14]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[14]~0_combout\,
	combout => \inst|dac_sreg[14]~feeder_combout\);

-- Location: FF_X38_Y13_N25
\inst|right_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(13),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(13));

-- Location: LCCOMB_X40_Y13_N10
\inst|left_out[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[13]~feeder_combout\ = \inst|adc_sreg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(13),
	combout => \inst|left_out[13]~feeder_combout\);

-- Location: FF_X40_Y13_N11
\inst|left_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[13]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(13));

-- Location: LCCOMB_X38_Y13_N24
\inst|dac_sreg[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[13]~1_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(13)))) # (!\inst|left_right~q\ & (\inst|right_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(13),
	datad => \inst|left_out\(13),
	combout => \inst|dac_sreg[13]~1_combout\);

-- Location: LCCOMB_X37_Y13_N26
\inst|dac_sreg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[13]~feeder_combout\ = \inst|dac_sreg[13]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[13]~1_combout\,
	combout => \inst|dac_sreg[13]~feeder_combout\);

-- Location: FF_X38_Y13_N15
\inst|right_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(12),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(12));

-- Location: LCCOMB_X40_Y13_N12
\inst|left_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[12]~feeder_combout\ = \inst|adc_sreg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(12),
	combout => \inst|left_out[12]~feeder_combout\);

-- Location: FF_X40_Y13_N13
\inst|left_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[12]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(12));

-- Location: LCCOMB_X38_Y13_N14
\inst|dac_sreg[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[12]~2_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(12)))) # (!\inst|left_right~q\ & (\inst|right_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(12),
	datad => \inst|left_out\(12),
	combout => \inst|dac_sreg[12]~2_combout\);

-- Location: LCCOMB_X37_Y13_N30
\inst|dac_sreg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[12]~feeder_combout\ = \inst|dac_sreg[12]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[12]~2_combout\,
	combout => \inst|dac_sreg[12]~feeder_combout\);

-- Location: FF_X38_Y13_N13
\inst|right_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(11),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(11));

-- Location: LCCOMB_X40_Y13_N14
\inst|left_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[11]~feeder_combout\ = \inst|adc_sreg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(11),
	combout => \inst|left_out[11]~feeder_combout\);

-- Location: FF_X40_Y13_N15
\inst|left_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[11]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(11));

-- Location: LCCOMB_X38_Y13_N12
\inst|dac_sreg[11]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[11]~3_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(11)))) # (!\inst|left_right~q\ & (\inst|right_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(11),
	datad => \inst|left_out\(11),
	combout => \inst|dac_sreg[11]~3_combout\);

-- Location: LCCOMB_X37_Y13_N22
\inst|dac_sreg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[11]~feeder_combout\ = \inst|dac_sreg[11]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[11]~3_combout\,
	combout => \inst|dac_sreg[11]~feeder_combout\);

-- Location: FF_X38_Y13_N27
\inst|right_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(10),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(10));

-- Location: LCCOMB_X40_Y13_N16
\inst|left_out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[10]~feeder_combout\ = \inst|adc_sreg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(10),
	combout => \inst|left_out[10]~feeder_combout\);

-- Location: FF_X40_Y13_N17
\inst|left_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[10]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(10));

-- Location: LCCOMB_X38_Y13_N26
\inst|dac_sreg[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[10]~4_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(10)))) # (!\inst|left_right~q\ & (\inst|right_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(10),
	datad => \inst|left_out\(10),
	combout => \inst|dac_sreg[10]~4_combout\);

-- Location: LCCOMB_X37_Y13_N4
\inst|dac_sreg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[10]~feeder_combout\ = \inst|dac_sreg[10]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[10]~4_combout\,
	combout => \inst|dac_sreg[10]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N6
\inst|left_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[9]~feeder_combout\ = \inst|adc_sreg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(9),
	combout => \inst|left_out[9]~feeder_combout\);

-- Location: FF_X40_Y13_N7
\inst|left_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[9]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(9));

-- Location: FF_X38_Y13_N29
\inst|right_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(9),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(9));

-- Location: LCCOMB_X38_Y13_N28
\inst|dac_sreg[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[9]~5_combout\ = (\inst|left_right~q\ & (\inst|left_out\(9))) # (!\inst|left_right~q\ & ((\inst|right_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_out\(9),
	datac => \inst|right_out\(9),
	datad => \inst|left_right~q\,
	combout => \inst|dac_sreg[9]~5_combout\);

-- Location: LCCOMB_X37_Y13_N14
\inst|dac_sreg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[9]~feeder_combout\ = \inst|dac_sreg[9]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[9]~5_combout\,
	combout => \inst|dac_sreg[9]~feeder_combout\);

-- Location: FF_X38_Y13_N3
\inst|right_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(8),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(8));

-- Location: LCCOMB_X40_Y13_N8
\inst|left_out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[8]~feeder_combout\ = \inst|adc_sreg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(8),
	combout => \inst|left_out[8]~feeder_combout\);

-- Location: FF_X40_Y13_N9
\inst|left_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[8]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(8));

-- Location: LCCOMB_X38_Y13_N2
\inst|dac_sreg[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[8]~6_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(8)))) # (!\inst|left_right~q\ & (\inst|right_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(8),
	datad => \inst|left_out\(8),
	combout => \inst|dac_sreg[8]~6_combout\);

-- Location: LCCOMB_X37_Y13_N28
\inst|dac_sreg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[8]~feeder_combout\ = \inst|dac_sreg[8]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[8]~6_combout\,
	combout => \inst|dac_sreg[8]~feeder_combout\);

-- Location: FF_X38_Y13_N5
\inst|right_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(7),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(7));

-- Location: LCCOMB_X40_Y13_N26
\inst|left_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[7]~feeder_combout\ = \inst|adc_sreg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_sreg\(7),
	combout => \inst|left_out[7]~feeder_combout\);

-- Location: FF_X40_Y13_N27
\inst|left_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[7]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(7));

-- Location: LCCOMB_X38_Y13_N4
\inst|dac_sreg[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[7]~7_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(7)))) # (!\inst|left_right~q\ & (\inst|right_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(7),
	datad => \inst|left_out\(7),
	combout => \inst|dac_sreg[7]~7_combout\);

-- Location: LCCOMB_X37_Y13_N20
\inst|dac_sreg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[7]~feeder_combout\ = \inst|dac_sreg[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[7]~7_combout\,
	combout => \inst|dac_sreg[7]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N20
\inst|left_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[6]~feeder_combout\ = \inst|adc_sreg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(6),
	combout => \inst|left_out[6]~feeder_combout\);

-- Location: FF_X40_Y13_N21
\inst|left_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[6]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(6));

-- Location: FF_X38_Y13_N7
\inst|right_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(6),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(6));

-- Location: LCCOMB_X38_Y13_N6
\inst|dac_sreg[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[6]~8_combout\ = (\inst|left_right~q\ & (\inst|left_out\(6))) # (!\inst|left_right~q\ & ((\inst|right_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|left_out\(6),
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(6),
	combout => \inst|dac_sreg[6]~8_combout\);

-- Location: LCCOMB_X37_Y13_N2
\inst|dac_sreg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[6]~feeder_combout\ = \inst|dac_sreg[6]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[6]~8_combout\,
	combout => \inst|dac_sreg[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N30
\inst|left_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[5]~feeder_combout\ = \inst|adc_sreg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(5),
	combout => \inst|left_out[5]~feeder_combout\);

-- Location: FF_X40_Y13_N31
\inst|left_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[5]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(5));

-- Location: LCCOMB_X38_Y13_N0
\inst|right_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|right_out[5]~feeder_combout\ = \inst|adc_sreg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(5),
	combout => \inst|right_out[5]~feeder_combout\);

-- Location: FF_X38_Y13_N1
\inst|right_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|right_out[5]~feeder_combout\,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(5));

-- Location: LCCOMB_X37_Y13_N0
\inst|dac_sreg[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[5]~9_combout\ = (\inst|left_right~q\ & (\inst|left_out\(5))) # (!\inst|left_right~q\ & ((\inst|right_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_out\(5),
	datac => \inst|right_out\(5),
	datad => \inst|left_right~q\,
	combout => \inst|dac_sreg[5]~9_combout\);

-- Location: LCCOMB_X37_Y13_N12
\inst|dac_sreg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[5]~feeder_combout\ = \inst|dac_sreg[5]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[5]~9_combout\,
	combout => \inst|dac_sreg[5]~feeder_combout\);

-- Location: FF_X38_Y13_N21
\inst|right_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(4),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(4));

-- Location: LCCOMB_X40_Y13_N4
\inst|left_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[4]~feeder_combout\ = \inst|adc_sreg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(4),
	combout => \inst|left_out[4]~feeder_combout\);

-- Location: FF_X40_Y13_N5
\inst|left_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[4]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(4));

-- Location: LCCOMB_X38_Y13_N20
\inst|dac_sreg[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[4]~10_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(4)))) # (!\inst|left_right~q\ & (\inst|right_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(4),
	datad => \inst|left_out\(4),
	combout => \inst|dac_sreg[4]~10_combout\);

-- Location: LCCOMB_X37_Y13_N6
\inst|dac_sreg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[4]~feeder_combout\ = \inst|dac_sreg[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[4]~10_combout\,
	combout => \inst|dac_sreg[4]~feeder_combout\);

-- Location: FF_X38_Y13_N19
\inst|right_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(3),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(3));

-- Location: LCCOMB_X40_Y13_N18
\inst|left_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[3]~feeder_combout\ = \inst|adc_sreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(3),
	combout => \inst|left_out[3]~feeder_combout\);

-- Location: FF_X40_Y13_N19
\inst|left_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[3]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(3));

-- Location: LCCOMB_X38_Y13_N18
\inst|dac_sreg[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[3]~11_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(3)))) # (!\inst|left_right~q\ & (\inst|right_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(3),
	datad => \inst|left_out\(3),
	combout => \inst|dac_sreg[3]~11_combout\);

-- Location: LCCOMB_X37_Y13_N18
\inst|dac_sreg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[3]~feeder_combout\ = \inst|dac_sreg[3]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[3]~11_combout\,
	combout => \inst|dac_sreg[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y13_N28
\inst|left_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[2]~feeder_combout\ = \inst|adc_sreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(2),
	combout => \inst|left_out[2]~feeder_combout\);

-- Location: FF_X40_Y13_N29
\inst|left_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[2]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(2));

-- Location: FF_X39_Y13_N25
\inst|right_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(2),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(2));

-- Location: LCCOMB_X39_Y13_N24
\inst|dac_sreg[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[2]~12_combout\ = (\inst|left_right~q\ & (\inst|left_out\(2))) # (!\inst|left_right~q\ & ((\inst|right_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_out\(2),
	datac => \inst|right_out\(2),
	datad => \inst|left_right~q\,
	combout => \inst|dac_sreg[2]~12_combout\);

-- Location: LCCOMB_X37_Y13_N24
\inst|dac_sreg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[2]~feeder_combout\ = \inst|dac_sreg[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[2]~12_combout\,
	combout => \inst|dac_sreg[2]~feeder_combout\);

-- Location: FF_X38_Y13_N17
\inst|right_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(1),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(1));

-- Location: LCCOMB_X40_Y13_N22
\inst|left_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|left_out[1]~feeder_combout\ = \inst|adc_sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_sreg\(1),
	combout => \inst|left_out[1]~feeder_combout\);

-- Location: FF_X40_Y13_N23
\inst|left_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|left_out[1]~feeder_combout\,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(1));

-- Location: LCCOMB_X38_Y13_N16
\inst|dac_sreg[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[1]~13_combout\ = (\inst|left_right~q\ & ((\inst|left_out\(1)))) # (!\inst|left_right~q\ & (\inst|right_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|left_right~q\,
	datac => \inst|right_out\(1),
	datad => \inst|left_out\(1),
	combout => \inst|dac_sreg[1]~13_combout\);

-- Location: LCCOMB_X37_Y13_N16
\inst|dac_sreg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg[1]~feeder_combout\ = \inst|dac_sreg[1]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dac_sreg[1]~13_combout\,
	combout => \inst|dac_sreg[1]~feeder_combout\);

-- Location: FF_X40_Y13_N3
\inst|left_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(0),
	sload => VCC,
	ena => \inst|left_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_out\(0));

-- Location: FF_X38_Y13_N11
\inst|right_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	asdata => \inst|adc_sreg\(0),
	sload => VCC,
	ena => \inst|right_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_out\(0));

-- Location: LCCOMB_X38_Y13_N30
\inst|dac_sreg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dac_sreg~14_combout\ = (\inst|left_right~q\ & (\inst|left_out\(0) & ((!\inst|left_right_1~q\)))) # (!\inst|left_right~q\ & (((\inst|right_out\(0) & \inst|left_right_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|left_out\(0),
	datab => \inst|right_out\(0),
	datac => \inst|left_right~q\,
	datad => \inst|left_right_1~q\,
	combout => \inst|dac_sreg~14_combout\);

-- Location: FF_X38_Y13_N31
\inst|dac_sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg~14_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(0));

-- Location: LCCOMB_X42_Y13_N22
\inst|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_2~0_combout\ = \inst|left_right~q\ $ (!\inst|left_right_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|left_right~q\,
	datad => \inst|left_right_1~q\,
	combout => \inst|process_2~0_combout\);

-- Location: FF_X37_Y13_N17
\inst|dac_sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[1]~feeder_combout\,
	asdata => \inst|dac_sreg\(0),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(1));

-- Location: FF_X37_Y13_N25
\inst|dac_sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[2]~feeder_combout\,
	asdata => \inst|dac_sreg\(1),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(2));

-- Location: FF_X37_Y13_N19
\inst|dac_sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[3]~feeder_combout\,
	asdata => \inst|dac_sreg\(2),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(3));

-- Location: FF_X37_Y13_N7
\inst|dac_sreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[4]~feeder_combout\,
	asdata => \inst|dac_sreg\(3),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(4));

-- Location: FF_X37_Y13_N13
\inst|dac_sreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[5]~feeder_combout\,
	asdata => \inst|dac_sreg\(4),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(5));

-- Location: FF_X37_Y13_N3
\inst|dac_sreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[6]~feeder_combout\,
	asdata => \inst|dac_sreg\(5),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(6));

-- Location: FF_X37_Y13_N21
\inst|dac_sreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[7]~feeder_combout\,
	asdata => \inst|dac_sreg\(6),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(7));

-- Location: FF_X37_Y13_N29
\inst|dac_sreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[8]~feeder_combout\,
	asdata => \inst|dac_sreg\(7),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(8));

-- Location: FF_X37_Y13_N15
\inst|dac_sreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[9]~feeder_combout\,
	asdata => \inst|dac_sreg\(8),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(9));

-- Location: FF_X37_Y13_N5
\inst|dac_sreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[10]~feeder_combout\,
	asdata => \inst|dac_sreg\(9),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(10));

-- Location: FF_X37_Y13_N23
\inst|dac_sreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[11]~feeder_combout\,
	asdata => \inst|dac_sreg\(10),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(11));

-- Location: FF_X37_Y13_N31
\inst|dac_sreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[12]~feeder_combout\,
	asdata => \inst|dac_sreg\(11),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(12));

-- Location: FF_X37_Y13_N27
\inst|dac_sreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[13]~feeder_combout\,
	asdata => \inst|dac_sreg\(12),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(13));

-- Location: FF_X37_Y13_N9
\inst|dac_sreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dac_sreg[14]~feeder_combout\,
	asdata => \inst|dac_sreg\(13),
	sload => \inst|process_2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dac_sreg\(14));

-- Location: FF_X37_Y13_N11
\inst|dacdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|bclk_sig~clkctrl_outclk\,
	d => \inst|dacdat~feeder_combout\,
	asdata => \inst|dac_sreg\(14),
	clrn => \RESET~input_o\,
	sload => \inst|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dacdat~q\);

-- Location: IOIBUF_X56_Y54_N1
\BSW8~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW8,
	o => \BSW8~input_o\);

-- Location: LCCOMB_X43_Y4_N16
\inst6|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~2_combout\ = (\inst6|count\(1) & (\inst6|count\(2) $ (\inst6|count\(0)))) # (!\inst6|count\(1) & (\inst6|count\(2) & \inst6|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(1),
	datac => \inst6|count\(2),
	datad => \inst6|count\(0),
	combout => \inst6|count~2_combout\);

-- Location: FF_X43_Y4_N17
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst6|count~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X43_Y4_N10
\inst6|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~1_combout\ = (!\inst6|count\(0) & ((\inst6|count\(1)) # (!\inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datac => \inst6|count\(0),
	datad => \inst6|count\(1),
	combout => \inst6|count~1_combout\);

-- Location: FF_X43_Y4_N11
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst6|count~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X43_Y4_N30
\inst6|count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[1]~0_combout\ = \inst6|count\(1) $ (\inst6|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(1),
	datad => \inst6|count\(0),
	combout => \inst6|count[1]~0_combout\);

-- Location: FF_X43_Y4_N31
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst6|count[1]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X43_Y4_N14
\inst6|clk_div_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|clk_div_sig~0_combout\ = \inst6|clk_div_sig~q\ $ (((!\inst6|count\(1) & (\inst6|count\(2) & !\inst6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(2),
	datac => \inst6|clk_div_sig~q\,
	datad => \inst6|count\(0),
	combout => \inst6|clk_div_sig~0_combout\);

-- Location: LCCOMB_X43_Y4_N26
\inst6|clk_div_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|clk_div_sig~feeder_combout\ = \inst6|clk_div_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|clk_div_sig~0_combout\,
	combout => \inst6|clk_div_sig~feeder_combout\);

-- Location: FF_X43_Y4_N27
\inst6|clk_div_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EXT_CLK~input_o\,
	d => \inst6|clk_div_sig~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|clk_div_sig~q\);

-- Location: CLKCTRL_G16
\inst6|clk_div_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|clk_div_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|clk_div_sig~clkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N1
\BSW9~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW9,
	o => \BSW9~input_o\);

-- Location: LCCOMB_X59_Y50_N12
\inst13|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|process_0~0_combout\ = (\BSW9~input_o\ & !\inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BSW9~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst13|process_0~0_combout\);

-- Location: LCCOMB_X59_Y50_N14
\inst13|bit_count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|bit_count[0]~5_combout\ = (\inst13|bit_count~4_combout\ & (\inst13|busy~q\ $ (VCC))) # (!\inst13|bit_count~4_combout\ & (\inst13|busy~q\ & VCC))
-- \inst13|bit_count[0]~6\ = CARRY((\inst13|bit_count~4_combout\ & \inst13|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bit_count~4_combout\,
	datab => \inst13|busy~q\,
	datad => VCC,
	combout => \inst13|bit_count[0]~5_combout\,
	cout => \inst13|bit_count[0]~6\);

-- Location: FF_X59_Y50_N15
\inst13|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|bit_count[0]~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bit_count\(0));

-- Location: LCCOMB_X59_Y50_N26
\inst13|bit_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|bit_count~4_combout\ = (\inst13|bit_count\(0) & ((\inst13|busy~q\) # (!\BSW9~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|busy~q\,
	datab => \BSW9~input_o\,
	datad => \inst13|bit_count\(0),
	combout => \inst13|bit_count~4_combout\);

-- Location: LCCOMB_X59_Y50_N16
\inst13|bit_count[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|bit_count[1]~7_combout\ = (\inst13|bit_count[0]~6\ & ((\inst13|process_0~0_combout\) # ((!\inst13|bit_count\(1))))) # (!\inst13|bit_count[0]~6\ & (((!\inst13|process_0~0_combout\ & \inst13|bit_count\(1))) # (GND)))
-- \inst13|bit_count[1]~8\ = CARRY((\inst13|process_0~0_combout\) # ((!\inst13|bit_count[0]~6\) # (!\inst13|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst13|bit_count\(1),
	datad => VCC,
	cin => \inst13|bit_count[0]~6\,
	combout => \inst13|bit_count[1]~7_combout\,
	cout => \inst13|bit_count[1]~8\);

-- Location: FF_X59_Y50_N17
\inst13|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|bit_count[1]~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bit_count\(1));

-- Location: LCCOMB_X59_Y50_N18
\inst13|bit_count[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|bit_count[2]~9_combout\ = (\inst13|bit_count[1]~8\ & (!\inst13|process_0~0_combout\ & (\inst13|bit_count\(2) & VCC))) # (!\inst13|bit_count[1]~8\ & ((((!\inst13|process_0~0_combout\ & \inst13|bit_count\(2))))))
-- \inst13|bit_count[2]~10\ = CARRY((!\inst13|process_0~0_combout\ & (\inst13|bit_count\(2) & !\inst13|bit_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|process_0~0_combout\,
	datab => \inst13|bit_count\(2),
	datad => VCC,
	cin => \inst13|bit_count[1]~8\,
	combout => \inst13|bit_count[2]~9_combout\,
	cout => \inst13|bit_count[2]~10\);

-- Location: FF_X59_Y50_N19
\inst13|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|bit_count[2]~9_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bit_count\(2));

-- Location: LCCOMB_X59_Y50_N20
\inst13|bit_count[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|bit_count[3]~11_combout\ = \inst13|bit_count[2]~10\ $ (((\inst13|bit_count\(3) & !\inst13|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|bit_count\(3),
	datad => \inst13|process_0~0_combout\,
	cin => \inst13|bit_count[2]~10\,
	combout => \inst13|bit_count[3]~11_combout\);

-- Location: FF_X59_Y50_N21
\inst13|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|bit_count[3]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bit_count\(3));

-- Location: LCCOMB_X59_Y50_N8
\inst13|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (!\inst13|bit_count\(2)) # (!\inst13|bit_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|bit_count\(3),
	datad => \inst13|bit_count\(2),
	combout => \inst13|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y50_N24
\inst13|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (((!\inst13|busy~q\ & \BSW9~input_o\)) # (!\inst13|bit_count\(1))) # (!\inst13|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|busy~q\,
	datab => \BSW9~input_o\,
	datac => \inst13|bit_count\(0),
	datad => \inst13|bit_count\(1),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y50_N6
\inst13|busy~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|busy~2_combout\ = (\inst13|busy~q\ & (((\inst13|Equal0~1_combout\) # (\inst13|Equal0~0_combout\)))) # (!\inst13|busy~q\ & (\BSW9~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW9~input_o\,
	datab => \inst13|Equal0~1_combout\,
	datac => \inst13|busy~q\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|busy~2_combout\);

-- Location: FF_X59_Y50_N7
\inst13|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|busy~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|busy~q\);

-- Location: LCCOMB_X59_Y50_N22
\inst13|cs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|cs~0_combout\ = (!\inst13|cs~q\ & ((\inst13|busy~q\) # (!\BSW9~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW9~input_o\,
	datab => \inst13|busy~q\,
	datad => \inst13|cs~q\,
	combout => \inst13|cs~0_combout\);

-- Location: LCCOMB_X59_Y50_N0
\inst13|cs~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|cs~1_combout\ = (!\inst13|cs~0_combout\ & ((\inst13|Equal0~1_combout\) # ((\inst13|Equal0~0_combout\) # (!\inst13|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cs~0_combout\,
	datab => \inst13|Equal0~1_combout\,
	datac => \inst13|busy~q\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|cs~1_combout\);

-- Location: FF_X59_Y50_N1
\inst13|cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|cs~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|cs~q\);

-- Location: IOIBUF_X49_Y54_N1
\BSW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(5),
	o => \BSW[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\BSW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(1),
	o => \BSW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\BSW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(0),
	o => \BSW[0]~input_o\);

-- Location: LCCOMB_X55_Y50_N24
\inst1|data_reg~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~16_combout\ = (!\inst13|busy~q\ & ((\BSW9~input_o\ & (\BSW[0]~input_o\)) # (!\BSW9~input_o\ & ((\inst1|data_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW9~input_o\,
	datab => \BSW[0]~input_o\,
	datac => \inst1|data_reg\(0),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~16_combout\);

-- Location: FF_X55_Y50_N25
\inst1|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~16_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(0));

-- Location: LCCOMB_X54_Y50_N30
\inst1|data_reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~15_combout\ = (\inst13|busy~q\ & ((\inst1|data_reg\(0)))) # (!\inst13|busy~q\ & (\BSW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW[1]~input_o\,
	datab => \inst1|data_reg\(0),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~15_combout\);

-- Location: LCCOMB_X54_Y50_N8
\inst1|data_reg[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg[15]~1_combout\ = (\RESET~input_o\ & ((\BSW9~input_o\) # (\inst13|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \BSW9~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg[15]~1_combout\);

-- Location: FF_X54_Y50_N31
\inst1|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~15_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(1));

-- Location: IOIBUF_X51_Y54_N1
\BSW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(2),
	o => \BSW[2]~input_o\);

-- Location: LCCOMB_X54_Y50_N12
\inst1|data_reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~14_combout\ = (\inst13|busy~q\ & (\inst1|data_reg\(1))) # (!\inst13|busy~q\ & ((\BSW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(1),
	datab => \BSW[2]~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~14_combout\);

-- Location: FF_X54_Y50_N13
\inst1|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~14_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(2));

-- Location: IOIBUF_X54_Y54_N29
\BSW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(3),
	o => \BSW[3]~input_o\);

-- Location: LCCOMB_X54_Y50_N6
\inst1|data_reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~13_combout\ = (\inst13|busy~q\ & (\inst1|data_reg\(2))) # (!\inst13|busy~q\ & ((\BSW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(2),
	datac => \BSW[3]~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~13_combout\);

-- Location: FF_X54_Y50_N7
\inst1|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~13_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(3));

-- Location: IOIBUF_X54_Y54_N22
\BSW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(4),
	o => \BSW[4]~input_o\);

-- Location: LCCOMB_X54_Y50_N0
\inst1|data_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~12_combout\ = (\inst13|busy~q\ & (\inst1|data_reg\(3))) # (!\inst13|busy~q\ & ((\BSW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(3),
	datac => \BSW[4]~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~12_combout\);

-- Location: FF_X54_Y50_N1
\inst1|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~12_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(4));

-- Location: LCCOMB_X54_Y50_N14
\inst1|data_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~11_combout\ = (\inst13|busy~q\ & ((\inst1|data_reg\(4)))) # (!\inst13|busy~q\ & (\BSW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW[5]~input_o\,
	datab => \inst1|data_reg\(4),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~11_combout\);

-- Location: FF_X54_Y50_N15
\inst1|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~11_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(5));

-- Location: IOIBUF_X54_Y54_N15
\BSW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(6),
	o => \BSW[6]~input_o\);

-- Location: LCCOMB_X54_Y50_N4
\inst1|data_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~10_combout\ = (\inst13|busy~q\ & (\inst1|data_reg\(5))) # (!\inst13|busy~q\ & ((\BSW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(5),
	datac => \BSW[6]~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~10_combout\);

-- Location: FF_X54_Y50_N5
\inst1|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~10_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(6));

-- Location: IOIBUF_X58_Y54_N29
\BSW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSW(7),
	o => \BSW[7]~input_o\);

-- Location: LCCOMB_X54_Y50_N10
\inst1|data_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~9_combout\ = (\inst13|busy~q\ & (\inst1|data_reg\(6))) # (!\inst13|busy~q\ & ((\BSW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(6),
	datac => \BSW[7]~input_o\,
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~9_combout\);

-- Location: FF_X54_Y50_N11
\inst1|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~9_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(7));

-- Location: LCCOMB_X54_Y50_N20
\inst1|data_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~8_combout\ = (\inst1|data_reg\(7) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(7),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~8_combout\);

-- Location: FF_X54_Y50_N21
\inst1|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~8_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(8));

-- Location: LCCOMB_X54_Y50_N18
\inst1|data_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~7_combout\ = (\inst1|data_reg\(8) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(8),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~7_combout\);

-- Location: FF_X54_Y50_N19
\inst1|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~7_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(9));

-- Location: LCCOMB_X54_Y50_N24
\inst1|data_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~6_combout\ = (\inst13|busy~q\ & ((\inst1|data_reg\(9)))) # (!\inst13|busy~q\ & (\BSW8~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSW8~input_o\,
	datab => \inst1|data_reg\(9),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~6_combout\);

-- Location: FF_X54_Y50_N25
\inst1|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~6_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(10));

-- Location: LCCOMB_X54_Y50_N2
\inst1|data_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~5_combout\ = (\inst1|data_reg\(10) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(10),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~5_combout\);

-- Location: FF_X54_Y50_N3
\inst1|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~5_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(11));

-- Location: LCCOMB_X54_Y50_N28
\inst1|data_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~4_combout\ = (\inst1|data_reg\(11) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(11),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~4_combout\);

-- Location: FF_X54_Y50_N29
\inst1|data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~4_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(12));

-- Location: LCCOMB_X54_Y50_N26
\inst1|data_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~3_combout\ = (\inst1|data_reg\(12)) # (!\inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_reg\(12),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~3_combout\);

-- Location: FF_X54_Y50_N27
\inst1|data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~3_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(13));

-- Location: LCCOMB_X54_Y50_N22
\inst1|data_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~2_combout\ = (\inst1|data_reg\(13) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(13),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~2_combout\);

-- Location: FF_X54_Y50_N23
\inst1|data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~2_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(14));

-- Location: LCCOMB_X54_Y50_N16
\inst1|data_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|data_reg~0_combout\ = (\inst1|data_reg\(14) & \inst13|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_reg\(14),
	datad => \inst13|busy~q\,
	combout => \inst1|data_reg~0_combout\);

-- Location: FF_X54_Y50_N17
\inst1|data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst1|data_reg~0_combout\,
	ena => \inst1|data_reg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data_reg\(15));

-- Location: IOIBUF_X38_Y0_N15
\ADC_DOUT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: LCCOMB_X58_Y50_N20
\inst13|data_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst13|data_reg[0]~feeder_combout\);

-- Location: FF_X58_Y50_N21
\inst13|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(0));

-- Location: LCCOMB_X58_Y50_N10
\inst13|data_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[1]~feeder_combout\ = \inst13|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(0),
	combout => \inst13|data_reg[1]~feeder_combout\);

-- Location: FF_X58_Y50_N11
\inst13|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(1));

-- Location: LCCOMB_X58_Y50_N12
\inst13|data_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[2]~feeder_combout\ = \inst13|data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(1),
	combout => \inst13|data_reg[2]~feeder_combout\);

-- Location: FF_X58_Y50_N13
\inst13|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(2));

-- Location: LCCOMB_X58_Y50_N18
\inst13|data_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[3]~feeder_combout\ = \inst13|data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(2),
	combout => \inst13|data_reg[3]~feeder_combout\);

-- Location: FF_X58_Y50_N19
\inst13|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(3));

-- Location: LCCOMB_X58_Y50_N4
\inst13|data_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[4]~feeder_combout\ = \inst13|data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(3),
	combout => \inst13|data_reg[4]~feeder_combout\);

-- Location: FF_X58_Y50_N5
\inst13|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[4]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(4));

-- Location: LCCOMB_X58_Y50_N26
\inst13|data_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[5]~feeder_combout\ = \inst13|data_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(4),
	combout => \inst13|data_reg[5]~feeder_combout\);

-- Location: FF_X58_Y50_N27
\inst13|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(5));

-- Location: LCCOMB_X58_Y50_N0
\inst13|data_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[6]~feeder_combout\ = \inst13|data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|data_reg\(5),
	combout => \inst13|data_reg[6]~feeder_combout\);

-- Location: FF_X58_Y50_N1
\inst13|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[6]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(6));

-- Location: LCCOMB_X58_Y50_N2
\inst13|data_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[7]~feeder_combout\ = \inst13|data_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(6),
	combout => \inst13|data_reg[7]~feeder_combout\);

-- Location: FF_X58_Y50_N3
\inst13|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(7));

-- Location: LCCOMB_X58_Y50_N16
\inst13|data_reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[8]~feeder_combout\ = \inst13|data_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(7),
	combout => \inst13|data_reg[8]~feeder_combout\);

-- Location: FF_X58_Y50_N17
\inst13|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[8]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(8));

-- Location: LCCOMB_X58_Y50_N22
\inst13|data_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[9]~feeder_combout\ = \inst13|data_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(8),
	combout => \inst13|data_reg[9]~feeder_combout\);

-- Location: FF_X58_Y50_N23
\inst13|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(9));

-- Location: LCCOMB_X58_Y50_N24
\inst13|data_reg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[10]~feeder_combout\ = \inst13|data_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|data_reg\(9),
	combout => \inst13|data_reg[10]~feeder_combout\);

-- Location: FF_X58_Y50_N25
\inst13|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[10]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(10));

-- Location: LCCOMB_X58_Y50_N14
\inst13|data_reg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[11]~feeder_combout\ = \inst13|data_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(10),
	combout => \inst13|data_reg[11]~feeder_combout\);

-- Location: FF_X58_Y50_N15
\inst13|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[11]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(11));

-- Location: LCCOMB_X58_Y50_N28
\inst13|data_reg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[12]~feeder_combout\ = \inst13|data_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|data_reg\(11),
	combout => \inst13|data_reg[12]~feeder_combout\);

-- Location: FF_X58_Y50_N29
\inst13|data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(12));

-- Location: LCCOMB_X60_Y50_N12
\inst13|data_reg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data_reg[13]~feeder_combout\ = \inst13|data_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(12),
	combout => \inst13|data_reg[13]~feeder_combout\);

-- Location: FF_X60_Y50_N13
\inst13|data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data_reg[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst13|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data_reg\(13));

-- Location: LCCOMB_X59_Y50_N10
\inst13|data[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[9]~0_combout\ = (\RESET~input_o\ & (\inst13|busy~q\ & (!\inst13|Equal0~1_combout\ & !\inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst13|busy~q\,
	datac => \inst13|Equal0~1_combout\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|data[9]~0_combout\);

-- Location: FF_X59_Y50_N23
\inst13|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	asdata => \inst13|data_reg\(13),
	sload => VCC,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(9));

-- Location: LCCOMB_X59_Y50_N4
\inst13|data[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[8]~feeder_combout\ = \inst13|data_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(12),
	combout => \inst13|data[8]~feeder_combout\);

-- Location: FF_X59_Y50_N5
\inst13|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[8]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(8));

-- Location: LCCOMB_X59_Y50_N30
\inst13|data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[7]~feeder_combout\ = \inst13|data_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(11),
	combout => \inst13|data[7]~feeder_combout\);

-- Location: FF_X59_Y50_N31
\inst13|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[7]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(7));

-- Location: LCCOMB_X59_Y50_N28
\inst13|data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[6]~feeder_combout\ = \inst13|data_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(10),
	combout => \inst13|data[6]~feeder_combout\);

-- Location: FF_X59_Y50_N29
\inst13|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[6]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(6));

-- Location: LCCOMB_X59_Y50_N2
\inst13|data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[5]~feeder_combout\ = \inst13|data_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(9),
	combout => \inst13|data[5]~feeder_combout\);

-- Location: FF_X59_Y50_N3
\inst13|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[5]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(5));

-- Location: FF_X59_Y50_N13
\inst13|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	asdata => \inst13|data_reg\(8),
	sload => VCC,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(4));

-- Location: LCCOMB_X58_Y50_N8
\inst13|data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[3]~feeder_combout\ = \inst13|data_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(7),
	combout => \inst13|data[3]~feeder_combout\);

-- Location: FF_X58_Y50_N9
\inst13|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[3]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(3));

-- Location: LCCOMB_X58_Y50_N30
\inst13|data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|data[2]~feeder_combout\ = \inst13|data_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|data_reg\(6),
	combout => \inst13|data[2]~feeder_combout\);

-- Location: FF_X58_Y50_N31
\inst13|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	d => \inst13|data[2]~feeder_combout\,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(2));

-- Location: FF_X59_Y50_N27
\inst13|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	asdata => \inst13|data_reg\(5),
	sload => VCC,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(1));

-- Location: FF_X59_Y50_N9
\inst13|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk_div_sig~clkctrl_outclk\,
	asdata => \inst13|data_reg\(4),
	sload => VCC,
	ena => \inst13|data[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(0));

-- Location: IOIBUF_X0_Y23_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;

ww_LED5 <= \LED5~output_o\;

ww_LED6 <= \LED6~output_o\;

ww_LED7 <= \LED7~output_o\;

ww_LED8 <= \LED8~output_o\;

ww_I2C_SCK <= \I2C_SCK~output_o\;

ww_I2C_SDA <= \I2C_SDA~output_o\;

ww_AUD_BCLK <= \AUD_BCLK~output_o\;

ww_AUD_ADCLRCK <= \AUD_ADCLRCK~output_o\;

ww_AUD_DACLRCK <= \AUD_DACLRCK~output_o\;

ww_DACDAT <= \DACDAT~output_o\;

ww_AUD_XCK <= \AUD_XCK~output_o\;

ww_ADC_CHSEL <= \ADC_CHSEL~output_o\;

ww_ADC_CS <= \ADC_CS~output_o\;

ww_SPI_SCLK <= \SPI_SCLK~output_o\;

ww_DAC_DIN <= \DAC_DIN~output_o\;

ww_DAC_SYNC <= \DAC_SYNC~output_o\;

ww_BLED(9) <= \BLED[9]~output_o\;

ww_BLED(8) <= \BLED[8]~output_o\;

ww_BLED(7) <= \BLED[7]~output_o\;

ww_BLED(6) <= \BLED[6]~output_o\;

ww_BLED(5) <= \BLED[5]~output_o\;

ww_BLED(4) <= \BLED[4]~output_o\;

ww_BLED(3) <= \BLED[3]~output_o\;

ww_BLED(2) <= \BLED[2]~output_o\;

ww_BLED(1) <= \BLED[1]~output_o\;

ww_BLED(0) <= \BLED[0]~output_o\;
END structure;


