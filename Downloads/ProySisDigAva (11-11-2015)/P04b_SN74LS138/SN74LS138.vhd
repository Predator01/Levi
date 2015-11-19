----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer: 
-- 
-- Create Date:    11:15:42 09/02/2015 
-- Design Name: 
-- Module Name:    SN74LS138 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implmentation of a TTL
--              74LS138 Decoder Chip
-- Dependencies:  
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SN74LS138 is
    Port ( -- Select Lines
	        C   : in  STD_LOGIC;
           B   : in  STD_LOGIC;
           A   : in  STD_LOGIC;
			  -- Enable Lines
           G2A : in  STD_LOGIC;
           G2B : in  STD_LOGIC;
           G1  : in  STD_LOGIC;
			  -- Output Lines
           Y   : out STD_LOGIC_VECTOR (0 to 7));
end SN74LS138;

architecture Behavioral of SN74LS138 is
  -- Embedded signals declaration
  signal G2  : STD_LOGIC;
  signal Sel : STD_LOGIC_VECTOR (2 downto 0);
  signal Aux : STD_LOGIC_VECTOR (7 downto 0);
begin
  -- Group G2A and G2B to make G2 according to the
  -- Data Sheet
  G2  <= G2A or G2B;
  -- Group Select line C,B and A for simpler handling
  Sel <= C & B & A;
  
  Decoder: process(Sel)
  begin                    --YYYYYYYY
    case (Sel) is          --01234567      
      when "000"  => Aux <= "01111111";
      when "001"  => Aux <= "10111111";
      when "010"  => Aux <= "11011111";
      when "011"  => Aux <= "11101111";
      when "100"  => Aux <= "11110111";
      when "101"  => Aux <= "11111011";
      when "110"  => Aux <= "11111101";
      when others => Aux <= "11111110";
   end case;
  end process Decoder;
  
  Y <= Aux when (G1 = '1' and G2 = '0') else
       "11111111";
       
end Behavioral;

