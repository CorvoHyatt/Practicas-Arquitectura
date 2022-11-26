-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : sumaPuntoFlotante
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\Rv_Ru\OneDrive\Documentos\UTM\7mo Semestre\Arquitectura\Practicas\sumaPuntoFlotante\compile\SumaPuntoFlotante.vhd
-- Generated   : Tue Oct 25 08:40:12 2022
-- From        : c:\Users\Rv_Ru\OneDrive\Documentos\UTM\7mo Semestre\Arquitectura\Practicas\sumaPuntoFlotante\src\SumaPuntoFlotante.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;

entity SumaPuntoFlotante is
  port(
       A : in STD_LOGIC_VECTOR(32 downto 0);
       C : in STD_LOGIC_VECTOR(31 downto 0)
  );
end SumaPuntoFlotante;

architecture SumaPuntoFlotante of SumaPuntoFlotante is

---- Component declarations -----

component Entrada32b
  port(
       Signo : out STD_LOGIC;
       A : in STD_LOGIC_VECTOR(31 downto 0);
       Exp127 : out STD_LOGIC_VECTOR(7 downto 0);
       Mantiza : out STD_LOGIC_VECTOR(22 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal BUS648 : STD_LOGIC_VECTOR(31 downto 0);

begin

----  Component instantiations  ----

U1 : Entrada32b
  port map(
       A => BUS648
  );


end SumaPuntoFlotante;
