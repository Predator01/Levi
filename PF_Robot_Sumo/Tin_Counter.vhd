----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:25 11/30/2015 
-- Design Name: 
-- Module Name:    Tin_Counter - Behavioral 
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

library work;
use work.PKG_ROBOT_SUMO.all;

entity Tin_Counter is
		port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_pres_state : in ultrasonic_state_values;
			out_measurement : out integer := 0);
end Tin_Counter;

architecture Behavioral of Tin_Counter is
	signal Measurement: integer := 0; -- centimeters
	signal tIN : integer range 0 to 20_000; -- should be 18500 but we are givin some room
begin

--Regla calcular distancia
-- x = tin * 300 / 18500
  -- Generate a TimeBase of one second
	-- measurement equations
	Measurement <= (tIN * 300) / 18500;
	out_measurement <= Measurement;
	--process that count to obtain T_in
	tIn_Counter: process(in_clk, in_time_base, tIN)
	begin
		if(rising_edge(in_clk) and in_time_base = '1') then 
			if(in_pres_state = WaitForResponse) then 
				tIN <= 0;
			elsif (in_pres_state = UltrasonicResponse) then 
				tIN <= tIN + 1;
			elsif (in_pres_state = WaitForNewStart) then 
				
			end if;
		
		end if;
	end process tIn_Counter;
	

end Behavioral;

