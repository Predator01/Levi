-----------------------------------	-----------------------------------------------
-- Company: 			ITESM
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    08:51:42 09/08/2015 
-- Design Name: 		
-- Module Name:    Binary_Gray_Converter - Behavioral 
-- Project Name: 		
-- Target Devices: 
-- Tool versions: 
-- Description: 		Generic Gray to binary converter using loops
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

entity Binary_Gray_Converter is
	--Declaration of Generics 
	generic (n : Integer := 4);
		-- n defines the number of bits to be converted
   Port ( Binary : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Gray : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Binary_Gray_Converter;

architecture Behavioral of Binary_Gray_Converter is

begin
	-- Binary to gray conversion
--	Gray(3) <= Binary(3);
--	Gray(2) <= Binary(3) xor Binary(2);
--	Gray(1) <= Binary(2) xor Binary(1);
--	Gray(0) <= Binary(1) xor Binary(0);
--	
	
	-- Binary to gray conversion using loops
	Gray(n-1) <= Binary(n-1);
	for_loop:
   for index in n-2 downto 0 generate
      begin
         Gray(index) <= Binary(index+1) xor Binary(index);
   end generate;
			
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

end Behavioral;

