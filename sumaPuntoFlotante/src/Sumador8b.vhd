-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : sumaPuntoFlotante
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\Rv_Ru\OneDrive\Documentos\UTM\7mo Semestre\Arquitectura\Practicas\sumaPuntoFlotante\src\Sumador8b.vhd
-- Generated   : Tue Oct 25 08:50:07 2022
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
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
	 port(
		 Cin : in STD_LOGIC;
		 Cout : out STD_LOGIC;
		 A0 : in STD_LOGIC_VECTOR(7 downto 0);
		 A1 : in STD_LOGIC_VECTOR(7 downto 0);
		 Suma : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is
begin					  
	

	 -- enter your statements here --

end ALU;
