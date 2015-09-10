----------------------------------------------------------------------------------
-- Company: 			ITESM
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    10:34:28 09/09/2015 
-- Design Name: 
-- Module Name:    Challenge1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Challenge 1, 4 Code input, a select in 0 means Binary to Gray
--							select in 1 means Gray to Binary. 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Challenge1 is
	generic (n : Integer := 4);
    Port ( Code : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Sel : in  STD_LOGIC;
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Challenge1;

architecture Behavioral of Challenge1 is
	--embbeded signals
	signal res_binary : STD_LOGIC_VECTOR (n-1 downto 0);
	signal res_gray : STD_LOGIC_VECTOR (n-1 downto 0);
	signal res_conversion : STD_LOGIC_VECTOR (n-1 downto 0);

begin

	BinaryToGray: process(Code)
	begin
		res_gray(n-1) <= Code(n-1);
		res_gray(n-2 downto 0) <= Code(n-2 downto 0) xor Code(n-1 downto 1);
	end process BinaryToGray;
	
	
	GrayToBinary: process(Code, res_binary)
		VARIABLE aux: STD_LOGIC_VECTOR (n-1 downto 0);
	begin
		aux(n-1) := Code(n-1);
		gen: for i in n-2 downto 0 loop
				aux(i) := aux(i+1) xor Code(i);
		end loop;
		res_binary (n-1 downto 0) <= aux(n-1 downto 0);
	end process GrayToBinary;
	
	-- Multiplexor
	res_conversion <= res_gray when sel = '0' else
			res_binary;
		
	decodercase: process(res_conversion)
		VARIABLE bufer: STD_LOGIC_VECTOR (7 downto 0);
	begin
		case(res_conversion) is
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
	
	Disp <= x"E";
	
end Behavioral;

