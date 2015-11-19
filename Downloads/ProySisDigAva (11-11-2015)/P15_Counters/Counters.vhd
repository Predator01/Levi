----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Rick 
-- 
-- Create Date:    08:56:15 10/02/2015 
-- Design Name: 
-- Module Name:    Counters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    4-Bit Binary Synchronous Counter
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional CommCounts: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Counters is
    Port ( Clk : in    STD_LOGIC;
           Rst : in    STD_LOGIC;
           Seg : out   STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Counters;

architecture Behavioral of Counters is
  -- Embedded signal for the Counter
  signal Count   : STD_LOGIC_VECTOR (3 downto 0);
  -- Embedded signals used by the Frequency Divider
  signal FreqCnt : integer range 0 to 100000000;
  signal OneHz   : STD_LOGIC;  
begin
  -- Define a Frequency divider for 100,000,000 to 1
  Frequency_Divider: process(Rst,Clk)
  begin
	 if (rising_edge(Clk)) then
	   -- Check if counter has reached final value
		if FreqCnt = 100000000 then
		  FreqCnt <= 1;
		  OneHz   <= '1'; -- One second has passed
		else
		  FreqCnt <= FreqCnt + 1;
		  OneHz   <= '0'; -- One second has'nt passed
		end if;
  end if;
  
  end process Frequency_Divider;
  
  -- Define the Binary Counter
  -- Bad approach. A Embedded signal is used
  -- as a clock signal. This can create metastability
  -- issues. 
--  Binary_Counter: process(Rst,OneHz)
--  begin
--    -- Asynchronous Reset
--	 if (Rst = '1') then
--	   -- Fill Count with zeros using aggregate
--		Count <= (others => '0');
--	 elsif (rising_edge(OneHz)) then
--	   Count <= Count + 1;
--	 end if;
--  end process Binary_Counter;
  
  -- Define the Binary Counter
  -- Good approach. Use the embedded signal "OneHz" as an
  -- enable
  Binary_Counter: process(Rst,Clk,OneHz)
  begin
    -- Asynchronous Reset
	 if (Rst = '1') then
	   -- Fill Count with zeros using aggregate
		Count <= (others => '0');
	 elsif (rising_edge(Clk) and OneHz = '1') then
	   Count <= Count + 1;
	 end if;
  end process Binary_Counter;
  
  -- Se7en segmCount decoder
  decoder: process(Count)
  begin                           --.gfedcba
    if    Count = x"0" then Seg <= "11000000";
    elsif Count = x"1" then Seg <= "11111001";
	 elsif Count = x"2" then Seg <= "10100100";
	 elsif Count = x"3" then Seg <= "10110000";
	 elsif Count = x"4" then Seg <= "10011001";
	 elsif Count = x"5" then Seg <= "10010010";
	 elsif Count = x"6" then Seg <= "10000010";
	 elsif Count = x"7" then Seg <= "11111000";
	 elsif Count = x"8" then Seg <= "10000000";
	 elsif Count = x"9" then Seg <= "10010000";
	 elsif Count = x"A" then Seg <= "10001000";
	 elsif Count = x"B" then Seg <= "10000011";
	 elsif Count = x"C" then Seg <= "11000110";
	 elsif Count = x"D" then Seg <= "10100001";
	 elsif Count = x"E" then Seg <= "10000110";
    else                    Seg <= "10001110";
    end if;
  end process decoder;
  
  -- Display select
  Disp <= "1110";

end Behavioral;








