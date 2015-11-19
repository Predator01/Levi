--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:49:07 10/13/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P18_Shift_Register_8_bit_SN74164/Shift_Reg_tb.vhd
-- Project Name:  P18_Shift_Register_8_bit_SN74164
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
 
ENTITY Shift_Reg_tb IS
END Shift_Reg_tb;
 
ARCHITECTURE behavior OF Shift_Reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_Register
    PORT(
         Clk : IN  std_logic;
         Clr : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         Q : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Clr : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(0 to 7);

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Register PORT MAP (
          Clk => Clk,
          Clr => Clr,
          A => A,
          B => B,
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
		
		A <= '1'; B <= '1'; Clr <= '1';

      wait;
   end process;

END;
