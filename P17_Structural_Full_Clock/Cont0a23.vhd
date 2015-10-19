----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:43 10/15/2015 
-- Design Name: 
-- Module Name:    Cont0a23 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Cont0a23 is
 port (
    Load      : in  STD_LOGIC;
    Enable    : in  STD_LOGIC;
	 Rst       : in  STD_LOGIC;
	 Clk       : in  STD_LOGIC;
	 ValorDec  : in  STD_LOGIC_VECTOR (3 downto 0);
	 ValorUni  : in  STD_LOGIC_VECTOR (3 downto 0);
	 Cuenta    : out STD_LOGIC_VECTOR (7 downto 0));
end Cont0a23;

architecture Behavioral of Cont0a23 is
	signal Cont : integer range 0 to 23;
	constant LIMIT : integer := 23;
	constant DEC_LIMIT : integer := 2;
	constant UNI_LIMIT : integer := 9;
begin

process (Rst,Clk,Cont)
	variable dec : integer;
	variable uni : integer;
begin
    if (Rst = '1') then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if (Load = '1') then
			dec := conv_integer(ValorDec);
			uni := conv_integer(ValorUni);
			if ValorDec > DEC_LIMIT then
				dec := 2;
			end if;
			if ValorUni > UNI_LIMIT then
				uni := 9;
			end if;
			if dec = 2 and uni > 3 then
				uni := 3;
			end if;
			Cont <= dec*10 + uni;
		elsif (Enable = '1') then
		  if Cont = LIMIT then
		    Cont <= 0;
		  else
		    Cont <= Cont + 1;
		  end if;
		end if;
    end if;
	uni := Cont mod 10;
	dec := (Cont - uni) / 10;
	Cuenta <= conv_std_logic_vector(dec,4) & conv_std_logic_vector(uni,4);	  
end process;

end Behavioral;

