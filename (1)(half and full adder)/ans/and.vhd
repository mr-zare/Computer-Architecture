 library IEEE;
 use IEEE.std_logic_1164.all;
 entity en_and is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;
 end en_and ;
 architecture arch_and of en_and  is
 begin
     o1 <= a1 and b1;
 end arch_and; -- arch_and