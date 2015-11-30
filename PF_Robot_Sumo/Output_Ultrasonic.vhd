----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:41 11/30/2015 
-- Design Name: 
-- Module Name:    Output_Ultrasonic - Behavioral 
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

entity Output_Ultrasonic is
	port (
			in_pres_state : in ultrasonic_state_values;
			in_measurement : in integer;
			out_ultrasonic : out STD_LOGIC;
			out_tx : out STD_LOGIC);
end Output_Ultrasonic;

architecture Behavioral of Output_Ultrasonic is

begin

  output : process (in_pres_state, in_measurement)
  begin
    case (in_pres_state) is 
      when StartPulse         => out_tx <= '1';
      when WaitForResponse    => out_tx <= '0';
      when UltraSonicResponse => out_tx <= '0';
      when WaitForNewStart    => out_tx <= '0';
      when others             => out_tx <= '1';
    end case;
	 if(in_measurement < 30) then
		out_ultrasonic <= '1'; -- enemy
	 else
		out_ultrasonic <= '0'; -- no detect
	 end if;
  end process output;

end Behavioral;

