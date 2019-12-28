library ieee;
use ieee.std_logic_1164.all;
entity MUX3 is
  port(A:in std_logic_vector(7 downto 0); S: in std_logic_vector(2 downto 0); C: out std_logic_vector(8 downto 0));
end entity MUX3;

architecture Equations of MUX3 is
signal s1, s2, zero: std_logic;
component left_shift is
  port(A: in std_logic_vector(7 downto 0); S, set: in std_logic; op: out std_logic_vector(8 downto 0));
  end component left_shift;
begin
 s2<= ((not S(2)) and (S(1) and S(0))) or (S(2) and ((not S(1)) and (not S(0))));
 s1<= S(1) xor S(0);
 zero<=s2 or s1;
 l1: left_shift port map(A=>A, S=>s2, set=>zero, op=>C);
end Equations;
