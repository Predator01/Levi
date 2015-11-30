----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:51 11/24/2015 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

entity Top is
    Port ( Xin : in  STD_LOGIC_VECTOR (15 downto 0);
           Xout : out  STD_LOGIC_VECTOR (8 downto 0);
           Clk : in  STD_LOGIC;
           Rdy : out  STD_LOGIC);
end Top;

architecture Behavioral of Top is
	component Operation
	begin
	end component;
begin


end Behavioral;

