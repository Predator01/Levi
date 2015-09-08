----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    14:11:49 09/08/2015 
-- Design Name: 
-- Module Name:    Priority_Encoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Priority Decoder using when
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

entity Priority_Encoder is
    Port ( input : in  STD_LOGIC_VECTOR (6 downto 0);
           output : out  STD_LOGIC_VECTOR (2 downto 0));
end Priority_Encoder;

architecture Behavioral of Priority_Encoder is

begin
	output <= "111" when input(6)='1' else
				"110" when input(5)='1' else
				"101" when input(4)='1' else
				"100" when input(3)='1' else
				"011"	when input(2)='1' else
				"010" when input(1)='1' else
				"001" when input(0)='1' else
				"000";
end Behavioral;

