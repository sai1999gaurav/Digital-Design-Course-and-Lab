library ieee;
use ieee.std_logic_1164.all;
entity MUX4 is
   port(A,B: in std_logic_vector(4 downto 0); S: in std_logic; C: out std_logic_vector(4 downto 0));
end entity MUX4;

architecture Equations of MUX4 is
begin
	C(4) <= (A(4) and S) or (B(4) and (not(S)));
   C(3) <= (A(3) and S) or (B(3) and (not(S))); 
   C(2) <= (A(2) and S) or (B(2) and (not(S))); 
   C(1) <= (A(1) and S) or (B(1) and (not(S))); 
   C(0) <= (A(0) and S) or (B(0) and (not(S))); 	
end Equations;
