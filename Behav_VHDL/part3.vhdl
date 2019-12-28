library ieee ;
use ieee.std_logic_1164.all ;

entity example_2 is
    port (clock,a:in std_logic;d:out std_logic);
end example_2;

architecture behav_1 of example_2 is
    signal b,c: std_logic:='0';

begin
    process( clock )
        begin
            if(CLOCK='1' and CLOCK'EVENT) then
               
                b<=a;
                c<=b;
                d<=c;
            end if;
    end process;

end behav_1;

architecture behav_2 of example_2 is
    begin
   
    process(clock)
        variable b_v,c_v: std_logic;
   
     begin
        if(CLOCK='1' and CLOCK'EVENT) then
            b_v:=a; --after 1ns;
            c_v:=b_v;--after 1ns;
            d<=c_v;--after 1ns;
        end if;
    end process;
end behav_2;


