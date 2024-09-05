LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY dff_testbench IS
END dff_testbench;
 
ARCHITECTURE behavior OF dff_testbench IS 
 
    COMPONENT dff
    PORT(
		d , reset , clk:in std_logic;
		q					:out std_logic
        );
    END COMPONENT;
       
 
   --constant <clock>_period : time := 10 ns;
	signal d1 , reset1 , clk1 :std_logic := '0';
	signal q1 :std_logic :='0';
BEGIN
   uut: dff PORT MAP (d1 , reset1 , clk1 , q1
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      --wait for <clock>_period*10;
	clk1 <= not clk1 after 5 ns;
	d1<= '1' after 20 ns , '0' after 30 ns , '1' after 40 ns,  '1' after 50 ns ,'0' after 60 ns ;	

      -- insert stimulus here 

      --wait;
   --end process;
	

END;
