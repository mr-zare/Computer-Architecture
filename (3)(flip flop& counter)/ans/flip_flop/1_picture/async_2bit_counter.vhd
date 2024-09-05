library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity async_2bit_counter is
	port(
		reset1  : inout std_logic:='1';
		--clk1 : in std_logic;
		output :out std_logic_vector(1 downto 0)
		);
end async_2bit_counter;

architecture Behavioral of async_2bit_counter is
component dff is
port(
	d , reset , clk:in std_logic;
	q ,q_prime :out std_logic
	);
end component;
	signal temp1 , out1:std_logic:= '1';
	signal temp2 , out2:std_logic:= '1';
	signal clk1 :std_logic:='0';
begin
	reset1 <= '0' after 10 ns;
	clk1 <= not clk1 after 10 ns;
--		dff_back : dff port map (d => temp1 ,reset =>reset1 , clk => clk1 , q_prime => out1);
--		output(0) <= not out1;
--		temp1 <= out1 after 2 ns;
--		dff_forward : dff port map (d => temp2 , reset => reset1 , clk => out1 , q_prime => out2);
--		output(1)<= not out2;
--		temp2 <= out2 after 2 ns;
		dff_back : dff port map (d => temp1 ,reset =>reset1 , clk => clk1 , q_prime => temp1);
		output(0) <= not temp1;
		dff_forward : dff port map (d => temp2 ,reset =>reset1 , clk => temp1 , q_prime => temp2);
		output(1) <= not temp2;
		
end Behavioral;

