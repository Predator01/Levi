----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:57:25 09/18/2015 
-- Design Name: 
-- Module Name:    mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Mux 4 to 1
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

entity mux is
    Port ( a,b,c,d : in   STD_LOGIC;
           sel     : in   STD_LOGIC_VECTOR (1 downto 0);
           y       : out  STD_LOGIC);
end mux;

architecture mux_arch of mux is

begin
  -- Concurrent Behavioral
  y <= a when sel = "00" else
       b when sel = "01" else
       c when sel = "10" else
		 d;

end mux_arch;

