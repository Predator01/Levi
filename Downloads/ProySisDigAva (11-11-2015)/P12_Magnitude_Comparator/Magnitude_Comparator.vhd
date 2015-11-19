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
  -- Embedded signals are declare here
  -- signal Tmp : std_logic_vector(2 downto 0);
begin

  -- Signal Solution
--  process(A,B)
--    -- Variable should be declare here
--	 -- variable Tmp : std_logic_vector(2 downto 0);
--  begin
--    -- Comparator implementation
--	 if (A > B) then
--	   Tmp <= "100";
--	 elsif (A = B) then
--	   Tmp <= "010";
--	 else
--	   Tmp <= "001";
--	 end if;
--  end process;
--  
--  AgtB <= Tmp(0);
--  AeqB <= Tmp(1);
--  AltB <= Tmp(2);
  
  -- Variable solution
  process(A,B)
    -- Variable should be declare here
	 variable Tmp : std_logic_vector(2 downto 0);
  begin
    -- Comparator implementation
	 Tmp := "000";  -- Inicializar Tmp
	 if (A > B) then
	   Tmp(2) := '1';
	 elsif (A = B) then
	   Tmp(1) := '1';
	 else
	   Tmp(0) := '1';
	 end if;
	 AgtB <= Tmp(0);
    AeqB <= Tmp(1);
    AltB <= Tmp(2);
  end process;
  


end Magnitude_Comparator_Arch;

