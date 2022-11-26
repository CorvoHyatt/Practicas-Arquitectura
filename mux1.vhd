

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity mux1 is
	 port(
	 entrada : inout STD_LOGIC_VECTOR(21 downto 0);	 
	 bit21: out std_logic;
		 salida : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end mux1;



architecture mux of mux1 is
begin 
	process(entrada)
		begin
	case entrada(21) is
		when'0'=>
		salida<=entrada(19 downto 10);
		when others =>
		salida<=entrada(20 downto 11);
	end case;
	end process;
	bit21<=entrada(21);
	 -- enter your statements here --

end mux;
