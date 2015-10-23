----------------------------------------------------------------------------------
-- Company: 			ITESM CQ	
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    17:57:06 10/19/2015 
-- Design Name: 
-- Module Name:    Universal_Shift_Register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		4 bit Bidirectional Universal Shift Register
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
			
entity Universal_Shift_Register is
    Port ( Clr : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           SerialL : in  STD_LOGIC;
           SerialR : in  STD_LOGIC;
           ParallelInput : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
end Universal_Shift_Register;

architecture Behavioral of Universal_Shift_Register is
	--Embedded signal 
	signal Reg : STD_LOGIC_VECTOR (3 downto 0);
	--frequency devider
	--Declaraciones de constantes 
	constant Fosc    : integer := 100000000;    --Frecuencia del oscilador de tabletas NEXYS 3
	constant Fdiv    : integer := 1;           --Frecuencia deseada del divisor
	constant CtaMax  : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
	--Declaracion de signals
	signal Cont      : integer range 0 to CtaMax;
	signal ClkOut : STD_LOGIC;

begin

--Proceso que Divide la Frecuencia de entrada para obtener una Frecuencia de 1 Hz
process (Clr, Clk)
begin
 if Clr = '1' then
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

shift_reg: process(Clk, Clr, ClkOut)
begin 
	if (Clr = '1') then
		Reg <= (others => '0');
	elsif (rising_edge(Clk) and ClkOut='1') then
		if S1 = '1' and S0 = '1' then
			Reg <= ParallelInput;
		elsif S1 = '0' and S0 = '1' then
			Reg <= SerialR & Reg(3 downto 1);
		elsif S1 = '1' and S0 = '0' then
			Reg <= Reg(2 downto 0) & SerialL;
		end if;
	end if;
end process shift_reg;

Output <= Reg;

end Behavioral;

