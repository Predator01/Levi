----------------------------------------------------------------------------------
-- Company:        ITESM - CQ
-- Engineer:       Me
-- 
-- Create Date:    09:01:11 10/06/2015 
-- Design Name: 
-- Module Name:    Counter0to19 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Simulating an ascending counter
--                 0 to 19
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

entity Counter0to19 is
    Port ( Clk : in   STD_LOGIC;
           Rst : in   STD_LOGIC;
           Q   : out  STD_LOGIC_VECTOR (4 downto 0));
end Counter0to19;

architecture Behavioral of Counter0to19 is
  -- Embedded Counter
  signal Count : STD_LOGIC_VECTOR (4 downto 0);
begin
   -- Define the ascending counter
	-- Counts will go from 0 to 19
	-- Using signals
	Counter: process(Rst,Clk,Count)
	begin
	  -- Asynchronous reset
	  if (Rst = '1') then
	    Count <= (others => '0');
	  elsif (rising_edge(Clk)) then
	    -- Check if the counter has reached its
		 -- final value of 19
		 if (Count = "10011") then
		   Count <= (others => '0');
		 else
	      Count <= Count + 1;
		 end if;
	  end if;
	  Q <= Count;
	end process Counter;
	
   -- Define the ascending counter
	-- Counts will go from 0 to 19
	-- Using variables
	Counter: process(Rst,Clk,Count)
	begin
	  -- Asynchronous reset
	  if (Rst = '1') then
	    Count <= (others => '0');
	  elsif (rising_edge(Clk)) then
	    -- Check if the counter has reached its
		 -- final value of 19
		 if (Count = "10011") then
		   Count <= (others => '0');
		 else
	      Count <= Count + 1;
		 end if;
	  end if;
	  Q <= Count;
	end process Counter;
	
end Behavioral;









