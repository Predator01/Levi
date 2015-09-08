--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:01:14 09/08/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P07_Binary_Gray_Convertor_Loops/Binary_Gray_Converter_TB.vhd
-- Project Name:  P07_Binary_Gray_Convertor_Loops
-- Target Device:  
-- Tool versions:  
-- Description:   Test Bench for binary to gray converter. 
-- 					
-- VHDL Test Bench Created by ISE for module: Binary_Gray_Converter
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
 
ENTITY Binary_Gray_Converter_TB IS
END Binary_Gray_Converter_TB;
 
ARCHITECTURE behavior OF Binary_Gray_Converter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Binary_Gray_Converter
    PORT(
         Binary : IN  std_logic_vector(3 downto 0);
         Gray : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Binary : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Gray : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Binary_Gray_Converter PORT MAP (
          Binary => Binary,
          Gray => Gray
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
		
		Binary <= x"0"; wait for 100 ns;	
		Binary <= x"1"; wait for 100 ns;	
		Binary <= x"2"; wait for 100 ns;	
		Binary <= x"3"; wait for 100 ns;	
		Binary <= x"4"; wait for 100 ns;	
		Binary <= x"5"; wait for 100 ns;	
		Binary <= x"6"; wait for 100 ns;	
		Binary <= x"7"; wait for 100 ns;	
		Binary <= x"8"; wait for 100 ns;	
		Binary <= x"9"; wait for 100 ns;	
		Binary <= x"A"; wait for 100 ns;	
		Binary <= x"B"; wait for 100 ns;	
		Binary <= x"C"; wait for 100 ns;	
		Binary <= x"D"; wait for 100 ns;	
		Binary <= x"E"; wait for 100 ns;	
		Binary <= x"F"; wait for 100 ns;	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

      wait;
   end process;

END;
