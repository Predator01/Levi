----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    10:33:26 09/30/2015 
-- Design Name: 
-- Module Name:    D_Type_FFs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Several implementations of D-Type Flip Flops
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Type_FFs is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  En : in STD_LOGIC;
			  Pr : in STD_LOGIC;
			  Clr: in STD_LOGIC;
           Q : out  STD_LOGIC);
end D_Type_FFs;

architecture Behavioral of D_Type_FFs is
	signal Demb : STD_LOGIC;
begin
--	--Basic D Type Flip flop
--	-- with a rising edge
--	--Old school style
--	process (Clk)
--	begin
--		--check for a clk transition 
--		if (Clk'event and Clk = '1') then
--			Q <= D;
--		end if;
--	end process;

--	--Basic D Type Flip flop
--	-- with a falling edge
--	--Old school style
--	process (Clk)
--	begin 
--		--check for a clk transition 
--		if (Clk'event and Clk = '0') then
--			Q <= D;
--		end if;
--	end process;

--	--Basic D Type Flip flop
--	-- with a rising edge
--	-- New school style
--	process (Clk)
--	begin 
--		--check for a clk transition 
--		if (rising_edge(Clk)) then
--			Q <= D;
--		end if;
--	end process;

--	--Basic D Type Flip flop
--	-- with a rising edge
--	-- New school style
--	process (Clk)
--	begin 
--		--check for a clk transition 
--		if (falling_edge(Clk)) then
--			Q <= D;
--		end if;
--	end process;

	
--	-- Basic D Type flip flop
--	-- with a rising edged and enable
--	process(Clk, En)
--	begin
--		if (rising_edge(Clk)) then
--			if (En = '1') then
--				Q <= D;
--			end if;
--		end if;
--	end process;

--
----D type flip flop with asynchonous clear
--	process(Clr, Clk)
--	begin
--	
--		if (Clr = '1') then
--			Q <= '0';
--		elsif (rising_edge(Clk)) then
--			Q <= D;
--		end if;
--	end process;
	
----D type flip flop with asynchonous preset
--	process(Pr, Clk)
--	begin
--		if (Pr = '1') then
--			Q <= '1';
--		elsif (rising_edge(Clk)) then
--			Q <= D;
--		end if;
--	end process;
	
	

----D type flip flop with asynchonous preset and clear
--	process(Clr, Pr, Clk)
--	begin
--		if (Clr = '1') then
--			Q <= '0';
--		elsif (Pr = '1') then
--			Q <= '1';
--		elsif (rising_edge(Clk)) then
--			Q <= D;
--		end if;
--	end process;
--	

----D type flip flop with synchonous clear
--	process(Clr, Clk)
--	begin
--		if (rising_edge(Clk)) then
--			if (Clr = '1') then
--				Q <= '0';
--			else
--				Q <= D;
--			end if;
--		end if;
--	end process;
	
--D type flip flop with synchonous clear, style 2
--	Demb <= D and (not Clr);
--	process(Clk)
--	begin
--		if (rising_edge(Clk)) then
--			Q <= Demb;
--		end if;
--	end process;
	
	


--D type flip flop with synchonous preset
--	process(Pr, Clk)
--	begin
--		if (rising_edge(Clk)) then
--			if (Pr = '1') then
--				Q <= '1';
--			else
--				Q <= D;
--			end if;
--		end if;
--	end process;
	
--D type flip flop with synchonous clear, style 2
	Demb <= D or Pr;
	process(Clk)
	begin
		if (rising_edge(Clk)) then
			Q <= Demb;
		end if;
	end process;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
----D type flip flop with synchonous preset and clear
--	process(Clr, Pr, Clk)
--	begin
--		if (rising_edge(Clk)) then
--			if (Clr = '1') then
--				Q <= '0';
--			elsif (Pr = '1') then
--				Q <= '1';
--			else
--				Q <= D;
--			end if;
--		end if;
--	end process;
--	

	
	
end Behavioral;