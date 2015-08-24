----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Miguel Gonzalez A01203712
-- 
-- Create Date:    	15:17:18 08/20/2015 
-- Design Name: 		Optimus_Prime
-- Module Name:    	Prime_Detector - Behavioral 
-- Project Name: 		Prime Detector
-- Target Devices: 	None
-- Tool versions: 	ISE v14.7
-- Description: 		Prime detector 3 bits of input A,B,C
--							3 bits of output D(Prime), E(odd), F(even)
-- Dependencies: 		Nope
--
-- Revision: 			1.0.0
-- Revision 0.01 - File Created
-- Additional Comments: I Love VHDL
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Prime_Detector is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Dout : out  STD_LOGIC;  -- Prime
           Eout : out  STD_LOGIC;  -- Odd
           Fout : out  STD_LOGIC); -- Even
end Prime_Detector;

architecture Behavioral of Prime_Detector is

begin
	Dout <= '1' when (
		(A='0' and B='1' and C='0') or 
		(A='0' and B='1' and C='1') or 
		(A='1' and B='0' and C='1') or 
		(A='1' and B='1' and C='1') 
		) else '0';
		
	Eout <= '1' when C='1' else '0';
	
	Fout <= '1' when not C='1' else '0';

end Behavioral;

