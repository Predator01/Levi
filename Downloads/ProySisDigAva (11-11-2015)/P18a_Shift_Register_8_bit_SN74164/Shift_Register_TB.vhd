--------------------------------------------------------------------------------
-- Company: 			ITESM CQ
-- Engineer:		Miguel Gonzalez A01203712
--
-- Create Date:   09:49:00 10/13/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P22_Shift_Register_8_bit_SN74164/Shift_Register_TB.vhd
-- Project Name:  P22_Shift_Register_8_bit_SN74164
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_Register
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
 
ENTITY Shift_Register_TB IS
END Shift_Register_TB;
 
ARCHITECTURE behavior OF Shift_Register_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_Register
    PORT(
         Clk : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         Clr : IN  std_logic;
         Q : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Clr : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(0 to 7);

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Register PORT MAP (
          Clk => Clk,
          A => A,
          B => B,
          Clr => Clr,
          Q => Q
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
		Clr <= '0';
		wait for Clk_period*1;
		A <= '1';
		B <= '1';
		Clr <= '1';
		
      wait;
   end process;

END;
