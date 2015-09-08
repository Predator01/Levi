--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:14 09/08/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P08_Priority_Encoder/Priority_Encoder_when_TB.vhd
-- Project Name:  P08_Priority_Encoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Priority_Encoder
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
 
ENTITY Priority_Encoder_when_TB IS
END Priority_Encoder_when_TB;
 
ARCHITECTURE behavior OF Priority_Encoder_when_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Priority_Encoder
    PORT(
         input : IN  std_logic_vector(6 downto 0);
         output : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Priority_Encoder PORT MAP (
          input => input,
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
		input <= "0000000"; wait for 100 ns;	
		input <= "0000001"; wait for 100 ns;	
		input <= "0000010"; wait for 100 ns;	
		input <= "0000100"; wait for 100 ns;	
		input <= "0001000"; wait for 100 ns;	
		input <= "0010000"; wait for 100 ns;	
		input <= "0100000"; wait for 100 ns;	
		input <= "1000000"; wait for 100 ns;	
		input <= "1011011"; wait for 100 ns;	
		input <= "0111011"; wait for 100 ns;	
		input <= "0011011"; wait for 100 ns;	
		input <= "0001011"; wait for 100 ns;	
		input <= "0000111"; wait for 100 ns;	
		input <= "0000011"; wait for 100 ns;	
		input <= "0000001"; wait for 100 ns;	
		input <= "0000000"; wait for 100 ns;	
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
