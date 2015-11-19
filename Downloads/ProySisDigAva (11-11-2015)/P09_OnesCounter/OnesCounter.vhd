----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:41 09/09/2015 
-- Design Name: 
-- Module Name:    OnesCounter - Behavioral 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity OnesCounter is
    Port ( Num     : in  STD_LOGIC_VECTOR (7 downto 0);
           Seg     : out  STD_LOGIC_VECTOR (7 downto 0);
           Display : out  STD_LOGIC_VECTOR (3 downto 0));
end OnesCounter;

architecture Behavioral of OnesCounter is

  -- Decalaracion de los 6 sumadores
--  signal Res0: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res1: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res2: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res3: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res4: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res5: STD_LOGIC_VECTOR (3 downto 0);
--  signal Res6: STD_LOGIC_VECTOR (3 downto 0);

  -- Declaracion de Res como un arreglo de
  -- STD_LOGIC_VECTOR
  type arreglo is array(6 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
  signal Res : arreglo;  
  
begin

  -- Contar el numero de unos en Num
--  Res(6) <= Num(7) + "000"&Num(6);
--  Res(5) <= Res(6) + Num(5);
--  Res(4) <= Res(5) + Num(4);
--  Res(3) <= Res(4) + Num(3);
--  Res(2) <= Res(3) + Num(2);
--  Res(1) <= Res(2) + Num(1);
--  Res(0) <= Res(1) + Num(0);
  
  -- Misma implementacion que arriba, solo que se utilizare loop
  -- Loop secuencial
--  process(Res,Num)
--  begin
--    -- Condicion inicial
--    Res(6) <= Num(7) + "000"&Num(6);
--    for i in 5 downto 0 loop
--      Res(i) <= Res(i+1) + Num(i);
--   end loop;
--  end process;
  
  -- Loop concurrente
  Res(6) <= Num(7) + "000"&Num(6);
  add_loop:
  for i in 5 downto 0 generate
  begin
    Res(i) <= Res(i+1) + Num(i);
  end generate;
  
  
  -- Definicion del Decodificador Bin a 7 Segmentos
  -- utilizando una declaracion concurrente.
  decoder: process(Res(0))
  begin                          --.gfedcba
    if    Res(0) = x"0" then Seg <= "11000000";
    elsif Res(0) = x"1" then Seg <= "11111001";
	 elsif Res(0) = x"2" then Seg <= "10100100";
	 elsif Res(0) = x"3" then Seg <= "10110000";
	 elsif Res(0) = x"4" then Seg <= "10011001";
	 elsif Res(0) = x"5" then Seg <= "10010010";
	 elsif Res(0) = x"6" then Seg <= "10000010";
	 elsif Res(0) = x"7" then Seg <= "11111000";
	 elsif Res(0) = x"8" then Seg <= "10000000";
	 elsif Res(0) = x"9" then Seg <= "10010000";
	 elsif Res(0) = x"A" then Seg <= "10001000";
	 elsif Res(0) = x"B" then Seg <= "10000011";
	 elsif Res(0) = x"C" then Seg <= "11000110";
	 elsif Res(0) = x"D" then Seg <= "10100001";
	 elsif Res(0) = x"E" then Seg <= "10000110";
    else                   Seg <= "10001110";
    end if;
  end process decoder;
  
  -- Select Display
  Display <= "1110";


end Behavioral;

