----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:37 10/30/2015 
-- Design Name: 
-- Module Name:    Mustang_Tail_Lights_Controller - Behavioral 
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

entity Mustang_Tail_Lights_Controller is
    Port ( TurnLeft : in  STD_LOGIC;
           TurnRight : in  STD_LOGIC;
           Haz : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           L : out  STD_LOGIC_VECTOR (2 downto 0);
           R : out  STD_LOGIC_VECTOR (0 to 2));
end Mustang_Tail_Lights_Controller;

architecture Behavioral of Mustang_Tail_Lights_Controller is
  --Codificar estados en combinaciones binarias 
  type state_values is (OFF,HAZARD,LEFT1,LEFT2,LEFT3,RIGHT1,RIGHT2,RIGHT3);
  signal pres_state, next_state: state_values;
  -- senial embebida para agrupar todas las seniales
  signal control : STD_LOGIC_VECTOR(2 downto 0);
begin
-- Proceso que describe el modulo "Current State Register"
  statereg: process (Clk,Rst)
  begin
    if (Rst='0') then 
      pres_state <= OFF;
    elsif (rising_edge(Clk)) then
      pres_state <= next_state;
    end if;
  end process statereg;
  
	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
  control <= TurnLeft & TurnRight & Haz;
  fsm: process (pres_state, control)
  begin
    case pres_state is
    
      when OFF => 
        case control is
          when "000" => next_state <= OFF;
          when "110" => next_state <= OFF;
          when "100" => next_state <= LEFT1;
          when "010" => next_state <= RIGHT1;
          when others => next_state <= HAZARD;
        end case;
        
      when HAZARD =>
        case control is
          when others => next_state <= OFF;
        end case;
        
      when LEFT1 =>
        case control is
          when others => next_state <= LEFT2;
        end case;

      when LEFT2 =>
        case control is
          when others => next_state <= LEFT3;
        end case;   

      when LEFT3 =>
        case control is
          when others => next_state <= OFF;
        end case;
		
		when RIGHT1 =>
        case control is
          when others => next_state <= RIGHT2;
        end case;

      when RIGHT2 =>
        case control is
          when others => next_state <= RIGHT3;
        end case;   

      when RIGHT3 =>
        case control is
          when others => next_state <= OFF;
        end case;
        
      --when others => next_state <= ST0;
    end case;
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
		VARIABLE data_out : STD_LOGIC_VECTOR(5 downto 0);
  begin
		case pres_state is
			when OFF => data_out:= "000000";
			when HAZARD => data_out:= "111111";
			when LEFT1 => data_out:= "001000";
			when LEFT2 => data_out:= "011000";
			when LEFT3 => data_out:= "111000";
			when RIGHT1 => data_out:= "000100"; 
			when RIGHT2 => data_out:= "000110"; 
			when RIGHT3 => data_out:= "000111";
			when others => null;
		end case;
		L <= data_out(5 downto 3);
      R <= data_out(2 downto 0);
  end process outputs;
  
end Behavioral;

