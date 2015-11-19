----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:09 09/09/2015 
-- Design Name: 
-- Module Name:    BinGray - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional CommDatos: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity BinGray is
    Port ( Code    : in   STD_LOGIC_VECTOR (3 downto 0);
           Sel     : in   STD_LOGIC;
           Seg     : out  STD_LOGIC_VECTOR (7 downto 0);
           Display : out  STD_LOGIC_VECTOR (3 downto 0));
end BinGray;

architecture Behavioral of BinGray is
  --Las señales embebidas se declaran aqui !!!!!!!!!!!!!!
  signal Gray : STD_LOGIC_VECTOR (3 downto 0);
  signal Bin  : STD_LOGIC_VECTOR (3 downto 0);
  signal Dato : STD_LOGIC_VECTOR (3 downto 0);

begin
  -- Definicion de BinToGray
  -- Binary to Gray conversion using Loops
  Gray(3) <= Code(3);
  for_loop:
  for i in 2 downto 0 generate
  begin
    Gray(i) <= Code(i+1) xor Code(i);
  end generate;
  
  -- Definicion de GrayToBin
  -- Gray to Bin conversion using Loops
  Bin(3) <= Code(3);
  for_loop1:
  for i in 2 downto 0 generate
  begin
    Bin(i) <= Bin(i+1) xor Code(i);
  end generate;

  -- Definicion del multiplexor
  Dato <= Gray when Sel = '0' else
          Bin;

  -- Definicion del Decodificador Bin a 7 Segmentos
  -- utilizando una declaracion concurrente.
  decoder: process(Dato)
  begin                          --.gfedcba
    if    Dato = x"0" then Seg <= "11000000";
    elsif Dato = x"1" then Seg <= "11111001";
	 elsif Dato = x"2" then Seg <= "10100100";
	 elsif Dato = x"3" then Seg <= "10110000";
	 elsif Dato = x"4" then Seg <= "10011001";
	 elsif Dato = x"5" then Seg <= "10010010";
	 elsif Dato = x"6" then Seg <= "10000010";
	 elsif Dato = x"7" then Seg <= "11111000";
	 elsif Dato = x"8" then Seg <= "10000000";
	 elsif Dato = x"9" then Seg <= "10010000";
	 elsif Dato = x"A" then Seg <= "10001000";
	 elsif Dato = x"B" then Seg <= "10000011";
	 elsif Dato = x"C" then Seg <= "11000110";
	 elsif Dato = x"D" then Seg <= "10100001";
	 elsif Dato = x"E" then Seg <= "10000110";
    else                   Seg <= "10001110";
    end if;
  end process decoder;
  
  -- Select Display
  Display <= "1110";






  


end Behavioral;

