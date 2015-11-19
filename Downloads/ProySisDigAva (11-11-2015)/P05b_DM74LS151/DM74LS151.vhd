----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Elmer Homero
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
  
  Mux : process(Sel,D)
  begin
    if    Sel = o"0" then
      Temp <= D(0);
    elsif Sel = o"1" then
      Temp <= D(1);
    elsif Sel = o"2" then
      Temp <= D(2);
    elsif Sel = o"3" then
      Temp <= D(3);
    elsif Sel = o"4" then
      Temp <= D(4);
    elsif Sel = o"5" then
      Temp <= D(5);
    elsif Sel = o"6" then
      Temp <= D(6);
    else
      Temp <= D(7);
    end if;
  end process Mux;
  
  Outputs: process(Strobe,Temp)
  begin
    if Strobe = '1' then
	   Y <= '1';
		W <= '0';
	 else
	   Y <= Temp;
		W <= not Temp;
	 end if;
  end process Outputs;


end Behavioral;

