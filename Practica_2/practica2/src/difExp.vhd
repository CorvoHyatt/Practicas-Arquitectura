---------------------------------------------------------------------------------------------------
--
-- Title       : difExp
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : difExp.vhd
-- Generated   : Tue Nov  1 00:32:30 2022
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
--{entity {difExp} architecture {difExp}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;



entity difExp is
	 port(
		 A : in STD_LOGIC_VECTOR(4 downto 0);
		 B : in STD_LOGIC_VECTOR(4 downto 0);
		 signo : out STD_LOGIC;
		 A_B : out STD_LOGIC_VECTOR(4 downto 0);
		 B_A : out STD_LOGIC_VECTOR(4 downto 0)
	     );
end difExp;

--}} End of automatically maintained section

architecture difExp of difExp is
begin
	process	(A,B)
	variable aux : std_logic_vector(4 downto 0);
	begin
		aux := std_logic_vector(unsigned(A(4 downto 0)) - unsigned(B(4 downto 0)));	 
		signo <= aux(4);   
		B_A <= std_logic_vector(unsigned(B(4 downto 0)) - unsigned(A(4 downto 0)));
		A_B <= aux;	 
	end process;
	 -- enter your statements here --

end difExp;
