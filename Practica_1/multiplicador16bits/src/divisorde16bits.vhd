---------------------------------------------------------------------------------------------------
--
-- Title       : separa16bits
-- Design      : multiplicador16bits
-- Author      : Roberto
-- Company     : UTM
--
---------------------------------------------------------------------------------------------------
--
-- File        : divisorde16bits.vhd
-- Generated   : Wed Oct 26 22:06:48 2022
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
--{entity {separa16bits} architecture {separa16bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity separa16bits is
	 port(
		 entrada : in STD_LOGIC_VECTOR(15 downto 0);
		 signo : out STD_LOGIC;
		 exp : out STD_LOGIC_VECTOR(14 downto 10);
		 mant : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end separa16bits;

--}} End of automatically maintained section

architecture separa16bits of separa16bits is
begin

	process (entrada)
   	begin
		signo <= entrada(15);
		exp <= entrada(14 downto 10);
		mant <= entrada(9 downto 0);
	end process;

end separa16bits;
