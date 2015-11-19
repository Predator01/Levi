----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Rick
-- 
-- Create Date:    09:13:43 10/13/2015 
-- Design Name: 
-- Module Name:    Shift_Register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Implementation of an 8-bit Shift Register
--
-- Dependencies:   None
--
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Shift_Register is
    Port ( Clk : in   STD_LOGIC;
           Clr : in   STD_LOGIC;
           A   : in   STD_LOGIC;
           B   : in   STD_LOGIC;
           Q   : out  STD_LOGIC_VECTOR (0 to 7));
end Shift_Register;

architecture Behavioral of Shift_Register is
  -- Embedded signals used by the frequency divider
  --Declaraciones de constantes
  constant Fosc    : integer := 100000000;   --Frecuencia del oscilador de tabletas NEXYS 3
  constant Fdiv    : integer := 1;           --Frecuencia deseada del divisor
  constant CtaMax  : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  --Declaracion de signals
  signal Cont      : integer range 0 to CtaMax;
  signal ClkOut    : STD_LOGIC;
  -- Embedded signals
  signal Reg   : STD_LOGIC_VECTOR (0 to 7);
  signal AandB : STD_LOGIC;
  
begin
  
  -- Frequency division process
  --Proceso que Divide la Frecuencia de entrada para obtener una Frecuencia de 1 Hz
  process (Clr, Clk)
  begin
    if Clr = '0' then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if Cont = CtaMax then
        Cont <= 0;
        ClkOut <= '1';
      else		  
	     Cont <= Cont + 1;
		  ClkOut<= '0';
		end if;
	end if;
  end process;

  
  AandB <= A and B;
  
  -- Describe the Shift-Right Register
--  process(Clr,Clk,ClkOut)
--  begin
--    if (Clr = '0') then
--	   Reg <= (others => '0');
--	 elsif (rising_edge(Clk) and ClkOut = '1') then
--	   -- Method 1: Concatenation Method
--		Reg <= AandB & Reg(0 to 6);
--	 end if;
--  end process;
  
  -- Describe the Shift-Left Register
  process(Clr,Clk,ClkOut)
  begin
    if (Clr = '0') then
	   Reg <= (others => '0');
	 elsif (rising_edge(Clk) and ClkOut = '1') then
	   -- Method 1: Concatenation Method
		Reg <= Reg(1 to 7) & AandB;
	 end if;
  end process;
    
  Q <= Reg;

end Behavioral;




