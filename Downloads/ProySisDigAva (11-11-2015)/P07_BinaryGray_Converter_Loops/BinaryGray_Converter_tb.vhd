--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:02:12 09/08/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Temp/P07_BinaryGray_Converter_Loops/BinaryGray_Converter_tb.vhd
-- Project Name:  P07_BinaryGray_Converter_Loops
-- Target Device:  
-- Tool versions:  
-- Description:   Testbench for Binary to Gray Converter
-- 
-- VHDL Test Bench Created by ISE for module: BinaryGray_Converter
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
 
ENTITY BinaryGray_Converter_tb IS
END BinaryGray_Converter_tb;
 
ARCHITECTURE behavior OF BinaryGray_Converter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BinaryGray_Converter
    PORT(
         Bin : IN  std_logic_vector(3 downto 0);
         Gray : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Gray : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BinaryGray_Converter PORT MAP (
          Bin => Bin,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- wait for <clock>_period*10;

      -- insert stimulus here 
		Bin <= x"0"; wait for 100 ns;
		Bin <= x"1"; wait for 100 ns;
		Bin <= x"2"; wait for 100 ns;
		Bin <= x"3"; wait for 100 ns;
		Bin <= x"4"; wait for 100 ns;
		Bin <= x"5"; wait for 100 ns;
		Bin <= x"6"; wait for 100 ns;
		Bin <= x"7"; wait for 100 ns;
		Bin <= x"8"; wait for 100 ns;
		Bin <= x"9"; wait for 100 ns;
		Bin <= x"A"; wait for 100 ns;
		Bin <= x"B"; wait for 100 ns;
		Bin <= x"C"; wait for 100 ns;
		Bin <= x"D"; wait for 100 ns;
		Bin <= x"E"; wait for 100 ns;
		Bin <= x"F"; wait for 100 ns;

      wait;
   end process;

END;
