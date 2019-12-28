library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
  port (intr:in std_logic;
    clk,reset:in std_logic;
	 inp: in std_logic_vector(7 downto 0);
    cs,rd,wr,done  : out std_logic;
    output: out std_logic_vector(7 downto 0)    
  ) ;
end entity ; --fsm

architecture arch of fsm is
    --fsm   
 type FsmState is (s1,s2,s3,s4,s5,s6,s7,s8);
 signal fsm_state: FsmState;
 signal Count:std_logic_vector(3 downto 0);
 signal Count2:std_logic_vector(31 downto 0);
 signal W,R,C:std_logic;

 constant Z32:std_logic_vector(31 downto 0):=(others=>'0');

begin
 process(clk,reset,fsm_state,Count,Count2,intr,W,R,C)
    variable next_W,next_R,next_C,done_var:std_logic;
    variable next_count:std_logic_vector(3 downto 0);
    variable next_count2:std_logic_vector(31 downto 0);
    variable next_fsm_state:FsmState;
 begin
    next_W:=W;next_R:=R;next_C:=C;
    next_fsm_state:=fsm_state;
    done_var:='0';
  case fsm_state is
    when s1=>
        next_fsm_state:=s2;
        next_C := '0';
        next_count2 := Z32;
       when s2 =>
                 next_fsm_state := s3;
         next_W := '0';
         next_count := "0000";
         next_count2 := std_logic_vector(unsigned(Count2) + 1);
       when s3 =>
            if (unsigned(Count)>3) then
                  next_fsm_state := s4;
                        next_W := '1';
            end if;
                next_count := std_logic_vector(unsigned(Count) + 1);
                next_count2 := std_logic_vector(unsigned(Count2) + 1);
         when s4 =>
                        next_fsm_state := s5;
                        next_C := '1';
                        next_count2 := std_logic_vector(unsigned(Count2) + 1);
          when s5 =>
                    if(INTR='0') then
                            next_fsm_state := s6;
                            next_C:= '0';
                    end if;
                    next_count2 := std_logic_vector(unsigned(Count2) + 1);
            when s6 =>
                        next_fsm_state := s7;
                        next_R :='0';
                        next_count := "0000";
                    next_count2 := std_logic_vector(unsigned(Count2) + 1);
            when s7 =>
                    if(unsigned(Count)>3) then
                        next_fsm_state := s8;
                        next_R :='1';
                        done_var :='1';
                        output<= inp;
                    end if;   
                    next_count := std_logic_vector(unsigned(Count) + 1);
                    next_count2 := std_logic_vector(unsigned(Count2) + 1);
            when s8 =>
                    if(unsigned(Count2)>49999) then
                        next_fsm_state := s1;
                    end if;
                    next_C := '1';
                    next_count2 := std_logic_vector(unsigned(Count2) + 1);
    end case;

    -- Done is an output of the FSM
    Done <= done_var;
   
    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= s1;
              cs <= '1';
              wr <= '1';
              rd <= '1';
              C <= '1';
              W <= '1';
              R <= '1';
              Count2 <= Z32;
        else
           fsm_state <= next_fsm_state;      
                cs <= next_C;
                rd <= next_R;
                wr <= next_W;
                C <= next_C;
                R <= next_R;
                W <= next_W;
                Count <= next_count;
                Count2 <= next_count2;
        end if;
    end if;
  end process;       
   

end architecture ; -- archt
