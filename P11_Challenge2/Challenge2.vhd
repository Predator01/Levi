----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:44 09/09/2015 
-- Design Name: 
-- Module Name:    Challenge2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
use ieee.numeric_std.all;

entity Challenge2 is
    Port ( Binary : in  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0);
           Seg : out  STD_LOGIC_VECTOR (7 downto 0));
end Challenge2;

architecture Behavioral of Challenge2 is
	signal res_counter : Integer;
	signal shift : STD_LOGIC_VECTOR (7 downto 0);
	-- signal Res: STD_LOGIC_VECTOR(3 downto 0);
	--declaracion de los 6 sumadores
	-- signal Res0: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res1: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res2: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res3: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res4: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res5: STD_LOGIC_VECTOR(3 downto 0);
	-- signal Res6: STD_LOGIC_VECTOR(3 downto 0);
begin
	-- Res6 <= "000"&Num(7) + "000"&Num(6); 
	
	-- shifting NOT WORKING =(
--	OneCounter: process(Binary)
--		VARIABLE aux: Integer := 0;
--	begin
--		aux := aux + to_integer(unsigned(shift(0 downto 0)));
--		gen: for i in 1 to 7 loop
--				aux := aux + to_integer(unsigned(shift(0 downto 0)));
--				shift <= Binary sll i;
--		end loop;
--		res_counter <= aux;
--	end process OneCounter;
--	
	
	OneCounter: process(Binary)
		VARIABLE aux: Integer;
	begin
		aux := to_integer(unsigned(Binary(7 downto 7)));
		gen: for i in 6 downto 0 loop
				aux := aux + to_integer(unsigned(Binary(i downto i)));
		end loop;
		res_counter <= aux;
	end process OneCounter;
	
	
	decodercase: process(res_counter)
		VARIABLE bufer: STD_LOGIC_VECTOR (7 downto 0);
	begin
		case(res_counter) is
			when 0 => bufer:= "11000000";
			when 1 => bufer:= "11111001";
			when 2 => bufer:= "10100100";
			when 3 => bufer:= "10110000";
			when 4 => bufer:= "10011001";
			when 5 => bufer:= "10010010";
			when 6 => bufer:= "10000010";
			when 7 => bufer:= "11111000";
			when others => bufer:= "10000000";
		end case;
		Seg <= bufer;
	end process decodercase;
	
	Disp <= x"E";

end Behavioral;

