----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:33 11/30/2015 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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


entity Top is
    Port ( 
		in_Clk100MHz : in STD_LOGIC;
		in_Rst : in STD_LOGIC;
		in_Rx : in STD_LOGIC;
		out_Tx : out  STD_LOGIC;
		led : out STD_LOGIC
		);
		
	

end Top;
	
	
architecture Behavioral of Top is
	--Comp: U4 Line Detector
	Component Ultrasonic
		Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Rx : in STD_LOGIC;
           Tx : out  STD_LOGIC;
			  out_ultrasonic : out STD_LOGIC);
	end component;
	
	signal out_ultrasonic_1 : STD_LOGIC;
begin

	U4: Ultrasonic
		Port map (in_Clk100MHz,in_Rst, in_Rx,out_Tx, out_ultrasonic_1);
		
	process(out_ultrasonic_1)
	begin
		if(out_ultrasonic_1 ='1') then 
			led <= '1';
		else
			led <= '0';
		end if;
	end process;
end Behavioral;

