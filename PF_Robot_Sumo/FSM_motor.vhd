----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:37:33 11/21/2015 
-- Design Name: 
-- Module Name:    FSM_motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Finite State Machine for Motor
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

entity FSM_motor is
    port (
			in_pres_state : in motor_state_values;
			in_th : in integer;
			in_tl : in integer;
			out_next_state: out motor_state_values;
			state_duration : out integer);
end FSM_motor;

architecture Behavioral of FSM_motor is

begin
	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
  
  fsm: process (in_pres_state, in_th, in_tl)
  begin
    case in_pres_state is
      when MOTOR_HIGH => 
			out_next_state <= MOTOR_LOW;
			state_duration <= in_th;
      when MOTOR_LOW => 
			out_next_state <= MOTOR_HIGH; 
			state_duration <= in_tl ;
      when others => 
			out_next_state <= MOTOR_LOW;
			state_duration <= in_th;
    end case; 
  end process fsm;

end Behavioral;

