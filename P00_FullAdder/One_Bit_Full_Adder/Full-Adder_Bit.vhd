----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Miguel Angel 
-- 
-- Create Date:    11:24:19 08/19/2015 
-- Design Name: 
-- Module Name:    Full-Adder_Bit - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 6
-- Tool versions: ISE Webpack 14.7
-- Description: 
--    1-bit full adder 
--
-- Dependencies: 
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity Full_Adder_Bit is
    Port ( A : in  STD_LOGIC;
			  B : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           Cout : out  STD_LOGIC
           );
end Full_Adder_Bit;

architecture Behavioral of Full_Adder_Bit is

begin
	-- 1-bit Adder definition
	Sout <= A xor B xor c;
	Cout <= (A and B) or (A and c) or (B and c);
	

end Behavioral;

