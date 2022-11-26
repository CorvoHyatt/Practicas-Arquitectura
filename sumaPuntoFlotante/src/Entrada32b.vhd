-------------------------------------------------------------------------------
--
-- Title       : Entrada32b
-- Design      : sumaPuntoFlotante
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\Rv_Ru\OneDrive\Documentos\UTM\7mo Semestre\Arquitectura\Practicas\sumaPuntoFlotante\src\Entrada32b.vhd
-- Generated   : Tue Oct 25 08:22:44 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Entrada32b} architecture {Entrada32b}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Entrada32b is
	 port(
		 Signo : out STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(31 downto 0);
		 Exp127 : out STD_LOGIC_VECTOR(7 downto 0);
		 Mantiza : out STD_LOGIC_VECTOR(22 downto 0)
	     );
end Entrada32b;

--}} End of automatically maintained section

architecture Entrada32b of Entrada32b is
begin

	Signo <= A(31);	  
	Exp127 <= A(30 downto 23);
	Mantiza <= A(22 downto 0);

end Entrada32b;
