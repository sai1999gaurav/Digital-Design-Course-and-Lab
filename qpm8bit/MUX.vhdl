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
