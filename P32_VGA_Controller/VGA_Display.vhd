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
		       MX_VS : NATURAL := 521;
				 SEED : STD_LOGIC_VECTOR(30 downto 0):= (others => '0');
                 OUT_WIDTH : integer := 11);
    PORT(
         En     : IN   std_logic;
			Rst    : in   STD_LOGIC;
			Clk    : in   STD_LOGIC;
         Xin    : IN   NATURAL range 0 to MX_HS;
			Yin    : IN   NATURAL range 0 to MX_VS;
         R      : OUT  std_logic_vector(2 downto 0);
         G      : OUT  std_logic_vector(2 downto 0);
         B      : OUT  std_logic_vector(1 downto 0));
end VGA_Display;

architecture Behavioral of VGA_Display is
	signal Color : std_logic_vector(7 downto 0);
	signal rand : std_logic_vector(30 downto 0) := SEED;
	signal feedback : std_logic;
	signal random :  std_logic_vector(10 downto 0);
	
	type matrix_t is array(0 to 159, 0 to 119) of integer range 0 to 255;
	signal matrix   : matrix_t;
begin
	
	feedback <= not((rand(0) xor rand(3)));
	process(Clk,Rst)
	begin
		if Rst = '1' then
			 rand <= SEED;
		elsif rising_edge(Clk) then
			 rand <= feedback&rand(30 downto 1);
		end if;
	end process;
	random <= rand(OUT_WIDTH-1 downto 0);
	
	
  process(En, Xin, Yin, Color, random, matrix)
   variable x_aux : integer;
	variable y_aux : integer;
  begin
    if En = '1' then
		x_aux := Xin / 4;
		y_aux := Yin / 4;
		matrix(x_aux, y_aux) <= CONV_INTEGER(random);
		Color <= CONV_STD_LOGIC_VECTOR(matrix(x_aux, y_aux),8);
	 else
		Color <= "00000000";
	 end if;
	 
	 R <= Color(7 downto 5);
	 G <= Color(4 downto 2);
	 B <= Color(1 downto 0);
  end process;

end Behavioral;

