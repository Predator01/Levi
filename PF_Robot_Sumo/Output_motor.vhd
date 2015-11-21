----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:43:42 11/10/2015 
-- Design Name: 
-- Module Name:    Output_motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Output generated for the motor 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.0.0 - Motor Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity Output_motor is
	port (
		in_pres_state : in motor_state_values;
		out_motor : out STD_LOGIC);
end Output_motor;

architecture Behavioral of Output_motor is

begin
	-- Proceso que describe el bloque "Output Logic"
	outputs: process (in_pres_state)
	begin
		case in_pres_state is
			when MOTOR_LOW => out_motor <= '0';
			when others => out_motor <= '1';
		end case;
	end process outputs;


end Behavioral;

