library ieee;
use ieee.std_logic_1164.all;
entity MUX2 is
   port(A,B: in std_logic_vector(9 downto 0); S: in std_logic; C: out std_logic_vector(9 downto 0));
end entity MUX2;

architecture Equations of MUX2 is
begin
    C(9) <= (A(9) and S) or (B(9) and (not(S))); 
    C(8) <= (A(8) and S) or (B(8) and (not(S))); 
   C(7) <= (A(7) and S) or (B(7) and (not(S))); 
	C(6) <= (A(6) and S) or (B(6) and (not(S))); 
	C(5) <= (A(5) and S) or (B(5) and (not(S))); 
	C(4) <= (A(4) and S) or (B(4) and (not(S)));
   C(3) <= (A(3) and S) or (B(3) and (not(S))); 
   C(2) <= (A(2) and S) or (B(2) and (not(S))); 
   C(1) <= (A(1) and S) or (B(1) and (not(S))); 
   C(0) <= (A(0) and S) or (B(0) and (not(S))); 	
end Equations;
