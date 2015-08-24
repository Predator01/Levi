--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Prime_Detector_synthesis.vhd
-- /___/   /\     Timestamp: Mon Aug 24 16:01:36 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Prime_Detector -w -dir netgen/synthesis -ofmt vhdl -sim Prime_Detector.ngc Prime_Detector_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: Prime_Detector.ngc
-- Output file	: D:\ProySisDigAva\P02_Prime_Detector\netgen\synthesis\Prime_Detector_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Prime_Detector
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Prime_Detector is
  port (
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    C : in STD_LOGIC := 'X'; 
    Dout : out STD_LOGIC 
  );
end Prime_Detector;

architecture Structure of Prime_Detector is
  signal A_IBUF_0 : STD_LOGIC; 
  signal B_IBUF_1 : STD_LOGIC; 
  signal C_IBUF_2 : STD_LOGIC; 
  signal Dout_OBUF_3 : STD_LOGIC; 
begin
  Dout1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => A_IBUF_0,
      I1 => C_IBUF_2,
      I2 => B_IBUF_1,
      O => Dout_OBUF_3
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_0
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_1
    );
  C_IBUF : IBUF
    port map (
      I => C,
      O => C_IBUF_2
    );
  Dout_OBUF : OBUF
    port map (
      I => Dout_OBUF_3,
      O => Dout
    );

end Structure;

