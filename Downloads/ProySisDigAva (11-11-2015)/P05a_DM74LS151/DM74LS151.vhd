----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:15:07 09/02/2015 
-- Design Name: 
-- Module Name:    DM74LS151 - Behavioral 
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

entity DM74LS151 is
    Port ( C      : in  STD_LOGIC;
           B      : in  STD_LOGIC;
           A      : in  STD_LOGIC;
           D      : in  STD_LOGIC_VECTOR (7 downto 0);
           Strobe : in  STD_LOGIC;
           Y      : out STD_LOGIC;
           W      : out STD_LOGIC);
end DM74LS151;

architecture Behavioral of DM74LS151 is
  -- Declaracion de senales embebidas
  signal Sel : STD_LOGIC_VECTOR (2 downto 0);
  signal Temp: STD_LOGIC;
begin
  -- Agrupar C, B y A en una sola senal embebida
  -- para facilidad de manejo
  Sel <= C & B & A;
  
  -- Compartamiento Concurrente utilizando When/Else
  Temp <=  '0' when Strobe = '1'   else
          D(0) when Sel    = "000" else
          D(1) when Sel    = "001" else
          D(2) when Sel    = "010" else
          D(3) when Sel    = "011" else
          D(4) when Sel    = "100" else
          D(5) when Sel    = "101" else
          D(6) when Sel    = "110" else
          D(7);
		 
  Y <= Temp;
  W <= not Temp;
  


end Behavioral;

