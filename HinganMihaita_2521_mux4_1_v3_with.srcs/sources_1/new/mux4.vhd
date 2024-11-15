library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           y : out STD_LOGIC);
end mux4;



architecture Behavioral of mux4 is

    -- Definirea unui semnal pentru concatenarea lui a1 ?i a2
    signal select_signal : STD_LOGIC_VECTOR(1 downto 0);
    
begin

    -- Concaten?m a1 ?i a2 în select_signal
    select_signal <= a1 & a2;
    
    with select_signal select
        y <= i0 when "00",
             i1 when "01",
             i2 when "10",
             i3 when others;
    
end Behavioral;
