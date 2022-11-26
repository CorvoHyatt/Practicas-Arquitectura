library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity mux2a1mul is
	port(		 
		 Ctrl : in STD_LOGIC;
		 a : in STD_LOGIC_VECTOR(9 downto 0);
		 a1 : in STD_LOGIC_VECTOR(9 downto 0);
		 z : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end mux2a1mul;
				 
architecture mux2a1mul of mux2a1mul is
begin
	process(Ctrl,a,a1)
	begin
		if Ctrl = '0' then 
			z <= a;
		else
			z <= a1;
		end if;
	end process;
end mux2a1mul;		

