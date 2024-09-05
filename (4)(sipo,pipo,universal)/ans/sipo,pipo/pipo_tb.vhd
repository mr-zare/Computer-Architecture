LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY pipo_tb IS
END pipo_tb;
 
ARCHITECTURE behavior OF pipo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PIPO_shift_register
    PORT(
         clk : IN  std_logic;
         D : IN  std_logic_vector(3 downto 0);
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal D : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PIPO_shift_register PORT MAP (
          clk => clk,
          D => D,
          Q => Q
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
      D<="1010";
      wait for 10 ns;	
		D<="1110";
		wait for 10 ns;	
		D<="0000";
		wait for 10 ns;	
		D<="1111";
		wait for 10 ns;	
		D<="1100";

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
