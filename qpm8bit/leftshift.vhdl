library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity leftshift is
	port(inp: in std_logic_vector(15 downto 0); oup: out std_logic_vector(7 downto 0));
end entity leftshift;
architecture Struct of leftshift is
	signal s1, s2, s3 : std_logic_vector(7 downto 0);
begin
	--component instances
  ls1: leftone
    port map(ip=> inp(15 downto 8), S=>inp(0), op=> s1);
  ls2: lefttwo
    port map(ip=> s1, S=>inp(1), op=> s2);
  ls4: leftfour
    port map(ip=> s2, S=>inp(2), op=> s3);
  ls: allzero
    port map(ip1=> s3, ip2=> inp(7 downto 0) , op=> oup);

end Struct;