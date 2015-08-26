----------------------------------------------------------------------------------
-- Company: 			ITESM
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    10:59:31 08/26/2015 
-- Design Name: 		
-- Module Name:    Decoder_Binary_7Seg - Behavioral 
-- Project Name: 		Decoder Binary 7 Segments
-- Target Devices: 	
-- Tool versions: 	ISE v14.7
-- Description: 		Binary to 7-segment decoder using behavioral
--							description
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

entity Decoder_Binary_7Seg is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           B : in  STD_LOGIC;
           A : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_Binary_7Seg;

architecture Behavioral of Decoder_Binary_7Seg is
begin

	-- Behavioral Concurrent implementation
	--.gfedcba
   Seg <= "11000000" when D='0' and C='0' and B='0' and A='0' else --0
          "11111001" when D='0' and C='0' and B='0' and A='1' else --1
			 "10100100" when D='0' and C='0' and B='1' and A='0' else --2
			 "10110000" when D='0' and C='0' and B='1' and A='1' else --3 
			 "10011001" when D='0' and C='1' and B='0' and A='0' else --4
			 "10010010" when D='0' and C='1' and B='0' and A='1' else --5
			 "10000010" when D='0' and C='1' and B='1' and A='0' else --6
			 "11111000" when D='0' and C='1' and B='1' and A='1' else --7
			 "10000000" when D='1' and C='0' and B='0' and A='0' else --8
			 "10011000" when D='1' and C='0' and B='0' and A='1' else --9
			 "10001000" when D='1' and C='0' and B='1' and A='0' else --10 A
			 "10000011" when D='1' and C='0' and B='1' and A='1' else --11 B
			 "11000110" when D='1' and C='1' and B='0' and A='0' else --12 C
			 "10100001" when D='1' and C='1' and B='0' and A='1' else --13 D
			 "10000110" when D='1' and C='1' and B='1' and A='0' else --14 E
			 "10001110"; --15 F
				
	--select display
	
	Disp <= "1110";
				 

end Behavioral;

