library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity divisorde32bits is
	 port(
		 AA : in STD_LOGIC_VECTOR(15 downto 0);
		 signo : out STD_LOGIC;
		 expo : out STD_LOGIC_VECTOR(14 downto 10);
		 signif : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end divisorde32bits;							  

architecture divisorde32bits of divisorde32bits is
begin

	process (AA)
	begin
		signo <= AA(15);
		expo <= AA(14 downto 10);
		signif <= AA(9 downto 0);
	end process;

end divisorde32bits;
