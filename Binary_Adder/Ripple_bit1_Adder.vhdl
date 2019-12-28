library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Ripple_Adder is
Port ( A: in std_logic_vector(7 downto 0);
S: std_logic_vector(3 downto 0));
end entity Ripple_Adder;
architecture Struct of Ripple_Adder is
 signal C1, C2, C3, C4: std_logic;
begin 
 ha0: Half_Adder 
       port map (A => A(4), B => A(0),S => S(0), Cout =>C1);
  fa1: Full_Adder 
       port map (A => A(5), B => A(1), Cin => C1, S => S(1), Cout =>C2);
 fa2: Full_Adder 
       port map (A => A(6), B => A(2), Cin => C2, S => S(2), Cout =>C3);
 fa3: Full_Adder 
       port map (A => A(7), B => A(3), Cin => C3, S => S(3), Cout =>C4);
end Struct;







