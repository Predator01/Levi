----------------------------------------------------------------------------------
-- Company: 		ITESM CQ
-- Engineer: 		Miguel Gonzalez A01203712
-- 
-- Create Date:    14:13:16 11/21/2015 
-- Design Name: 
-- Module Name:    Robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		Main Robot Module
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.0.1 - File Created
-- Revision 1.1.0 - Main Robot Module Implementation
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Robot is
    Port ( 
		in_sonic_1 : in STD_LOGIC;
			-- 0 no detecta # 1 detecta oponente enfrente
      in_color_1 : in  STD_LOGIC; 
			-- 0 negro normal # 1 blanco reversa
		in_clk : in STD_LOGIC;
		in_rst : in STD_LOGIC;
		out_action_1_r : out STD_LOGIC_VECTOR(1 downto 0);
		out_action_2_r : out STD_LOGIC_VECTOR(1 downto 0));
end Robot;

architecture Behavioral of Robot is
	
	type robot_state_values is (ROBOT_DETECT, ROBOT_FOWARD, 
											ROBOT_REVERSE, ROBOT_STOP);
		
	-- seniales embebidas
	-- 1 bit
	signal time_base : STD_LOGIC;
	-- 2 o mas bits
	-- of types
	signal pres_state, next_state: robot_state_values;
	
	-- integers
	signal curr_state_duration : integer range 0 to 20_000;
	
		-- constants
	constant FOSC : integer := 100_000_000;
	constant FDIV : integer :=   1_000_000; --1_000_000
	constant CTAMAX : integer := FOSC / FDIV; 
	-- internal signals
	signal cont : integer range 0 to CTAMAX;
	
	
begin

	-- instanciar componentes
	Freq_Divider: process (in_Rst, in_Clk)
	begin
		if in_rst = '1' then
			cont <= 0;
		elsif (rising_edge(in_clk)) then
			if cont = CTAMAX then
				cont <= 0;
				time_base <= '1';
			else		  
				cont <= cont + 1;
				time_base <= '0';
			end if;
		end if;
	end process Freq_Divider;
	
	statereg: process (in_clk, in_rst, time_base)
	begin
	 if (in_rst='1') then 
			pres_state <= ROBOT_DETECT;
    elsif (rising_edge(in_clk) and time_base = '1') then
			pres_state <= next_state;
    end if;
  end process statereg;
  
		fsm: process (pres_state, in_color_1, in_sonic_1)
	begin
		
    case pres_state is
      when ROBOT_DETECT => 
			if (in_sonic_1 = '1') then
				next_state <= ROBOT_FOWARD;
			else
				next_state <= ROBOT_DETECT;
			end if;
      when ROBOT_FOWARD => 
			if(in_color_1 = '0')then
				next_state <= ROBOT_REVERSE;
			elsif(in_sonic_1 = '0')then -- no detect
				next_state <= ROBOT_STOP;
			else
				next_state <= ROBOT_FOWARD;
			end if;
		when ROBOT_REVERSE =>
			if(in_color_1 = '1') then
				next_state <= ROBOT_STOP;
			else
				next_state <= ROBOT_REVERSE;
			end if;
		when ROBOT_STOP =>
			next_state <= ROBOT_DETECT;
      when others => 
			next_state <= ROBOT_DETECT;
    end case; 
  end process fsm;
  
  
	-- Proceso que describe el bloque "Output Logic"
	outputs: process (pres_state)
	begin
		case pres_state is
			when ROBOT_DETECT => 
				out_action_1_r <= "00"; -- 00 es adelante
				out_action_2_r <= "01"; -- 01 es atras
 			when ROBOT_FOWARD => 	    -- 10 es stop
				out_action_1_r <= "00";
				out_action_2_r <= "00";
			when ROBOT_REVERSE => 
				out_action_1_r <= "01";
				out_action_2_r <= "01";
			when ROBOT_STOP => 
				out_action_1_r <= "10";
				out_action_2_r <= "10";
			when others => 
				out_action_1_r <= "11";
				out_action_2_r <= "11";
		end case;
	end process outputs;

end Behavioral;

