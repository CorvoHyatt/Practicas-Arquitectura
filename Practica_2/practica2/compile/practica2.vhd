---------------------------------------------------------------------------------------------------
--
-- Title       : Practica 2
-- Design      : practica2
-- Author      : CorvoHyatt
-- Company     : CorvoLabs
--
---------------------------------------------------------------------------------------------------
--
-- File        : Z:\Practica_2\practica2\compile\practica2.vhd
-- Generated   : Sun Nov  6 00:19:02 2022
-- From        : Z:\Practica_2\practica2\src\practica2.bde
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


entity practica2 is
  port(
       Input0 : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR(15 downto 0);
       B : in STD_LOGIC_VECTOR(15 downto 0);
       Resultado : out STD_LOGIC_VECTOR(15 downto 0)
  );
end practica2;

architecture practica2 of practica2 is

---- Component declarations -----

component aluSumaExp
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       Cin : in STD_LOGIC;
       out1 : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component aluSumaMantisa
  port (
       A : in STD_LOGIC_VECTOR(9 downto 0);
       B : in STD_LOGIC_VECTOR(9 downto 0);
       MSB : out STD_LOGIC;
       salida1 : out STD_LOGIC_VECTOR(9 downto 0);
       salida2 : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component ComponenteNormalizacion
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(9 downto 0);
       out1 : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component difExp
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(4 downto 0);
       A_B : out STD_LOGIC_VECTOR(4 downto 0);
       B_A : out STD_LOGIC_VECTOR(4 downto 0);
       signo : out STD_LOGIC
  );
end component;
component Mux10bits
  port (
       A : in STD_LOGIC_VECTOR(9 downto 0);
       B : in STD_LOGIC_VECTOR(9 downto 0);
       op : in STD_LOGIC;
       out1 : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component mux10bitsB
  port (
       A : in STD_LOGIC_VECTOR(9 downto 0);
       B : in STD_LOGIC_VECTOR(9 downto 0);
       op : in STD_LOGIC;
       out1 : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component mux5bits
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(4 downto 0);
       op : in STD_LOGIC;
       out1 : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component mux5bitsB
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(4 downto 0);
       op : in STD_LOGIC;
       out1 : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET794 : STD_LOGIC;
signal NET834 : STD_LOGIC;
signal BUS204 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS210 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS361 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS610 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS635 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS641 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS809 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS857 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS861 : STD_LOGIC_VECTOR (9 downto 0);

begin

----  Component instantiations  ----

U1 : aluSumaExp
  port map(
       A => BUS361,
       Cin => NET834,
       out1(0) => Resultado(10),
       out1(1) => Resultado(11),
       out1(2) => Resultado(12),
       out1(3) => Resultado(13),
       out1(4) => Resultado(14)
  );

U2 : difExp
  port map(
       A(0) => A(10),
       A(1) => A(11),
       A(2) => A(12),
       A(3) => A(13),
       A(4) => A(14),
       A_B => BUS210,
       B(0) => B(10),
       B(1) => B(11),
       B(2) => B(12),
       B(3) => B(13),
       B(4) => B(14),
       B_A => BUS204,
       signo => NET794
  );

U3 : mux5bits
  port map(
       A => BUS204,
       B => BUS210,
       op => NET794,
       out1 => BUS610
  );

U4 : mux5bitsB
  port map(
       A(0) => A(10),
       A(1) => A(11),
       A(2) => A(12),
       A(3) => A(13),
       A(4) => A(14),
       B(0) => B(10),
       B(1) => B(11),
       B(2) => B(12),
       B(3) => B(13),
       B(4) => B(14),
       op => NET794,
       out1 => BUS361
  );

U5 : mux10bitsB
  port map(
       A(0) => A(0),
       A(1) => A(1),
       A(2) => A(2),
       A(3) => A(3),
       A(4) => A(4),
       A(5) => A(5),
       A(6) => A(6),
       A(7) => A(7),
       A(8) => A(8),
       A(9) => A(9),
       B(0) => B(0),
       B(1) => B(1),
       B(2) => B(2),
       B(3) => B(3),
       B(4) => B(4),
       B(5) => B(5),
       B(6) => B(6),
       B(7) => B(7),
       B(8) => B(8),
       B(9) => B(9),
       op => NET794,
       out1 => BUS641
  );

U6 : aluSumaMantisa
  port map(
       A => BUS635,
       B => BUS641,
       MSB => NET834,
       salida1 => BUS861,
       salida2 => BUS857
  );

U7 : ComponenteNormalizacion
  port map(
       A => BUS610,
       B => BUS809,
       out1 => BUS635
  );

U8 : Mux10bits
  port map(
       A(0) => A(0),
       A(1) => A(1),
       A(2) => A(2),
       A(3) => A(3),
       A(4) => A(4),
       A(5) => A(5),
       A(6) => A(6),
       A(7) => A(7),
       A(8) => A(8),
       A(9) => A(9),
       B(0) => B(0),
       B(1) => B(1),
       B(2) => B(2),
       B(3) => B(3),
       B(4) => B(4),
       B(5) => B(5),
       B(6) => B(6),
       B(7) => B(7),
       B(8) => B(8),
       B(9) => B(9),
       op => NET794,
       out1 => BUS809
  );

U9 : Mux10bits
  port map(
       A => BUS857,
       B => BUS861,
       out1(0) => Resultado(0),
       out1(1) => Resultado(1),
       out1(2) => Resultado(2),
       out1(3) => Resultado(3),
       out1(4) => Resultado(4),
       out1(5) => Resultado(5),
       out1(6) => Resultado(6),
       out1(7) => Resultado(7),
       out1(8) => Resultado(8),
       out1(9) => Resultado(9),
       op => NET834
  );


---- Terminal assignment ----

    -- Inputs terminals
	Resultado(15) <= Input0;


end practica2;
