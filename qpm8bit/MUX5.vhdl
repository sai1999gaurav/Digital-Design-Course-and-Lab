library ieee;
use ieee.std_logic_1164.all;
entity MUX5 is
   port(m1, m2, m3, m4, m5, m6, m7, m8, m9,S: in std_logic_vector(9 downto 0); C: out std_logic_vector(9 downto 0));
end entity MUX5;

architecture Equations of MUX5 is
signal p: std_logic_vector(9 downto 0);
begin
p(9)<= not S(9);
p(8)<=not(S(9) or S(8));
p(7)<=not(S(9) or S(8) or S(7));
p(6)<=not(S(9) or S(8) or S(6) or S(7));
p(5)<=not(S(9) or S(8) or S(6) or S(7) or S(5));
p(4)<=not(S(9) or S(8) or S(6) or S(7) or S(5) or S(4));
p(3)<=not(S(9) or S(8) or S(6) or S(7) or S(5) or S(4) or S(3));
p(2)<=not(S(9) or S(8) or S(6) or S(7) or S(5) or S(4) or S(3) or S(2));
p(1)<=not(S(9) or S(8) or S(6) or S(7) or S(5) or S(4) or S(3) or S(2) or S(1));
C(9) <= (m1(9) and S(9)) or (m2(9) and S(8) and p(9)) or (m3(9) and S(7) and p(8)) or (m4(9) and S(6) and p(7)) or (m5(9) and S(5) and p(6)) or (m6(9) and S(4) and p(5)) or (m7(9) and S(3) and p(4)) or (m8(9) and S(2) and p(3)) or (m9(9) and S(1) and p(2));
C(8) <= (m1(8) and S(9)) or (m2(8) and S(8) and p(9)) or (m3(8) and S(7) and p(8)) or (m4(8) and S(6) and p(7)) or (m5(8) and S(5) and p(6)) or (m6(8) and S(4) and p(5)) or (m7(8) and S(3) and p(4)) or (m8(8) and S(2) and p(3)) or (m9(8) and S(1) and p(2));
C(7) <= (m1(7) and S(9)) or (m2(7) and S(8) and p(9)) or (m3(7) and S(7) and p(8)) or (m4(7) and S(6) and p(7)) or (m5(7) and S(5) and p(6)) or (m6(7) and S(4) and p(5)) or (m7(7) and S(3) and p(4)) or (m8(7) and S(2) and p(3)) or (m9(7) and S(1) and p(2));
C(6) <= (m1(6) and S(9)) or (m2(6) and S(8) and p(9)) or (m3(6) and S(7) and p(8)) or (m4(6) and S(6) and p(7)) or (m5(6) and S(5) and p(6)) or (m6(6) and S(4) and p(5)) or (m7(6) and S(3) and p(4)) or (m8(6) and S(2) and p(3)) or (m9(6) and S(1) and p(2));
C(5) <= (m1(5) and S(9)) or (m2(5) and S(8) and p(9)) or (m3(5) and S(7) and p(8)) or (m4(5) and S(6) and p(7)) or (m5(5) and S(5) and p(6)) or (m6(5) and S(4) and p(5)) or (m7(5) and S(3) and p(4)) or (m8(5) and S(2) and p(3)) or (m9(5) and S(1) and p(2));
C(4) <= (m1(4) and S(9)) or (m2(4) and S(8) and p(9)) or (m3(4) and S(7) and p(8)) or (m4(4) and S(6) and p(7)) or (m5(4) and S(5) and p(6)) or (m6(4) and S(4) and p(5)) or (m7(4) and S(3) and p(4)) or (m8(4) and S(2) and p(3)) or (m9(4) and S(1) and p(2));
C(3) <= (m1(3) and S(9)) or (m2(3) and S(8) and p(9)) or (m3(3) and S(7) and p(8)) or (m4(3) and S(6) and p(7)) or (m5(3) and S(5) and p(6)) or (m6(3) and S(4) and p(5)) or (m7(3) and S(3) and p(4)) or (m8(3) and S(2) and p(3)) or (m9(3) and S(1) and p(2));
C(2) <= (m1(2) and S(9)) or (m2(2) and S(8) and p(9)) or (m3(2) and S(7) and p(8)) or (m4(2) and S(6) and p(7)) or (m5(2) and S(5) and p(6)) or (m6(2) and S(4) and p(5)) or (m7(2) and S(3) and p(4)) or (m8(2) and S(2) and p(3)) or (m9(2) and S(1) and p(2));
C(1) <= (m1(1) and S(9)) or (m2(1) and S(8) and p(9)) or (m3(1) and S(7) and p(8)) or (m4(1) and S(6) and p(7)) or (m5(1) and S(5) and p(6)) or (m6(1) and S(4) and p(5)) or (m7(1) and S(3) and p(4)) or (m8(1) and S(2) and p(3)) or (m9(1) and S(1) and p(2));
C(0) <= (m1(0) and S(9)) or (m2(0) and S(8) and p(9)) or (m3(0) and S(7) and p(8)) or (m4(0) and S(6) and p(7)) or (m5(0) and S(5) and p(6)) or (m6(0) and S(4) and p(5)) or (m7(0) and S(3) and p(4)) or (m8(0) and S(2) and p(3)) or (m9(0) and S(1) and p(2)); 
end Equations;
