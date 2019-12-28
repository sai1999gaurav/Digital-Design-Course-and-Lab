library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;
  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;

  component FULL_ADDER is
   port (A,B,Cin: in std_logic; S,Cout:out std_logic);
  end component FULL_ADDER;

 component leftone is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; op: out std_logic_vector(7 downto 0));
  end component leftone;
 component leftoneshift is
  port(A: in std_logic_vector(7 downto 0); S, set: in std_logic; op: out std_logic_vector(8 downto 0));
  end component leftoneshift;
 component lefttwo is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; op: out std_logic_vector(7 downto 0));
  end component lefttwo;

 component leftfour is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; op: out std_logic_vector(7 downto 0));
  end component leftfour;
 component leftone_10 is
  port(ip: in std_logic_vector(9 downto 0); S: in std_logic; op: out std_logic_vector(9 downto 0));
  end component leftone_10;

 component lefttwo_10 is
  port(ip: in std_logic_vector(9 downto 0); S: in std_logic; op: out std_logic_vector(9 downto 0));
  end component lefttwo_10;

 component leftfour_10 is
  port(ip: in std_logic_vector(9 downto 0); S: in std_logic; op: out std_logic_vector(9 downto 0));
  end component leftfour_10;
 component rightone is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; b: in std_logic; op: out std_logic_vector(7 downto 0));
  end component rightone;
 component rightone_sp is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; b: in std_logic; op: out std_logic_vector(7 downto 0));
  end component rightone_sp;
 component righttwo is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; op: out std_logic_vector(7 downto 0));
  end component righttwo;

 component rightfour is
  port(ip: in std_logic_vector(7 downto 0); S: in std_logic; op: out std_logic_vector(7 downto 0));
  end component rightfour;
 component MUX is
  port(A,B: in std_logic_vector(7 downto 0); S: in std_logic; C: out std_logic_vector(7 downto 0));
  end component MUX;
 component MUX2 is
  port(A,B: in std_logic; S: in std_logic; C: out std_logic_vector(2 downto 0));
  end component MUX2;
 component MUX3 is
  port(A:in std_logic_vector(7 downto 0); S: in std_logic_vector(2 downto 0); C: out std_logic_vector(8 downto 0));
  end component MUX3;
 component allzero is
  port(ip1, ip2: in std_logic_vector(7 downto 0); op: out std_logic_vector(7 downto 0));
  end component allzero;
 component allzero_10 is
  port(ip1, ip2: in std_logic_vector(9 downto 0); op: out std_logic_vector(9 downto 0));
  end component allzero_10;
end package Gates;

library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;


