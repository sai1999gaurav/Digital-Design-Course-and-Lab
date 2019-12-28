library ieee;
use ieee.std_logic_1164.all;
entity MUX6 is
   port(A: in std_logic_vector(2 downto 0); S: in std_logic_vector(2 downto 0); C: out std_logic_vector(4 downto 0));
end entity MUX6;

architecture Equations of MUX6 is
signal s: std_logic;
begin
s<= ((S(2) or S(1)) or S(0));
	C(4 downto 3)<="00";
     C(2 downto 1)<=A(2 downto 1);
     C(0)<= (A(0) and s) or ('1' and (not S));
end Equations;
