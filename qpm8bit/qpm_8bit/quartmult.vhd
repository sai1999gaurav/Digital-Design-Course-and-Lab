library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;

entity quartmult is
 port(A,B : in std_logic_vector(7 downto 0); C: out std_logic_vector(15 downto 0));
end entity quartmult;


architecture behave of quartmult is
component booth2bit is
 port(i1, i2 : in std_logic_vector(7 downto 0);
 out1: out std_logic_vector(15 downto 0));
end component booth2bit;
component fa5bit is
port (a,b : in std_logic_vector(4 downto 0);					--input ports are named and their datatype is defined, a and b are 8 bit inputs to be added
      cin : in std_logic;							--input ports are named and their datatype is defined, cin is the initial carry for addition
   	s : out std_logic_vector(4 downto 0);					--output ports are named and their datatype is defined, s is a 8 bit sum
     cout : out std_logic);	
end component fa5bit;
component MUX2 is
   port(A,B: in std_logic_vector(9 downto 0); S: in std_logic; C: out std_logic_vector(9 downto 0));
end component MUX2;
component MUX4 is
   port(A,B: in std_logic_vector(4 downto 0); S: in std_logic; C: out std_logic_vector(4 downto 0));
end component MUX4;
signal s1 ,s2,s3, s6, e3, e4: std_logic_vector(4 downto 0);
signal e1, e2: std_logic_vector(7 downto 0);
signal mout: std_logic_vector(15 downto 0);
signal m1, m2, s4, s5: std_logic_vector(9 downto 0);
signal nan, zero, zero1, zero2, nana, nanb, inf, infa, infb, sel, sel1: std_logic;
begin

e1<= "0001" & A(3 downto 0);
e2<="0001" & B(3 downto 0);
e3<="00" & A(6 downto 4);
e4<="00" &  B(6 downto 4);
nana<= ((A(6) and A(5)) and A(4));
nanb<=((B(6) and B(5)) and B(4));
nan<= nana or nanb;
infa<= nana and (not(A(3) or A(2) or A(1) or A(0))); 
infb<= nanb and (not(B(3) or B(2) or B(1) or B(0))); 
inf<= infa or infb;
zero1<=((A(6) or A(5)) or (A(4) or A(3))) or ((A(2) or A(1)) or  A(0));
zero2<=((B(6) or B(5)) or (B(4) or B(3))) or ((B(2) or B(1)) or  B(0));
zero<= zero1 and zero2;
mul1: booth2bit port map (i1=>e1, i2=> e2, out1=>mout);
m1<= mout(8 downto 0) & '0';
m2<=mout (7 downto 0) & "00";
mux0: MUX2 port map(A=>m1, B=>m2, S=>mout(9), C=>s4);
sel<=inf or (not zero);
mux01: MUX2 port map(A=>"0000000000", B=>s4, S=>sel, C=>s5);
sel1<= ((nan and (not inf)) or (nan and (not zero)) or (infa and nanb) or (nana and infb)) and (infa nand infb);
mux02: MUX2 port map(B=>s5, A=>"0000000001", S=>sel1, C=>C(9 downto 0));
f1: fa5bit port map (a=>e3, b=>e4, cin=>'0', s=>s1);
mux1: MUX4 port map(A=>"01010", B=>"01001", S=>mout(9), C=>s2);
f2: fa5bit port map(a=>s1, b=>s2, cin=>'0', s=>s3);
muxzero: MUX4 port map(A=>s3, B=>"00000", S=>zero, C=>s6);
muxex: MUX4 port map(B=>s6, A=>"11111", S=>nan, C=>C(14 downto 10));
C(15)<=A(7) xor B(7);
end behave;

