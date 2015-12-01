----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:07 11/30/2015 
-- Design Name: 
-- Module Name:    Motor - Behavioral 
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


entity Motor is
		Port ( 
			in_clk : in  STD_LOGIC;
			in_Rst : in  STD_LOGIC;
			in_Action_m : in   STD_LOGIC_VECTOR(1 downto 0);
			out_motor : out STD_LOGIC);
end Motor;

architecture Behavioral of Motor is
  -- State definition
  type state_values is (HIGH,LOW);
  signal pres_state, next_state : state_values;
  -- Define the State duration times for the variable
  -- time duration FSM
  -- All times are expressed in microseconds
  signal tH : integer := 1500;
  signal tL : integer := 18500;
  -- Define signals used by frequency divider
  constant Fosc     : integer := 100_000_000; --Frecuencia del oscilador de Nexys3 
  constant Fdiv     : integer := 1_000_000;   --Frecuencia deseada del divisor
  constant CtaMax   : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  signal   Cont     : integer range 0 to CtaMax;
  signal   TimeBase : STD_LOGIC;
  -- Define a second counter, used to determine how  much
  -- time has been spent in a State
  signal   SecondCount   : integer range 0 to 20_000;
  -- Define a signal that gives the amount of time
  -- to be spent in a State
  signal   StateDuration : integer range 0 to 20_000;
  
   
begin
  -- Generate a TimeBase of one second
  freqdiv: process (in_Rst,in_clk)
  begin
    if in_Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(in_clk)) then
	   if Cont = CtaMax then
        Cont     <= 0;
        TimeBase <= '1';
      else		  
	     Cont     <= Cont + 1;
		  TimeBase <= '0';
		end if;
	end if;
  end process freqdiv;  

  statereg : process(in_clk,TimeBase,in_Rst)
  begin
    if in_Rst = '1' then
	   pres_state  <= HIGH;
		SecondCount <= 0;
	 elsif (rising_edge(in_clk) and TimeBase = '1') then
	   if SecondCount = StateDuration-1 then
	     pres_state  <= next_state;
		  SecondCount <= 0;
		else
		  SecondCount <= SecondCount + 1;
		end if;
	 end if;
  end process statereg;
  
  cal: process (in_Action_m)
  begin
	-- 00 es adelante
	-- 01 es atras
	-- 10 es stop
		if(in_Action_m = "00") then 
			tH <=  1000;
			tL <= 19000;
		elsif(in_Action_m = "01") then 
			tH <=  2000;
			tL <= 18000;
		else -- 10 es stop
			tH <=  1500;
			tL <= 18500;
		end if;
  end process cal;
  
  fsm : process (pres_state, tH, tL)
  begin
    case (pres_state) is 
      when HIGH =>
         next_state    <= LOW;
			StateDuration <= tH; 
      when LOW =>
         next_state    <= HIGH;
			StateDuration <= tL;
      when others =>
         next_state    <= LOW;
			StateDuration <= tH;
    end case;
  end process fsm;
  
  output : process (pres_state)
  begin
    case (pres_state) is 
      when HIGH =>
        out_motor <= '1';
      when LOW =>
        out_motor <= '0';
      when others =>
         out_motor <= '1';    
		end case;
  end process output;


end Behavioral;

