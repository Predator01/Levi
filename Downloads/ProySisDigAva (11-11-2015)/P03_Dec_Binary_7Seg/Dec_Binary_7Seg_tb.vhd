--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:32:36 09/02/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P03_Dec_Binary_7Seg/Dec_Binary_7Seg_tb.vhd
-- Project Name:  P03_Dec_Binary_7Seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Dec_Binary_7Seg
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
 
ENTITY Dec_Binary_7Seg_tb IS
END Dec_Binary_7Seg_tb;
 
ARCHITECTURE behavior OF Dec_Binary_7Seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dec_Binary_7Seg
    PORT(
         D : IN  std_logic;
         C : IN  std_logic;
         B : IN  std_logic;
         A : IN  std_logic;
         Seg : OUT  std_logic_vector(7 downto 0);
         Disp : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal C : std_logic := '0';
   signal B : std_logic := '0';
   signal A : std_logic := '0';

 	--Outputs
   signal Seg : std_logic_vector(7 downto 0);
   signal Disp : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dec_Binary_7Seg PORT MAP (
          D => D,
          C => C,
          B => B,
          A => A,
          Seg => Seg,
          Disp => Disp
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
      D <= '0'; C <= '0'; B <= '0'; A <= '0';
		wait for 100 ns; 

      D <= '0'; C <= '0'; B <= '0'; A <= '1';
		wait for 100 ns; 			
		
      D <= '0'; C <= '0'; B <= '1'; A <= '0';
		wait for 100 ns; 	

      wait;
   end process;

END;
