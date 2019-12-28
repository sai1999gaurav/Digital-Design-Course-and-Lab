library ieee ;
use ieee.std_logic_1164.all ;

entity adder_8bit is
 port(A,B: in std_logic_vector(7 downto 0); Cin: in std_logic; SUM: out std_logic_vector(7 downto 0));
end entity;

architecture Behav of adder_8bit is
 component fa is
 	Port( a : in STD_LOGIC;
	      b: in STD_LOGIC;
	      cin: in STD_LOGIC;
              sum: out STD_LOGIC;
              cout: out STD_LOGIC);
 end component;
 signal co: std_logic_vector(8 downto 0);
 begin
 co(0)<=cin;
 gen_for:
     for i in 0 to 7 generate
             faX: fa port map(a(i), b(i), co(i), sum(i), co(i+1));
           end generate gen_for;
end Behav;

architecture Behav_2 of adder_8bit is
	signal C: std_logic_vector(8 downto 0);
	begin
	    C(0) <= Cin;
	genAdd: for I in 0 to 7 generate
 		C(I+1) <= ((A(I) or B(I)) and C(I)) or (A(I) and B(I));
		SUM(I) <= A(I) xor B(I) xor C(I);
	end generate genAdd;
end Behav_2;

architecture behave of adder_8bit is
	begin
        process(A,B,Cin)
	  variable Cvar: std_logic;
              begin
		Cvar := Cin;
		for I in 0 to 7 loop
		 SUM(I) <=A(I) xor B(I) xor Cvar;
		 Cvar := ((A(I) or B(I)) and Cvar) or (A(I) and B(I));
                 end loop; 
          end process;
   end behave; 

