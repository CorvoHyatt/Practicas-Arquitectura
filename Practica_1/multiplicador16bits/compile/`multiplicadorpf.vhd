---------------------------------------------------------------------------------------------------
--
-- Title       : `multiplicadorPF
-- Design      : multiplicador16bits
-- Author      : Roberto
-- Company     : UTM
--
---------------------------------------------------------------------------------------------------
--
-- File        : Z:\multiplicador16bitsPF\multiplicador16bits\compile\`multiplicadorpf.vhd
-- Generated   : Tue Nov  1 13:16:35 2022
-- From        : Z:\multiplicador16bitsPF\multiplicador16bits\src\`multiplicadorpf.bde
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


entity \`multiplicadorPF\ is
  port(
       A : in STD_LOGIC_VECTOR(15 downto 0);
       B : in STD_LOGIC_VECTOR(15 downto 0);
       R : out STD_LOGIC_VECTOR(15 downto 0)
  );
end \`multiplicadorPF\;

architecture \`multiplicadorPF\ of \`multiplicadorPF\ is

---- Component declarations -----

component alumultiplicador
  port (
       A : in STD_LOGIC_VECTOR(9 downto 0);
       B : in STD_LOGIC_VECTOR(9 downto 0);
       Z : out STD_LOGIC_VECTOR(21 downto 0);
       msig : out STD_LOGIC
  );
end component;
component mux2a1mul
  port (
       Ctrl : in STD_LOGIC;
       a : in STD_LOGIC_VECTOR(9 downto 0);
       a1 : in STD_LOGIC_VECTOR(9 downto 0);
       z : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component separa16bits
  port (
       entrada : in STD_LOGIC_VECTOR(15 downto 0);
       exp : out STD_LOGIC_VECTOR(14 downto 10);
       mant : out STD_LOGIC_VECTOR(9 downto 0);
       signo : out STD_LOGIC
  );
end component;
component sumaExp
  port (
       Cin : in STD_LOGIC;
       expo1 : in STD_LOGIC_VECTOR(4 downto 0);
       expo2 : in STD_LOGIC_VECTOR(4 downto 0);
       sobreflujo : out STD_LOGIC;
       suma : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component une16bits
  port (
       Z1 : in STD_LOGIC_VECTOR(9 downto 0);
       Z2 : in STD_LOGIC_VECTOR(4 downto 0);
       Z3 : in STD_LOGIC;
       sobreflujo : in STD_LOGIC;
       R : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET2843 : STD_LOGIC;
signal NET382 : STD_LOGIC;
signal NET571 : STD_LOGIC;
signal NET73 : STD_LOGIC;
signal NET81 : STD_LOGIC;
signal BUS129 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS178 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS195 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS196 : STD_LOGIC_VECTOR (9 downto 0);
signal BUS579 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS613 : STD_LOGIC_VECTOR (9 downto 0);
signal producto : STD_LOGIC_VECTOR (21 downto 0);

begin

----  Component instantiations  ----

U1 : separa16bits
  port map(
       entrada => A,
       exp => BUS129,
       mant => BUS196,
       signo => NET73
  );

U2 : separa16bits
  port map(
       entrada => B,
       exp => BUS195,
       mant => BUS178,
       signo => NET81
  );

NET571 <= NET73 xor NET81;

U4 : sumaExp
  port map(
       Cin => NET382,
       expo1 => BUS129,
       expo2 => BUS195,
       sobreflujo => NET2843,
       suma => BUS579
  );

U5 : alumultiplicador
  port map(
       A => BUS196,
       B => BUS178,
       Z => producto,
       msig => NET382
  );

U6 : mux2a1mul
  port map(
       a(0) => producto(10),
       a(1) => producto(11),
       a(2) => producto(12),
       a(3) => producto(13),
       a(4) => producto(14),
       a(5) => producto(15),
       a(6) => producto(16),
       a(7) => producto(17),
       a(8) => producto(18),
       a(9) => producto(19),
       a1(0) => producto(11),
       a1(1) => producto(12),
       a1(2) => producto(13),
       a1(3) => producto(14),
       a1(4) => producto(15),
       a1(5) => producto(16),
       a1(6) => producto(17),
       a1(7) => producto(18),
       a1(8) => producto(19),
       a1(9) => producto(20),
       Ctrl => NET382,
       z => BUS613
  );

U7 : une16bits
  port map(
       R => R,
       Z1 => BUS613,
       Z2 => BUS579,
       Z3 => NET571,
       sobreflujo => NET2843
  );


end \`multiplicadorPF\;
