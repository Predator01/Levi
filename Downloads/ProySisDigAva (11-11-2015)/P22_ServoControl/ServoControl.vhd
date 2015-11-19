----------------------------------------------------------------------------------
-- Company:   ITESM QRO
-- Engineer:  Felipe Gasca
-- 
-- Create Date:    08:05:27 10/03/2012 
-- Design Name: 
-- Module Name:    ServoControl - Behavioral 
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


entity ServoControl is
    Port ( Angulo : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk 	: in  STD_LOGIC;
           Rst 	: in  STD_LOGIC;
           Senal  : out STD_LOGIC);
end ServoControl;

architecture Behavioral of ServoControl is



--Embedded Signal needed by Frequency divider
--Frequency divider counter declaration
constant MaxCta: natural := 2000000; --definir valor de acuerda a la tableta

signal ContDiv : natural range 0 to MaxCta;
--Embedded Signal neede for DivDisp

Signal PulsoNecesario : natural;


begin

PulsoNecesario <= 100000 + conv_integer(Angulo) * 392;

--Frequency divider section
	DivFrec: process(Rst,Clk)
	begin
	--Asinchronous Reset
	if (Rst = '1') then
	  ContDiv <= 0;
	elsif  (rising_edge (Clk)) then
	  --Check if counter has reached the final count
	  if (ContDiv = MaxCta) then
		 ContDiv <= 0;		 
	  else
		 --no ha transcurrido un segundo, seguir incrementando el contador
		 ContDiv <= ContDiv + 1;
	  end if;
	end if;
	end process DivFrec;
	
Senal <= '1' when ContDiv < PulsoNecesario   else
         '0';

end Behavioral;
