--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:17:48 11/24/2015
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/Levi/P34_RWM_Definition/RWM_TB.vhd
-- Project Name:  P34_RWM_Definition
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RWM
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
 
ENTITY RWM_TB IS
END RWM_TB;
 
ARCHITECTURE behavior OF RWM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RWM
    PORT(
         Address : IN  std_logic_vector(3 downto 0);
         WClk : IN  std_logic;
         WE : IN  std_logic;
         Data : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(3 downto 0) := (others => '0');
   signal WClk : std_logic := '0';
   signal WE : std_logic := '0';

	--BiDirs
   signal Data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant WClk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RWM PORT MAP (
          Address => Address,
          WClk => WClk,
          WE => WE,
          Data => Data
        );

   -- Clock process definitions
   WClk_process :process
   begin
		WClk <= '0';
		wait for WClk_period/2;
		WClk <= '1';
		wait for WClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for WClk_period*1;
		
      -- insert stimulus here 
		-- Write values in RWM
		We <= '1';
		Address <= x"3";
		Data <= X"35";
		wait for WClk_period*1;
		Address <= x"A";
		Data <= X"BC";
		wait for WClk_period*1;
		Address <= x"B";
		Data <= X"96";
		wait for WClk_period*1;
		-- Read
		WE <= '0';
		
		Address <= x"B";
		wait for WClk_period*1;
		Address <= x"A";
		wait for WClk_period*1;
		Address <= x"3";
		wait for WClk_period*1;
		
			
      wait;
   end process;

END;
