----------------------------------------------------------------------------------
-- Company: 			ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    15:49:32 09/08/2015 
-- Design Name: 
-- Module Name:    Binary_to_Gray_Code_Converter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	A generic Binary to Gray Code Converter
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

entity Binary_to_Gray_Code_Converter is
	generic (n : Integer := 4);
	
    Port ( Binary : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Gray : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Binary_to_Gray_Code_Converter;

architecture Behavioral of Binary_to_Gray_Code_Converter is

begin
	Gray(n-1) <= Binary(n-1);
	xor_for:
   for index in n-2 downto 0 generate
      begin
         Gray(index) <= Binary(index+1) xor Binary(index);
	   end generate;
			
end Behavioral;

