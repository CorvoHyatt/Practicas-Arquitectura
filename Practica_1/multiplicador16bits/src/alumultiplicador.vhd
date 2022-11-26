library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity aluMultiplicador is
	 port(
		 A : in STD_LOGIC_VECTOR(9 downto 0);
		 B : in STD_LOGIC_VECTOR(9 downto 0);
		 Z : out STD_LOGIC_VECTOR(21 downto 0);	
		 msig:  out STD_LOGIC	 
		 );
		 
end aluMultiplicador;
												 
architecture aluMultiplicador of aluMultiplicador is	
begin
	process	(A,B)
	variable aux1 : STD_LOGIC_VECTOR(10 downto 0);	 
	variable aux2 : STD_LOGIC_VECTOR(10 downto 0);	
	variable c : STD_LOGIC_VECTOR(21 downto 0);
	begin 
		aux1(9 downto 0) := A;
		aux2(9 downto 0) := B;
		aux1(10):= '1';
		aux2(10):= '1';
		c := aux1 * aux2;
		msig <= c(21);
		Z <= c;
	end process;
	
end aluMultiplicador;
