LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY siso_tb IS
END siso_tb;
 
ARCHITECTURE behavior OF siso_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SISO
    PORT(
         input : IN  std_logic;
         clk1 : IN  std_logic;
         clr : INOUT  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal clk1 : std_logic := '0';

	--BiDirs
   signal clr : std_logic;

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SISO PORT MAP (
          input => input,
          clk1 => clk1,
          clr => clr,
          output => output
        );

   -- Clock process definitions
   clk1_process :process
   begin
		clk1 <= '0';
		wait for clk1_period/2;
		clk1 <= '1';
		wait for clk1_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		input <= '1';	
      wait for 10 ns;	
		input<= '0' after 10 ns;
		wait for 10 ns;
		input<= '1' after 20 ns;

      wait for clk1_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
