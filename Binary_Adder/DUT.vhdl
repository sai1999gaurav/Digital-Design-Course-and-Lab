-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0)
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Ripple_bit1_Adder is
  Port ( A: in std_logic_vector(7 downto 0);
S: std_logic_vector(3 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Full_Adder 
			port map (
					-- order of inputs Cin B A
					A => input_vector,
                                        -- order of outputs S Cout
					S => output_vector,
					);

end DutWrap;

