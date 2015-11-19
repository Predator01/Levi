----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:12 10/28/2015 
-- Design Name: 
-- Module Name:    LED_Test - Behavioral 
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

entity LED_Test is
    Port ( Switch : in   STD_LOGIC;
           LED    : out  STD_LOGIC);
end LED_Test;

architecture Behavioral of LED_Test is

begin
  LED <= Switch;
end Behavioral;

