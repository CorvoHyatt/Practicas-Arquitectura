---------------------------------------------------------------------------------------------------
--
-- Title       : Mux10bits
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : Mux10bits.vhd
-- Generated   : Tue Nov  1 00:45:41 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Mux10bits} architecture {Mux10bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity Mux10bits is
	 port(
		 A : in STD_LOGIC_VECTOR(9 downto 0);
		 B : in STD_LOGIC_VECTOR(9 downto 0);
		 op : in STD_LOGIC;
		 out1 : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end Mux10bits;

--}} End of automatically maintained section

architecture Mux10bits of Mux10bits is
begin

	 	process(op,A,B)
	begin
		if op = '1' then 
			out1 <= A;
		else
			out1 <= B;
		end if;
	end process;

end Mux10bits;
