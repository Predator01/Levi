----------------------------------------------------------------------------------
-- Company: 				ITESM CQ
-- Engineer: 				Miguel Gonzalez A0123712
-- 
-- Create Date:    09:13:49 10/13/2015 
-- Design Name: 
-- Module Name:    Shift_Register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Implementation of a 8 bit shift register
--
-- Dependencies: None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Shift_Register is
    Port ( Clk : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (0 to 7));
end Shift_Register;

architecture Behavioral of Shift_Register is
	--Embedded signal 
	signal Reg : STD_LOGIC_VECTOR (0 to 7);
	signal AnB : STD_LOGIC;
begin
	-- Describe the shift-right register
	AnB <= A and B;
	shift_reg: process(Clk, Clr)
	begin 
		if (Clr = '0') then
			Reg <= (others => '0');
		elsif (rising_edge(Clk)) then
			Reg <= (AnB & Reg(0 to 6));
			
		end if;
	end process shift_reg;
	Q <= Reg;
	
end Behavioral;

