----------------------------------------------------------------------------------
-- Company:  ITESM
-- Engineer: Elmer Homero 
-- 
-- Create Date:    11:24:19 08/19/2015 
-- Design Name: 
-- Module Name:    Full_Adder_1_Bit - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 6 
-- Tool versions:  ISE Webpack 14.7
-- Description:    1-bit Full Adder implementation
--
-- Dependencies:   None
--
-- Revision:       1.0
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_1_Bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder_1_Bit;

architecture Behavioral of Full_Adder_1_Bit is

begin
  -- 1-bit Adder definition
  Sout <= A xor B xor Cin;
  Cout <= (A and B) or (A and Cin) or (B and Cin);

end Behavioral;

