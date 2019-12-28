library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity ALL1 is
   port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end entity;

architecture Behave of ALL1 is
signal y1, y2, y3, y4, y5, y6: std_logic;

component BOMB is
port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end component BOMB;
component GUN is
port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end component GUN;
component TERROR is
port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end component TERROR;
component KNIFE is
port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end component KNIFE;
begin
     b: BOMB
     port map(r=>r, u=>u, clk=>clk, y=>y1); 
     g: GUN
     port map(r=>r, u=>u, clk=>clk, y=>y2);
     k: KNIFE
     port map(r=>r, u=>u, clk=>clk, y=>y3);
     t: TERROR
     port map(r=>r, u=>u, clk=>clk, y=>y4);   
     o1: OR_2
     port map(A=>y1, B=>y2, Y=>y5);
	  o2: OR_2
     port map(A=>y3, B=>y4, Y=>y6);
	  o3: OR_2
     port map(A=>y5, B=>y6, Y=>y);
end Behave;


