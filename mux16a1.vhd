library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux16a1 is
port (
      A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15 : in std_logic;
		s0,s1,s2,s3: in std_logic;
     f : out std_logic);
end mux16a1;

architecture Behavioral of mux16a1 is
    signal auxSelVect : std_logic_vector (3 downto 0);
begin
	auxSelVect(3) <= s3;
   auxSelVect(2) <= s2;
	auxSelVect(1) <= s1;
    auxSelVect(0) <= s0;
	f<= A0 when auxSelVect="0000"else
		 A1 when auxSelVect="0001"else
		 A2 when auxSelVect="0010"else
		 A3 when auxSelVect ="0011"else
		 A4 when auxSelVect ="0100"else
		 A5 when auxSelVect ="0101"else
		 A6 when auxSelVect ="0110"else
		 A7 when auxSelVect ="0111"else
		 A8 when auxSelVect ="1000"else
		 A9 when auxSelVect ="1001"else
		 A10 when auxSelVect ="1010"else
		 A11 when auxSelVect ="1011"else
		 A12 when auxSelVect ="1100"else
		 A13 when auxSelVect ="1101"else
		 A14 when auxSelVect ="1110"else
		 A15 when auxSelVect ="1111"else
		 'U';
end Behavioral;