----------------------------------------------------------------------------------
-- Company:  			ITESM
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    09:14:00 09/15/2015 
-- Design Name: 
-- Module Name:    SN74Ls42 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		A SN74LS42 desription
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

entity SN74Ls42 is
    Port ( 
				A : in STD_LOGIC;
				B : in STD_LOGIC;
				C : in STD_LOGIC;
				D : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (9 downto 0));
end SN74Ls42;

architecture Behavioral of SN74Ls42 is
	signal input: STD_LOGIC_VECTOR(3 downto 0);
begin
	-- just in case the user is configuring bad the Constrains
	-- in other case we could use a vector.
	input <= D & C & B & A;
		with input select
      output <= "1111111110" when "0000", --0
                "1111111101" when "0001", --1
                "1111111011" when "0010", --2
                "1111110111" when "0011", --3
                "1111101111" when "0100", --4
                "1111011111" when "0101", --5
                "1110111111" when "0110", --6
                "1101111111" when "0111", --7
                "1011111111" when "1000", --8
                "0111111111" when "1001", --9
                "1111111111" when others;

end Behavioral;

