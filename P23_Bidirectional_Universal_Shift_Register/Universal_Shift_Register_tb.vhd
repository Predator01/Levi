--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:34:57 10/21/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P23_Bidirectional_Universal_Shift_Register/Universal_Shift_Register_tb.vhd
-- Project Name:  P23_Bidirectional_Universal_Shift_Register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Universal_Shift_Register
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
 
ENTITY Universal_Shift_Register_tb IS
END Universal_Shift_Register_tb;
 
ARCHITECTURE behavior OF Universal_Shift_Register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Universal_Shift_Register
    PORT(
         Clr : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Clk : IN  std_logic;
         SerialL : IN  std_logic;
         SerialR : IN  std_logic;
         ParallelInput : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clr : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal Clk : std_logic := '0';
   signal SerialL : std_logic := '0';
   signal SerialR : std_logic := '0';
   signal ParallelInput : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Universal_Shift_Register PORT MAP (
          Clr => Clr,
          S0 => S0,
          S1 => S1,
          Clk => Clk,
          SerialL => SerialL,
          SerialR => SerialR,
          ParallelInput => ParallelInput,
          Output => Output
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
      -- insert stimulus here 
		-- clear 1 
		Clr <= '1';
		wait for Clk_period*1;
		-- show input 3
		Clr <= '0';
		ParallelInput <= "0110";
		S1 <= '1'; S0 <= '1';
		wait for Clk_period*1;
		-- clear
		Clr <= '1';
		wait for Clk_period*1;
		-- show input 3
		Clr <= '0';
		S1 <= '1'; S0 <= '1';
		ParallelInput <= "0110";
		wait for Clk_period*1;
		-- shift R 4,5
		S1 <= '0'; S0 <= '1';
		SerialR <= '1';
		wait for Clk_period*3;
		S1 <= '0'; S0 <= '1';
		SerialR <= '0';
		wait for Clk_period*1;
		S1 <= '0'; S0 <= '1';
		SerialR <= '1';
		-- show input 3
		S1 <= '1'; S0 <= '1';
		ParallelInput <= "0110";
		wait for Clk_period*1;
		-- Shift L 6,7
		S1 <= '1'; S0 <= '0';
		SerialL <= '1';
		wait for Clk_period*2;
		S1 <= '1'; S0 <= '0';
		SerialL <= '0';
		wait for Clk_period*1;
		S1 <= '1'; S0 <= '0';
		SerialL <= '1';
		-- nothing
		S1 <= '0'; S0 <= '0';
		wait for Clk_period*1;
		-- show input 3
		S1 <= '1'; S0 <= '1';
		ParallelInput <= "0110";
		
		
      wait;
   end process;

END;
