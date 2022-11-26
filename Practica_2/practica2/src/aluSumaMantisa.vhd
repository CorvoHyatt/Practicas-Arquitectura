---------------------------------------------------------------------------------------------------
--
-- Title       : aluSumaMantisa
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : aluSumaMantisa.vhd
-- Generated   : Tue Nov  1 00:37:58 2022
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
--{entity {aluSumaMantisa} architecture {aluSumaMantisa}}
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;  
use IEEE.STD_LOGIC_ARITH.all;	  
use IEEE.STD_LOGIC_UNSIGNED.all;


entity alusumamantisa is	  
	port(
		A: in STD_LOGIC_VECTOR(9 downto 0);
		B: in STD_LOGIC_VECTOR(9 downto 0);
		salida1: out STD_LOGIC_VECTOR(9 downto 0);
		salida2: out STD_LOGIC_VECTOR(9 downto 0);
		MSB: out STD_LOGIC
	);
end alusumamantisa;

architecture alusumamantisa of alusumamantisa is

signal aux:STD_LOGIC_VECTOR(11 downto 0);  
signal aux1:STD_LOGIC_VECTOR(11 downto 0);	  
signal aux2:STD_LOGIC_VECTOR(11 downto 0);  
begin
	
	process(A,B)
	begin
		
	aux(11) <= '0';
	aux(10 downto 1) <= A;	
	aux(0) <= '0';
	aux1(11 downto 10) <= "01";
	aux1(9 downto 0) <= B;
	
	
	end process;
	aux2 <= aux1 + aux;
	
	
    process(aux2) 
	begin 
     	MSB <=aux2(11);
		salida1<=aux2(9 downto 0);
		salida2<=aux2(10 downto 1);
    end process;
	
	

end alusumamantisa;
