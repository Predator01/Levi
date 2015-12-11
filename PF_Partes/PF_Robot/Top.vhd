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
--		switch_1 : in STD_LOGIC;
--		switch_2 : in STD_LOGIC;
		out_motor_1 : out STD_LOGIC;
		out_motor_2 : out STD_LOGIC;
		in_line : in STD_LOGIC;
		
		in_Rx : in STD_LOGIC;
		out_Tx : out  STD_LOGIC;
		led : out STD_LOGIC
		);
end Top;
	
	
architecture Behavioral of Top is
	-- Comp : U1 Motor module
	component Motor
		Port ( 
			in_Clk : in  STD_LOGIC;
			in_Rst : in  STD_LOGIC;
			in_Action_m : in   STD_LOGIC_VECTOR(1 downto 0);
			out_motor : out STD_LOGIC);
	end component;
	
--	signal input_sw : STD_LOGIC_VECTOR(1 downto 0);
	signal motor_1 : STD_LOGIC;
	signal motor_2 : STD_LOGIC;
	--Comp: U3 Line Detector
	Component Ultrasonic
		Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Rx : in STD_LOGIC;
           Tx : out  STD_LOGIC;
			  out_ultrasonic : out STD_LOGIC);
	end component;
	
	--Comp: U2 Robot
	Component Robot
		Port ( 
			in_sonic_1 : in STD_LOGIC;
			-- 0 no detecta # 1 detecta oponente enfrente
			in_color_1 : in  STD_LOGIC; 
			-- 0 negro normal # 1 blanco reversa
			in_clk : in STD_LOGIC;
			in_rst : in STD_LOGIC;
			out_action_1_r : out STD_LOGIC_VECTOR(1 downto 0);
			out_action_2_r : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	
	signal out_ultrasonic_1 : STD_LOGIC;
	signal action_1 : STD_LOGIC_VECTOR(1 downto 0);
	signal action_2 : STD_LOGIC_VECTOR(1 downto 0);
	
begin
	
	U1: Ultrasonic
		Port map (in_Clk100MHz,in_Rst, in_Rx, out_Tx, out_ultrasonic_1);
		
	process(out_ultrasonic_1)
	begin
		if(out_ultrasonic_1 ='1') then 
			led <= '1';
		else
			led <= '0';
		end if;
	end process;
	
	
	U2: Robot 
		port map (
			out_ultrasonic_1,
			in_line,
			in_Clk100MHz,
			in_rst,
			action_1,
			action_2);
			
--	input_sw <= switch_1 & switch_2; -- los switches son para enviarle la senial del estado 
-- 00 es adelante
-- 01 es atras
-- 10 es stop
	U2_1: Motor
		Port map (in_Clk100MHz,in_Rst,action_1,motor_1);
		
	U2_2: Motor
		Port map (in_Clk100MHz,in_Rst,action_2,motor_2);
		
	out_motor_1 <= motor_1;
	out_motor_2 <= motor_2;
end Behavioral;

