library IEEE;
use IEEE.std_logic_1164.all;

entity mux4a1 is
    port (
        y : out std_logic;
       x0, x1, x2, x3,sel0, sel1 : in std_logic
    );
end entity;

architecture arch of mux4a1 is

    -- Señal auxiliar para hacer más legible la selección.
    signal auxSelVect : std_logic_vector (1 downto 0);

begin

    auxSelVect(1) <= sel1;
    auxSelVect(0) <= sel0;

    -- La selección de entrada a poner en la salida..
    y <= x0 when auxSelVect = "00" else
        x1 when auxSelVect = "01" else
        x2 when auxSelVect = "10" else
        x3 when auxSelVect = "11" else
        'U';

end architecture;