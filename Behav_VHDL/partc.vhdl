architecture behav_3 of example_1 is
 signal a,b : std_logic:= '0';
begin
 a_proc: process (a) begin
 		a<= not a after 5 ns;
 		   wait on a;
		end process;
 b_proc: process (a) begin
 		b<= not a after 1 ns;
                    wait on a;
		end process;
 c_proc: process (a,b) begin
 		c<= a or b after 1 ns;
		    wait on a,b;
		end process;
 end behav_3;