library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity FULL_ADDER is
   port (A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity FULL_ADDER;

architecture Equations of FULL_ADDER is
begin
   S <= (A xor B) xor Cin;
   Cout <= (A and B) or ( (A xor B) and Cin);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity MUX is
   port(A,B: in std_logic_vector(7 downto 0); S: in std_logic; C: out std_logic_vector(7 downto 0));
end entity MUX;

architecture Equations of MUX is
begin
   C(7) <= (A(7) and S) or (B(7) and (not(S))); 
	C(6) <= (A(6) and S) or (B(6) and (not(S))); 
	C(5) <= (A(5) and S) or (B(5) and (not(S))); 
	C(4) <= (A(4) and S) or (B(4) and (not(S)));
   C(3) <= (A(3) and S) or (B(3) and (not(S))); 
   C(2) <= (A(2) and S) or (B(2) and (not(S))); 
   C(1) <= (A(1) and S) or (B(1) and (not(S))); 
   C(0) <= (A(0) and S) or (B(0) and (not(S))); 	
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity MUX2 is
   port(A,B: in std_logic; S: in std_logic; C: out std_logic_vector(2 downto 0));
end entity MUX2;

architecture Equations of MUX2 is
begin
 C(2)<=A;
  C(1)<=((not S) and (A and (not B))) or ( S and ((not A) and B));	
  C(0)<=S xor B;
end Equations;

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


library ieee;
use ieee.std_logic_1164.all;
entity allzero is
  port(ip1, ip2: in std_logic_vector(7 downto 0); op: out std_logic_vector(7 downto 0));
end entity allzero;

architecture eqn of allzero is
 signal S: std_logic;
begin
  S <= ((ip2(7) or ip2(6)) or (ip2(5) or ip2(4))) or ip2(3);
  op(7) <= '0' when S='1' else ip1(7);
  op(6) <= '0' when S='1' else ip1(6);
  op(5) <= '0' when S='1' else ip1(5);
  op(4) <= '0' when S='1' else ip1(4);
  op(3) <= '0' when S='1' else ip1(3);
  op(2) <= '0' when S='1' else ip1(2);
  op(1) <= '0' when S='1' else ip1(1);
  op(0) <= '0' when S='1' else ip1(0);
end eqn;

library ieee;
use ieee.std_logic_1164.all;
entity allzero_10 is
  port(ip1, ip2: in std_logic_vector(9 downto 0); op: out std_logic_vector(9 downto 0));
end entity allzero_10;

architecture eqn of allzero_10 is
 signal S: std_logic;
begin
  S <= (((ip2(7) or ip2(6)) or (ip2(5) or ip2(4))) or ip2(3)) or (ip2(8) or ip2(9));
  op(9) <= '0' when S='1' else ip1(9);
  op(8) <= '0' when S='1' else ip1(8);
  op(7) <= '0' when S='1' else ip1(7);
  op(6) <= '0' when S='1' else ip1(6);
  op(5) <= '0' when S='1' else ip1(5);
  op(4) <= '0' when S='1' else ip1(4);
  op(3) <= '0' when S='1' else ip1(3);
  op(2) <= '0' when S='1' else ip1(2);
  op(1) <= '0' when S='1' else ip1(1);
  op(0) <= '0' when S='1' else ip1(0);
end eqn;

library ieee;
use ieee.std_logic_1164.all;
entity leftone is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity leftone;
architecture Easy of leftone is
begin
op(7) <= ip(6) when S='1' else ip(7);
op(6) <= ip(5) when S='1' else ip(6);
op(5) <= ip(4) when S='1' else ip(5);
op(4) <= ip(3) when S='1' else ip(4);
op(3) <= ip(2) when S='1' else ip(3);
op(2) <= ip(1) when S='1' else ip(2);
op(1) <= ip(0) when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity leftoneshift is
port(A: in std_logic_vector(7 downto 0); S, set: in std_logic; op: out std_logic_vector(8 downto 0));
end entity leftoneshift;
architecture Easy of leftoneshift is
signal ip: std_logic_vector(7 downto 0);
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
op(7) <= ip(6) when S='1' else ip(7);
op(6) <= ip(5) when S='1' else ip(6);
op(5) <= ip(4) when S='1' else ip(5);
op(4) <= ip(3) when S='1' else ip(4);
op(3) <= ip(2) when S='1' else ip(3);
op(2) <= ip(1) when S='1' else ip(2);
op(1) <= ip(0) when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;


library ieee;
use ieee.std_logic_1164.all;
entity leftone_10 is
port (ip: in std_logic_vector(9 downto 0);
S: in std_logic;
op: out std_logic_vector(9 downto 0));
end entity leftone_10;
architecture Easy of leftone_10 is
begin
op(9) <= ip(8) when S='1' else ip(9);
op(8) <= ip(7) when S='1' else ip(8);
op(7) <= ip(6) when S='1' else ip(7);
op(6) <= ip(5) when S='1' else ip(6);
op(5) <= ip(4) when S='1' else ip(5);
op(4) <= ip(3) when S='1' else ip(4);
op(3) <= ip(2) when S='1' else ip(3);
op(2) <= ip(1) when S='1' else ip(2);
op(1) <= ip(0) when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity lefttwo is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity lefttwo;
architecture Easy of lefttwo is
begin
op(7) <= ip(5) when S='1' else ip(7);
op(6) <= ip(4) when S='1' else ip(6);
op(5) <= ip(3) when S='1' else ip(5);
op(4) <= ip(2) when S='1' else ip(4);
op(3) <= ip(1) when S='1' else ip(3);
op(2) <= ip(0) when S='1' else ip(2);
op(1) <= '0' when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity lefttwo_10 is
port (ip: in std_logic_vector(9 downto 0);
S: in std_logic;
op: out std_logic_vector(9 downto 0));
end entity lefttwo_10;
architecture Easy of lefttwo_10 is
begin
op(9) <= ip(7) when S='1' else ip(9);
op(8) <= ip(6) when S='1' else ip(8);
op(7) <= ip(5) when S='1' else ip(7);
op(6) <= ip(4) when S='1' else ip(6);
op(5) <= ip(3) when S='1' else ip(5);
op(4) <= ip(2) when S='1' else ip(4);
op(3) <= ip(1) when S='1' else ip(3);
op(2) <= ip(0) when S='1' else ip(2);
op(1) <= '0' when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity leftfour is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity leftfour;
architecture Easy of leftfour is
begin
op(7) <= ip(3) when S='1' else ip(7);
op(6) <= ip(2) when S='1' else ip(6);
op(5) <= ip(1) when S='1' else ip(5);
op(4) <= ip(0) when S='1' else ip(4);
op(3) <= '0' when S='1' else ip(3);
op(2) <= '0' when S='1' else ip(2);
op(1) <= '0' when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity leftfour_10 is
port (ip: in std_logic_vector(9 downto 0);
S: in std_logic;
op: out std_logic_vector(9 downto 0));
end entity leftfour_10;
architecture Easy of leftfour_10 is
begin
op(9) <= ip(5) when S='1' else ip(9);
op(8) <= ip(4) when S='1' else ip(8);
op(7) <= ip(3) when S='1' else ip(7);
op(6) <= ip(2) when S='1' else ip(6);
op(5) <= ip(1) when S='1' else ip(5);
op(4) <= ip(0) when S='1' else ip(4);
op(3) <= '0' when S='1' else ip(3);
op(2) <= '0' when S='1' else ip(2);
op(1) <= '0' when S='1' else ip(1);
op(0) <= '0' when S='1' else ip(0);
end Easy;


library ieee;
use ieee.std_logic_1164.all;
entity rightfour is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity rightfour;
architecture Easy of rightfour is
begin
op(7) <= '0' when S='1' else ip(7);
op(6) <= '0' when S='1' else ip(6);
op(5) <= '0' when S='1' else ip(5);
op(4) <= '0' when S='1' else ip(4);
op(3) <= ip(7) when S='1' else ip(3);
op(2) <= ip(6) when S='1' else ip(2);
op(1) <= ip(5) when S='1' else ip(1);
op(0) <= ip(4) when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity righttwo is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity righttwo;
architecture Easy of righttwo is
begin
op(7) <= '0' when S='1' else ip(7);
op(6) <= '0' when S='1' else ip(6);
op(5) <= ip(7) when S='1' else ip(5);
op(4) <= ip(6) when S='1' else ip(4);
op(3) <= ip(5) when S='1' else ip(3);
op(2) <= ip(4) when S='1' else ip(2);
op(1) <= ip(3) when S='1' else ip(1);
op(0) <= ip(2) when S='1' else ip(0);
end Easy;


library ieee;
use ieee.std_logic_1164.all;
entity rightone is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic; b: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity rightone;
architecture Easy of rightone is
begin
op(7) <= b when S='1' else ip(7);
op(6) <= ip(7) when S='1' else ip(6);
op(5) <= ip(6) when S='1' else ip(5);
op(4) <= ip(5) when S='1' else ip(4);
op(3) <= ip(4) when S='1' else ip(3);
op(2) <= ip(3) when S='1' else ip(2);
op(1) <= ip(2) when S='1' else ip(1);
op(0) <= ip(1) when S='1' else ip(0);
end Easy;

library ieee;
use ieee.std_logic_1164.all;
entity rightone_sp is
port (ip: in std_logic_vector(7 downto 0);
S: in std_logic; b: in std_logic;
op: out std_logic_vector(7 downto 0));
end entity rightone_sp;
architecture Easy of rightone_sp is
begin
op(7) <= '1' when S='1' else ip(7);
op(6) <= ip(7) when S='1' else ip(6);
op(5) <= ip(6) when S=ip(6) else ip(5);
op(4) <= ip(5) when S=ip(5) else ip(4);
op(3) <= ip(4) when S=ip(4) else ip(3);
op(2) <= ip(3) when S=ip(3) else ip(2);
op(1) <= ip(2) when S=ip(2) else ip(1);
op(0) <= ip(1) when S=ip(1) else ip(0);
end Easy;
