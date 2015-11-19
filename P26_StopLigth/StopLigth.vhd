----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez
-- 
-- Create Date:    10:46:30 11/04/2015 
-- Design Name: 
-- Module Name:    StopLigth - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		English Stop Ligth
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

			

entity StopLigth is
    Port ( Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Ligths : out  STD_LOGIC_VECTOR (2 downto 0));
end StopLigth;

architecture Behavioral of StopLigth is
  type state_values is (R,A,G,O);
  signal pres_state, next_state: state_values;
  signal control : STD_LOGIC_VECTOR(2 downto 0);
  constant Fosc : integer := 100000000;
  constant Fdiv : integer := 10; 
  constant CtaMax : integer := Fosc / Fdiv; 
  
  constant tRed : integer := 20;
  constant tAmbar : integer := 5;
  constant tGreen : integer := 30;
  constant tOrange : integer := 5;
  
  signal Cont : integer range 0 to CtaMax;
  signal ClkOut : std_logic;
  signal seconds_current_state : integer range 0 to tGreen;
  signal seconds_count : integer range 0 to tGreen;
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
      pres_state <= R;
    elsif (rising_edge(Clk) and ClkOut = '1') then
		if(seconds_current_state = seconds_count) then 
			pres_state <= next_state;
		else
			seconds_count <= seconds_count + 1;
      end if;
    end if;
  end process statereg;
  
	-- Proceso que describe el modulo "Next State Logic"
	--agrupar las seniales de entrada
  
  fsm: process (pres_state)
  begin
    case pres_state is
      when R => 
			next_state <= O;
			seconds_current_state <= tRed;
      when O => 
			next_state <= G; 
			seconds_current_state <= tAmbar;
      when G => 
			next_state <= A; 
			seconds_current_state <= tGreen;
      when A => 
			next_state <= R; 
			seconds_current_state <= tOrange;
      when others => 
			next_state <= R;
			seconds_current_state <= tRed;
    end case; 
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
  -- R A V 
		case pres_state is
			when R => Ligths <= "100";
			when A => Ligths <= "010";
			when G => Ligths <= "001";
			when O => Ligths <= "110";
			when others => Ligths <= "100";
		end case;
  end process outputs;

end Behavioral;

