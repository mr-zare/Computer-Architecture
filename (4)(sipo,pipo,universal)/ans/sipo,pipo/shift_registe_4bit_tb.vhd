LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY shift_registe_4bit_tb IS
END shift_registe_4bit_tb;
 
ARCHITECTURE behavior OF shift_registe_4bit_tb IS  
    COMPONENT shift_register_4bit
    PORT(
         input : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register_4bit PORT MAP (
          input => input,
          clk => clk,
          clr => clr,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      wait for clk_period*10;
		input <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
