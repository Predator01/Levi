----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer: 
-- 
-- Create Date:    10:33:26 09/30/2015 
-- Design Name: 
-- Module Name:    D_Type_FFs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Several implementations of D-type Flip Flops
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
    Port ( D   : in  STD_LOGIC;
	        Pr  : in  STD_LOGIC;
			  --Clr : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q   : out STD_LOGIC);
end D_Type_FFs;

architecture Behavioral of D_Type_FFs is
  signal Demb : STD_LOGIC;
begin
  -- Basic D-type Flip Flop
  -- with a rising edge
  -- Old school style
--  process (Clk)
--  begin
--    -- Check for a Clk transition
--	 if (Clk'event and Clk = '1') then
--	   Q <= D;
--	 end if;
--  end process;
  
  -- Basic D-type Flip Flop
  -- with a falling edge
  -- Old school style
--  process (Clk)
--  begin
--    -- Check for a Clk transition
--	 if (Clk'event and Clk = '0') then
--	   Q <= D;
--	 end if;
--  end process;


  -- Basic D-type Flip Flop
  -- with a rising edge
  -- New school style
--  process (Clk)
--  begin
--    -- Check for a Clk transition
--	 if (rising_edge(Clk)) then
--	   Q <= D;
--	 end if;
--  end process;


  -- Basic D-type Flip Flop
  -- with a falling edge
  -- New school style
--  process (Clk)
--  begin
--    -- Check for a Clk transition
--	 if (falling_edge(Clk)) then
--	   Q <= D;
--	 end if;
--  end process;

  -- Basic D-type Flip Flop
  -- with a rising edge and Enable
--  process(Clk,En)
--  begin
--    if (rising_edge(Clk) and En = '1') then
--		  Q <= D;
--	 end if;
--  end process;
  
  -- D-Type FF with asynchronous Clr
--  process(Clr,Clk)
--  begin
--    if (Clr = '1') then
--	   Q <= '0';
--	 elsif (rising_edge(Clk)) then
--	   Q <= D;
--	 end if;
--  end process;
  
  -- D-Type FF with asynchronous Preset
--  process(Pr,Clk)
--  begin
--    if (Pr = '1') then
--	   Q <= '1';
--	 elsif (rising_edge(Clk)) then
--	   Q <= D;
--	 end if;
--  end process;
  
  -- D-Type FF with asynchronous Preset
--  process(Pr,Clr,Clk)
--  begin
--    if (Clr = '1') then
--	   Q <= '0';
--	 elsif (Pr = '1') then
--	   Q <= '1';
--	 elsif (rising_edge(Clk)) then
--	   Q <= D;
--	 end if;
--  end process;
  
    -- D-Type FF with synchronous Clear
--	 process(Clr,Clk)
--	 begin
--	   if (rising_edge(Clk)) then
--		  if (Clr = '1') then
--		    Q <= '0';
--		  else
--		    Q <= D;
--		  end if;
--		end if;
--	 end process;

  -- D-Type FF with synchronous Clear, style 2
--  Demb <= D and (not Clr);
--  process(Clk)
--  begin
--    if (rising_edge(Clk)) then
--	   Q <= Demb;
--	 end if;
--  end process;
  
  -- D-Type FF with synchronous preset
--  process(Pr, Clk)
--  begin
--		if (rising_edge(Clk)) then
--			if ( Pr = '1' ) then
--				Q <= '1';
--			else 
--				Q <= D;
--		end if;
--		end if;
--	end process;
--  
--  


-- D-Type FF with synchronous preset, style 2
	 Demb <= Pr or D;
    process(Clk)
    begin
		if (rising_edge(Clk)) then
			Q <= Demb;
		end if;
	end process;
  

end Behavioral;








