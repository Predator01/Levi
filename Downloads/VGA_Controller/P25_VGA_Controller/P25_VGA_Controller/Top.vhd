--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:03:15 02/23/2010
-- Design Name:   
-- Module Name:   C:/DisSisEmb/P13_VGA/Top.vhd
-- Project Name:  P13_VGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY Top IS
    generic (MX_HS : NATURAL := 800;
		       MX_VS : NATURAL := 521);
				 
    port(Clk     : IN   std_logic;
         Rst     : IN   std_logic;
			Hsync   : OUT  std_logic;
			Vsync   : OUT  std_logic;
         Red     : OUT  std_logic_vector(2 downto 0);
         Green   : OUT  std_logic_vector(2 downto 0);
         Blue    : OUT  std_logic_vector(1 downto 0));
END Top;
 
ARCHITECTURE behavior OF Top IS 
 
    COMPONENT VGA
    PORT(
         Clk    : IN  std_logic;
         Rst    : IN  std_logic;
			Hsync  : OUT  std_logic;
			Vsync  : OUT  std_logic;
         Active : OUT  std_logic;
         X      : OUT  NATURAL range 0 to MX_HS;
         Y      : OUT  NATURAL range 0 to MX_VS);
    END COMPONENT;
	 
	 COMPONENT VGA_Display
    PORT(
         En     : IN   std_logic;
         Xin    : IN   NATURAL range 0 to MX_HS;
			Yin    : IN   NATURAL range 0 to MX_VS;
         R      : OUT  std_logic_vector(2 downto 0);
         G      : OUT  std_logic_vector(2 downto 0);
         B      : OUT  std_logic_vector(1 downto 0));
    END COMPONENT;
    

   --Embedded Signals
	SIGNAL Enable: std_logic;
	SIGNAL Xemb  : NATURAL range 0 to MX_HS;
	SIGNAL Yemb  : NATURAL range 0 to MX_VS;
 
BEGIN
 
	-- Instantiate components
   C01: VGA PORT MAP (
          Clk    => Clk,
          Rst    => Rst,
			 Hsync  => Hsync,
			 Vsync  => Vsync,
          Active => Enable,
          X      => Xemb,
          Y      => Yemb);
			 
   C02: VGA_Display PORT MAP (
          En     => Enable,
			 Xin    => Xemb,
			 Yin    => Yemb,
			 R      => Red,
			 G      => Green,
			 B      => Blue);

END;
