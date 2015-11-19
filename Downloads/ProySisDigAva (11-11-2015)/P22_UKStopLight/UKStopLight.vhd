----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Alam (formely Rick) 
-- 
-- Create Date:    11:42:22 11/04/2015 
-- Design Name: 
-- Module Name:    UKStopLight - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies:   Controlling a Stop Light; the kind found
--                 in the United Kingdom.
--                 Moore FSM will be used
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity UKStopLight is
    Port ( Clk        : in  STD_LOGIC;
           Rst        : in  STD_LOGIC;
           RedLight   : out  STD_LOGIC;
           AmberLight : out  STD_LOGIC;
           GreenLight : out  STD_LOGIC);
end UKStopLight;

architecture Behavioral of UKStopLight is
  -- State definition
  type state_values is (RED,REDAMBER,GREEN,AMBER);
  signal pres_state, next_state : state_values;
  -- Define the State duration times for the variable
  -- time duration FSM
  -- All times are expressed in seconds
  constant tRed      : integer := 20;
  constant tRedAmber : integer := 5;
  constant tGreen    : integer := 30;
  constant tAmber    : integer := 5;
  -- Define signals used by frequency divider
  constant Fosc     : integer := 100_000_000; --Frecuencia del oscilador de Nexys3 
  constant Fdiv     : integer := 1;           --Frecuencia deseada del divisor
  constant CtaMax   : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  signal   Cont     : integer range 0 to CtaMax;
  signal   TimeBase : STD_LOGIC;
  -- Define a second counter, used to determine how  much
  -- time has been spent in a State
  signal   SecondCount   : integer range 0 to tGreen;
  -- Define a signal that gives the amount of time
  -- to be spent in a State
  signal   StateDuration : integer range 0 to tGreen;
  
   
begin
  -- Generate a TimeBase of one second
  freqdiv: process (Rst, Clk)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if Cont = CtaMax then
        Cont     <= 0;
        TimeBase <= '1';
      else		  
	     Cont     <= Cont + 1;
		  TimeBase <= '0';
		end if;
	end if;
  end process freqdiv;  

  statereg : process(Clk,TimeBase,Rst)
  begin
    if Rst = '1' then
	   pres_state  <= RED;
		SecondCount <= 0;
	 elsif (rising_edge(Clk) and TimeBase = '1') then
	   if SecondCount = StateDuration-1 then
	     pres_state  <= next_state;
		  SecondCount <= 0;
		else
		  SecondCount <= SecondCount + 1;
		end if;
	 end if;
  end process statereg;
  
  fsm : process (pres_state)
  begin
    case (pres_state) is 
      when RED =>
         next_state    <= REDAMBER;
			StateDuration <= tRed; 
      when REDAMBER =>
         next_state    <= GREEN;
			StateDuration <= tRedAmber;
      when GREEN =>
         next_state    <= AMBER;
			StateDuration <= tGreen;
      when AMBER =>
         next_state    <= RED;
			StateDuration <= tAmber;
      when others =>
         next_state    <= RED;
			StateDuration <= tRed;
    end case;
  end process fsm;
  
  output : process (pres_state)
  begin
    case (pres_state) is 
      when RED =>
        RedLight <= '1'; AmberLight <= '0'; GreenLight <= '0';
      when REDAMBER =>
        RedLight <= '1'; AmberLight <= '1'; GreenLight <= '0';
      when GREEN =>
        RedLight <= '0'; AmberLight <= '0'; GreenLight <= '1';
      when AMBER =>
        RedLight <= '0'; AmberLight <= '1'; GreenLight <= '0';
      when others =>
        RedLight <= '1'; AmberLight <= '0'; GreenLight <= '0';
    end case;
  end process output;
end Behavioral;












