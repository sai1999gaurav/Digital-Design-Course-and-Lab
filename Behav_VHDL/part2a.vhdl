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
 co<=cin;
 gen_for:
     for i in 0 to 7 generate
             faX: fa port map(a(i), b(i), co(i), sum(i), co(i+1));
           end generate gen_for;
end Behav;