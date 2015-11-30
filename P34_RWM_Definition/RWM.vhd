----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    09:01:36 11/24/2015 
-- Design Name: 
-- Module Name:    RWM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Implementation of a 16x8 RAM (RWM)
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
use IEEE.std_logic_unsigned.all;

entity RWM is
    Port ( Address : in  STD_LOGIC_VECTOR (3 downto 0);
           WClk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Data : inout  STD_LOGIC_VECTOR (7 downto 0));
end RWM;

architecture Behavioral of RWM is
	-- RWM Structure
	-- number of locations and size memory
	type RWM_type is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
	signal MemRWM : RWM_type := (others => (others => '0'));
	
begin
	-- To write in the memory synchronously
	write_RWM : process(Address, WClk)
		
	begin
		if(rising_edge(WClk)) then
			if(WE = '1') then
				MemRWM(CONV_INTEGER(Address)) <= Data;
			end if;
		end if;
	end process write_RWM;
	
	-- Data is Read into memory in synch nous way
	Data <= MemRWM(CONV_INTEGER(Address));

end Behavioral;

