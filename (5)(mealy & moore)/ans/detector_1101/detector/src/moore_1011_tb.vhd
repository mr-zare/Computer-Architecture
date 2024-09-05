LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY moore_tb IS
END moore_tb;

ARCHITECTURE behavior OF moore_tb IS 
   signal input, clk : std_logic := '0';
   signal output_moore : std_logic := '0';
   constant clk_period : time := 80 ns;
BEGIN
 
	UUT1 : ENTITY WORK.moore_1011 (Behavioral) PORT MAP (input,output_moore,clk);
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
END;
