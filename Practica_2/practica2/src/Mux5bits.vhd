---------------------------------------------------------------------------------------------------
--
-- Title       : mux5bits
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : Z:\Practica_2\practica2\src\Mux5bits.vhd
-- Generated   : Tue Nov  1 02:08:13 2022
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
--{entity {mux5bits} architecture {mux5bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity mux5bits is 
	 port(
		 A : in STD_LOGIC_VECTOR(4 downto 0);
		 B : in STD_LOGIC_VECTOR(4 downto 0);
		 op : in STD_LOGIC;
		 Out1 : out STD_LOGIC_VECTOR(4 downto 0)
	     );
end mux5bits;

--}} End of automatically maintained section

architecture mux5bits of mux5bits is
begin

	process(op,A,B)
	begin
		if op = '1' then 
			out1 <= A;
		else
			out1 <= B;
		end if;
	end process;

end mux5bits;
