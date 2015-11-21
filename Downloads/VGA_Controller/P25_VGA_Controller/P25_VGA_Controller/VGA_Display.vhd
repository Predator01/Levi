----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:50 02/23/2010 
-- Design Name: 
-- Module Name:    VGA_Display - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA_Display is
    generic (MX_HS : NATURAL := 800;
		       MX_VS : NATURAL := 521);
    PORT(
         En     : IN   std_logic;
         Xin    : IN   NATURAL range 0 to MX_HS;
			Yin    : IN   NATURAL range 0 to MX_VS;
         R      : OUT  std_logic_vector(2 downto 0);
         G      : OUT  std_logic_vector(2 downto 0);
         B      : OUT  std_logic_vector(1 downto 0));
end VGA_Display;

architecture Behavioral of VGA_Display is
  signal Color : std_logic_vector(7 downto 0);
begin
  process(En, Xin, Yin, Color)
  begin
    if En = '1' then
	   if      Xin <  80 then Color <= "11100000";
		  elsif Xin < 160 then Color <= "00011100";
		  elsif Xin < 240 then Color <= "00000011";
		  elsif Xin < 320 then Color <= "10110110";
		  elsif Xin < 400 then Color <= "01001001";
		  elsif Xin < 480 then Color <= "11111100";
		  elsif Xin < 560 then Color <= "11100011";
		  else                 Color <= "00011111";
		end if;
		else                   Color <= "00000000";
	 end if;
	 
	 R <= Color(7 downto 5);
	 G <= Color(4 downto 2);
	 B <= Color(1 downto 0);
  end process;

end Behavioral;

