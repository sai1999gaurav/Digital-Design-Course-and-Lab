-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(10 downto 0);
       	output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is
  component mult is
  port (a, b: in std_logic_vector(3 downto 0);
          start: in std_logic;
          p: out std_logic_vector(7 downto 0);
			 Done: out std_logic;
         clk, reset : in std_logic);
 end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mult
			port map (
					-- order of inputs Cin B A
					clk=> input_vector(9),
			      reset=> input_vector(10),
               start=> input_vector(8),
               a=>input_vector(7 downto 4),
					b=>input_vector(3 downto 0),
                               	
                                        -- order of outputs S Cout
					p => output_vector(7 downto 0),
 					Done => output_vector(8));

end DutWrap;
