---------------------------------------------------------------------------------------------------
--
-- Title       : mux10bitsB
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux10bitsB.vhd
-- Generated   : Sun Nov  6 00:07:41 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 	   a
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {mux10bitsB} architecture {mux10bitsB}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity mux10bitsB is  
	port(
		 A : in STD_LOGIC_VECTOR(9 downto 0);
		 B : in STD_LOGIC_VECTOR(9 downto 0);
		 op : in STD_LOGIC;
		 out1 : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end mux10bitsB;

--}} End of automatically maintained section

architecture mux10bitsB of mux10bitsB is
begin
 			 	process(op,A,B)
	begin
		if op = '0' then 
			out1 <= A;
		else
			out1 <= B;
		end if;
	end process;

end mux10bitsB;
