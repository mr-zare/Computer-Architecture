library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity async_4bit_down_counter is
	port(
	clk1  : in std_logic; 
	reset1: inout std_logic:='1';
	output:out std_logic_vector(3 downto 0)
	);
end async_4bit_down_counter;

architecture Behavioral of async_4bit_down_counter is
	component dff is
	port(
		d , reset , clk:in std_logic;
		q ,q_prime :out std_logic
		);
	end component;
	signal temp1 , temp2 :std_logic :='1';
	signal temp3 , temp4:std_logic :='1';
	
begin
	reset1 <= '0' after 10 ns;	
	dff_1 : dff port map (d => temp1 ,reset =>reset1 , clk => clk1 , q_prime => temp1);
		output(0) <= temp1;
	dff_2 : dff port map (d => temp2 ,reset =>reset1 , clk => temp1 , q_prime => temp2);
		output(1) <= temp2;
	dff_3 : dff port map (d => temp3 ,reset =>reset1 , clk => temp2 , q_prime => temp3);
		output(2) <= temp3;
	dff_4 : dff port map (d => temp4 ,reset =>reset1 , clk => temp3 , q_prime => temp4);
		output(3) <= temp4;
end Behavioral;

