----------------------------------------------------------------------------------
-- Company: ITESM 
-- Engineer: Juan Carlos Angeles Ceron
-- 
-- Create Date:    19:26:58 19/15/2115 
-- Design Name: 
-- Module Name:    First_term_exam - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 1.11 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity First_term_exam is
    Port ( BCDin  : in   STD_LOGIC_VECTOR (3 downto 0);
           DECout : out  STD_LOGIC_VECTOR (9 downto 0));
end First_term_exam;

architecture Behavioral of First_term_exam is

begin

 with BCDin select
      DECout <= "1111111110" when "0000",
                "1111111101" when "0001",
					 "1111111011" when "0010",
					 "1111110111" when "0011",
					 "1111101111" when "0100",
					 "1111011111" when "0101",
					 "1110111111" when "0110",
					 "1101111111" when "0111",
					 "1011111111" when "1000",
					 "0111111111" when "1001",
                "1111111111" when others; -- Invalid BCD

end Behavioral;

