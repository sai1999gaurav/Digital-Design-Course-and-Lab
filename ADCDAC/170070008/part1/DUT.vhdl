-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
  component fsm is
   port (intr:in std_logic;
    inp: in std_logic_vector(7 downto 0);
    clk,reset:in std_logic;
	 output: out std_logic_vector(7 downto 0);
    cs,rd,wr : out std_logic    
  ) ;
 end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fsm
			port map (
					-- order of inputs Cin B A
					clk=> input_vector(9),
			    		reset=> input_vector(10),
            				intr=> input_vector(0),
							inp=>input_vector(8 downto 1),
					output=> output_vector(10 downto 3),
					cs => output_vector(2),
 					wr => output_vector(1),
					rd => output_vector(0));
					--done => output_vector(0));

end DutWrap;

