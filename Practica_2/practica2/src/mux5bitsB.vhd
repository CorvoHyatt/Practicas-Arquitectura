---------------------------------------------------------------------------------------------------
--
-- Title       : mux5bitsB
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux5bitsB.vhd
-- Generated   : Sun Nov  6 00:15:22 2022
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
--{entity {mux5bitsB} architecture {mux5bitsB}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity mux5bitsB is
	 port(
		 op : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(4 downto 0);
		 B : in STD_LOGIC_VECTOR(4 downto 0);
		 out1 : out STD_LOGIC_VECTOR(4 downto 0)
	     );
end mux5bitsB;

--}} End of automatically maintained section

architecture mux5bitsB of mux5bitsB is
begin

	 	process(op,A,B)
	begin
		if op = '0' then 
			out1 <= A;
		else
			out1 <= B;
		end if;
	end process;

end mux5bitsB;
