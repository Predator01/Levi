----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 			Miguel Gonzalez A01203712
-- 	
-- Create Date:    12:04:29 10/08/2015 
-- Design Name: 
-- Module Name:    Ascending_Decimal_BCD_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    4 bits Ascending_Decimal_BCD_Counter
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

entity Ascending_Decimal_BCD_Counter is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Ascending_Decimal_BCD_Counter;

architecture Behavioral of Ascending_Decimal_BCD_Counter is
	signal count : STD_LOGIC_VECTOR(3 downto 0);
	signal frequency_counter : integer range 0 to 100000000;
	signal one_hz : STD_LOGIC;
	signal result : STD_LOGIC_VECTOR(3 downto 0);
	constant limit : STD_LOGIC_VECTOR(3 downto 0) := "1001";
begin
	Frequency_divider: process(Rst, Clk)
	begin
		if(rising_edge(Clk)) then
			--check counter final value
			if(frequency_counter = 100000000) then
				frequency_counter <= 1;
				one_hz <= '1';
			else
				frequency_counter <= frequency_counter + 1;
				one_hz <= '0';
			end if;
		end if;
	end process Frequency_divider;
	
	Binary_counter: process(Rst, Clk, one_hz)
	begin
		--Async reset
		if (Rst = '1') then
			--fill zeros
			count <= (others => '0');
		elsif (rising_edge(Clk) and one_hz = '1') then
			if (count = limit) then 
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
	end process Binary_counter;
	
	result <= count;
	--Decoder
	decoder_case: process(result)
	VARIABLE bufer: STD_LOGIC_VECTOR (7 downto 0);
	begin
		case(result) is
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
			when others => bufer:= "10001110";
		end case;
		Seg <= bufer;
	end process decoder_case;
	disp <= "1110";

end Behavioral;

