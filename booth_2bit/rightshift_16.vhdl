library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity rightshift_16 is
	port(inp: in std_logic_vector(15 downto 0); S: in std_logic; oup1: out std_logic_vector(15 downto 0));
end entity rightshift_16;
architecture Struct of rightshift_16 is
 component fa8bit is
  port (a,b : in std_logic_vector(7 downto 0);					--input ports are named and their datatype is defined, a and b are 8 bit inputs to be added
      cin : in std_logic;							--input ports are named and their datatype is defined, cin is the initial carry for addition
   	s : out std_logic_vector(7 downto 0);					--output ports are named and their datatype is defined, s is a 8 bit sum
     cout : out std_logic);	
 end component;
	signal  s5, oup: std_logic_vector(15 downto 0);
        signal c1: std_logic;
begin
	--component instances
s5(15) <= inp(8) when S='1' else inp(15);
s5(14) <= inp(7) when S='1' else inp(14);
s5(13) <= inp(6) when S='1' else inp(13);
s5(12) <= inp(5) when S='1' else inp(12);
s5(11) <= inp(4) when S='1' else inp(11);
s5(10) <= inp(3) when S='1' else inp(10);
s5(9) <= inp(2) when S='1' else inp(9);
s5(8) <=  inp(1) when S='1' else inp(8);
s5(7) <= inp(0) when S='1' else inp(7);
s5(6) <= '0' when S='1' else inp(6);
s5(5) <= '0' when S='1' else inp(5);
s5(4) <= '0' when S='1' else inp(4);
s5(3) <= '0' when S='1' else inp(3);
s5(2) <= '0' when S='1' else inp(2);
s5(1) <= '0' when S='1' else inp(1);
s5(0) <= '0' when S='1' else inp(0);
  oup(15)<= not s5(15);
  oup(14)<= not s5(14);
  oup(13)<= not s5(13);
  oup(12)<= not s5(12);
  oup(11)<= not s5(11);
  oup(10)<= not s5(10);
  oup(9)<= not s5(9);
  oup(8)<= not s5(8);
  oup(7)<= not s5(7);
  oup(6)<= not s5(6);
  oup(5)<= not s5(5);
  oup(4)<= not s5(4);
  oup(3)<= not s5(3);
  oup(2)<= not s5(2);
  oup(1)<= not s5(1);
  oup(0)<= not s5(0);
    f1: fa8bit port map(a=>oup(7 downto 0), b=>"00000001", cin=>'0', s=>oup1(7 downto 0), cout=>c1);
    f2: fa8bit port map(a=>oup(15 downto 8), b=>"00000000", cin=>c1, s=>oup1(15 downto 8));
end Struct;
