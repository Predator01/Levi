----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:43 11/21/2015 
-- Design Name: 
-- Module Name:    Line_Detection - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Main module of line Detection
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

entity Line_Detection is
    Port ( in_Rst : in  STD_LOGIC;
           in_Clk : in  STD_LOGIC;
			  in_time_base : in  STD_LOGIC;
           in_line_smld : in  STD_LOGIC;
           out_line : out  STD_LOGIC);
end Line_Detection;

architecture Behavioral of Line_Detection is
begin

Detecion: process (in_Clk, in_Rst, in_time_base)
begin
	if(in_Rst = '1') then 
		out_line <= '0';
	else
		if(rising_edge(in_Clk) and in_time_base = '1') then 
			if(in_line_smld = '1') then 
				out_line <= '1';
			elsif(in_line_smld = '0') then
				out_line <= '0';
			end if;
		end if;
	end if;
end process;


end Behavioral;

