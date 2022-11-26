---------------------------------------------------------------------------------------------------
--
-- Title       : une32bits
-- Design      : multiplicador16bits
-- Author      : Roberto
-- Company     : UTM
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\multiplicador16bitsPF\multiplicador16bits\compile\une32bits.vhd
-- Generated   : Thu Oct 27 00:49:07 2022
-- From        : c:/My_Designs/multiplicador16bitsPF/multiplicador16bits/src/une32bits.bde
-- By          : Bde2Vhdl ver. 2.6
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


entity une32bits is
  port(
       Z3 : in STD_LOGIC;
       Z1 : in STD_LOGIC_VECTOR(9 downto 0);
       Z2 : in STD_LOGIC_VECTOR(4 downto 0);
       ZR : out STD_LOGIC_VECTOR(15 downto 0)
  );
end une32bits;

architecture une32bits of une32bits is

---- Signal declarations used on the diagram ----

signal Z : STD_LOGIC_VECTOR (15 downto 0);

begin

---- Terminal assignment ----

    -- Inputs terminals
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

    -- Output\buffer terminals
	ZR <= z;


end une32bits;
