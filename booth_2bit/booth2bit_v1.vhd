library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--library work;
--use work.Gates.all;
entity booth2bit is
 port(i1, i2 : in std_logic_vector(7 downto 0);
 out1: out std_logic_vector(15 downto 0));
end entity;

architecture behave of booth2bit is
 component fa16bit is
  port (a,b : in std_logic_vector(15 downto 0);					--input ports are named and their datatype is defined, a and b are 8 bit inputs to be added
      cin : in std_logic;							--input ports are named and their datatype is defined, cin is the initial carry for addition
   	s : out std_logic_vector(15 downto 0);					--output ports are named and their datatype is defined, s is a 8 bit sum
     cout : out std_logic);	
 end component;
 component MUX3 is
  port(A:in std_logic_vector(7 downto 0); S: in std_logic_vector(2 downto 0); C: out std_logic_vector(8 downto 0));
  end component MUX3;
 signal s1, s2, s3, s4,s6,  op, r1, r2,r5, r7, zero16: std_logic_vector(15 downto 0);
 signal q00, q01, q02, q10, q11, q12, q20, q21, q22, q30, q31, q32: std_logic;
 signal n1, n2, n3, n4: std_logic_vector(2 downto 0);
 signal t1, t2, t3, t4 : std_logic_vector(8 downto 0);
 signal s5 :std_logic_vector(7 downto 0);
begin
 zero16<="0000000000000000";
 q00<='0';
 q01<=i2(0);
 q02<=i2(1);
 m1: MUX3 port map (A=>i1, S(0)=>q00, S(1)=>q01, S(2)=>q02, C=>t1);
 r1<=t1(8) & t1(8) & t1(8) & t1(8) & t1(8) & t1(8) & t1(8) & t1;
 --or1: OR_3 port map(A=>r1, B=>r2, C=>s1);
 fa0: fa16bit port map(a=>zero16, b=>r1, cin=>q02, s=>s1);
 q10<=i2(1);
 q11<=i2(2);
 q12<=i2(3);
 m2: MUX3 port map (A=>i1,  S(0)=>q10, S(1)=>q11, S(2)=>q12, C=>t2);
 r2<=t2(8) & t2(8) & t2(8) & t2(8) & t2(8) & t2 & "00";
 --or2: OR_3 port map(A=>r3, B=>r4, C=>r01);
 fa1: fa16bit port map(a=>s1, b=>r2, cin=>q12, s=>s2);
 q20<=i2(3);
 q21<=i2(4);
 q22<=i2(5);
 m3: MUX3 port map (A=>i1,  S(0)=>q20, S(1)=>q21, S(2)=>q22, C=>t3);
 r5<=t3(8) & t3(8) & t3(8) & t3 & "0000"; 
 --rs6: rightshift_16 port map(ip=>i1, ip2=>t3, S=>n3(2), op=>r6)
 --or3: OR_3 port map(A=>r5, B=>r6, C=>r02);
 fa2: fa16bit port map(a=>s2, b=>r5, cin=>q22, s=>s3);
 q30<=i2(5);
 q31<=i2(6);
 q32<=i2(7);
 m4: MUX3 port map (A=>i1,  S(0)=>q30, S(1)=>q31, S(2)=>q32, C=>t4);
 r7<=t4(8) & t4 & "000000";
 --rs8: rightshift_16 port map(ip=>i1,ip2=>t4, S=>n4(2), op=>r8);
 ----or4: OR_3 port map(A=>r7, B=>r8, C=>r03);
 fa3: fa16bit port map(a=>s3, b=>r7, cin=>q32, s=>out1);
-- op(15)<=s4(15) xor t(9);
-- op(14)<=s4(14) xor t(9);
-- op(13)<=s4(13) xor t(9);
-- op(12)<=s4(12) xor t(9);
-- op(11)<=s4(11) xor t(9);
-- op(10)<=s4(10) xor t(9);
-- op(9)<=s4(9) xor t(9);
-- op(8)<=s4(8) xor t(9);
-- op(7)<=s4(7) xor t(9);
-- op(6)<=s4(6) xor t(9);
-- op(5)<=s4(5) xor t(9);
-- op(4)<=s4(4) xor t(9);
-- op(3)<=s4(3) xor t(9);
-- op(2)<=s4(2) xor t(9);
-- op(1)<=s4(1) xor t(9);
-- op(0)<=s4(0) xor t(9);
-- m5: MUX port map(A=>"00000001", B=>"00000000", S=>t(9), C=>s5);
-- s6<= "00000000" & s5;
-- fa4: fa16bit port map(a=>op, b=>s6, cin=>'0', s=>out1);
end behave;