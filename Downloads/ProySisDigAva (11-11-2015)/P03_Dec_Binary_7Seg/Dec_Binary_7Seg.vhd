----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Elmer Homero
-- 
-- Create Date:    10:59:30 08/26/2015 
-- Design Name: 
-- Module Name:    Dec_Binary_7Seg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Binary to 7-segment decoder using behavioral
--                 description
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dec_Binary_7Seg is
    Port ( D :    in  STD_LOGIC;
           C :    in  STD_LOGIC;
           B :    in  STD_LOGIC;
           A :    in  STD_LOGIC;
           Seg :  out STD_LOGIC_VECTOR (7 downto 0);
           Disp : out STD_LOGIC_VECTOR (3 downto 0));
end Dec_Binary_7Seg;

architecture Behavioral of Dec_Binary_7Seg is
  -- Embedded signals declaration
  signal Ent: STD_LOGIC_VECTOR (3 downto 0);
begin
  -- Behavioral Concurrent implementation using When / Else
        --.gfedcba
--  Seg <= "11000000" when (D='0' and C='0' and B='0' and A='0') else -- 0
--         "11111001" when (D='0' and C='0' and B='0' and A='1') else -- 1
--			"10100100" when (D='0' and C='0' and B='1' and A='0') else -- 2
--			"10110000" when (D='0' and C='0' and B='1' and A='1') else -- 3
--			"10011001" when (D='0' and C='1' and B='0' and A='0') else -- 4
--			"10010010" when (D='0' and C='1' and B='0' and A='1') else -- 5
--			"10000010" when (D='0' and C='1' and B='1' and A='0') else -- 6
--			"11111000" when (D='0' and C='1' and B='1' and A='1') else -- 7
--			"10000000" when (D='1' and C='0' and B='0' and A='0') else -- 8
--			"10010000" when (D='1' and C='0' and B='0' and A='1') else -- 9
--			"10001000" when (D='1' and C='0' and B='1' and A='0') else -- A
--			"10000011" when (D='1' and C='0' and B='1' and A='1') else -- b
--			"11000110" when (D='1' and C='1' and B='0' and A='0') else -- C
--			"10100001" when (D='1' and C='1' and B='0' and A='1') else -- d
--			"10000110" when (D='1' and C='1' and B='1' and A='0') else -- E
--         "10001110";                                        		  -- F
			

  -- Behavioral Concurrent implementation using When / Else
  -- using embedded signals
  
  -- Group input signals into a vector using aggregate
--  Ent <= D & C & B & A;
--        --.gfedcba
--  Seg <= "11000000" when (Ent = "0000") else -- 0
--         "11111001" when (Ent = "0001") else -- 1
--			"10100100" when (Ent = "0010") else -- 2
--			"10110000" when (Ent = "0011") else -- 3
--			"10011001" when (Ent = "0100") else -- 4
--			"10010010" when (Ent = "0101") else -- 5
--			"10000010" when (Ent = "0110") else -- 6
--			"11111000" when (Ent = "0111") else -- 7
--			"10000000" when (Ent = "1000") else -- 8
--			"10010000" when (Ent = "1001") else -- 9
--			"10001000" when (Ent = "1010") else -- A
--			"10000011" when (Ent = "1011") else -- b
--			"11000110" when (Ent = "1100") else -- C
--			"10100001" when (Ent = "1101") else -- d
--			"10000110" when (Ent = "1110") else -- E
--         "10001110";                         -- F
			
  -- Behavioral Concurrent implementation using Select / When
  -- using embedded signals
  
  -- Group input signals into a vector using aggregate
--  Ent <= D & C & B & A;
--
--    with Ent select
--      Seg <= "11000000" when "0000",
--             "11111001" when "0001",
--				 "10100100" when "0010",
--				 "10110000" when "0011",
--				 "10011001" when "0100",
--				 "10010010" when "0101",
--				 "10000010" when "0110",
--				 "11111000" when "0111",
--				 "10000000" when "1000",
--				 "10010000" when "1001",
--				 "10001000" when "1010",
--				 "10000011" when "1011",
--				 "11000110" when "1100",
--				 "10100001" when "1101",
--				 "10000110" when "1110",
--             "10001110" when others;  
--			
--			-- Select Display
--			Disp <= "1110";
			
  -- Behavioral Concurrent implementation using Select / When
  -- using embedded signals
  
  -- Group input signals into a vector using aggregate
--  Ent <= D & C & B & A;
--
--    with Ent select
--	         --.gfedcba
--      Seg <= "11000000" when x"0", 
--             "11111001" when x"1",
--				 "10100100" when x"2",
--				 "10110000" when x"3",
--				 "10011001" when x"4",
--				 "10010010" when x"5",
--				 "10000010" when x"6",
--				 "11111000" when x"7",
--				 "10000000" when x"8",
--				 "10010000" when x"9",
--				 "10001000" when x"A",
--				 "10000011" when x"B",
--				 "11000110" when x"C",
--				 "10100001" when x"D",
--				 "10000110" when x"E",
--             "10001110" when others;  
			
			-- Select Display
--			Disp <= "1110";
			
			
  -- Behavioral Sequential implementation using 
  -- if / else / elsif and using embedded signals
  
  -- Group input signals into a vector using aggregate
  Ent <= D & C & B & A;
  
  decoder: process(Ent)
  begin                         --.gfedcba
    if    Ent = x"0" then Seg <= "11000000";
    elsif Ent = x"1" then Seg <= "11111001";
	 elsif Ent = x"2" then Seg <= "10100100";
	 elsif Ent = x"3" then Seg <= "10110000";
	 elsif Ent = x"4" then Seg <= "10011001";
	 elsif Ent = x"5" then Seg <= "10010010";
	 elsif Ent = x"6" then Seg <= "10000010";
	 elsif Ent = x"7" then Seg <= "11111000";
	 elsif Ent = x"8" then Seg <= "10000000";
	 elsif Ent = x"9" then Seg <= "10010000";
	 elsif Ent = x"A" then Seg <= "10001000";
	 elsif Ent = x"B" then Seg <= "10000011";
	 elsif Ent = x"C" then Seg <= "11000110";
	 elsif Ent = x"D" then Seg <= "10100001";
	 elsif Ent = x"E" then Seg <= "10000110";
    else                  Seg <= "10001110";
    end if;
  end process decoder;
  
  -- Select Display
  Disp <= "1110";
--  
  
  -- Behavioral Sequential implementation using 
  -- the Case statement and using embedded signals
  
  -- Group input signals into a vector using aggregate
--  Ent <= D & C & B & A;
--  
--  decodercase: process(Ent)
--  begin
--    case (Ent) is 
--      when "0000" => Seg <= "11000000";
--      when "0001" => Seg <= "11111001";
--      when "0010" => Seg <= "10100100";
--      when "0011" => Seg <= "10110000";
--      when "0100" => Seg <= "10011001";
--      when "0101" =>
--         <statement>;
--      when "0110" =>
--         <statement>;
--      when "0111" =>
--         <statement>;
--      when "1000" =>
--         <statement>;
--      when "1001" =>
--         <statement>;
--      when "1010" =>
--         <statement>;
--      when "1011" =>
--         <statement>;
--      when "1100" =>
--         <statement>;
--      when "1101" =>
--         <statement>;
--      when "1110" =>
--         <statement>;
--      when others =>  Seg <= "10001110";
--   end case;
	
--  end process decodercase;
  
  -- Select Display--
  -- Disp <= "1110";

end Behavioral;














