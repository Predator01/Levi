--------------------------------------------------------------------------------
-- Company: 			ITESM
-- Engineer:		Miguel Gonzalez A01203712
--
-- Create Date:   09:22:39 09/15/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/Exam_SN74Ls42/SN74Ls42_TB.vhd
-- Project Name:  Exam_SN74Ls42
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SN74Ls42
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
 
ENTITY SN74Ls42_TB IS
END SN74Ls42_TB;
 
ARCHITECTURE behavior OF SN74Ls42_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SN74Ls42
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         output : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SN74Ls42 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          output => output
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
		D <= '0'; C <= '0'; B <= '0'; A <= '0';
		wait for 100 ns;	
		D <= '0'; C <= '0'; B <= '0'; A <= '1';
		wait for 100 ns;	
		D <= '0'; C <= '0'; B <= '1'; A <= '0';
		wait for 100 ns;	
		D <= '0'; C <= '0'; B <= '1'; A <= '1';
		wait for 100 ns;	
		D <= '0'; C <= '1'; B <= '0'; A <= '0';
		wait for 100 ns;	
		D <= '0'; C <= '1'; B <= '0'; A <= '1';
		wait for 100 ns;	
		D <= '0'; C <= '1'; B <= '1'; A <= '0';
		wait for 100 ns;	
		D <= '0'; C <= '1'; B <= '1'; A <= '1';
		wait for 100 ns;	
		D <= '1'; C <= '0'; B <= '0'; A <= '0';
		wait for 100 ns;	
		D <= '1'; C <= '0'; B <= '0'; A <= '1';
		wait for 100 ns;	
		D <= '1'; C <= '0'; B <= '1'; A <= '0';
		wait for 100 ns;	
		D <= '1'; C <= '0'; B <= '1'; A <= '1';
		wait for 100 ns;	
		D <= '1'; C <= '1'; B <= '0'; A <= '0';
		wait for 100 ns;	
		D <= '1'; C <= '1'; B <= '0'; A <= '1';
		wait for 100 ns;	
		D <= '1'; C <= '1'; B <= '1'; A <= '0';
		wait for 100 ns;	
		D <= '1'; C <= '1'; B <= '1'; A <= '1';
		wait for 100 ns;	
		

      wait;
   end process;

END;
