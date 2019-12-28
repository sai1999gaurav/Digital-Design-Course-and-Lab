library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity multiply is
port (X,Y: in std_logic_vector(4 downto 0);
Z: out std_logic_vector(9 downto 0));
end entity multiply;

architecture multiplied of multiply is
signal s2, s3, s4, s5, shifted1,shifted2,shifted3,shifted4,added1,added2,added3,added4,added5,added6, g1, g2, g3, g4, g5, g6: std_logic_vector(9 downto 0);
signal Int1,Int2,Int3,Int4,Int5,Int6,Int7,Int8: std_logic_vector(4 downto 0);
 
component fa10bit is
port (a,b : in std_logic_vector(9 downto 0);					--input ports are named and their datatype is defined, a and b are 8 bit inputs to be added
      cin : in std_logic;							--input ports are named and their datatype is defined, cin is the initial carry for addition
   	s : out std_logic_vector(9 downto 0);					--output ports are named and their datatype is defined, s is a 8 bit sum
     cout : out std_logic);	
end component fa10bit;
component leftshift_10 is
port (inp: in std_logic_vector(19 downto 0); oup: out std_logic_vector(9 downto 0));
end component leftshift_10;

begin
Int1(0) <= (X(0) and Y(0));
Int1(1) <= (X(1) and Y(0));
Int1(2) <= (X(2) and Y(0));
Int1(3) <= (X(3) and Y(0));
Int1(4) <= (X(4) and Y(0));
--Int1(5) <= (X(5) and Y(0));
--Int1(6) <= (X(6) and Y(0));
--Int1(7) <= (X(7) and Y(0));

Int2(0) <= (X(0) and Y(1));
Int2(1) <= (X(1) and Y(1));
Int2(2) <= (X(2) and Y(1));
Int2(3) <= (X(3) and Y(1));
Int2(4) <= (X(4) and Y(1));
--Int2(5) <= (X(5) and Y(1));
--Int2(6) <= (X(6) and Y(1));
--Int2(7) <= (X(7) and Y(1));
s2 <="00000" & Int2;
sl1: leftshift_10
port map(inp(19 downto 10)=>s2 , inp(9 downto 0)=> "0000000001",oup=> shifted1);

Int3(0) <= (X(0) and Y(2));
Int3(1) <= (X(1) and Y(2));
Int3(2) <= (X(2) and Y(2));
Int3(3) <= (X(3) and Y(2));
Int3(4) <= (X(4) and Y(2));
--Int3(5) <= (X(5) and Y(2));
--Int3(6) <= (X(6) and Y(2));
--Int3(7) <= (X(7) and Y(2));
s3<="00000" &Int3;
sl2: leftshift_10
port map(inp(19 downto 10)=>s3 , inp(9 downto 0)=> "0000000010",oup=> shifted2);

Int4(0) <= (X(0) and Y(3));
Int4(1) <= (X(1) and Y(3));
Int4(2) <= (X(2) and Y(3));
Int4(3) <= (X(3) and Y(3));
Int4(4) <= (X(4) and Y(3));
--Int4(5) <= (X(5) and Y(3));
--Int4(6) <= (X(6) and Y(3));
--Int4(7) <= (X(7) and Y(3));
s4<="00000" & Int4;
sl3: leftshift_10
port map(inp(19 downto 10)=> s4, inp(9 downto 0)=> "0000000011",oup=> shifted3);

Int5(0) <= (X(0) and Y(4));
Int5(1) <= (X(1) and Y(4));
Int5(2) <= (X(2) and Y(4));
Int5(3) <= (X(3) and Y(4));
Int5(4) <= (X(4) and Y(4));
--Int5(5) <= (X(5) and Y(4));
--Int5(6) <= (X(6) and Y(4));
--Int5(7) <= (X(7) and Y(4));
s5<="00000" & Int5;
sl4: leftshift_10
port map(inp(19 downto 10)=> s5, inp(9 downto 0)=> "0000000100",oup=> shifted4);

--Int6(0) <= (X(0) and Y(5));
--Int6(1) <= (X(1) and Y(5));
--Int6(2) <= (X(2) and Y(5));
--Int6(3) <= (X(3) and Y(5));
--Int6(4) <= (X(4) and Y(5));
--Int6(5) <= (X(5) and Y(5));
--Int6(6) <= (X(6) and Y(5));
--Int6(7) <= (X(7) and Y(5));
--
--sl5: leftshift
--port map(inp(15 downto 8)=>"000" & Int6, inp(7 downto 0)=> "00000101",oup=> shifted5);
--
--Int7(0) <= (X(0) and Y(6));
--Int7(1) <= (X(1) and Y(6));
--Int7(2) <= (X(2) and Y(6));
--Int7(3) <= (X(3) and Y(6));
--Int7(4) <= (X(4) and Y(6));
--Int7(5) <= (X(5) and Y(6));
--Int7(6) <= (X(6) and Y(6));
--Int7(7) <= (X(7) and Y(6));
--
--sl6: leftshift
--port map(inp(15 downto 8)=>"000" & Int7, inp(7 downto 0)=> "00000110",oup=> shifted6);
--
--Int8(0) <= (X(0) and Y(7));
--Int8(1) <= (X(1) and Y(7));
--Int8(2) <= (X(2) and Y(7));
--Int8(3) <= (X(3) and Y(7));
--Int8(4) <= (X(4) and Y(7));
--Int8(5) <= (X(5) and Y(7));
--Int8(6) <= (X(6) and Y(7));
--Int8(7) <= (X(7) and Y(7));
--
--sl7: leftshift
--port map(inp(15 downto 8)=>"000" & Int8, inp(7 downto 0)=> "00000111",oup=> shifted7);
g1<=shifted4;
g2<=shifted3;
f1: fa10bit
port map(a=> g1,b=> g2, cin=>'0', s=> added1);
g3<=shifted3;
f2: fa10bit
port map(a=>g3 ,b=> added1,cin=>'0', s=> added2); 
g4<=shifted2;
f3: fa10bit
port map(a=> g4,b=> added2,cin=>'0', s=>added3); 
g5<=shifted1;
f4: fa10bit
port map(a=>g5 ,b=> added3,cin=>'0', s=>added4); 
--f5: fa10bit
--port map(a=>"00" &  shifted2,b=> added4,cin=>'0', s=> added5); 
--f6: fa10bit
--port map(a=> "00" & shifted1,b=> added5,cin=>'0', s=> added6); 
g6<="00000" &  Int1;
f7: fa10bit
port map(a=>g6,b=> added4,cin=>'0', s=> Z); 
end multiplied;

