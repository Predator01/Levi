----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    11:50:14 11/30/2015 
-- Design Name: 
-- Module Name:    Ultrasonic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 			Top of ultrasonic
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

entity Ultrasonic is
    Port ( Clk        : in  STD_LOGIC;
           Rst        : in  STD_LOGIC;
			  Rx : in STD_LOGIC;
           Tx         : out  STD_LOGIC;
			  out_ultrasonic : out STD_LOGIC);
end Ultrasonic;

architecture Behavioral of Ultrasonic is
  -- State definition
  type state_values is (StartPulse,WaitForResponse,UltrasonicResponse,WaitForNewStart);
  signal pres_state, next_state : state_values;
  -- Define the State duration times for the variable time duration FSM
  -- All times are expressed in micro-seconds
  constant tStartPulse      : integer := 5;
  constant tWaitForNewStart : integer := 1_000_000;
  -- Define signals used by frequency divider
  constant Fosc     : integer := 100_000_000; --Frecuencia del oscilador de Nexys3 
  constant Fdiv     : integer :=   1_000_000; --Frecuencia deseada del divisor
  constant CtaMax   : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  signal   Cont     : integer range 0 to CtaMax;
  signal   TimeBase : STD_LOGIC;
  -- Define a second counter, used to determine how  much
  -- time has been spent in a State
  signal   SecondCount   : integer range 0 to tWaitForNewStart;
  -- Define a signal that gives the amount of time
  -- to be spent in a State
  signal   StateDuration : integer range 0 to tWaitForNewStart;
  -- signals to obtain distance, duration response of the ultrasonic sensor and then convert into distance
  signal tIN : integer range 0 to 20_000; -- should be 18500 but we are givin some room
  signal Measurement: integer range 0 to 300; -- centimeters
  
begin
--Regla calcular distancia
-- x = tin * 300 / 18500
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
	
	-- measurement equations
	Measurement <= (tIN * 300) / 18500;
	--process that count to obtain T_in
	tIn_Counter: process(Clk, TimeBase, tIN, Rst)
	begin
		if(rising_edge(Clk) and TimeBase = '1') then 
			if(pres_state = WaitForResponse) then 
				tIN <= 0;
			elsif (pres_state = UltrasonicResponse) then 
				tIN <= tIN + 1;
			elsif (pres_state = WaitForNewStart) then 
				
			end if;
		
		end if;
	end process tIn_Counter;
	
  statereg : process(Clk,TimeBase,Rst)
  begin
    if Rst = '1' then
	   pres_state  <= StartPulse;
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
  
  fsm : process (pres_state, Rx)
  begin
    case (pres_state) is
      -- ST0
      when StartPulse =>
         next_state    <= WaitForResponse;
			StateDuration <= tStartPulse;
      -- ST1			
      when WaitForResponse =>
        if Rx = '1' then 
          next_state    <= UltraSonicResponse;
        else 
          next_state    <= WaitForResponse;
        end if; 
			StateDuration <= 1;
		-- ST2
      when UltraSonicResponse =>
        if Rx = '0' then 
          next_state    <= WaitForNewStart;
        else 
          next_state    <= UltraSonicResponse;
        end if; 
			StateDuration <= 1;
		-- ST3
      when WaitForNewStart =>
         next_state    <= StartPulse;
			StateDuration <= tWaitForNewStart;
      when others =>
         next_state    <= WaitForResponse;
			StateDuration <= tStartPulse; 
    end case;
  end process fsm;
  
  output : process (pres_state,Measurement)
  begin
    case (pres_state) is 
      when StartPulse         => Tx <= '1';
      when WaitForResponse    => Tx <= '0';
      when UltraSonicResponse => Tx <= '0';
      when WaitForNewStart    => Tx <= '0';
      when others             => Tx <= '1';
    end case;
	 if(Measurement < 30) then -- si existe algo cercano a 30 cm
		out_ultrasonic <= '1'; -- enemy
	 else
		out_ultrasonic <= '0'; -- no detect
	 end if;
  end process output;
end Behavioral;














