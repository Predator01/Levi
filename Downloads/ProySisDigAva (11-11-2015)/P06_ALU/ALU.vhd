----------------------------------------------------------------------------------
-- Company:        ITESM (40th)
-- Engineer:       Rick
-- 
-- Create Date:    09:10:23 09/04/2015 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 6
-- Tool versions:  14.7
-- Description:    Implementation of a Arithmetic
--                 Logic Unit (Pedroni's book page 76)
-- Dependencies:   None
-- 
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: Divide and Conquer using
--                      KISS principle
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ALU is
    Port ( a   : in  STD_LOGIC_VECTOR (7 downto 0);
           b   : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (3 downto 0);
           y   : out STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
  -- Embedded signals
  -- Result from Logic Unit
  signal Res_LU : STD_LOGIC_VECTOR (7 downto 0);
  -- Result from Arithmetic Unit
  signal Res_AU : STD_LOGIC_VECTOR (7 downto 0);

begin
  ArithmeticUnit: process(sel,a,b,cin)
  begin
    case (sel(2 downto 0)) is 
      when "000"  => Res_AU <= a;
      when "001"  => Res_AU <= a + 1;
      when "010"  => Res_AU <= a - 1;
      when "011"  => Res_AU <= b;
      when "100"  => Res_AU <= b + 1;
      when "101"  => Res_AU <= b - 1;
      when "110"  => Res_AU <= a + b;
      when others => Res_AU <= a + b + cin;
    end case;
  end process ArithmeticUnit;
  
  LogicUnit: process(sel,a,b)
  begin
    case (sel(2 downto 0)) is 
      when "000"  => Res_LU <=    not a;
      when "001"  => Res_LU <=    not b;
      when "010"  => Res_LU <= a  and b;
      when "011"  => Res_LU <= a   or b;
      when "100"  => Res_LU <= a nand b;
      when "101"  => Res_LU <= a  nor b;
      when "110"  => Res_LU <= a  xor b;
      when others => Res_LU <= a xnor b;
    end case;
  end process LogicUnit;
  
  -- Multiplexor
  y <= Res_AU when sel(3) = '0' else
       Res_LU;


end Behavioral;

