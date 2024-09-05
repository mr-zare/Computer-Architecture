-------------------------------------------------------------------------------
--
-- Title       : \or\
-- Design      : HA
-- Author      : Asus
-- Company     : mrs
--
-------------------------------------------------------------------------------
--
-- File        : f:\active_hdl_hw\ha\HA\src\or.vhd
-- Generated   : Wed Oct 19 11:34:49 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {\or\} architecture {\or\}}


 library ieee;
 use IEEE.std_logic_1164.all;
 entity en_or is
   port (
     a1 , b1 :in std_logic ;
     o1 : out std_logic
   ) ;
 end en_or;
 architecture arch_or of  en_or is
 begin
     o1 <= a1 or b1;
 end arch_or; -- arch_and
