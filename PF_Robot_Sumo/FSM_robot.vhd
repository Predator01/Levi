----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:49 11/21/2015 
-- Design Name: 
-- Module Name:    FSM_robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision 1.1.0 - Main Robot Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity FSM_robot is
    port (
			in_pres_state : in robot_state_values;
			in_color_1 : in  STD_LOGIC;
			in_sonic_1 : in STD_LOGIC;
			out_next_state_fsmr : out robot_state_values);
end FSM_robot;

architecture Behavioral of FSM_robot is

begin
	
	fsm: process (in_pres_state, in_color_1, in_sonic_1)
	begin
		
    case in_pres_state is
      when ROBOT_DETECT => 
			out_next_state_fsmr <= ROBOT_FOWARD;
      when ROBOT_FOWARD => 
			if(in_color_1 = '1')then
				out_next_state_fsmr <= ROBOT_REVERSE;
			elsif(in_sonic_1 = '0')then -- no detect
				out_next_state_fsmr <= ROBOT_STOP;
			else
				out_next_state_fsmr <= ROBOT_FOWARD;
			end if;
		when ROBOT_REVERSE =>
			if(in_color_1 = '0') then
				out_next_state_fsmr <= ROBOT_STOP;
			else
				out_next_state_fsmr <= ROBOT_REVERSE;
			end if;
		when ROBOT_STOP =>
			out_next_state_fsmr <= ROBOT_DETECT;
      when others => 
			out_next_state_fsmr <= ROBOT_DETECT;
    end case; 
  end process fsm;
  
end Behavioral;

