library ieee;
use ieee.std_logic_1164.all;

entity add2 is 
		port (i_a, i_b : in std_logic_vector (1 downto 0);
					i_cin : in std_logic;
					o_cout : out std_logic;
					o_sum : out std_logic_vector(1 downto 0)
					);
end add2;

architecture main of add2 is 
	signal coutA : std_logic;
begin

	
	u_add0 : entity work.fulladder(main)
		port map(
			i_a => i_a(0),
			i_b => i_b(0),
			i_cin => i_cin,
			o_sum => o_sum(0),
			o_cout => coutA	
		);

	u_add1 : entity work.fulladder(main)
		port map(
			i_a => i_a(1),
			i_b => i_b(1),
			i_cin => coutA,
			o_sum => o_sum(1),
			o_cout => o_cout	
		);
end main;

