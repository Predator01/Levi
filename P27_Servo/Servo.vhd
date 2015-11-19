----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez
-- 
-- Create Date:    17:00:15 11/05/2015 
-- Design Name: 
-- Module Name:    Servo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:  		Controlling a Servo
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;

entity Servo is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Input : in  STD_LOGIC_VECTOR (7 downto 0);
           StreamOut : out  STD_LOGIC);
end Servo;

architecture Behavioral of Servo is
	type state_values is (One, Zero);
	signal pres_state, next_state: state_values;
	signal control : STD_LOGIC;
	--constant Fosc : integer := 100000000; --tens nanoseconds
	--constant Fdiv : integer := 10; 
	--constant CtaMax : integer := Fosc / Fdiv; 
	signal counter : integer;
	constant time_period : integer := 2000000;
	constant delta_time_one : integer := 390;
	constant base_time_one : integer := 100000;
	--signal Cont : integer range 0 to CtaMax;
	--signal ClkOut : std_logic;
	signal tenms_current_state : integer;
	signal tenms_count : integer;
	signal aux : integer;
begin

	fsm: process (pres_state, aux, Input)
	begin
		aux <= base_time_one + (delta_time_one * CONV_INTEGER(Input));
		case pres_state is
			when One => 
				next_state <= One; 
				tenms_current_state <= aux;
			when others => 
				next_state <= Zero;
				tenms_current_state <= time_period - aux;
		end case; 
	end process fsm;


	statereg: process (Clk, Rst)
	begin
		if (Rst='1') then 
			pres_state <= Zero;
		elsif (rising_edge(Clk)) then
			if(tenms_current_state = tenms_count) then 
				pres_state <= next_state;
			else
				tenms_count <= tenms_count + 1;
			end if;
		end if;
	end process statereg;

	outputs: process (pres_state)
	begin
		case pres_state is
			when One => StreamOut <= '1';
			when others => StreamOut <= '0';
		end case;
	end process outputs;
end Behavioral;