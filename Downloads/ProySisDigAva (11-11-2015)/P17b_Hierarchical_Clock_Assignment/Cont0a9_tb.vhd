--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:16:10 10/09/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P17b_Hierarchical_Clock/Cont0a9_tb.vhd
-- Project Name:  P17_Hierarchical_Clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Cont0a9
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
 
ENTITY Cont0a9_tb IS
END Cont0a9_tb;
 
ARCHITECTURE behavior OF Cont0a9_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cont0a9
    PORT(
         Load : IN  std_logic;
         Enable : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         Valor : IN  std_logic_vector(3 downto 0);
         TCO : OUT  std_logic;
         Cuenta : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Load : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Valor : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal TCO : std_logic;
   signal Cuenta : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cont0a9 PORT MAP (
          Load => Load,
          Enable => Enable,
          Rst => Rst,
          Clk => Clk,
          Valor => Valor,
          TCO => TCO,
          Cuenta => Cuenta
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
		-- Reset the counter
		Rst <= '1';
		Load <= '0';
		Enable <= '1';
		Valor <= "0010";
		wait for Clk_period*1;
		
		-- Check count
		Rst <= '0';
		Load <= '0';
		Enable <= '1';
		Valor <= "0010";
		wait for Clk_period*15;
		
		-- Check load
		Rst <= '0';
		Load <= '1';
		Enable <= '1';
		Valor <= "0010";
		wait for Clk_period*1;
		
		-- Count from load value
		Rst <= '0';
		Load <= '0';
		Enable <= '1';
		Valor <= "0010";

      wait;
   end process;

END;
