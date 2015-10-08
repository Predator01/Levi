----------------------------------------------------------------------------------
-- Company:  		ITESM 
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    17:41:33 10/05/2015 
-- Design Name: 
-- Module Name:    P15_Counters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		4 bits counters
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

entity P15_Counters is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end P15_Counters;

architecture Behavioral of P15_Counters is
-- embedded signal for the counter
signal count : STD_LOGIC_VECTOR (3 downto 0);
-- embedded signal used by frequency devider
signal frequency_counter : integer range 0 to 100000000;
signal onehz: STD_LOGIC;
begin
-- define a frequency devider for 100,000,000 to 1

Frequency_devider: process(Rst, Clk)
begin
	if(rising_edge(Clk)) then
		--check if a counter has reached final value
		if(frequency_counter = 100000000) then
			frequency_counter <= 1;
			onehz <= '1';
		else
			frequency_counter <= frequency_counter + 1;
			onehz <= '0';
		end if;
	end if;
end process Frequency_devider;
	

--
----define the binary counter
---- Bad approach a embeeded signal  is used as a clock signal. this can crate metastability problem
--Binary_counter: process(Rst, onehz)
--begin
--   --Asynchronouse reset
--   if (Rst = '1') then
--      --fill ccount with zeros using aggregate
--      count <= (others => '0');
--   elsif (rising_edge(onehz)) then
--      count <= count + 1;
--   end if;
--end process Binary_counter;


--define the binary counter
-- good approach use the embedded signal as an enable
Binary_counter: process(Rst, Clk, onehz)
begin
   --Asynchronouse reset
   if (Rst = '1') then
      --fill ccount with zeros using aggregate
      count <= (others => '0');
   elsif (rising_edge(Clk) and onehz = '1') then
      count <= count + 1;
   end if;
end process Binary_counter;


-- seven segment decoder
-- C&P 7seg decoder
decodercase: process(count)
	VARIABLE bufer: STD_LOGIC_VECTOR (7 downto 0);
begin
	case(count) is
		when "0000" => bufer:= "11000000";
		when "0001" => bufer:= "11111001";
		when "0010" => bufer:= "10100100";
		when "0011" => bufer:= "10110000";
		when "0100" => bufer:= "10011001";
		when "0101" => bufer:= "10010010";
		when "0110" => bufer:= "10000010";
		when "0111" => bufer:= "11111000";
		when "1000" => bufer:= "10000000";
		when "1001" => bufer:= "10011000";
		when "1010" => bufer:= "10001000";
		when "1011" => bufer:= "10000011";
		when "1100" => bufer:= "11000110"; 
		when "1101" => bufer:= "10100001";
		when "1110" => bufer:= "10000110";
		when "1111" => bufer:= "10001110";
		when others => bufer:= "10111111";
	end case;
	Seg <= bufer;
end process decodercase;

disp <= "1110";

end Behavioral;

