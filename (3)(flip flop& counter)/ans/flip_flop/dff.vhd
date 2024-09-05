
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dff is
port(
	d , reset , clk:in std_logic;
	q ,q_prime:out std_logic
	);
end dff;

architecture dff_behav of dff is

begin
q<= '0' when reset = '1' else
	d when clk'event and clk  = '1';
q_prime <= '1' when reset = '1' else
	not d when clk'event and clk = '1';

end dff_behav;

