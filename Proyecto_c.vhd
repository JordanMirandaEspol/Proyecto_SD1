library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Proyecto_c is
	port(	C1,C2,T1,T2: in std_logic_vector(1 downto 0);
				D1,D2: IN std_logic;
	        AL1,AL2,AL3,AS: out std_logic);
end Proyecto_c;
architecture resolucion of Proyecto_c is
signal MX1,MX2,ALA1,ALA2,ALA3,ASO: std_logic;
component mux4a1
    port (
        y : out std_logic;
       x0, x1, x2, x3,sel0, sel1 : in std_logic
    );
end component;
component mux16a1 
    port (
      A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 : in std_logic;
		s0,s1,s2,s3: in std_logic;
     f : out std_logic);
end component;
component puerta_or 
   	port(	X,Y: in std_logic;
			S: out std_logic);
end component;
begin
mux161:mux16a1  PORT MAP(
A0 => '0',
A1 => '0',
A2 => '0',
A3 => '1',
A4 => '0',
A5 => '0',
A6 => '0',
A7 => '1',
A8 => '0',
A9 => '0',
A10 => '0',
A11 => '1',
A12 => '1',
A13 => '1',
A14 => '1',
A15 => '1',
s0 => C1(0),
s1 => C1(1),
s2 => C2(0),
s3 => C2(1),
f =>ALA1
);
mux162:mux16a1  PORT MAP(
A0 => '0',
A1 => '0',
A2 => '0',
A3 => '1',
A4 => '0',
A5 => '0',
A6 => '0',
A7 => '1',
A8 => '0',
A9 => '0',
A10 => '0',
A11 => '1',
A12 => '1',
A13 => '1',
A14 => '1',
A15 => '1',
s0 => T1(0),
s1 => T1(1),
s2 => T2(0),
s3 => T2(1),
f =>ALA2
);

OR11:puerta_or  PORT MAP(
X =>ALA2,
Y =>ALA1,
S =>ASO
);
mux41:mux4a1  PORT MAP(
x0 => '1',
x1 => '1',
x2 => '1',
x3 => '0',
sel0 => C2(1),
sel1 => C1(1),
y =>MX1
);
mux42:mux4a1  PORT MAP(
x0 => '0',
x1 => '1',
x2 => '1',
x3 => '1',
sel0 => D1,
sel1 => D2,
y =>MX2
);
OR12:puerta_or  PORT MAP(
X =>MX1,
Y =>MX2,
S =>ALA3
);
 AL1<=ALA1;
 AL2<=ALA2;
 AL3<=ALA3;
 AS<=ASO;
end resolucion;