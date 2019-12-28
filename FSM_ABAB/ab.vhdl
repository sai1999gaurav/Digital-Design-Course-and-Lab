library ieee;
use ieee.std_logic_1164.all;

entity Fsm is
   port (r,u: in std_logic; y: out std_logic; clk: in std_logic);
end entity;

architecture Behave of Fsm is
  signal q2, q1, q0: std_logic;
begin

  process(r,u,q2,q1,q0, clk)
     -- current state.
     variable q_var : std_logic_vector(2 downto 0);
     -- output
     variable y_var: std_logic;
     -- next-state
     variable nq_var : std_logic_vector(2 downto 0);
  begin
     q_var(1) := q1; q_var(0) := q0; q_var(2) :=q2;
     nq_var := q_var; y_var := '0';
     
     -- compute next-state, output
     case q_var is
       when "000" =>--phi
          if (u = '1') then 
             nq_var := "001"; --a
          else 
             nq_var := "010";  --b
          end if;
       when "001" =>--a
          if (u = '1') then 
             nq_var := "001"; --a
          else 
             nq_var := "011"; --ab
          end if;
       when "010" =>--b
          if (u = '1') then 
             nq_var := "100"; --ba
          else 
             nq_var := "010";  --b
          end if;
       when "011" =>--ab
          if (u = '1') then 
             nq_var := "101"; --aba
          else 
             nq_var := "010";  --b
          end if;
       when "100" =>--ba
          if (u = '1') then 
             nq_var := "001"; --a
          else 
             nq_var := "110";  --bab
          end if;
       when "101" =>--aba
          if (u = '1') then 
             nq_var := "001"; --a
          else 
             nq_var := "110";  --bab
             y_var := '1' ; 
          end if;
      when "110" =>--bab
          if (u = '1') then 
             nq_var := "101"; --aba
              y_var := '1' ;
          else 
             nq_var := "010";  --b
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

