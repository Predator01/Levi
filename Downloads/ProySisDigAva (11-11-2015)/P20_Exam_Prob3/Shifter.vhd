----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:52 10/27/2015 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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

entity Shifter is
    Port ( Rst     : in   STD_LOGIC;
           Clk     : in   STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (7 downto 0));
end Shifter;

architecture Behavioral of Shifter is
  signal Reg : STD_LOGIC_VECTOR (7 downto 0);
begin
  process(Clk,Reg)
  begin
    if (rising_edge(Clk)) then
	   if (Rst = '1') then
		  Reg <= (others => '0');
		else
		  Reg <= not Reg(0) & Reg (7 downto 1);
		end if;
    end if;
	 DataOut <= Reg;
  end process;

end Behavioral;

