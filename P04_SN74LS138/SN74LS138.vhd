----------------------------------------------------------------------------------
-- Company: 		ITESM 
-- Engineer: 		Miguel Gonzalez
-- 
-- Create Date:    11:15:40 09/02/2015 
-- Design Name: 	 
-- Module Name:    SN74LS138 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Implementation of a TTL 74KS138 Decoder Chip
--
-- Dependencies: Nope
--
-- Revision: 			1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SN74LS138 is
    Port ( -- Select Lines
				A : in  STD_LOGIC;
				B : in  STD_LOGIC;
				C : in  STD_LOGIC;
				-- Enable Lines
				G2A : in  STD_LOGIC;
				G2B : in  STD_LOGIC;
				G1 : in  STD_LOGIC;
				-- Output Lines
				Y : out  STD_LOGIC_VECTOR (0 to 7)
			);
end SN74LS138;

architecture Behavioral of SN74LS138 is
	-- Embedded signals declaration
	signal G2 : STD_LOGIC;
	signal Sel : STD_LOGIC_VECTOR (2 downto 0);
begin
	-- Group G2A and G2B to make G2 according to the data sheet
	G2 <=  G2A or G2B;
	-- Group Select lines C, B, A for simpler handling
	Sel <= C & B & A;
	-- Define the truth table using:
		
		--Concurrent Bheavioral
		--  YYYYYYYY
		--  01234567
	Y <=	"11111111" when (G2 = '1' or G1 ='0') else
			"01111111" when Sel = "000" else
			"10111111" when Sel = "001" else
			"11011111" when Sel = "010" else
			"11101111" when Sel = "011" else
			"11110111" when Sel = "100" else
			"11111011" when Sel = "101" else
			"11111101" when Sel = "110" else
			"11111110";
			
		
	
	
	
	
	


end Behavioral;

