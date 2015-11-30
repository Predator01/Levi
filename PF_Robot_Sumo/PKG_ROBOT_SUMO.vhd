--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package PKG_ROBOT_SUMO is
	-- Types
		-- MOTOR
		type motor_state_values is (MOTOR_HIGH, MOTOR_LOW);
		-- ROBOT
		type robot_state_values is (ROBOT_DETECT, ROBOT_FOWARD, 
											ROBOT_REVERSE, ROBOT_STOP);
		type ultrasonic_state_values is (StartPulse,WaitForResponse,UltrasonicResponse,WaitForNewStart);
	-- Constants
  constant MOTOR_TH_MICOS : integer := 1500;-- in microseconds
  constant MOTOR_TL_MICROS : integer := 18500;
  constant MOTOR_MAX : integer := 20_000;
		-- ROBOT 
		constant ROBOT_MAX : integer := 20_000;
  
  
-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end PKG_ROBOT_SUMO;

package body PKG_ROBOT_SUMO is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end PKG_ROBOT_SUMO;
