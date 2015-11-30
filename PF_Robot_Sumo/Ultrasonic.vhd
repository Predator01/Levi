----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:50:14 11/30/2015 
-- Design Name: 
-- Module Name:    Ultrasonic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Top of ultrasonic
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Ultrasonic is
	Port(
			in_rst_ul : in STD_LOGIC;
			in_clk : in STD_LOGIC;
			in_rx : in STD_LOGIC;
			out_tx: out STD_LOGIC;
			out_ultrasonic: out STD_LOGIC);
end Ultrasonic;

architecture Behavioral of Ultrasonic is
	-- Comp: U1 Divisor de frequencia 100/1
	component Freq_Div
		port (
			in_Rst : in STD_LOGIC;
			in_Clk : in STD_LOGIC;
			out_time_base : out STD_LOGIC);
	end component;
	-- Comp: U2 State Register for ultrasonic
	component State_Reg_Ultrasonic
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in ultrasonic_state_values;
			in_state_duration : in integer;
			out_pres_state : out ultrasonic_state_values);
	end component;
	
	-- Comp: U3 Finite State Machine ultrasonic
	component FSM_Ultrasonic
		 port (
			in_pres_state : in ultrasonic_state_values;
			in_rx : in STD_LOGIC;
			out_next_state: out ultrasonic_state_values;
			state_duration : out integer);
	end component;

	-- Comp : U4 Output
	component Output_Ultrasonic
		port (
			in_pres_state : in ultrasonic_state_values;
			in_measurement : in integer;
			out_ultrasonic : out STD_LOGIC;
			out_tx: out STD_LOGIC);
	end component;
	
	-- Comp : U5 Equation_ultrasonic
	component Tin_Counter
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_pres_state : in ultrasonic_state_values;
			out_measurement : out integer);
	end component;
	
	signal time_base : STD_LOGIC;
	-- of types
	signal pres_state, next_state: ultrasonic_state_values;
	
	signal curr_state_duration : integer range 0 to MOTOR_MAX;
	signal measurement : integer;
begin
	U4_1 : Freq_Div
		port map(in_rst_ul, in_clk, time_base);
	
	U4_5 : Tin_Counter
		port  map(in_clk, time_base, pres_state, measurement);
		
	U4_2 : State_Reg_Ultrasonic
		port map(in_clk, time_base, in_rst_ul, next_state,  curr_state_duration, pres_state);
	
	U4_3 : FSM_Ultrasonic 
		port map(pres_state, in_rx, next_state, curr_state_duration);
		
	U4_4 : Output_Ultrasonic
		port map(pres_state, measurement, out_ultrasonic, out_tx);
	
		
end Behavioral;

