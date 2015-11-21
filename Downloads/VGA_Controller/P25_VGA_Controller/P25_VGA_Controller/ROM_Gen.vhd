----------------------------------------------------------------------------------
-- Company: 
-- Engineer: RickWare
-- 
-- Create Date:    07:18:36 11/01/2007 
-- Design Name: 
-- Module Name:    ROM_Gen - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementacion de un ROM generico de tamaño: 2^n localidades
--              con cada localidad de m bits
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

entity ROM_Gen is
    Generic ( m : integer := 8;     --m define el ancho de la memoria
	           n : integer := 16);   --n define el numero de localidades de memoria
    Port ( addr : in  INTEGER RANGE 0 to n-1;
           data : out  STD_LOGIC_VECTOR (m-1 downto 0));
end ROM_Gen;

architecture Behavioral of ROM_Gen is
  TYPE vector_array IS array (0 to n-1) of STD_LOGIC_VECTOR (m-1 downto 0);
  CONSTANT memory: vector_array := (X"AC", X"0F", X"17", X"9E",
                                    X"F0", X"AA", X"69", X"AF",
												X"D5", X"42", X"00", X"27",
												X"03", X"30", X"1A", X"BB");
begin
  data <= memory(addr);
end Behavioral;

