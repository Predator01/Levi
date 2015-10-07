----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    09:01:29 10/06/2015 
-- Design Name: 
-- Module Name:    Counter_0_to_19 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Simluating an ascending counter 0 to 19 
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

entity Counter_0_to_19 is
    Port ( Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(4 downto 0);
           Rst : in  STD_LOGIC);
end Counter_0_to_19;

architecture Behavioral of Counter_0_to_19 is
	-- embedded counter
	signal count : STD_LOGIC_VECTOR(4 downto 0);
begin

	--define the ascending counter
	--count will go from 0 to 19, the it will roll-over
	-- using signals
	counter_p : process(Clk, Rst, count)
	begin
		--asynchronous reset
		if (Rst = '1') then
			count <= (others => '0');
		elsif (rising_edge(Clk)) then
			-- check if the counter has reach its final value of 19
			if (count = "10011") then
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
		Q <= count;
		--Q <= not count;
	end process counter_p;
	
	--usign variables
	counter_p : process(Clk, Rst, count)
	begin
		--asynchronous reset
		if (Rst = '1') then
			count <= (others => '0');
		elsif (rising_edge(Clk)) then
			-- check if the counter has reach its final value of 19
			if (count = "10011") then
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
		Q <= count;
		--Q <= not count;
	end process counter_p;
	
end Behavioral;

