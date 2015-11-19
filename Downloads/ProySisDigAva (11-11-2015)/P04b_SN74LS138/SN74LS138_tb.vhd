--------------------------------------------------------------------------------
-- Company:       ITESM
-- Engineer:      Elmer Homero
--
-- Create Date:   11:58:31 09/02/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P04_SN74LS138/SN74LS138_tb.vhd
-- Project Name:  P04_SN74LS138
-- Target Device:  
-- Tool versions:  
-- Description:   Test Bench for the 74LS138 Design
-- 
-- VHDL Test Bench Created by ISE for module: SN74LS138
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
 
ENTITY SN74LS138_tb IS
END SN74LS138_tb;
 
ARCHITECTURE behavior OF SN74LS138_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SN74LS138
    PORT(
         C : IN  std_logic;
         B : IN  std_logic;
         A : IN  std_logic;
         G2A : IN  std_logic;
         G2B : IN  std_logic;
         G1 : IN  std_logic;
         Y : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic := '0';
   signal B : std_logic := '0';
   signal A : std_logic := '0';
   signal G2A : std_logic := '0';
   signal G2B : std_logic := '0';
   signal G1 : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(0 to 7);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SN74LS138 PORT MAP (
          C => C,
          B => B,
          A => A,
          G2A => G2A,
          G2B => G2B,
          G1 => G1,
          Y => Y
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
		
		-- Test cases for G2 = 1
      G2A <= '0'; G2B <= '1';
      wait for 100 ns;
      G2A <= '1'; G2B <= '0';
      wait for 100 ns;
      G2A <= '1'; G2B <= '1';
      wait for 100 ns;
      -- Test case for G1 = 0
      G1 <= '0';
      wait for 100 ns;
      -- Test cases when 74LS138 is enabled
      G1 <= '1'; G2A <= '0'; G2B <= '0';
      C  <= '0'; B   <= '0'; A   <= '0';
      wait for 100 ns;
      C  <= '0'; B   <= '0'; A   <= '1';
      wait for 100 ns;
      C  <= '0'; B   <= '1'; A   <= '0';
      wait for 100 ns;
      C  <= '0'; B   <= '1'; A   <= '1';
      wait for 100 ns;
      C  <= '1'; B   <= '0'; A   <= '0';
      wait for 100 ns;
      C  <= '1'; B   <= '0'; A   <= '1';
      wait for 100 ns;
      C  <= '1'; B   <= '1'; A   <= '0';
      wait for 100 ns;
      C  <= '1'; B   <= '1'; A   <= '1';

      wait;
   end process;

END;
