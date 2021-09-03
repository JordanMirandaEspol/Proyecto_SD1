library ieee;
use ieee.std_logic_1164.all;

entity puerta_or is
	port(	X,Y: in std_logic;
			S: out std_logic);
end puerta_or;

architecture sol of puerta_or is
	begin
		S<=X or Y;
end sol;