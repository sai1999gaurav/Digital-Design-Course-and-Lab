architecture behav_2 of example_1 is
 signal a,b : std_logic:= '0';
begin
 a_proc: process (a) begin
 		a<= not a after 5 ns;
		end process;
 b_proc: process (a) begin
 		b<= not a after 1 ns;
		end process;
 c_proc: process (a,b) begin
 		c<= a or b after 1 ns;
		end process;
 end behav_2;
