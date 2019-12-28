library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;
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
 component leftshift_10 is
  port (ip: in std_logic_vector(7 downto 0); ip2: in std_logic_vector(1 downto 0); S: in std_logic; op: out std_logic_vector(9 downto 0));
 end component;
 signal s1, s2, s3, r1, r2,r5, r7: std_logic_vector(15 downto 0);
 signal q00, q01, q02, q10, q11, q12, q20, q21, q22, q30, q31, q32, p1, p2, p3, p4: std_logic;
 signal n1, n2, n3, n4: std_logic_vector(2 downto 0);
 signal t1, t2, t3, t4 : std_logic_vector(9 downto 0);
begin
 q00<="0";
 q01<=i2(0);
 q02<=i2(1);
 m1: MUX2 port map (A=>q02, B=>q01, S=>q00, C=>n1)
 p1<=not n1(2);
 ls1: leftshift_10 port map(ip=>i1, ip2=>n1,  S=>q02, op=>t1);
 r1<="000000" & t1;
 --or1: OR_3 port map(A=>r1, B=>r2, C=>s1);
 fa0: fa8bit port map(a=>zero16, b=>r1, cin=>p1, s=>s1);
 q10<=i2(1);
 q11<=i2(2);
 q12<=i2(3);
 m2: MUX2 port map (A=>q12, B=>q11, S=>q10, C=>n2)
 p2<=not n2(2); 
 ls3: leftshift_10 port map(ip=>i1,  ip2=>t2, S=>'1', op=>t2);
 r2<="0000" & t2 & "00";
 --or2: OR_3 port map(A=>r3, B=>r4, C=>r01);
 fa1: fa16bit port map(a=>s1, b=>r2, cin=>p2, s=>s2);
 q20<=i2(3);
 q21<=i2(4);
 q22<=i2(5);
 m3: MUX2 port map (A=>q22, B=>q21, S=>q20, C=>n3)
 p3<=not n3(2);
 ls5: leftshift_10 port map(ip=>i1, ip2=>t3, S=>'1', op=>t3);
 r5<="00" & t3 & "0000"; 
 --rs6: rightshift_16 port map(ip=>i1, ip2=>t3, S=>n3(2), op=>r6)
 --or3: OR_3 port map(A=>r5, B=>r6, C=>r02);
 fa2: fa16bit port map(a=>s2, b=>r5, cin=>p3, s=>s3);
 q30<=i2(5);
 q31<=i2(6);
 q32<=i2(7);
 m4: MUX2 port map (A=>q32, B=>q31, S=>q30, C=>n4)
 p4<=not n4(2); 
 ls7: leftshift_10 port map(ip=>i1, ip2=>t4, S=>'1', op=>t4);
 r7<=t4 & "000000";
 --rs8: rightshift_16 port map(ip=>i1,ip2=>t4, S=>n4(2), op=>r8);
 ----or4: OR_3 port map(A=>r7, B=>r8, C=>r03);
 fa3: fa16bit port map(a=>s3, b=>r7, cin=>p4, s=>out1);
end behave;
