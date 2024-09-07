library ieee;
use ieee.std_logic_1164.all;

entity synchronizer is
    port(
	    clk : 	in std_ulogic;
	    async: 	in std_ulogic;
	    sync: 	out std_ulogic
	);
end entity;

architecture synchronizer_arch of synchronizer is
    
	signal flop_value1 : std_ulogic;
	signal flop_value2 : std_ulogic;

	begin

	D_Flip_Flop : process(clk) 
	    begin
		if rising_edge(clk) then
		    flop_value2 <= flop_value1;
		    flop_value1 <= async;
		end if;
	end process;

	sync <= flop_value2;


end architecture;



