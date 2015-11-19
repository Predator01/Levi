----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer:  RickWare
-- 
-- Create Date:    08:55:29 08/21/2015 
-- Design Name: 
-- Module Name:    Basic_Gates - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions:  ISE v14.7
-- Description:    Show the VHDL versality to define gates in
--                 several ways 
-- Dependencies:   None
--
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: I Love VHDL
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Basic_Gates is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC
			);
end Basic_Gates;

architecture Behavioral of Basic_Gates is

begin
  -- Buffer gate as a Boolean equation
  -- Y <= A;
  -- Buffer gate as a truth table
  -- Y <= '1' when A = '1' else
  --     '0';
		 
  -- NOT gate as a Boolean equation
     -- Y <= not A;
  -- NOT gate as a truth table
     -- Y <= '0' when A = '1' else
	  --     '1';
	  
  -- AND gate as a Boolean equation
  -- Y <= A and B;
  -- AND gate as a truth table
  -- Y <= '1' when (A = '1' and B = '1') else
  --      '0';  

  -- NAND gate as a Boolean equation
  -- Y <= A nand B;
  -- NAND gate as a truth table
  -- Y <= '0' when (A = '1' and B = '1') else
  --		 '1';
    

  -- OR gate as a Boolean equation
  -- Y <= A or B;
  -- OR gate as a truth table
--		Y <= '0' when (A = '0' and B ='0') else
--				'1';

  -- NOR gate as a Boolean equation
  -- Y <= A nor B;
  -- NOR gate as a truth table
  -- Y <= '0' when not (A = '0' and B ='0') else
--				'1';

  -- XOR gate as a Boolean equation
--   Y <= A xor B; 
  
  -- XOR gate as a truth table
--     Y <= '1' when ((A = '1' and B = '0') or (A = '0' and B = '1')) else
--	       '0';
--	  
--	  Y <= '0' when (A = B) else
--	       '1';
--			 
--	  Y <= '1' when ( A /= B) else
--	       '0';
			 
     -- Concurrent description of a XOR gate			 
--     Y <= B when ( A = '0') else
--	        not B;
			  
	  -- Sequential description of a XOR gate
	  process (A,B)
	  begin
	    if (A = '0') then
		   Y <= B;
		 else
		   Y <= not B;
		 end if;
	  end process;
	  
	 

  -- XNOR gate as a Boolean equation
  -- Y <= A xnor B;   
  


end Behavioral;





