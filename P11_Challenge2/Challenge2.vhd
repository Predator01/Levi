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
use IEEE.std_logic_unsigned.all;

entity Challenge2 is
    Port ( Binary : in  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0);
           Seg : out  STD_LOGIC_VECTOR (7 downto 0));
end Challenge2;

architecture Behavioral of Challenge2 is
	signal res_counter : Integer := 0;
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
	
	-- Declaration of Res as an array
	-- STD_LOGIC_VECTOR
	
	-- and array of 6 that has an STD LOGIC VECTOR OF 3 each cell
	type array1 is array(6 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
	signal Res: array1;
	
begin
	Res(6) <=  Binary(7) + "000"&Binary(6);
	OneCounter: process(Binary, Res)
	begin
		gen: for i in 5 downto 0 loop
				Res(i) <= Res(i+1) + Binary(i); 
		end loop;
	end process OneCounter;

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
	
	
	-- counting ones
	
--	OneCounter: process(Binary)
--		VARIABLE aux: Integer;
--	begin
--		aux := to_integer(unsigned(Binary(7 downto 7)));
--		gen: for i in 6 downto 0 loop
--				aux := aux + to_integer(unsigned(Binary(i downto i)));
--		end loop;
--		res_counter <= aux;
--	end process OneCounter;
--	
	
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

