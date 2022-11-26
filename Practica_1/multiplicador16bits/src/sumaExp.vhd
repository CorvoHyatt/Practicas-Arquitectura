library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity sumaExp is
	 port(
		 Cin : in STD_LOGIC;
		 expo1 : in STD_LOGIC_VECTOR(4 downto 0);
		 expo2 : in STD_LOGIC_VECTOR(4 downto 0);
		 suma : out STD_LOGIC_VECTOR(4 downto 0);
		 sobreflujo : out STD_LOGIC
	     );
end sumaExp;						 				  

architecture sumaExp of sumaExp is  
signal auxA : signed(5 downto 0);
signal auxB : signed(5 downto 0);
signal exp : signed(5 downto 0);
signal CarryIn : signed(1 downto 0);   
signal auxsuma : signed (5 downto 0);
begin 					 
	
	auxA(5) <=  '0';  
	auxA(4 downto 0) <= signed(expo1);
	auxB(5) <= '0';
	auxB(4 downto 0)<= signed(expo2);
	CarryIn <= signed('0' & Cin);  
	exp <= "001111";
	auxsuma <= signed((auxA + auxB + CarryIn) - exp);  
	suma <= std_logic_vector( auxsuma(4 downto 0));
	sobreflujo <= auxsuma(5);
											
end sumaExp;


