----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:49 12/01/2013 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
    Port ( Clk   : in  STD_LOGIC;
           Rst   : in  STD_LOGIC;
           Led   : out  STD_LOGIC_VECTOR (7 downto 0));
end Counter;

architecture Behavioral of Counter is
  -- Constant definition
  -- Oscillator frequency of a Opal Kelly board
  constant BoardFreq : natural := 100000000;
  constant MaxCount  : natural := BoardFreq / 2;
  
  -- Counter used for frequency division
  signal Freq_Counter : natural range 0 to (MaxCount-1);
  
  -- Embedded Signals
  signal Clk_En       : std_logic;
  signal Counter      : std_logic_vector(7 downto 0);
  
begin
  -- The hardware description will include 3 modules
  -- Module 1 is used to derive a clock from
  -- a 100 MHz clock provided by the FPGA board (Nexys3).
  Freq_Div: process(Rst,Clk)
  begin
    if Rst = '0' then
	   Freq_Counter <= 0;
	 elsif rising_edge(Clk) then
	   if (Freq_Counter = MaxCount - 1) then
		  Freq_Counter <= 0;
		  Clk_En       <= '1';
      else
        Freq_Counter <= Freq_Counter + 1;
		  Clk_En       <= '0';
      end if;
    end if;		
  end process Freq_Div;

  Binary_Counter: process(Rst,Clk,Clk_En)
  begin
    if Rst = '0' then
	   Counter <= (others => '0');
    elsif (rising_edge(Clk) and Clk_En = '1') then
	   Counter <= Counter + 1;
	 end if;
  end process Binary_Counter;
  
  Led <= not Counter;
  
end Behavioral;

