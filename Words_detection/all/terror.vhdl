library ieee;
use ieee.std_logic_1164.all;

entity TERROR is
   port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
end entity;

architecture Behave of TERROR is
  signal q2, q1, q0: std_logic;
begin

  process(r,u,q1,q0,q2, clk)
     -- current state.
     variable q_var : std_logic_vector(2 downto 0);
     -- output
     variable y_var: std_logic;
     -- next-state
     variable nq_var : std_logic_vector(2 downto 0);
  begin
     q_var(1) := q1; q_var(0) := q0; q_var(2) := q2;
     nq_var := q_var; y_var := '0';
     
     -- compute next-state, output
     case q_var is
       when "000" => --rst
          if (u = "10100") then --t
             nq_var := "001";  --t
          else 
             nq_var := "000"; --Rst
          end if;
       when "001" =>  --t
          if (u = "00101") then   
             nq_var := "010";
          else 
             nq_var := "001";
          end if;
       when "010" =>
          if (u = "10010") then --r 
             nq_var := "011";--r1
          else 
             nq_var := "010";
          end if;
       when "011" =>
          if (u = "10010") then --r 
             nq_var := "100";--r2
          else 
             nq_var := "011"; --r1
          end if;
       when "100" =>
          if (u = "01111") then --o 
             nq_var := "101";--o
          else 
             nq_var := "100"; --r2
          end if;
       when "101" =>
          if (u = "10010") then --r 
             nq_var := "110";--r3
             y_var := '1';
          else 
             nq_var := "101"; --o
          end if;
       when others => null;
     end case;
  
     -- y(k)
     y <= y_var;
  
     -- q(k+1) = nq(k)
     if(clk'event and clk = '1') then
          if(r = '1') then
             q2 <= '0'; q1 <= '0'; q0 <= '0';
          else
             q2 <= nq_var (2);
             q1 <= nq_var (1);
             q0 <= nq_var (0);
          end if;
     end if;
  end process;

end Behave;


