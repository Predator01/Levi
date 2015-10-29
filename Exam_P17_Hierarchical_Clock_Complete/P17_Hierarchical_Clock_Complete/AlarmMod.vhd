----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:24 10/06/2010 
-- Design Name: 
-- Module Name:    AlarmMod - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AlarmMod is
  port (
	 DecHor : in  STD_LOGIC_VECTOR (3 downto 0);
	 UniHor : in  STD_LOGIC_VECTOR (3 downto 0);
	 DecMin : in  STD_LOGIC_VECTOR (3 downto 0);
	 UniMin : in  STD_LOGIC_VECTOR (3 downto 0);
	 DecEnt : in  STD_LOGIC_VECTOR (3 downto 0);--switches
	 UniEnt : in  STD_LOGIC_VECTOR (3 downto 0);--switches
	 LoadHor: in STD_LOGIC;
	 LoadMin: in STD_LOGIC;
	 Rst    : in  STD_LOGIC;
	  Clk    : in  STD_LOGIC;
	 RingFlag: out STD_LOGIC);
end AlarmMod;

architecture Behavioral of AlarmMod is
	signal alarm_hour_dec : STD_LOGIC_VECTOR (3 downto 0);
	signal alarm_hour_uni : STD_LOGIC_VECTOR (3 downto 0);
	signal alarm_min_dec : STD_LOGIC_VECTOR (3 downto 0);
	signal alarm_min_uni : STD_LOGIC_VECTOR (3 downto 0);
	signal flag : STD_LOGIC;
begin

  process (Clk, Rst,LoadMin,LoadHor,DecEnt,UniEnt,alarm_hour_dec,alarm_hour_uni,alarm_min_dec,alarm_min_uni,DecHor,UniHor,DecMin,UniMin)
		
  begin
	 if (Rst = '1') then 
		alarm_hour_dec <= (others => '0');
		alarm_hour_uni <= (others => '0');
		alarm_min_dec <= (others => '0');
		alarm_min_uni <= (others => '0');
	elsif (rising_edge(Clk)) then
		if (LoadHor = '1') then
			alarm_hour_dec <= DecEnt(3 downto 0);
			alarm_hour_uni <= UniEnt(3 downto 0);
		elsif (LoadMin = '1') then
			alarm_min_dec <= DecEnt(3 downto 0);
			alarm_min_uni <= UniEnt(3 downto 0);
		elsif(alarm_hour_dec = DecHor and alarm_hour_uni = UniHor and alarm_min_dec = DecMin and alarm_min_uni = UniMin)  then
			flag <= '1';
		else
			flag <= '0';
		end if;
	end if;
  end process;
	RingFlag <= flag;
end Behavioral;

