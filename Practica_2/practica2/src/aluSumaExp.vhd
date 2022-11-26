---------------------------------------------------------------------------------------------------
--
-- Title       : aluSumaExp
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : aluSumaExp.vhd
-- Generated   : Tue Nov  1 00:55:38 2022
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
--{entity {aluSumaExp} architecture {aluSumaExp}}


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;  
use IEEE.STD_LOGIC_ARITH.all;	  
use IEEE.STD_LOGIC_UNSIGNED.all;


entity aluSumaExp is	  
	port(
		A: in STD_LOGIC_VECTOR(4 downto 0);
		Cin: in STD_LOGIC;
		out1: out STD_LOGIC_VECTOR(4 downto 0)
		);
end aluSumaExp;

--}} End of automatically maintained section

architecture aluSumaExp of aluSumaExp is	 
signal aux: std_logic_vector(4 downto 0);  
begin
	
	aux <="0000" & Cin;	 	 
	out1<= A + aux;			

end aluSumaExp;
