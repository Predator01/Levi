----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez
-- 
-- Create Date:    10:46:30 11/04/2015 
-- Design Name: 
-- Module Name:    ServoControl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		ServoControl
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

entity ServoControl is
    Port ( Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Servo : out  STD_LOGIC);
end ServoControl;

architecture Behavioral of ServoControl is
  type state_values is (HIGH, LOW);
  signal pres_state, next_state: state_values;
  signal control : STD_LOGIC_VECTOR(2 downto 0);
  constant Fosc : integer := 100_000_000;
  constant Fdiv : integer := 1_000_000; 
  constant CtaMax : integer := Fosc / Fdiv; 
  
  -- in microseconds
  constant th_micros : integer := 2000;
  constant tl_micros : integer := 19000;
  
  signal Cont : integer range 0 to CtaMax;
  signal ClkOut : std_logic;
  signal micros_current_state_duration : integer range 0 to tl_micros;
  signal micros_count : integer range 0 to tl_micros;
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
  
-- Proceso que describe el modulo "Current State Register"
  statereg: process (Clk, Rst, ClkOut)
  begin
    if (Rst='1') then 
      pres_state <= HIGH;
    elsif (rising_edge(Clk) and ClkOut = '1') then
		if(micros_current_state_duration = micros_count) then 
			pres_state <= next_state;
		else
			micros_count <= micros_count + 1;
      end if;
    end if;
  end process statereg;
  
	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
  
  fsm: process (pres_state)
  begin
    case pres_state is
      when HIGH => 
			next_state <= LOW;
			micros_current_state_duration <= th_micros;
      when LOW => 
			next_state <= HIGH; 
			micros_current_state_duration <= tl_micros;
      when others => 
			next_state <= LOW;
			micros_current_state_duration <= th_micros;
    end case; 
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
		case pres_state is
			when LOW => Servo <= '0';
			when others => Servo <= '1';
		end case;
--		Servo <= '1';
  end process outputs;

end Behavioral;

