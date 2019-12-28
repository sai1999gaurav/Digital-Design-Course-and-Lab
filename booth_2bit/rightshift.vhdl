library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity rightshift_16 is
	port(inp: in std_logic_vector(15 downto 0); oup: out std_logic_vector(15 downto 0));
end entity rightshift;
architecture Struct of rightshift is
	signal s1, s2, s3, s4 : std_logic_vector(15 downto 0);
begin
	--component instances
  s4<="00000000" & inp(15 downto 8)
  ls1: rightone_16
    port map(ip=> , S=>inp(0), op=> s1);
  ls2: righttwo_16
    port map(ip=> s1, S=>inp(1), op=> s2);
  ls4: rightfour_16
    port map(ip=> s2, S=>inp(2), op=> s3);
  ls: allzero_16
    port map(ip1=> s3, ip2=> inp(7 downto 0) , op=> oup);

end Struct;
