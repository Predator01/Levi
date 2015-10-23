----------------------------------------------------------------------------------
-- Company: 				ITESM CQ
-- Engineer: 				Miguel Gonzalez A0123712
-- 
-- Create Date:    09:13:49 10/13/2015 
-- Design Name: 
-- Module Name:    Shift_Register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Implementation of a 8 bit shift register
--
-- Dependencies: None
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

entity Shift_Register is
    Port ( Clk : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (0 to 7));
end Shift_Register;

architecture Behavioral of Shift_Register is
	--Embedded signal 
	--signal Reg : BIT_VECTOR (0 to 7);
	signal Reg : STD_LOGIC_VECTOR (0 to 7);
	signal AnB : STD_LOGIC;
	
	--frequency devider
  --Declaraciones de constantes 
  constant Fosc    : integer := 100000000;    --Frecuencia del oscilador de tabletas NEXYS 3
  constant Fdiv    : integer := 1;           --Frecuencia deseada del divisor
  constant CtaMax  : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  --Declaracion de signals
  signal Cont      : integer range 0 to CtaMax;
	signal ClkOut : STD_LOGIC;
	signal ret : STD_LOGIC;
begin
	
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
  
  
	-- Describe the shift-right register
	AnB <= A and B;
	shift_reg: process(Clk, Clr, ClkOut)
	begin 
		if (Clr = '0') then
			Reg <= (others => '0');
		elsif (rising_edge(Clk) and ClkOut='1') then
			Reg <= (AnB & Reg(0 to 6));
			
		end if;
	end process shift_reg;
	Q <= Reg;
	
	-- Describe the shift-left register
--	AnB <= A and B;
--	shift_reg: process(Clk, Clr, ClkOut)
--	begin 
--		if (Clr = '0') then
--			Reg <= (others => '0');
--		elsif (rising_edge(Clk) and ClkOut='1') then
--			Reg <= (Reg(1 to 7) & AnB);
--			
--		end if;
--	end process shift_reg;
--	Q <= Reg;
	
	-- Describe the shift-left-rigth register
--
--	shift_reg: process(Clk, Clr, ClkOut, ret)
--	begin 
--		if (Clr = '0') then
--			Reg <= (others => '0');
--			Reg(0) <= '1';
--			ret <= '0';
--		elsif (rising_edge(Clk) and ClkOut='1') then
--			if ret = '1' then
--				Reg <= (Reg(1 to 7) & '0');
--				--Reg <= Reg sll 1;
--			else
--				Reg <= ('0' & Reg(0 to 6));
--				--Reg <= Reg srl 1;
--			end if;
--			if Reg = "00000010" then
--				ret <= '1';
--			end if;
--			if Reg = "01000000" then
--				ret <= '0';
--			end if;
--		end if;
--	end process shift_reg;
--	--Q <= To_StdLogicVector(Reg);
--	Q<= Reg;
end Behavioral;

