-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
  component TERROR is
 port (r: in std_logic; u: in std_logic_vector(4 downto 0); y: out std_logic; clk: in std_logic);
 end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: TERROR
			port map (
					-- order of inputs Cin B A
					clk=> input_vector(6),
			            	r=> input_vector(5),
					u=>input_vector(4 downto 0),
                               	
                                        -- order of outputs S Cout
					y => output_vector(0));

end DutWrap;

