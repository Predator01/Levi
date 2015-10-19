----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:22 10/15/2015 
-- Design Name: 
-- Module Name:    Cont0a3 - Behavioral 
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

entity Cont0a3 is
port (
		Enable : in STD_LOGIC;
		Rst : in STD_LOGIC;
		Clk : in STD_LOGIC;
		Cuenta : out STD_LOGIC_VECTOR(1 downto 0));
end Cont0a3;
	
architecture Behavioral of Cont0a3 is
	constant LIMIT : integer := 3;
	signal Cont : integer range 0 to LIMIT;
begin

process (Rst,Clk,Cont)
  begin
    if (Rst = '1') then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
		if (Enable = '1') then
		  if Cont = LIMIT then
		    Cont <= 0;
		  else
		    Cont <= Cont + 1;
		  end if;
		end if;
    end if;
	Cuenta <= conv_std_logic_vector(Cont,2);	  
end process;

end Behavioral;

