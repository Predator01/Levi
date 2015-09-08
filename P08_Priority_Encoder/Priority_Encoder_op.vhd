----------------------------------------------------------------------------------
-- Company: 			ITESM	
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    14:27:21 09/08/2015 
-- Design Name: 
-- Module Name:    Priority_Encoder_op - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Priority Encoder using Operators
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

entity Priority_Encoder_op is
    Port ( input : in  STD_LOGIC_VECTOR (6 downto 0);
           output : out  STD_LOGIC_VECTOR (2 downto 0));
end Priority_Encoder_op;

architecture Behavioral of Priority_Encoder_op is

begin
-- 0 1 2 3 4 5  index
-- 1 2 3 4 5 6  number

--(2)(1)(0)
-- 0  0  0  	0

-- 0  0  1		1
-- 0  1  0		2
-- 0  1  1		3
-- 1  0  0		4
-- 1  0  1		5
-- 1  1  0		6
-- 1  1  1		7

	output(2) <= input(3) or input(4) or input(5) or input(6);
	output(1) <= ( (input(2) or input(1)) and (not input(4) and not input(3)) ) or input(5) or input(6);
	output(0) <= ( (((((input(0) and not input(1)) or input(2)) and not input(3)) or input(4)) and not input(5)) or input(6)  );
	
	
end Behavioral;

