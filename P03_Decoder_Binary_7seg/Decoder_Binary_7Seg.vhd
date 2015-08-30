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
	-- Embedded signals delcaration
	signal Ent: STD_LOGIC_VECTOR (3 downto 0);
begin

--	-- Behavioral Concurrent implementation
--	--.gfedcba
--   Seg <= "11000000" when D='0' and C='0' and B='0' and A='0' else --0
--          "11111001" when D='0' and C='0' and B='0' and A='1' else --1
--			 "10100100" when D='0' and C='0' and B='1' and A='0' else --2
--			 "10110000" when D='0' and C='0' and B='1' and A='1' else --3 
--			 "10011001" when D='0' and C='1' and B='0' and A='0' else --4
--			 "10010010" when D='0' and C='1' and B='0' and A='1' else --5
--			 "10000010" when D='0' and C='1' and B='1' and A='0' else --6
--			 "11111000" when D='0' and C='1' and B='1' and A='1' else --7
--			 "10000000" when D='1' and C='0' and B='0' and A='0' else --8
--			 "10011000" when D='1' and C='0' and B='0' and A='1' else --9
--			 "10001000" when D='1' and C='0' and B='1' and A='0' else --10 A
--			 "10000011" when D='1' and C='0' and B='1' and A='1' else --11 B
--			 "11000110" when D='1' and C='1' and B='0' and A='0' else --12 C
--			 "10100001" when D='1' and C='1' and B='0' and A='1' else --13 D
--			 "10000110" when D='1' and C='1' and B='1' and A='0' else --14 E
--			 "10001110"; --15 F
			
	-- Behavioral Concurrent implementation
	-- Using embedded signal

	-- Group input signals into a vector using aggregate
--	Ent <= D & C & B & A;
--	--.gfedcba
--   Seg <= "11000000" when Ent="0000" else --0
--          "11111001" when Ent="0001" else --1
--			 "10100100" when Ent="0010" else --2
--			 "10110000" when Ent="0011" else --3 
--			 "10011001" when Ent="0100" else --4
--			 "10010010" when Ent="0101" else --5
--			 "10000010" when Ent="0110" else --6
--			 "11111000" when Ent="0111" else --7
--			 "10000000" when Ent="1000" else --8
--			 "10011000" when Ent="1001" else --9
--			 "10001000" when Ent="1010" else --10 A
--			 "10000011" when Ent="1011" else --11 B
--			 "11000110" when Ent="1100" else --12 C
--			 "10100001" when Ent="1101" else --13 D
--			 "10000110" when Ent="1110" else --14 E
--			 "10001110"; --15 F
--	--select display
--			Disp <= "1110";
			
	-- Behavioral Concurrent implementation using select / when
	-- Using embedded signal
	
--	Ent <= D & C & B & A;
--   with Ent select
--      Seg <= "11000000" when "0000",
--				"11111001" when "0001", --1
--				"10100100" when "0010", --2
--				"10110000" when "0011", --3 
--				"10011001" when "0100", --4
--				"10010010" when "0101", --5
--				"10000010" when "0110", --6
--				"11111000" when "0111", --7
--				"10000000" when "1000", --8
--				"10011000" when "1001", --9
--				"10001000" when "1010", --10 A
--				"10000011" when "1011", --11 B
--				"11000110" when "1100", --12 C
--				"10100001" when "1101", --13 D
--				"10000110" when "1110", --14 E
--				"10001110" when others ; --15 F
--	
--	Disp <= "1110";
	
	--- Sequential Process
	
	Ent <= D & C & B & A;
	process (Ent)
		VARIABLE bufer: STD_LOGIC_VECTOR (7 downto 0);
	begin
		if Ent = "0000" then
			bufer := "11000000"; --0
		elsif Ent = "0001" then 
			bufer := "11111001"; -- 1
		elsif Ent = "0010" then 
			bufer := "10100100"; --2
		elsif Ent = "0011" then 
			bufer := "10110000"; --3 
		elsif Ent = "0100" then 
			bufer := "10011001"; --4
		elsif Ent = "0101" then 
			bufer := "10010010"; --5
		elsif Ent = "0110" then 
			bufer := "10000010"; --6
		elsif Ent = "0111" then 
			bufer := "11111000"; --7
		elsif Ent = "1000" then 
			bufer := "10000000"; --8
		elsif Ent = "1001" then 
			bufer := "10011000"; --9
		elsif Ent = "1010" then 
			bufer := "10001000"; --10 A
		elsif Ent = "1011" then 
			bufer := "10000011"; --11 B
		elsif Ent = "1100" then 
			bufer := "11000110"; --12 C
		elsif Ent = "1101" then 
			bufer := "10100001"; --13 D
		elsif Ent = "1110" then 
			bufer := "10000110"; --14 E
		else
			bufer := "10001110"; --15 F
	  end if;
	  Seg <= bufer;
	end process;
	
	Disp <= "1110";
	
				 

end Behavioral;

