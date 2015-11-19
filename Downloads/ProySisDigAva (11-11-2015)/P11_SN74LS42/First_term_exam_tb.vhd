--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:43:03 09/18/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P11_SN74LS42/First_term_exam_tb.vhd
-- Project Name:  First_term_exam_A01271549
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: First_term_exam
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
use IEEE.std_logic_arith.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY First_term_exam_tb IS
END First_term_exam_tb;
 
ARCHITECTURE behavior OF First_term_exam_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT First_term_exam
    PORT(
         BCDin : IN  std_logic_vector(3 downto 0);
         DECout : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCDin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DECout : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: First_term_exam PORT MAP (
          BCDin => BCDin,
          DECout => DECout
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
    for i in 0 to 15 loop
      BCDin <= CONV_STD_LOGIC_VECTOR(i,4);
      wait for 100 ns;
    end loop;	

      wait;
   end process;

END;
