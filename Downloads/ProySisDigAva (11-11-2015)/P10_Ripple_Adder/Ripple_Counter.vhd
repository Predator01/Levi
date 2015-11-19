----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:17 09/11/2015 
-- Design Name: 
-- Module Name:    Ripple_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    4-bit ripple adder
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
    Port ( A    : in   STD_LOGIC_VECTOR (3 downto 0);
           B    : in   STD_LOGIC_VECTOR (3 downto 0);
           Cin  : in   STD_LOGIC;
           Res  : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Ripple_Counter;

architecture Behavioral of Ripple_Counter is
  signal c : STD_LOGIC_VECTOR (4 downto 0);
begin
  ripple_adder: process(A,B,c,Cin)
  begin
    -- Condicion inicial
	 c(0) <= Cin;
    for i in 0 to 3 loop
	   Res(i) <= A(i) xor B(i) xor c(i);
		c(i+1) <= (A(i) and B(i))or (A(i) and c(i)) or (B(i) and c(i));
    end loop;
	 -- Condicion final
	 Cout <= c(4);
  end process ripple_adder; 
end Behavioral;










