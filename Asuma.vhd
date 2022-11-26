--signal control: std_logic_vector(3 downto 0) := "0111";
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Asuma is
	 port(
		 carry : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(4 downto 0);
		 B : in STD_LOGIC_VECTOR(4 downto 0);
		 expsal : out STD_LOGIC_VECTOR(5 downto 0)
	     );
end Asuma;


architecture Asuma of Asuma is
signal normalizacion: std_logic_vector(5 downto 0);
begin
	expsal <= std_logic_vector( ((unsigned('0'&A) + unsigned ('0'&B)) + ("110001") + ("0000" &carry) ) );


end Asuma;
