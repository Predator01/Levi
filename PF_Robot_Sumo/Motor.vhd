----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    10:39:53 11/10/2015 
-- Design Name: 
-- Module Name:    Motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Motor module that control 1 motor
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.0.0 - Motor Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Motor is
    Port ( 
		in_Rst : in  STD_LOGIC;
		in_Clk : in  STD_LOGIC;
		in_Action : in   STD_LOGIC_VECTOR(7 downto 0);
		out_motor : out STD_LOGIC);
end Motor;

architecture Behavioral of Motor is
	-- Componentes del modulo
	-- Comp: U1 Divisor de frequencia 100/1
	component Freq_Div
		port (
			in_Rst : in STD_LOGIC;
			in_Clk : in STD_LOGIC;
			out_time_base : out STD_LOGIC);
	end component;
	
	-- Comp: U2 State Register for motor
	component State_Reg_Motor
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in motor_state_values;
			in_state_duration : in integer;
			out_pres_state : out motor_state_values);
	end component;
	
	-- Comp: U3 Finite State Machine motor
	component FSM_motor
		port (
			in_pres_state : in motor_state_values;
			in_th : in integer;
			in_tl : in integer;
			out_next_state: out motor_state_values;
			state_duration : out integer);
	end component;

	-- Comp : U4 Output
	component Output_motor
		port (
			in_pres_state : in motor_state_values;
			out_motor : out STD_LOGIC);
	end component;
	
	-- Comp : U5 Equation_motor
	component Equation_motor
		port (
			in_action : in STD_LOGIC_VECTOR(7 downto 0);
			out_th : out integer;
			out_tl : out integer);
	end component;
	
	-- seniales enbebidas
	-- 1 bit
	signal time_base : STD_LOGIC;
	
	-- 2 o mas bits
	
	-- of types
	signal pres_state, next_state: motor_state_values;
	
	-- integers
	signal tH  : integer range 0 to MOTOR_MAX;
	signal tL  : integer range 0 to MOTOR_MAX;
	signal curr_state_duration : integer range 0 to MOTOR_MAX;
	
begin
	-- Instanciar componentes
	
	U1 : Freq_Div
		port map(in_rst, in_clk, time_base);
		
	U2 : State_Reg_Motor
		port map(
		in_clk, 
		time_base, 
		in_rst, 
		next_state,
			curr_state_duration, 
			pres_state);
	
	U5 : Equation_motor
		port map(in_Action, tH, tL);
	
	U3 : FSM_motor
		port map(pres_state, tH, tL, next_state, 
			curr_state_duration);
			
	U4 : Output_motor
		port map(pres_state, out_motor);

end Behavioral;

