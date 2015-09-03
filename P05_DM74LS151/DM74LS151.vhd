----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:25 09/02/2015 
-- Design Name: 
-- Module Name:    DM74LS151 - Behavioral 
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

entity DM74LS151 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (0 to 7);
           Y : out  STD_LOGIC;
           W : out  STD_LOGIC;
           STROBE : in  STD_LOGIC);
end DM74LS151;

architecture Behavioral of DM74LS151 is
	signal Sel : STD_LOGIC_VECTOR (2 downto 0);
begin
	Sel <= C & B & A;
	
	Y <= '0' when STROBE = '1' else
		D(0)  when Sel = "000" else
		D(1)  when Sel = "001" else
		D(2)  when Sel = "010" else
		D(3)  when Sel = "011" else
		D(4)  when Sel = "100" else
		D(5)  when Sel = "101" else
		D(6)  when Sel = "110" else
		D(7);
	W <= '1' when STROBE = '1' else
		not D(0)  when Sel = "000" else
		not D(1)  when Sel = "001" else
		not D(2)  when Sel = "010" else
		not D(3)  when Sel = "011" else
		not D(4)  when Sel = "100" else
		not D(5)  when Sel = "101" else
		not D(6)  when Sel = "110" else
		not D(7);
end Behavioral;

