----------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer: 			Miguel Gonzalez A01203712
-- 
-- Create Date:    12:52:28 10/08/2015 
-- Design Name: 
-- Module Name:    Bidirectional_Decimal_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	4 bits Bidirectional_Decimal_Counter
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bidirectional_Decimal_Counter is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (3 downto 0));
end Bidirectional_Decimal_Counter;

architecture Behavioral of Bidirectional_Decimal_Counter is

begin


end Behavioral;

