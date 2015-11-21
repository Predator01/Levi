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
    Port ( in_Clk100MHz : in STD_LOGIC;
			  in_Rst : in STD_LOGIC;
			  in_Action : in STD_LOGIC_VECTOR(7 downto 0);
           out_motor_1 : out STD_LOGIC);
end Top;

architecture Behavioral of Top is
	-- Declarar componentes
	component Motor
		Port ( 
			in_Rst : in  STD_LOGIC;
			in_Clk : in  STD_LOGIC;
			in_Action : in   STD_LOGIC_VECTOR(7 downto 0);
			out_motor : out STD_LOGIC);
	end component;

begin
	
	-- instanciar componentes
	U1 : Motor
		port map (
			in_Rst,
			in_Clk100MHz,
			in_Action,
			out_motor_1);

end Behavioral;

