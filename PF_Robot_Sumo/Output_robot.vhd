----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    17:00:57 11/21/2015 
-- Design Name: 
-- Module Name:    Output_robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Output for robot
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

entity Output_robot is
		port (
			in_pres_state : in robot_state_values;
			out_action_1_ro : out STD_LOGIC_VECTOR(1 downto 0);
			out_action_2_ro : out STD_LOGIC_VECTOR(1 downto 0));
end Output_robot;

architecture Behavioral of Output_robot is

begin
	-- Proceso que describe el bloque "Output Logic"
	outputs: process (in_pres_state)
	begin
		case in_pres_state is
			when ROBOT_DETECT => 
				out_action_1_ro <= "00"; -- 00 es adelante
				out_action_2_ro <= "01"; -- 01 es atras
 			when ROBOT_FOWARD => 	    -- 10 es stop
				out_action_1_ro <= "00";
				out_action_2_ro <= "00";
			when ROBOT_REVERSE => 
				out_action_1_ro <= "01";
				out_action_2_ro <= "01";
			when ROBOT_STOP => 
				out_action_1_ro <= "10";
				out_action_2_ro <= "10";
			when others => 
				out_action_1_ro <= "11";
				out_action_2_ro <= "11";
		end case;
	end process outputs;


end Behavioral;

