-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
  component Fsm is
 port (r,u: in std_logic; y: out std_logic; clk: in std_logic);
 end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Fsm
			port map (
					-- order of inputs Cin B A
					clk=> input_vector(2),
			            	r=> input_vector(1),
					u=>input_vector(0),
                               	
                                        -- order of outputs S Cout
					y => output_vector(0));

end DutWrap;

