library ieee;
use ieee.std_logic_1164.all;
--library work;
--use work.Gates.all;
entity left_shift  is
 port(A: in std_logic_vector(7 downto 0); S, set: in std_logic; op: out std_logic_vector(8 downto 0));
end entity left_shift;


architecture design of left_shift is
component MUX is
  port(A,B: in std_logic_vector(7 downto 0); S: in std_logic; C: out std_logic_vector(7 downto 0));
  end component MUX;
signal ip, inp1: std_logic_vector(7 downto 0);
begin
ip(7) <= A(7) and set;
ip(6) <= A(6) and set;
ip(5) <= A(5) and set;
ip(4) <= A(4) and set;
ip(3) <= A(3) and set;
ip(2) <= A(2) and set;
ip(1) <= A(1) and set;
ip(0) <= A(0) and set;
op(8) <=ip(7);
inp1<=ip(6 downto 0) & '0';
m1: MUX port map(A=>inp1, B=>ip, S=>S, C=>op(7 downto 0)); 
end design;
