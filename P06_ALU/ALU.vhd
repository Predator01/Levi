----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    09:10:21 09/04/2015 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 		
-- Target Devices: Spartan 6
-- Tool versions:  14.7
-- Description: 	Implementation of a Arithmetic Logic Unit
--						Pedroni's book page 76
-- Dependencies: Nope
--
-- Revision: 	1.0
-- Revision 0.01 - File Created
-- Additional Comments:  Divide and conquer using KISS principle
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;

entity ALU is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
	--embbeded signals
	-- Result from Logic Unit
	signal res_LU : STD_LOGIC_VECTOR (7 downto 0);
	-- Result from Arithmetic Unit
	signal res_AU : STD_LOGIC_VECTOR (7 downto 0);
begin
	ArithmeticUnit: process(a, b, cin, sel)
		VARIABLE bufer: STD_LOGIC_VECTOR (2 downto 0);
	begin
		bufer := sel(0) & sel(1) & sel(2);
		case bufer is 
			when "000" =>
				res_AU <= a;
			when "001" =>
				res_AU <= a + x"01";
			when "010" =>
				res_AU <= a - x"01";
			when "011" =>
				res_AU <= b;
			when "100" =>
				res_AU <= b + x"01";
			when "101" =>
				res_AU <= b - x"01";
			when "110" =>
				res_AU <= a + b;
			when others =>
				res_AU <=  a + b + cin;
		end case;
	
	end process ArithmeticUnit;
	
	
	LogicUnit: process(a, b, sel)
		VARIABLE bufer: STD_LOGIC_VECTOR (2 downto 0);
	begin
		bufer := sel(0) & sel(1) & sel(2);
		case bufer is 
			when "000" =>
				res_LU <= not a;
			when "001" =>
				res_LU <= not b;
			when "010" =>
				res_LU <= a and b;
			when "011" =>
				res_LU <= a or b;
			when "100" =>
				res_LU <= a nand b;
			when "101" =>
				res_LU <= a nor b;
			when "110" =>
				res_LU <= a xor b;
			when others =>
				res_LU <=  a xnor b;
		end case;
	
	end process LogicUnit;
		
	
	-- Multiplexor
	y <= res_AU when sel(3) = '0' else
			res_LU;
	

	
	

end Behavioral;

