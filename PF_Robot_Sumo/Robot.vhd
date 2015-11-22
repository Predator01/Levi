----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    14:13:16 11/21/2015 
-- Design Name: 
-- Module Name:    Robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Main Robot Module
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.1.0 - Main Robot Module Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Robot is
    Port ( 
		in_sonic_1 : in STD_LOGIC;
			-- 0 no detecta # 1 detecta oponente enfrente
      in_color_1 : in  STD_LOGIC; 
			-- 0 negro normal # 1 blanco reversa
		in_clk : in STD_LOGIC;
		in_rst : in STD_LOGIC;
		out_action : out STD_LOGIC_VECTOR(2 downto 0));
end Robot;

architecture Behavioral of Robot is
	--Declarar componentes
	
	-- Comp: U1_Motor Divisor de frequencia 100/1
	component Freq_Div
		port (
			in_rst : in STD_LOGIC;
			in_clk : in STD_LOGIC;
			out_time_base : out STD_LOGIC);
	end component;
	-- Comp : U1 State Register for Robot
	component State_Reg_Robot
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in robot_state_values;
			out_pres_state : out robot_state_values);
	end component;
	-- Comp : U3 Finite State Machine
	component FSM_robot
		port (
			in_pres_state : in robot_state_values;
			in_color_1 : in  STD_LOGIC;
			in_sonic_1 : in STD_LOGIC;
			out_next_state: out robot_state_values);
	end component;
	
	-- Comp : U4 Output Robot
	component Output_robot
		port (
			in_pres_state : in robot_state_values;
			out_action : out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	
	-- seniales embebidas
	-- 1 bit
	signal time_base : STD_LOGIC;
	-- 2 o mas bits
	-- of types
	signal pres_state, next_state: robot_state_values;
	
	-- integers
	signal curr_state_duration : integer range 0 to ROBOT_MAX;
	
begin
	-- instanciar componentes
	U2_1 : Freq_Div
		port map(in_rst, in_clk, time_base);
	U2_2 : State_Reg_Robot
		port map(in_clk, time_base, in_rst,
			next_state, pres_state);
	U2_3 : FSM_robot
		port map(pres_state, in_color_1, in_sonic_1, next_state);
	U2_4 : Output_robot
		port map(pres_state, out_action);

end Behavioral;

