----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:04 11/22/2015 
-- Design Name: 
-- Module Name:    State_Reg_Ultrasonic - Behavioral 
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

entity State_Reg_Ultrasonic is
    port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in ultrasonic_state_values;
			in_state_duration : in integer range 0 to ULTRASONIC_MAX;
			out_pres_state : out ultrasonic_state_values);
end State_Reg_Ultrasonic;

architecture Behavioral of State_Reg_Ultrasonic is 
  -- Signals 
  signal distance_count : integer range 0 to ULTRASONIC_CENTI;
  
begin

	-- Proceso que describe el modulo "Current State Register"
	statereg: process (in_clk, in_rst, in_time_base)
	begin
		if (in_rst='1') then 
			out_pres_state <= ULTRASONIC_HIGH;
    elsif (rising_edge(in_clk) and in_time_base = '1') then
		if(in_state_duration = distance_count) then 
			out_pres_state <= in_next_state;
		else
			distance_count <= distance_count + 1;
      end if;
    end if;
  end process statereg;
  
end Behavioral;