----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    10:39:53 11/10/2015 
-- Design Name: 
-- Module Name:    Freq_Div - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Frequency divider
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.0.0 - Motor Implementation
-- Additional Comments: 
--
-- ### TODO ###  GENERIC =>> FDIV
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Freq_Div is
    Port ( in_rst : in  STD_LOGIC;
           in_clk : in  STD_LOGIC;
			  out_time_base : out STD_LOGIC);
end Freq_Div;

architecture Behavioral of Freq_Div is
	-- constants
	constant FOSC : integer := 100_000_000;
	constant FDIV : integer :=   1_000_000; --1_000_000
	constant CTAMAX : integer := FOSC / FDIV; 
	-- internal signals
	signal cont : integer range 0 to CTAMAX;
begin
	
	Freq_Divider: process (in_Rst, in_Clk)
	begin
		if in_rst = '1' then
			cont <= 0;
		elsif (rising_edge(in_clk)) then
			if cont = CTAMAX then
				cont <= 0;
				out_time_base <= '1';
			else		  
				cont <= cont + 1;
				out_time_base <= '0';
			end if;
		end if;
	end process Freq_Divider;
	
end Behavioral;

