library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult is
   port (a, b: in std_logic_vector(3 downto 0);
          start: in std_logic;
          p: out std_logic_vector(7 downto 0);
			 Done: out std_logic;
         clk, reset : in std_logic);
end entity;


-- a direct implementatio of the count down timer...
-- may not be the most efficient...
architecture Behave of mult is
   -- Q
   type FsmState is (IDLE, WORKS, DONESTATE);
   signal fsm_state: FsmState;

   -- R
   signal counter: std_logic_vector(1 downto 0);--
   signal R: std_logic_vector(7 downto 0);--
   signal T:  std_logic_vector(2 downto 0);--
   signal Sum: std_logic_vector(4 downto 0);--
   
   constant zero8 : std_logic_vector(7 downto 0)  := (others  => '0');--
   constant zero3 : std_logic_vector(2 downto 0)  := (others  => '0');--
   constant zero4 : std_logic_vector(3 downto 0)  := (others  => '0');--
   constant zero5 : std_logic_vector(4 downto 0)  := (others  => '0');--
   constant state3: std_logic_vector(1 downto 0)  := "11";--
begin

  process(clk, reset, fsm_state, counter, R, T)
    variable next_counter_var: std_logic_vector(1 downto 0);
    variable next_fsm_state_var: FsmState;
    variable Done_var: std_logic;--
    variable y: std_logic_vector(7 downto 0) ;--
    variable next_T: std_logic_vector(2 downto 0) ;--
    variable next_R : std_logic_vector(7 downto 0) ;--
    variable s1: std_logic_vector(4 downto 0);--
    variable s2: std_logic_vector(4 downto 0);--
  begin
    -- default values.
	 --counter <= "00";
    next_counter_var := counter;--
    next_fsm_state_var := fsm_state;--
    Done_var := '0';--
    y := zero8;--
    next_T := T; --
    next_R := R;--
    s2 := Sum;-- 
    

    -- delta, mu, lambda functions.
    case fsm_state is
       when IDLE => 
            if (Start = '1') then
                  next_fsm_state_var := WORKS;
                  next_R(7) := '0';
                  if (b(0) = '0') then
			           next_R(6 downto 3) := zero4;
                  else
			           next_R(6 downto 3) := a;
		            end if;
                  next_R(2 downto 0) := zero3;
                  s2(3 downto 0)  := a;
	               s2(4)  := '0';
                  next_T := b(3 downto 1);
                  next_counter_var := "00";
  	      else
		            next_fsm_state_var := IDLE;
               end if;
       when WORKS => 
            if (Counter = state3 ) then
                  next_fsm_state_var := DONESTATE;
						Done_var := '1';
						y := R;
	    else
                next_fsm_state_var := WORKS;
		s1(4)  := '0';
		s1(3 downto 0)  := R(7 downto 4);
		next_R(2 downto 0)  := R(3 downto 1);
                if (T(0) = '1') then
			     	next_R(7 downto 3)  := std_logic_vector(unsigned(s1) + unsigned(s2)) ;
                else
				next_R(7 downto 3)  := std_logic_vector(unsigned(s1) + unsigned(zero5)) ;
		end if;
		next_T(1 downto 0) := T(2 downto 1);
		next_T(2) := '0';
                next_counter_var := std_logic_vector(unsigned(counter) + 1);
              end if;
       when DONESTATE => 
               Done_var := '1';
                 -- next_fsm_state_var := WORKS;
                  y := R;
                  next_fsm_state_var := IDLE;
            
    end case;

    -- Done is an output of the FSM
    Done <= Done_var;
     p <= y;
    -- update state, registers.
    if(clk'event and clk='1') then
        if(reset = '1') then
           fsm_state <= IDLE;
			  --counter <= "00";
			 -- R <= "00000000";
			  --T <= "000";
			  --p <= "00000000";
        else
           fsm_state <= next_fsm_state_var; 
           R <= next_R;
           T <= next_T;
           Sum <= s2;
	   counter <= next_counter_var;     
        end if;
    end if;
  end process;

end Behave;
