	---------------------------------------------------------------------------------------------------
--
-- Title       : ComponenteNormalizacion
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : ComponenteNormalizacion.vhd
-- Generated   : Tue Nov  1 00:58:25 2022
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
--{entity {ComponenteNormalizacion} architecture {ComponenteNormalizacion}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;  


entity ComponenteNormalizacion is
	 port(
	 A : in STD_LOGIC_VECTOR(4 downto 0);
	 B : in STD_LOGIC_VECTOR(9 downto 0);
		 out1 : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end ComponenteNormalizacion;

--}} End of automatically maintained section

architecture ComponenteNormalizacion of ComponenteNormalizacion is	
signal aux:STD_LOGIC_VECTOR(9 downto 0);
begin 
	process(B) 
	begin
		aux(9) <= '1';
		aux(8 downto 0) <= B(9 downto 1);
	end process;

	process(A, B, aux)	
	begin 
		case A  is 
			when "00000" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 0));
			when "00001" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 1));
		  	when "00010" =>
			    out1 <= std_logic_vector(shift_right(unsigned(aux), 2));
			when "00011" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 3));
			when "00100" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 4));
		  	when "00101" =>
			    out1 <= std_logic_vector(shift_right(unsigned(aux), 6));
			when "00110" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 5));
			when "00111" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 6));
		  	when "01000" =>
			    out1 <= std_logic_vector(shift_right(unsigned(aux), 7));
			when "01001" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 8));
			when "01010" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 9));
		  	when "01011" =>
			    out1 <= std_logic_vector(shift_right(unsigned(aux), 10));
			when "01100" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 11));
			when "01101" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 12));
		  	when "01110" =>
			    out1 <= std_logic_vector(shift_right(unsigned(aux), 13));
			when "01111" =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 14));	
			when others =>
				out1 <= std_logic_vector(shift_right(unsigned(aux), 0));
			end case;
	end process;
end ComponenteNormalizacion;
