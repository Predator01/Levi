----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    20:31:10 10/25/2015 
-- Design Name: 
-- Module Name:    B_Serial_Communication - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Serial Communication from FPGA to PC
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

entity B_Serial_Communication is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Send : in  STD_LOGIC;
			  SteamOut : out  STD_LOGIC;
           DataIn : in  STD_LOGIC;
			  SwitchSeg : in STD_LOGIC_VECTOR (7 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (7 downto 0));
end B_Serial_Communication;

architecture Behavioral of B_Serial_Communication is
  --Embedded Signal
  signal reg : STD_LOGIC_VECTOR (19 downto 0);
  signal regtemp : STD_LOGIC_VECTOR (19 downto 0);
  -- Signals and constants used by the Frequency divider process
  constant Fosc : integer := 100000000; --Oscillator Frequency for Nexys3 board
  constant Fdiv : integer := 19200; --Desired sampling baud rate (twice the input rate)
  constant CtaMax : integer := Fosc / Fdiv; --Maximum count to obtain desired outputfreq
  signal Cont : integer range 0 to CtaMax; --Define the counter
  signal ClkOut : std_logic; --Defines that desired output frequency has ellapsed
  -- Send Info
  signal StreamSwitchTemp : STD_LOGIC_VECTOR (9 downto 0);
  signal clockToggle : std_logic; -- toggle 1-send 0-wait
begin

  --Obtain a 2 * baud rate signal derived from the FPGA board oscillator
  Freq_Divider: process (Rst, Clk)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if Cont = CtaMax then
        Cont <= 0;
        ClkOut <= '1';
      else		  
	     Cont <= Cont + 1;
		  ClkOut<= '0';
		end if;
	end if;
  end process Freq_Divider;

	
  process (Rst,Clk,ClkOut)
  begin
    if Rst = '1' then
	   reg <= (others => '1');
	 elsif (rising_edge(Clk) and ClkOut = '1') then
	   if reg(0) = '0' then
		  regtemp <= reg;
		  reg     <= (others => '1');
		else
	     reg <= DataIn & reg(19 downto 1);
		end if;
	 end if;
  end process;

  process (Rst,Clk,ClkOut,Send, SwitchSeg)
  begin
	 if Send = '1' then
		StreamSwitchTemp <= '1' & SwitchSeg(7 downto 0) & '0';
		clockToggle <= '1';
	 elsif (rising_edge(Clk) and ClkOut = '1') then
		
		if clockToggle = '1' then
			SteamOut <= StreamSwitchTemp(0);
			StreamSwitchTemp <= '1' & StreamSwitchTemp(9 downto 1);
		end if;
		clockToggle <= not clockToggle; -- 1-send 0-wait
	 end if;
  end process;

   -- Read correct bits from shift register
   SendDataOut:
   for i in 0 to 7 generate
      begin
         DataOut(i) <= regtemp(i*2 +3);
   end generate;
	
	
  

end Behavioral;

