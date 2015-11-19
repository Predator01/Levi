----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer: 
-- 
-- Create Date:    08:51:42 09/08/2015 
-- Design Name: 
-- Module Name:    BinaryGray_Converter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Generic Gray to Binary Converter 
--                 using Loops
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BinaryGray_Converter is
    -- Declaration of Generics
    generic (
	   -- n defines the number of bits to be
		-- converted
      n : integer := 16);
    Port ( Bin  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Gray : out STD_LOGIC_VECTOR (n-1 downto 0));
end BinaryGray_Converter;

architecture Behavioral of BinaryGray_Converter is

begin
  -- Binary to Gray conversion using Dataflow
--  Gray(3) <= Bin(3);
--  Gray(2) <= Bin(3) xor Bin(2);
--  Gray(1) <= Bin(2) xor Bin(1);
--  Gray(0) <= Bin(1) xor Bin(0);
  
  -- Binary to Gray conversion using Loops
  Gray(n-1) <= Bin(n-1);
  for_loop:
  for i in n-2 downto 0 generate
  begin
    Gray(i) <= Bin(i+1) xor Bin(i);
  end generate;
  
  

end Behavioral;





