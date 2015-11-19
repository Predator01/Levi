--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:35 09/02/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P05_DM74LS151/DM74LS151_tb.vhd
-- Project Name:  P05_DM74LS151
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DM74LS151
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
 
ENTITY DM74LS151_tb IS
END DM74LS151_tb;
 
ARCHITECTURE behavior OF DM74LS151_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DM74LS151
    PORT(
         C : IN  std_logic;
         B : IN  std_logic;
         A : IN  std_logic;
         D : IN  std_logic_vector(7 downto 0);
         Strobe : IN  std_logic;
         Y : OUT  std_logic;
         W : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic := '0';
   signal B : std_logic := '0';
   signal A : std_logic := '0';
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal Strobe : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   signal W : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DM74LS151 PORT MAP (
          C => C,
          B => B,
          A => A,
          D => D,
          Strobe => Strobe,
          Y => Y,
          W => W
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
      Strobe <= '1'; 
      wait for 100 ns;

      Strobe <= '0'; D <= "10010001";
      C <= '0'; B <= '0'; A <= '0';
		wait for 100 ns;
		
		C <= '0'; B <= '0'; A <= '1';
		wait for 100 ns;
		
		C <= '0'; B <= '1'; A <= '0';
		wait for 100 ns;
		
		C <= '0'; B <= '1'; A <= '1';
		wait for 100 ns;
		
		C <= '1'; B <= '0'; A <= '0';
		wait for 100 ns;
		
		C <= '1'; B <= '0'; A <= '1';
		wait for 100 ns;
		
		C <= '1'; B <= '1'; A <= '0';
		wait for 100 ns;
		
		C <= '1'; B <= '1'; A <= '1';
		
      wait;
   end process;

END;
