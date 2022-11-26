library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity une16bits is
	 port(
		 Z3 : in STD_LOGIC;	
		 sobreflujo : in STD_LOGIC;
		 Z1 : in STD_LOGIC_VECTOR(9 downto 0);
		 Z2 : in STD_LOGIC_VECTOR(4 downto 0);
		 R : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end une16bits;				 
architecture une16bits of une16bits is
signal Z : STD_LOGIC_VECTOR(15 downto 0);
begin
process	(Z1,Z2,Z3,Z,sobreflujo)
begin
	Z(0) <= Z1(0);
	Z(1) <= Z1(1);
	Z(2) <= Z1(2);
	Z(3) <= Z1(3);
	Z(4) <= Z1(4);
	Z(5) <= Z1(5);
	Z(6) <= Z1(6);
	Z(7) <= Z1(7);
	Z(8) <= Z1(8);
	Z(9) <= Z1(9);
	Z(10) <= Z2(0);
	Z(11) <= Z2(1);
	Z(12) <= Z2(2);
	Z(13) <= Z2(3);
	Z(14) <= Z2(4);
	Z(15) <= Z3;   	
	if sobreflujo = '1' then
		R <= "0111110000000000";
	else  
		R <= Z;
	end if;	
	end process;
end une16bits;
