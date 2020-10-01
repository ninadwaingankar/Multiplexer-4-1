----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:14 08/23/2020 
-- Design Name: 
-- Module Name:    mux_41 - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity mux43 is
	port(
		a,b,c,d:in bit;
		s0,s1:in bit;
		xx:out bit
		);
end mux43;

architecture sequential of mux43 is
begin
	process(a,b,c,d,s0,s1) 

	variable sel:integer;
begin
	if(s0='0' and s1='0') then
		sel:=0;
	elsif(s0='1' and s1='0') then
		sel:=1;
	elsif(s0='0' and s1='1') then
		sel:=2;
	else
		sel:=3;
	end if;
	
	case sel is
		when 0=>
			xx<=a;
		when 1=>
			xx<=b;
		when 2=>
			xx<=c;
		when others=>
			xx<=d;
	end case;
	end process;
end sequential;


