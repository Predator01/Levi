--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:23 11/02/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/Exam_P17_Hierarchical_Clock_Complete/P24_Mustang_Tail_Lights_Controller_FSM/Mustang_Tail_Lights_Controller_TB.vhd
-- Project Name:  P24_Mustang_Tail_Lights_Controller_FSM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mustang_Tail_Lights_Controller
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
 
ENTITY Mustang_Tail_Lights_Controller_TB IS
END Mustang_Tail_Lights_Controller_TB;
 
ARCHITECTURE behavior OF Mustang_Tail_Lights_Controller_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mustang_Tail_Lights_Controller
    PORT(
         TurnLeft : IN  std_logic;
         TurnRight : IN  std_logic;
         Haz : IN  std_logic;
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         L : OUT  std_logic_vector(2 downto 0);
         R : OUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal TurnLeft : std_logic := '0';
   signal TurnRight : std_logic := '0';
   signal Haz : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal L : std_logic_vector(2 downto 0);
   signal R : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mustang_Tail_Lights_Controller PORT MAP (
          TurnLeft => TurnLeft,
          TurnRight => TurnRight,
          Haz => Haz,
          Clk => Clk,
          Rst => Rst,
          L => L,
          R => R
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*1;
      -- insert stimulus here
		Rst <= '0';
		wait for Clk_period*1;
		Rst <= '1';		
		TurnLeft <= '1';
		TurnRight<= '0';
		Haz <= '0';
		wait for Clk_period*3;
		TurnLeft <= '0';
		TurnRight<= '1';
		Haz <= '0';
		wait for Clk_period*3;
		TurnLeft <= '1';
		TurnRight<= '1';
		Haz <= '0';
		wait for Clk_period*3;
		TurnLeft <= '1';
		TurnRight<= '1';
		Haz <= '1';
		wait for Clk_period*2;
		TurnLeft <= '1';
		TurnRight<= '1';
		Haz <= '0';
		wait for Clk_period*2;
		TurnLeft <= '0';
		TurnRight<= '0';
		Haz <= '0';
		wait for Clk_period*2;
		Rst <= '0';
      wait;
   end process;

END;
