--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:42:03 10/04/2012
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P18a_ServoControl_Felipe_Santiago_Rafael/ServoControl_vtb.vhd
-- Project Name:  P18_ServoControl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ServoControl
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
 
ENTITY ServoControl_vtb IS
END ServoControl_vtb;
 
ARCHITECTURE behavior OF ServoControl_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ServoControl
    PORT(
         Angulo : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Senal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Angulo : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal Senal : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ServoControl PORT MAP (
          Angulo => Angulo,
          Clk => Clk,
          Rst => Rst,
          Senal => Senal
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

      wait for Clk_period*10;

      -- insert stimulus here
		
		Rst <= '1';
		wait for Clk_period;
		
		Rst <= '0';
		Angulo <= X"7F";
		
      wait;
   end process;

END;
