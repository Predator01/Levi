----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:50:30 09/18/2015 
-- Design Name: 
-- Module Name:    Magnitude_Comparator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:   Magnitude Comparator 
--
-- Dependencies: 
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

entity Magnitude_Comparator is
    Port ( A    : in  STD_LOGIC_VECTOR (3 downto 0);
           B    : in  STD_LOGIC_VECTOR (3 downto 0);
           AgtB : out STD_LOGIC;
           AeqB : out STD_LOGIC;
           AltB : out STD_LOGIC);
end Magnitude_Comparator;

architecture Magnitude_Comparator_Arch of Magnitude_Comparator is

begin
  process()
  begin
    -- Comparator implementation
	 if (A > B) then
	   AgtB <= '1';
	 else if (A = B) then
	   AeqB <= '1';
	 else
	   AltB <= '1';
	 end if;
  end process;
  

end Magnitude_Comparator_Arch;

