--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:56:38 11/20/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P33_Room_Definition/ROM_TB.vhd
-- Project Name:  P33_Room_Definition
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_Definition
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ROM_TB IS
END ROM_TB;
 
ARCHITECTURE behavior OF ROM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_Definition
    PORT(
         Address : IN  std_logic_vector(3 downto 0);
         Data : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Data : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_Definition PORT MAP (
          Address => Address,
          Data => Data
        );
--
--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		Address <= X"0"; wait for 100 ns;
		Address <= X"1"; wait for 100 ns;
		Address <= X"2"; wait for 100 ns;
		Address <= X"3"; wait for 100 ns;
		Address <= X"4"; wait for 100 ns;
		Address <= X"5"; wait for 100 ns;
		Address <= X"6"; wait for 100 ns;
		Address <= X"7"; wait for 100 ns;
		Address <= X"8"; wait for 100 ns;
		Address <= X"9"; wait for 100 ns;
		Address <= X"A"; wait for 100 ns;
		Address <= X"B"; wait for 100 ns;
		Address <= X"C"; wait for 100 ns;
		Address <= X"D"; wait for 100 ns;
		Address <= X"E"; wait for 100 ns;
		Address <= X"F"; wait for 100 ns;
      wait;
   end process;

END;
