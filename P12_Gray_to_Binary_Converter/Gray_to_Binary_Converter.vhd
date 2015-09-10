----------------------------------------------------------------------------------
-- Company: 		ITESM 
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    18:12:03 09/09/2015 
-- Design Name: 
-- Module Name:    Gray_to_Binary_Converter - Behavioral 
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

entity Gray_to_Binary_Converter is
	 generic (n : Integer := 4);
    Port ( Gray : in  STD_LOGIC_VECTOR (3 downto 0);
           Binary : out  STD_LOGIC_VECTOR (3 downto 0));
end Gray_to_Binary_Converter;

architecture Behavioral of Gray_to_Binary_Converter is
	signal res_binary : STD_LOGIC_VECTOR (n-1 downto 0);
begin
	GrayToBinary: process(Gray, res_binary)
		VARIABLE aux: STD_LOGIC_VECTOR (n-1 downto 0);
	begin
		aux(n-1) := Gray(n-1);
		gen: for i in n-2 downto 0 loop
				aux(i) := aux(i+1) xor Gray(i);
		end loop;
		res_binary (n-1 downto 0) <= aux(n-1 downto 0);
	end process GrayToBinary;
	
	Binary <= res_binary;
	
end Behavioral;

