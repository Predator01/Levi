--------------------------------------------------------------------------------
-- Company: 				ITESM
-- Engineer:			Miguel Gonzalez A01203712
--
-- Create Date:   19:20:36 09/09/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P12_Gray_to_Binary_Converter/Gray_to_Binary_Converter_TB.vhd
-- Project Name:  P12_Gray_to_Binary_Converter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Gray_to_Binary_Converter
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
 
ENTITY Gray_to_Binary_Converter_TB IS
END Gray_to_Binary_Converter_TB;
 
ARCHITECTURE behavior OF Gray_to_Binary_Converter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Gray_to_Binary_Converter
    PORT(
         Gray : IN  std_logic_vector(3 downto 0);
         Binary : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Gray : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Binary : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Gray_to_Binary_Converter PORT MAP (
          Gray => Gray,
          Binary => Binary
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		Gray <= "0000"; wait for 100 ns;	
		Gray <= "0001"; wait for 100 ns;	
		Gray <= "0011"; wait for 100 ns;	
		Gray <= "0010"; wait for 100 ns;	
		Gray <= "0110"; wait for 100 ns;	
		Gray <= "0111"; wait for 100 ns;	
		Gray <= "0101"; wait for 100 ns;	
		Gray <= "0100"; wait for 100 ns;	
		Gray <= "1100"; wait for 100 ns;	
		Gray <= "1101"; wait for 100 ns;	
		Gray <= "1111"; wait for 100 ns;	
		Gray <= "1110"; wait for 100 ns;	
		Gray <= "1010"; wait for 100 ns;	
		Gray <= "1011"; wait for 100 ns;	
		Gray <= "1001"; wait for 100 ns;	
		Gray <= "1000"; wait for 100 ns;	
      wait;
   end process;

END;
