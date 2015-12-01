--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:01:57 11/30/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/PF_Robot_Sumo/Robot_sumo_tb.vhd
-- Project Name:  PF_Robot_Sumo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top
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
 
ENTITY Robot_sumo_tb IS
END Robot_sumo_tb;
 
ARCHITECTURE behavior OF Robot_sumo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top
    PORT(
         in_Clk100MHz : IN  std_logic;
         in_Rst : IN  std_logic;
         in_line_top : IN  std_logic;
         in_Rx : IN  std_logic;
         out_Tx : OUT  std_logic;
         out_motor_1 : OUT  std_logic;
         out_motor_2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_Clk100MHz : std_logic := '0';
   signal in_Rst : std_logic := '0';
   signal in_line_top : std_logic := '0';
   signal in_Rx : std_logic := '0';

 	--Outputs
   signal out_Tx : std_logic;
   signal out_motor_1 : std_logic;
   signal out_motor_2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top PORT MAP (
          in_Clk100MHz => in_Clk100MHz,
          in_Rst => in_Rst,
          in_line_top => in_line_top,
          in_Rx => in_Rx,
          out_Tx => out_Tx,
          out_motor_1 => out_motor_1,
          out_motor_2 => out_motor_2
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*1;
		in_Clk100MHz <= '1';
		in_Rst <= '1';
		wait for <clock>_period*1;
		in_Clk100MHz <= '0';
		wait for <clock>_period*1;
		in_Clk100MHz <= '1';
		in_Rst <= '0';
		in_line_top <= '0';
		in_Rx <= '1';
		wait for <clock>_period*1;
		in_Clk100MHz <= '0';
		wait for <clock>_period*1;
		in_Clk100MHz <= '1';
		in_Rx <= '0';
		in_line_top <= '1';
		wait for <clock>_period*1;
      -- insert stimulus here 

      wait;
   end process;

END;
