LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY moore_tb IS
END moore_tb;

ARCHITECTURE behavior OF moore_tb IS 
   signal input, clk : std_logic := '0';
   signal output_moore : std_logic := '0';
   constant clk_period : time := 80 ns;
BEGIN
 
	UUT1 : ENTITY WORK.moore_machine(Behavioral) PORT MAP (input,output_moore,clk);
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	input <= '1' after 40 ns, '0' after 120 ns, '0' after 200 ns,
			 '1' after 280 ns, '0' after 360 ns, '1' after 440 ns,
			 '1' after 520 ns,'0' after 600 ns, '1' after 680 ns;	 
	--reset <= '1' after 140 ns;
END;
