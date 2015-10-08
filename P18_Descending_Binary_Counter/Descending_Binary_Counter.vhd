----------------------------------------------------------------------------------
-- Company: 			ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:27:11 10/08/2015 
-- Design Name: 
-- Module Name:    Descending_Binary_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		4 bits Descending_Binary_Counter
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

entity Descending_Binary_Counter is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Seg  : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Descending_Binary_Counter;

architecture Behavioral of Descending_Binary_Counter is
	signal count : STD_LOGIC_VECTOR(3 downto 0);
	signal frequency_counter : integer range 0 to 1000000000;
	signal one_hz : STD_LOGIC;
begin
	Frequency_devider: process(Rst, Clk)
	begin
		if(rising_edge(Clk)) then
			--check counter final value
			if(frequency_counter = 1000000000) then
				frequency_counter <= 1;
				one_hz <= '1';
			else
				frequency_counter <= frequency_counter + 1;
				one_hz <= '0';
			end if;
		end if;
	end process Frequency_devider;
	
	Binary_counter: process(Rst, Clk, one_hz)
	begin
		--Async reset
		if (Rst = '1') then
			--fill zeros
			count <= (others => '0');
		elsif (rising_edge(Clk) and one_hz = '1') then
			count <= count + 1;
		end if;
	end process Binary_counter;
		
		
	--Decoder
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

