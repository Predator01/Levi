----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:33 11/30/2015 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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


entity Top is
    Port ( 
		in_Clk100MHz : in STD_LOGIC;
		in_Rst : in STD_LOGIC;
		switch_1 : in STD_LOGIC;
		switch_2 : in STD_LOGIC;
		out_motor_1 : out STD_LOGIC;
		led : out STD_LOGIC
		);
		
	

end Top;
	
	
architecture Behavioral of Top is
	-- Comp : U1 Motor module
	component Motor
		Port ( 
			in_Clk : in  STD_LOGIC;
			in_Rst : in  STD_LOGIC;
			in_Action_m : in   STD_LOGIC_VECTOR(1 downto 0);
			out_motor : out STD_LOGIC);
	end component;
	
	signal input_sw : STD_LOGIC_VECTOR(1 downto 0);
	signal motor_1 : STD_LOGIC;
begin
	
	input_sw <= switch_1 & switch_2; -- los switches son para enviarle la senial del estado 
-- 00 es adelante
-- 01 es atras
-- 10 es stop
	U4: Motor
		Port map (in_Clk100MHz,in_Rst,input_sw,motor_1);
		
	led <= motor_1; -- el led mustra el estado final del motor 
	out_motor_1 <= motor_1;
end Behavioral;

