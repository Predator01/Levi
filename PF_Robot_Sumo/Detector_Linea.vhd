----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Andres Cortez A01209780
-- 
-- Create Date:    10:39:53 11/10/2015 
-- Design Name: 
-- Module Name:    Motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Line detector that control the infrared sensor in the robot
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.0.0 - Motor Implementation
-- Revision 3.0.0 - Adres implementation Line Detector
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Detector_Linea is
    Port ( 
		in_Rst_dl   : in  STD_LOGIC;
		in_Clk   : in  STD_LOGIC;
		in_line_dl  : in   STD_LOGIC;
		out_Line : out STD_LOGIC);
end Detector_Linea;

architecture Behavioral of Detector_Linea is
	-- Componentes del modulo
	-- Comp: U1 Divisor de frequencia 100/1
	component Freq_Div
		port (
			in_Rst : in STD_LOGIC;
			in_Clk : in STD_LOGIC;
			out_time_base : out STD_LOGIC);
	end component;
	
	--Comp: U2 Modulo principal del detector de linea
   component Line_Detection
		port(
			in_Rst  : in STD_LOGIC;
			in_Clk  : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_line_smld :	in STD_LOGIC;
			out_line: out STD_LOGIC);
		end component;
	-- seniales embebidas
	-- 1 bit
	signal time_base : STD_LOGIC;
	
	
begin
	-- Instanciar componentes
	
	U3_1 : Freq_Div
		port map(in_Rst_dl, in_clk, time_base);
		
	U3_2 : Line_Detection
		port map(in_Rst_dl, in_clk, time_base, in_line_dl, out_Line);
		
	

end Behavioral;

