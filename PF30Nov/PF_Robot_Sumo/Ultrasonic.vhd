----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:29 11/22/2015 
-- Design Name: 
-- Module Name:    Ultrasonic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
        Port ( 
		     in_Clk         : in  STD_LOGIC; --Clock
           in_Rst         : in  STD_LOGIC;  
			  in_Rx          : in  STD_LOGIC; --Entrada FSM
           out_Tx         : out STD_LOGIC;
			  in_Tin         : in  STD_LOGIC;
			  out_Tin        : out STD_LOGIC; --Counter			  
			        
end Ultrasonic;

architecture Behavioral of Ultrasonic is
	-- Componentes del modulo
	-- Comp: U1 Divisor de frequencia 100/1
	component Freq_Div
		port (
			in_Rst : in STD_LOGIC;
			in_Clk : in STD_LOGIC;
			out_time_base : out STD_LOGIC);
	end component;
	
	-- Comp: U2 State Register for motor
	component State_Reg_Ultrasonic
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in ultrasonic_state_values;
			in_state_duration : in integer;
			out_pres_state : out ultrasonic_state_values);
	end component;
	
	-- Comp: U3 Finite State Machine motor
	component FSM_Ultrasonic
		port (
			in_pres_state : in ultrasonic_state_values;
			in_Rx : in integer;
			out_next_state: out ultrasonic_state_values;
			state_duration : out integer);
	end component;

	-- Comp : U4 Output
	component Output_Ultrasonic
		port (
			in_pres_state : in ultrasonic_state_values;
			out_Tx : out STD_LOGIC);
	end component;
	
	-- Comp : U5 Tin_Counter
	component Tin_Counter
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			out_tin : out integer);
	end component;
	
	-- seniales embebidas
	-- 1 bit
	signal time_base : STD_LOGIC;
	
	-- 2 o mas bits
	
	-- of types
	signal pres_state, next_state: ultrasonic_state_values;
	
	-- integers
	signal tin  : integer range 0 to ULTRASONIC_MAX;
	signal curr_state_duration : integer range 0 to ULTRASONIC_MAX;
	
begin

 -- Instanciar componentes
	
	U4_1 : Freq_Div
		port map(in_rst, in_clk, time_base);
		
	U4_2 : State_Reg_Ultrasonic
		port map(
		in_clk, 
		time_base, 
		in_rst_U, 
		next_state,
			curr_state_duration, 
			pres_state);
	
	U4_5 : Tin_Counter
		port map(in_clk,
			time_base,
			in_rst,
			tin);
	
	U4_3 : FSM_Ultrasonic
		port map(pres_state,in_Rx, next_state, 
			curr_state_duration);
			
	U4_4 : Output_motor
		port map(pres_state, out_Tx);

end Behavioral;

