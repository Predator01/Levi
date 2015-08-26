----------------------------------------------------------------------------------
-- Company: ITESM	
-- Engineer: Miguel Gonzalez A01203712
-- 
-- Create Date:    08:55:27 08/21/2015 
-- Design Name: 
-- Module Name:    Basic_Gates - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: ISE v14.7
-- Description: Show the VHDL versality to define gate in
--						several ways.
-- Dependencies: NOpe
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: I Love VHDL
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Basic_Gates is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Basic_Gates;

architecture Behavioral of Basic_Gates is

begin
	-- 1 Buffer gate 
	-- Y <= A;
	-- comment B bcuz we are not using it.
	-- 1.2 Buffer gate as a truth table
	-- Y <= '1' when A = '1' else '0';
	-- Single Quote
	
	-- 2 NOT
	-- Y <= not A;
	-- NOT gate as a truth table
	-- Y <=  '0' when A = '1' else '1';
	
	-- 3 AND equation
	-- Y <= A and B;
	-- 3.2 AND truth table
	--	Y <= '0' when (A = '0' or B = '0') else '1';
	
	-- 4 NAND 
	-- Y <= A nand B;
	-- 4.2 Truth table
	--	 Y <= '1' when (A = '0' or B = '0') else '0';
	
	-- 5 OR
	-- Y <= A or B;
	-- 5.2 Truth Table
	--	Y <= '1' when (A = '1' or B = '1') else '0';
	-- Y <= '0' when (A = '0' and B = '0') else '1';
		
	
	-- 6 NOR 
	-- Y <= A nor B;
	-- 6.2 Truth table
	--	Y <= '0' when (A = '1' or B = '1') else '1';
	-- Y <= '0' when not (A = '0' and B = '0') else '1';
	
	
	-- 7 xor
	-- Y <= A xor B;
	-- 7.2 Truth table
	--	Y <= '0' when (A = '0' and B ='0') or (A ='1' and B = '1' ) else '1';
	
	-- 8 xnor 
	-- Y <= A xnor B;
	--	Y <= '1' when (A = '0' and B ='0') or (A ='1' and B = '1' ) else '0';
	

	
end Behavioral;















