----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:40 11/30/2015 
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
			in_pres_state : in ultrasonic_state_values;
			in_rx : in STD_LOGIC;
			out_next_state: out ultrasonic_state_values;
			state_duration : out integer);
end FSM_Ultrasonic;

architecture Behavioral of FSM_Ultrasonic is
  -- All times are expressed in micro-seconds
  constant tStartPulse      : integer := 5;
  constant tWaitForNewStart : integer := 1_000_000;
begin

	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
  
    fsm : process (in_pres_state, in_rx)
  begin
    case (in_pres_state) is
      -- ST0
      when StartPulse =>
         out_next_state <= WaitForResponse;
			state_duration <= tStartPulse;
      -- ST1			
      when WaitForResponse =>
        if in_rx = '1' then 
          out_next_state <= UltraSonicResponse;
        else 
          out_next_state <= WaitForResponse;
        end if; 
			state_duration <= 1;
		-- ST2
      when UltraSonicResponse =>
        if in_rx = '0' then 
          out_next_state <= WaitForNewStart;
        else 
          out_next_state <= UltraSonicResponse;
        end if; 
			state_duration <= 1;
		-- ST3
      when WaitForNewStart =>
         out_next_state <= StartPulse;
			state_duration <= tWaitForNewStart;
      when others =>
         out_next_state <= WaitForResponse;
			state_duration <= tStartPulse; 
    end case;
  end process fsm;
  

end Behavioral;

