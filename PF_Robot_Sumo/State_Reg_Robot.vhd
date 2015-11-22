----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    14:10:42 11/21/2015 
-- Design Name: 
-- Module Name:    State_Reg_Robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	 Robot State Register
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.1.0 - Main Robot Implementation
-- Revision 1.2.0 - Robot Behavior
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.PKG_ROBOT_SUMO.all;

entity State_Reg_Robot is
	 port (
			in_clk : in STD_LOGIC;
			in_time_base : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			in_next_state : in robot_state_values;
			out_pres_state : out robot_state_values);
end State_Reg_Robot;

architecture Behavioral of State_Reg_Robot is
	
begin
	statereg: process (in_clk, in_rst, in_time_base)
	begin
	 if (in_rst='1') then 
			out_pres_state <= ROBOT_DETECT;
    elsif (rising_edge(in_clk) and in_time_base = '1') then
			out_pres_state <= in_next_state;
    end if;
  end process statereg;
end Behavioral;

