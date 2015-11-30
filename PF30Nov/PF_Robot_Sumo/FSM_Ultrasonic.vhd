----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:15 11/22/2015 
-- Design Name: 
-- Module Name:    FSM_Ultrasonic - Behavioral 
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

entity FSM_Ultrasonic is
    port (
			in_pres_state : in utrasonic_state_values;
			in_tin : in integer;
			out_next_state: out ultrasonic_state_values;
			state_duration : out integer);
end FSM_Ultrasonic;

architecture Behavioral of FSM_Ultrasonic is

begin
	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
	-- 
  
  fsm: process (in_pres_state, in_tin)
  begin
    case in_pres_state is
      when ULTRASONIC_FAR => 
			out_next_state <= ULTRASONIC_CLOSE;
			state_duration <= in_tin;
      when ULTRASONIC_CLOSE => 
			out_next_state <= ULTRASONIC_FAR; 
			state_duration <= in_tin ;
      when others => 
			out_next_state <= ULTRASONIC_FAR;
			state_duration <= in_tin;
    end case; 
  end process fsm;

end Behavioral;