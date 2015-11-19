----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Rick
-- 
-- Create Date:    09:30:45 10/30/2015 
-- Design Name: 
-- Module Name:    Mustang_Tail_Lights_Controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Using a Moore Finite State Machine (FSM) to
--                 control the sequential light pattern for the
--                 tail lights of a Ford Mustang 2014.
--                 Only the Hazard, Left Turn and Right Turn
--                 are considered.
-- Dependencies: 
--
-- Revision:       v1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mustang_Tail_Lights_Controller is
    Port ( TurnLeft  : in   STD_LOGIC;
           TurnRight : in   STD_LOGIC;
           Haz       : in   STD_LOGIC;
           Clk       : in   STD_LOGIC;
           Rst       : in   STD_LOGIC;
           L         : out  STD_LOGIC_VECTOR (2 downto 0);
           R         : out  STD_LOGIC_VECTOR (0     to 2));
end Mustang_Tail_Lights_Controller;

architecture Behavioral of Mustang_Tail_Lights_Controller is
  --Codificar estados en combinaciones binarias 
  type state_values is (OFF,HAZARD,LEFT1,LEFT2,LEFT3,RIGHT1,RIGHT2,RIGHT3);
  signal pres_state, next_state: state_values;
  --Señal embebida para agrupar todas las sañales de
  --entrada en una sola
  signal Control : STD_LOGIC_VECTOR(2 downto 0);
  
  --Señales embebidas usadas por el divisor de frecuencia
  constant Fosc   : integer := 100_000_000; --Frecuencia del oscilador de Nexys3 
  constant Fdiv   : integer := 1;           --Frecuencia deseada del divisor
  constant CtaMax : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  signal   Cont   : integer range 0 to CtaMax;
  signal   ClkOut : STD_LOGIC;

begin

  -- Proceso que divide la frecuencia
  freqdiv: process (Rst, Clk)
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
  end process freqdiv;

--Definicion de una maquina de Moore
-- Proceso que describe el modulo "Current State Register"
  statereg: process (Clk,Rst,ClkOut)
  begin
    if (Rst='1') then 
      pres_state <= OFF;
    elsif (rising_edge(Clk) and ClkOut = '1') then
      pres_state <= next_state;
    end if;
  end process statereg;
  
-- Proceso que describe el modulo "Next State Logic"
  -- Agrupar las señales de entrada
  Control <= TurnLeft & TurnRight & Haz;
  fsm: process (pres_state, Control)
  begin
    case pres_state is
    
      when OFF => 
        case Control is
          when "000"  => next_state <= OFF;
          when "110"  => next_state <= OFF;
          when "100"  => next_state <= LEFT1;
          when "010"  => next_state <= RIGHT1;
          when others => next_state <= HAZARD;
        end case;
        
      when HAZARD => next_state <= OFF;
		when LEFT1  => next_state <= LEFT2;
		when LEFT2  => next_state <= LEFT3;
		when LEFT3  => next_state <= OFF;
		when RIGHT1 => next_state <= RIGHT2;
		when RIGHT2 => next_state <= RIGHT3;
		when RIGHT3 => next_state <= OFF; 
      when others => next_state <= OFF;
    end case;
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
    case pres_state is
      
      when OFF    => L <= "000"; R <= "000"; 	
      when HAZARD => L <= "111"; R <= "111";
      when LEFT1  => L <= "001"; R <= "000";
      when LEFT2  => L <= "011"; R <= "000";
      when LEFT3  => L <= "111"; R <= "000";
      when RIGHT1 => L <= "000"; R <= "100"; 
      when RIGHT2 => L <= "000"; R <= "110"; 
      when RIGHT3 => L <= "000"; R <= "111"; 		
     
     when others =>  L <= "000"; R <= "000";
   end case;
 end process outputs;

end Behavioral;

