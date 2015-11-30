----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:45:38 11/10/2015 
-- Design Name: 
-- Module Name:    Equation_motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.0.0 - Motor Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.all;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Equation_motor is
    port (
			in_action : in STD_LOGIC_VECTOR(2 downto 0);
			out_th : out integer;
			out_tl : out integer);
end Equation_motor;

architecture Behavioral of Equation_motor is
	
	signal Tmp : integer range 0 to 20_000;
	signal tH  : integer range 0 to 20_000;
begin
	
	-- TODO: Aqui la ecuacion dependiendo de la accion
	--debe de hacer un full-foward 
	--full-revers
	--girars etc
  -- Calculate tH and tL
  Tmp <= (CONV_INTEGER(in_action) * 1000) / 256;
  tH <= Tmp + 1000;  
  out_tl  <= 20000 - tH;  
  out_th <= tH;

end Behavioral;

