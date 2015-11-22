----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    10:29:20 11/10/2015 
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Top module for robot sumo
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

entity Top is
    Port ( 
		in_Clk100MHz : in STD_LOGIC;
		in_Rst : in STD_LOGIC;
      out_motor_1 : out STD_LOGIC);
end Top;

architecture Behavioral of Top is
	-- Declarar componentes
	-- Comp : U1 Motor module
	component Motor
		Port ( 
			in_Rst : in  STD_LOGIC;
			in_Clk : in  STD_LOGIC;
			in_Action_m : in   STD_LOGIC_VECTOR(2 downto 0);
			out_motor : out STD_LOGIC);
	end component;
	
	-- Comp : U2 Robot Module
	component Robot
		 Port ( 
			in_sonic_1 : in STD_LOGIC;
			in_color_1 : in  STD_LOGIC;
			in_clk : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			out_action : out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	
	-- signals
	-- no use
	constant aux_sonic : STD_LOGIC := '0';
	constant aux_color : STD_LOGIC := '0';
	-- 1 bit
	-- 2 or more bit
	-- integer
	signal motor_1_action : STD_LOGIC_VECTOR(2 downto 0);
begin
	-- instanciar componentes
	
	U2: Robot 
		port map (
			aux_sonic,
			aux_color,
			in_Clk100MHz,
			in_rst,
			motor_1_action); -- TODO
			
	U1 : Motor
		port map (
			in_Rst,
			in_Clk100MHz,
			motor_1_action,
			out_motor_1);

end Behavioral;

