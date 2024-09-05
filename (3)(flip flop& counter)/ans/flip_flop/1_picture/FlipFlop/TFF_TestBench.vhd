library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TFF_tb is
end entity;

architecture tb of TFF_tb is
component T_FLIPFLOP_SOURCE is
Port ( T,CLK,RES : in STD_LOGIC;
Q,QB : out STD_LOGIC);
end component;

signal T,CLK,RES,Q,QB : STD_LOGIC;

begin
uut: T_FLIPFLOP_SOURCE port map(
T => T,
CLK => CLK,
RES => RES,
Q => Q,
QB => QB);

clock : process
begin

CLK <= '0';
wait for 10 ns;
CLK <= '1';
wait for 10 ns;

end process;

stim: process
begin

RES <= '0';

T <= '0';
wait for 20 ns;

T <= '1';
wait for 20 ns;

end process;
end tb;