----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:48:37 11/11/2015 
-- Design Name: 
-- Module Name:    Ultrasonic - Behavioral 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Ultrasonic is
    Port ( 
				Rst : in STD_LOGIC;
				Clk : in STD_LOGIC;
				Rx : in  STD_LOGIC;
				LEDS : out STD_LOGIC_VECTOR(7 downto 0);
				Tx : out  STD_LOGIC);
end Ultrasonic;

architecture Behavioral of Ultrasonic is
	type state_values is (STARTPULSE,WAITFORRECEIVE,ULTRASONICRESPONSE,WAITFORSTART);
	signal pres_state, next_state: state_values;
	signal control : STD_LOGIC_VECTOR(2 downto 0);
	constant Fosc : integer := 100000000;
	constant Fdiv : integer := 1_000_000; 
	constant CtaMax : integer := Fosc / Fdiv; 

	constant tStart : integer := 5;--microseconds
	constant tWaitForStart : integer := 1_000_000;

	signal Cont : integer range 0 to CtaMax;
	signal ClkOut : std_logic;
	signal seconds_current_state : integer range 0 to tWaitForStart;
	signal seconds_count : integer range 0 to tWaitForStart;
	signal tin_count : integer;
begin
	Freq_Divider: process (Rst, Clk)
	begin
	 if Rst = '1' then
		Cont <= 0;
	 elsif (rising_edge(Clk)) then
		if Cont = CtaMax then
		  Cont <= 0;
		  ClkOut <= '1';
		else		  
		  Cont <= Cont + 1;
		  ClkOut<= '0';
		end if;
	end if;
	end process Freq_Divider;
		
  fsm: process (pres_state)
  begin
    case pres_state is
      when STARTPULSE => 
			next_state <= WAITFORRECEIVE;
			seconds_current_state <= tStart;
      when WAITFORRECEIVE => 
			next_state <= ULTRASONICRESPONSE; 
			seconds_current_state <= 0;
      when ULTRASONICRESPONSE => 
			next_state <= WAITFORSTART; 
			seconds_current_state <= 0;
      when WAITFORSTART => 
			next_state <= STARTPULSE; 
			seconds_current_state <= tWaitForStart;
      when others => 
			next_state <= WAITFORRECEIVE;
			seconds_current_state <= tStart;
    end case; 
  end process fsm;
  
  	statereg: process (Clk, Rst, ClkOut)
	begin
	 if (Rst='1') then 
		pres_state <= STARTPULSE;
	 elsif (rising_edge(Clk) and ClkOut = '1') then
		if (pres_state = STARTPULSE or pres_state = WAITFORSTART) then			
			if(seconds_current_state = seconds_count) then 
				pres_state <= next_state;
			else
				seconds_count <= seconds_count + 1;
			end if;
		else
			if (pres_state = WAITFORRECEIVE and Rx = '1') then
				pres_state <= next_state;
				tin_count <= 0;
			elsif (pres_state = ULTRASONICRESPONSE and Rx = '0') then 
				pres_state <= next_state;
			else
				tin_count <= tin_count + 1;
			end if;
	 end if;
	end process statereg;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
  -- R A V 
		case pres_state is
			when STARTPULSE => Tx <= '1';
			when WAITFORRECEIVE => Tx <= '0';
			when ULTRASONICRESPONSE=> Tx <= '0';
			when WAITFORSTART => Tx <= '0';
			when others =>  Tx <= '1';
		end case;
  end process outputs;


end Behavioral;

