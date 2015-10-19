----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:30 10/15/2015 
-- Design Name: 
-- Module Name:    SelAnodo - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SelAnodo is
	port (
		Sel : in  STD_LOGIC_VECTOR (1 downto 0);
		Anodo : out STD_LOGIC_VECTOR (3 downto 0));
end SelAnodo;

architecture Behavioral of SelAnodo is
	 
begin
	Anodo <= "0111" when Sel = "00" else
             "1011" when Sel = "01" else
				 "1101" when Sel = "10" else
             "1110";
end Behavioral;

