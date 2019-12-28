library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CountDownTimer is
   port (Start: in std_logic;
         Count_in: in std_logic_vector(3 downto 0);
         Done: out std_logic;
         clk, reset : in std_logic);
end entity;


-- a direct implementatio of the count down timer...
-- may not be the most efficient...
architecture Behave of CountDownTimer is
   -- Q
   type FsmState is (IDLE, DECR, DONESTATE);
   signal fsm_state: FsmState;

   -- R
   signal counter: std_logic_vector(3 downto 0);

   -- useful constant.
   constant Z32: std_logic_vector(3 downto 0) := (others => '0');
begin

  process(clk, reset, fsm_state, counter, Start)
    variable next_counter_var: std_logic_vector(3 downto 0);
    variable next_fsm_state_var: FsmState;
    variable Done_var: std_logic;
  begin
    -- default values.
    next_counter_var := counter;
    next_fsm_state_var := fsm_state;
    Done_var := '0';

    -- delta, mu, lambda functions.
    case fsm_state is
       when IDLE => 
            if (Start = '1') then
                  next_fsm_state_var := DECR;
                  next_counter_var := std_logic_vector(unsigned(count_in) - 1);
            end if;
       when DECR => 
            if (counter = Z32) then
                  next_fsm_state_var := DONESTATE;
                  next_counter_var := std_logic_vector(unsigned(counter) - 1);
            else
                  next_fsm_state_var := DECR; 
		  next_counter_var := std_logic_vector(unsigned(counter) - 1);
	   end if;
         
       when DONESTATE => 
            Done_var := '1';
            if (Start = '1') then
                  next_fsm_state_var := DECR;
                  next_counter_var := std_logic_vector(unsigned(count_in) - 1);
            end if;
    end case;

    -- Done is an output of the FSM
    Done <= Done_var;

    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= IDLE;
        else
           fsm_state <= next_fsm_state_var;       
	   counter <= next_counter_var;
        end if;
    end if;
  end process;

end Behave;

