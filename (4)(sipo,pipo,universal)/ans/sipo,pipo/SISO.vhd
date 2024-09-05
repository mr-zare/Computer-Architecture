library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SISO is
	--generic (n: integer :=4);
	port(
		input :in std_logic ;--:='1';
		clk1 :in std_logic;
		clr :inout std_logic:='1';
		output : out std_logic_vector(3 downto 0)
		);
end SISO;

architecture Behavioral of SISO is

    component dff is
	port(
		d , reset , clk:in std_logic;
		q ,q_prime:out std_logic
	);
    END COMPONENT;
	 signal t1 ,tt1 , t2 ,tt2 , t3 , tt3 ,t4 , tt4:std_logic:='0';
	 --signal clk : std_logic:='0';
begin
	--clk <= not clk after 10 ns;

	dff1 : dff port map(input , clr , clk1 , tt1, open);
	t1<= tt1 after 5 ns;
	dff2 : dff port map(t1	 , clr , clk1 , tt2, open);
	t2 <= tt2 after 5 ns;
	dff3 : dff port map(t2 , clr , clk1 , tt3, open);
	t3 <= tt3 after 5 ns;
	dff4 : dff port map(t3 , clr , clk1 , tt4, open);
	
	output <= tt1&tt2&tt3&tt4;
	clr <= '0' after 5 ns;
end Behavioral;

