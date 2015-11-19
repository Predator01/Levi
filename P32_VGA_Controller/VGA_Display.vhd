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


use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

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
	signal rand_num : integer := 0;
	type typeMatrix is array (0 to 479, 0 to 639) of integer range 0 to 255;
	signal curr_matrix: typeMatrix;
	signal new_matrix: typeMatrix;
begin
	
	process()
		variable rand_temp : std_logic_vector(7 downto 0):=(7 => '1',others => '0');
		variable temp : std_logic := '0';
	begin
			temp := rand_temp(7) xor rand_temp(6);
			rand_temp(7 downto 1) := rand_temp(6 downto 0);
			rand_temp(0) := temp;
			rand_num <= CONV_INTEGER(rand_temp);
  end process;

  process(En, Xin, Yin, Color)
		variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;   -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := 255.0;    -- the range of random values created will be 0 to +1000.
  begin
    if En = '1' then

		for col in 0 to 479 loop
			for row in 0 to 639 loop
				if col >= 1 and row >= 1 and col <= 479 and col <= 639 then
						Color <= CONV_STD_LOGIC_VECTOR(curr_matrix(col, row), 8);
						--rand_num <= integer(rand);
						--if(curr_matrix(col-1,row-1) > 0 )
						curr_matrix(col, row) <= rand_num;
				end if;
			end loop;
		end loop;
	 else
		Color <= "00000000";
		
	 end if;
	 
	 R <= Color(7 downto 5);
	 G <= Color(4 downto 2);
	 B <= Color(1 downto 0);
  end process;

end Behavioral;

