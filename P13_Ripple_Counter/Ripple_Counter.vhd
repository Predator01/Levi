----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    09:42:15 09/11/2015 
-- Design Name: 
-- Module Name:    Ripple_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			4 bit ripple adder
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

entity Ripple_Counter is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Res : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Ripple_Counter;

architecture Behavioral of Ripple_Counter is
	signal C : STD_LOGIC_VECTOR (4 downto 0);
begin
	
	ripple_adder: process(A, B, C, Cin)
	begin
		c(0) <= Cin;
		for i in 0 to 3 loop
			Res(i) <= A(i) xor B(i) xor C(i);
			C(i+1) <= (A(i) and B(i)) or (A(i) and C(i)) or (B(i) and C(i));
		end loop;
		Cout <= C(4);
	end process ripple_adder;
	
	
	
	
	
end Behavioral;

