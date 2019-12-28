library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity leftshift_10 is
	port(inp: in std_logic_vector(19 downto 0); oup: out std_logic_vector(9 downto 0));
end entity leftshift_10;
architecture Struct of leftshift_10 is
	signal s1, s2, s3 : std_logic_vector(9 downto 0);
begin
	--component instances
  ls1: leftone_10
    port map(ip=> inp(19 downto 10), S=>inp(0), op=> s1);
  ls2: lefttwo_10
    port map(ip=> s1, S=>inp(1), op=> s2);
  ls4: leftfour_10
    port map(ip=> s2, S=>inp(2), op=> s3);
  ls: allzero_10
    port map(ip1=> s3, ip2=> inp(9 downto 0) , op=> oup);

end Struct;
