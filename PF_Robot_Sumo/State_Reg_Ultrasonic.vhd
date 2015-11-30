----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:01:43 11/30/2015 
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
			in_state_duration : in integer;
			out_pres_state : out ultrasonic_state_values);
end State_Reg_Ultrasonic;

architecture Behavioral of State_Reg_Ultrasonic is
	-- Signals 
  signal micros_count : integer range 0 to MOTOR_TL_MICROS;

begin 

  	statereg: process (in_clk, in_rst, in_time_base)
	begin
		if (in_rst='1') then 
			out_pres_state <= StartPulse;
    elsif (rising_edge(in_clk) and in_time_base = '1') then
		if(in_state_duration = micros_count) then 
			out_pres_state <= in_next_state;
		else
			micros_count <= micros_count + 1;
      end if;
    end if;
  end process statereg;


end Behavioral;

