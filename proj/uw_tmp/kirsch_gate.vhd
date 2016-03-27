
-- 
-- Definition of  kirsch
-- 
--      Sat Mar 26 22:52:51 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_11u_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11u_11u_11u_0_0 ;

architecture BEHAVIORAL of add_11u_11u_11u_0_0 is 
   component sim_add
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix36 : sim_add
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10u_10u ;

architecture BEHAVIORAL of gt_10u_10u is 
   component sim_gt
      generic (size : integer := 10;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_gt
      generic map (size => 10,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_4_4 is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_4_4 ;

architecture BEHAVIORAL of select_4_4 is 
   component sim_select
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_select
      generic map (size => 4) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_8u_8u ;

architecture BEHAVIORAL of or_8u_8u is 
   component sim_or
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_or
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_14u_14u is 
   port (
      a : IN std_logic_vector (13 DOWNTO 0) ;
      b : IN std_logic_vector (13 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_14u_14u ;

architecture BEHAVIORAL of gt_14u_14u is 
   component sim_gt
      generic (size : integer := 14;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_gt
      generic map (size => 14,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8u_8u ;

architecture BEHAVIORAL of gt_8u_8u is 
   component sim_gt
      generic (size : integer := 8;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_gt
      generic map (size => 8,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_17u_17u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (16 DOWNTO 0) ;
      d : OUT std_logic_vector (16 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_17u_17u_0_0 ;

architecture BEHAVIORAL of inc_17u_17u_0_0 is 
   component sim_inc
      generic (size : integer := 17) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic_vector (16 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix39 : sim_inc
      generic map (size => 17) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_12u_12u_12u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12u_12u_12u_0 ;

architecture BEHAVIORAL of add_12u_12u_12u_0 is 
   component sim_add
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix30 : sim_add
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   port (
      clk : IN std_logic ;
      we : IN std_logic ;
      address : IN std_logic_vector (7 DOWNTO 0) ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
end clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ;

architecture BEHAVIORAL of clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   component sim_ram
      generic (size : integer := 8;
         sizead : integer := 8;
         numwords : integer := 256;
         use_clk : string := "true";
         use_clk2 : string := "false";
         use_data2 : string := "false";
         use_addr2 : string := "true";
         use_addr3 : string := "false";
         use_addr4 : string := "false";
         use_we : string := "true";
         use_we2 : string := "false";
         use_q2 : string := "false";
         use_raminit : string := "false") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0) ;
         clk2 : IN std_logic ;
         data2 : IN std_logic_vector (7 DOWNTO 0) ;
         addr3 : IN std_logic_vector (7 DOWNTO 0) ;
         addr4 : IN std_logic_vector (7 DOWNTO 0) ;
         we2 : IN std_logic ;
         q2 : OUT std_logic_vector (7 DOWNTO 0) ;
         q3 : OUT std_logic_vector (7 DOWNTO 0) ;
         q4 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;type DANGLING_type is array (0 downto 0,511 downto 0) of 
   std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ix0 : sim_ram
      generic map (size => 8,
         sizead => 8,
         numwords => 256,
         use_clk => "true",
         use_clk2 => "false",
         use_data2 => "false",
         use_addr2 => "true",
         use_addr3 => "false",
         use_addr4 => "false",
         use_we => "true",
         use_we2 => "false",
         use_q2 => "false",
         use_raminit => "false") 
       port map ( clk=>clk, we=>we, address=>address, data=>data, q=>q, 
      addr2=>addr2, clk2=>DANGLING(0,0), data2(7)=>DANGLING(0,1), data2(6)=>
      DANGLING(0,2), data2(5)=>DANGLING(0,3), data2(4)=>DANGLING(0,4), 
      data2(3)=>DANGLING(0,5), data2(2)=>DANGLING(0,6), data2(1)=>
      DANGLING(0,7), data2(0)=>DANGLING(0,8), addr3(7)=>DANGLING(0,9), 
      addr3(6)=>DANGLING(0,10), addr3(5)=>DANGLING(0,11), addr3(4)=>
      DANGLING(0,12), addr3(3)=>DANGLING(0,13), addr3(2)=>DANGLING(0,14), 
      addr3(1)=>DANGLING(0,15), addr3(0)=>DANGLING(0,16), addr4(7)=>
      DANGLING(0,17), addr4(6)=>DANGLING(0,18), addr4(5)=>DANGLING(0,19), 
      addr4(4)=>DANGLING(0,20), addr4(3)=>DANGLING(0,21), addr4(2)=>
      DANGLING(0,22), addr4(1)=>DANGLING(0,23), addr4(0)=>DANGLING(0,24), 
      we2=>DANGLING(0,25), q2(7)=>DANGLING(0,26), q2(6)=>DANGLING(0,27), 
      q2(5)=>DANGLING(0,28), q2(4)=>DANGLING(0,29), q2(3)=>DANGLING(0,30), 
      q2(2)=>DANGLING(0,31), q2(1)=>DANGLING(0,32), q2(0)=>DANGLING(0,33), 
      q3(7)=>DANGLING(0,34), q3(6)=>DANGLING(0,35), q3(5)=>DANGLING(0,36), 
      q3(4)=>DANGLING(0,37), q3(3)=>DANGLING(0,38), q3(2)=>DANGLING(0,39), 
      q3(1)=>DANGLING(0,40), q3(0)=>DANGLING(0,41), q4(7)=>DANGLING(0,42), 
      q4(6)=>DANGLING(0,43), q4(5)=>DANGLING(0,44), q4(4)=>DANGLING(0,45), 
      q4(3)=>DANGLING(0,46), q4(2)=>DANGLING(0,47), q4(1)=>DANGLING(0,48), 
      q4(0)=>DANGLING(0,49));
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_9u_9u ;

architecture BEHAVIORAL of and_9u_9u is 
   component sim_and
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_and
      generic map (size => 9) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_17_cx0_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (16 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (16 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_17_cx0_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_17_cx0_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_17u_17u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic_vector (16 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx55, nx56, nx57, nx58, nx59, nx60, nx61, nx62, nx63, 
      nx64, nx65, nx66, nx67, nx68, nx69, nx70, nx71, nx76, 
      sclear_and_0_dup_202, sclear_and_1_dup_203, sclear_and_2_dup_204, 
      sclear_and_3_dup_205, sclear_and_4_dup_206, sclear_and_5_dup_207, 
      sclear_and_6_dup_208, sclear_and_7_dup_209, sclear_and_8_dup_210, 
      sclear_and_9_dup_211, sclear_and_10_dup_212, sclear_and_11_dup_213, 
      sclear_and_12_dup_214, sclear_and_13_dup_215, sclear_and_14_dup_216, 
      sclear_and_15_dup_217, sclear_and_16_dup_218, inc_d_0, inc_d_1, 
      inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, 
      inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, inc_d_15, inc_d_16, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(16) <= nx71 ;
   q(15) <= nx70 ;
   q(14) <= nx69 ;
   q(13) <= nx68 ;
   q(12) <= nx67 ;
   q(11) <= nx66 ;
   q(10) <= nx65 ;
   q(9) <= nx64 ;
   q(8) <= nx63 ;
   q(7) <= nx62 ;
   q(6) <= nx61 ;
   q(5) <= nx60 ;
   q(4) <= nx59 ;
   q(3) <= nx58 ;
   q(2) <= nx57 ;
   q(1) <= nx56 ;
   q(0) <= nx55 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx76 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_16_dup_218,GND,GND,nx76,clock,nx71) ;
   DFFPCE (sclear_and_15_dup_217,GND,GND,nx76,clock,nx70) ;
   DFFPCE (sclear_and_14_dup_216,GND,GND,nx76,clock,nx69) ;
   DFFPCE (sclear_and_13_dup_215,GND,GND,nx76,clock,nx68) ;
   DFFPCE (sclear_and_12_dup_214,GND,GND,nx76,clock,nx67) ;
   DFFPCE (sclear_and_11_dup_213,GND,GND,nx76,clock,nx66) ;
   DFFPCE (sclear_and_10_dup_212,GND,GND,nx76,clock,nx65) ;
   DFFPCE (sclear_and_9_dup_211,GND,GND,nx76,clock,nx64) ;
   DFFPCE (sclear_and_8_dup_210,GND,GND,nx76,clock,nx63) ;
   DFFPCE (sclear_and_7_dup_209,GND,GND,nx76,clock,nx62) ;
   DFFPCE (sclear_and_6_dup_208,GND,GND,nx76,clock,nx61) ;
   DFFPCE (sclear_and_5_dup_207,GND,GND,nx76,clock,nx60) ;
   DFFPCE (sclear_and_4_dup_206,GND,GND,nx76,clock,nx59) ;
   DFFPCE (sclear_and_3_dup_205,GND,GND,nx76,clock,nx58) ;
   DFFPCE (sclear_and_2_dup_204,GND,GND,nx76,clock,nx57) ;
   DFFPCE (sclear_and_1_dup_203,GND,GND,nx76,clock,nx56) ;
   DFFPCE (sclear_and_0_dup_202,GND,GND,nx76,clock,nx55) ;
   inc : inc_17u_17u_0_0 port map ( cin=>PWR, a(16)=>nx71, a(15)=>nx70, 
      a(14)=>nx69, a(13)=>nx68, a(12)=>nx67, a(11)=>nx66, a(10)=>nx65, a(9)
      =>nx64, a(8)=>nx63, a(7)=>nx62, a(6)=>nx61, a(5)=>nx60, a(4)=>nx59, 
      a(3)=>nx58, a(2)=>nx57, a(1)=>nx56, a(0)=>nx55, d(16)=>inc_d_16, d(15)
      =>inc_d_15, d(14)=>inc_d_14, d(13)=>inc_d_13, d(12)=>inc_d_12, d(11)=>
      inc_d_11, d(10)=>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, 
      d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>
      inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_202 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_203 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_204 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_205 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_206 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_207 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_208 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_209 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_210 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_211 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_212 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_213 <= inc_d_11 AND NOT_sclear ;
   sclear_and_12_dup_214 <= inc_d_12 AND NOT_sclear ;
   sclear_and_13_dup_215 <= inc_d_13 AND NOT_sclear ;
   sclear_and_14_dup_216 <= inc_d_14 AND NOT_sclear ;
   sclear_and_15_dup_217 <= inc_d_15 AND NOT_sclear ;
   sclear_and_16_dup_218 <= inc_d_16 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_0_work_kirsch_main ;

architecture INTERFACE of ram_new_0_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_1_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_1_work_kirsch_main ;

architecture INTERFACE of ram_new_1_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem_0 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_2_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_2_work_kirsch_main ;

architecture INTERFACE of ram_new_2_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem_1 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_14u_14u
      port (
         a : IN std_logic_vector (13 DOWNTO 0) ;
         b : IN std_logic_vector (13 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_17_cx0_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (16 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (16 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component add_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component ram_new_0_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_1_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_2_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_valid_EXMPLR192, o_edge_EXMPLR193: std_logic ;
   
   signal o_mode_EXMPLR257: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR258: std_logic_vector (7 DOWNTO 0) ;
   
   signal pixel_counter_16, GND, pixel_counter_7, pixel_counter_6, 
      pixel_counter_5, pixel_counter_4, pixel_counter_3, pixel_counter_2, 
      pixel_counter_1, pixel_counter_0: std_logic ;
   
   signal last_pixel_complete: std_logic_vector (1 DOWNTO 0) ;
   
   signal row_index: std_logic_vector (2 DOWNTO 0) ;
   
   signal valid_wren: std_logic_vector (2 DOWNTO 0) ;
   
   signal i3: std_logic_vector (7 DOWNTO 0) ;
   
   signal i4: std_logic_vector (7 DOWNTO 0) ;
   
   signal valid_bits_stage1: std_logic_vector (3 DOWNTO 0) ;
   
   signal valid_bits_stage2: std_logic_vector (2 DOWNTO 0) ;
   
   signal r1: std_logic_vector (10 DOWNTO 0) ;
   
   signal r4: std_logic_vector (10 DOWNTO 1) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal r7_12, r7_11, r7_10, r7_9, r7_8, r7_7, r7_6, r7_5, r7_4, r7_3: 
   std_logic ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add3: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4: std_logic_vector (12 DOWNTO 0) ;
   
   signal add5: std_logic_vector (13 DOWNTO 1) ;
   
   signal PWR, rtlc0_copy_n346, not_valid_bits_stage1_0, rtlc1_P5_SS0_n28, 
      not_valid_bits_stage1_1, rtlc3n38, rtlc3n40, rtlc5_P8_SS0_n28, 
      not_rtlcn16, rtlc8n83, rtlc8n96, rtlc8n212, rtlc9n64, rtlc9n79, 
      rtlc9n89, not_rtlc9n385, rtlc9n383, rtlc9n384, rtlc9n385: std_logic ;
   
   signal r1_10n1ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc10n31: std_logic ;
   
   signal r2_11n1ss1: std_logic_vector (12 DOWNTO 0) ;
   
   signal rtlc17n40: std_logic ;
   
   signal rtlc18_r_mode_D_n9: std_logic_vector (1 DOWNTO 0) ;
   
   signal rtlc18n21, not_rtlcn15, conv_table_19n2ss1_63, 
      conv_table_19n2ss1_62, conv_table_19n2ss1_61, conv_table_19n2ss1_60, 
      conv_table_19n2ss1_59, conv_table_19n2ss1_58, conv_table_19n2ss1_57, 
      conv_table_19n2ss1_56, conv_table_19n2ss1_55, conv_table_19n2ss1_54, 
      conv_table_19n2ss1_53, conv_table_19n2ss1_52, conv_table_19n2ss1_51, 
      conv_table_19n2ss1_50, conv_table_19n2ss1_49, conv_table_19n2ss1_48, 
      rtlcn13, rtlcn14, rtlcn15, rtlcn16, rtlcn23, rtlcn27, not_rtlcn27, 
      rtlcn248, not_rtlc4n38, rtlcn256, rtlcn258, not_rtlc3n40: std_logic ;
   
   signal mem_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_0_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_1_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal conv_table_2_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i1_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal i2_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal max1_magnitude: std_logic_vector (7 DOWNTO 0) ;
   
   signal max2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal max2_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal r2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal r3_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r3_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal r5_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5_direction: std_logic_vector (2 DOWNTO 0) ;
   
   signal add2_magnitude: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlcn5771, nx29, not_rtlc17n50, not_rtlc0_copy_n346, 
      rtlc5_43_and_26_nx0, rtlc4n38, NOT_r6_0, nx817, nx823, nx829, nx835, 
      nx841, nx847, nx853, nx859, nx865, nx871, nx877, nx883, nx889, nx895, 
      nx901, nx907: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR192 ;
   o_edge <= o_edge_EXMPLR193 ;
   o_mode(1) <= o_mode_EXMPLR257(1) ;
   o_mode(0) <= o_mode_EXMPLR257(0) ;
   o_row(7) <= o_row_EXMPLR258(7) ;
   o_row(6) <= o_row_EXMPLR258(6) ;
   o_row(5) <= o_row_EXMPLR258(5) ;
   o_row(4) <= o_row_EXMPLR258(4) ;
   o_row(3) <= o_row_EXMPLR258(3) ;
   o_row(2) <= o_row_EXMPLR258(2) ;
   o_row(1) <= o_row_EXMPLR258(1) ;
   o_row(0) <= o_row_EXMPLR258(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   valid_wren(0) <= i_valid AND row_index(0) ;
   valid_wren(1) <= i_valid AND row_index(1) ;
   valid_wren(2) <= i_valid AND row_index(2) ;
   o_dir(0) <= r5_direction(0) AND o_edge_EXMPLR193 ;
   o_dir(1) <= r5_direction(1) AND o_edge_EXMPLR193 ;
   o_dir(2) <= r5_direction(2) AND o_edge_EXMPLR193 ;
   add3_add11_0 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>GND, a(9)
      =>GND, a(8)=>add1(8), a(7)=>add1(7), a(6)=>add1(6), a(5)=>add1(5), 
      a(4)=>add1(4), a(3)=>add1(3), a(2)=>add1(2), a(1)=>add1(1), a(0)=>
      add1(0), b(10)=>r1(10), b(9)=>r1(9), b(8)=>r1(8), b(7)=>r1(7), b(6)=>
      r1(6), b(5)=>r1(5), b(4)=>r1(4), b(3)=>r1(3), b(2)=>r1(2), b(1)=>r1(1), 
      b(0)=>r1(0), d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>
      add3(7), d(6)=>add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), 
      d(2)=>add3(2), d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(0,0));
   rtlc0_copy_n380_gt_1 : gt_10u_10u port map ( a(9)=>r3_magnitude(9), a(8)
      =>r3_magnitude(8), a(7)=>r3_magnitude(7), a(6)=>r3_magnitude(6), a(5)
      =>r3_magnitude(5), a(4)=>r3_magnitude(4), a(3)=>r3_magnitude(3), a(2)
      =>r3_magnitude(2), a(1)=>r3_magnitude(1), a(0)=>r3_magnitude(0), b(9)
      =>r2_magnitude(9), b(8)=>r2_magnitude(8), b(7)=>r2_magnitude(7), b(6)
      =>r2_magnitude(6), b(5)=>r2_magnitude(5), b(4)=>r2_magnitude(4), b(3)
      =>r2_magnitude(3), b(2)=>r2_magnitude(2), b(1)=>r2_magnitude(1), b(0)
      =>r2_magnitude(0), d=>nx29);
   i1_magnitude_select_0Bus35_0 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(0), b(2)=>conv_table_0_0(0), 
      b(1)=>conv_table_2_0(0), b(0)=>conv_table_2_2(0), d=>i1_magnitude(0));
   i1_magnitude_select_0Bus35_1 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(1), b(2)=>conv_table_0_0(1), 
      b(1)=>conv_table_2_0(1), b(0)=>conv_table_2_2(1), d=>i1_magnitude(1));
   i1_magnitude_select_0Bus35_2 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(2), b(2)=>conv_table_0_0(2), 
      b(1)=>conv_table_2_0(2), b(0)=>conv_table_2_2(2), d=>i1_magnitude(2));
   i1_magnitude_select_0Bus35_3 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(3), b(2)=>conv_table_0_0(3), 
      b(1)=>conv_table_2_0(3), b(0)=>conv_table_2_2(3), d=>i1_magnitude(3));
   i1_magnitude_select_0Bus35_4 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(4), b(2)=>conv_table_0_0(4), 
      b(1)=>conv_table_2_0(4), b(0)=>conv_table_2_2(4), d=>i1_magnitude(4));
   i1_magnitude_select_0Bus35_5 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(5), b(2)=>conv_table_0_0(5), 
      b(1)=>conv_table_2_0(5), b(0)=>conv_table_2_2(5), d=>i1_magnitude(5));
   i1_magnitude_select_0Bus35_6 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(6), b(2)=>conv_table_0_0(6), 
      b(1)=>conv_table_2_0(6), b(0)=>conv_table_2_2(6), d=>i1_magnitude(6));
   i1_magnitude_select_0Bus35_7 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_0_2(7), b(2)=>conv_table_0_0(7), 
      b(1)=>conv_table_2_0(7), b(0)=>conv_table_2_2(7), d=>i1_magnitude(7));
   not_valid_bits_stage1_1 <= NOT valid_bits_stage1(1) ;
   not_valid_bits_stage1_0 <= NOT valid_bits_stage1(0) ;
   rtlc1_P5_SS0_n28 <= not_valid_bits_stage1_0 AND valid_bits_stage1(1) ;
   i2_magnitude_select_8Bus36_0 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(0), b(2)=>conv_table_2_1(0), 
      b(1)=>conv_table_1_2(0), b(0)=>conv_table_0_1(0), d=>i2_magnitude(0));
   i2_magnitude_select_8Bus36_1 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(1), b(2)=>conv_table_2_1(1), 
      b(1)=>conv_table_1_2(1), b(0)=>conv_table_0_1(1), d=>i2_magnitude(1));
   i2_magnitude_select_8Bus36_2 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(2), b(2)=>conv_table_2_1(2), 
      b(1)=>conv_table_1_2(2), b(0)=>conv_table_0_1(2), d=>i2_magnitude(2));
   i2_magnitude_select_8Bus36_3 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(3), b(2)=>conv_table_2_1(3), 
      b(1)=>conv_table_1_2(3), b(0)=>conv_table_0_1(3), d=>i2_magnitude(3));
   i2_magnitude_select_8Bus36_4 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(4), b(2)=>conv_table_2_1(4), 
      b(1)=>conv_table_1_2(4), b(0)=>conv_table_0_1(4), d=>i2_magnitude(4));
   i2_magnitude_select_8Bus36_5 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(5), b(2)=>conv_table_2_1(5), 
      b(1)=>conv_table_1_2(5), b(0)=>conv_table_0_1(5), d=>i2_magnitude(5));
   i2_magnitude_select_8Bus36_6 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(6), b(2)=>conv_table_2_1(6), 
      b(1)=>conv_table_1_2(6), b(0)=>conv_table_0_1(6), d=>i2_magnitude(6));
   i2_magnitude_select_8Bus36_7 : select_4_4 port map ( a(3)=>
      valid_bits_stage1(0), a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, 
      a(0)=>not_rtlcn16, b(3)=>conv_table_1_0(7), b(2)=>conv_table_2_1(7), 
      b(1)=>conv_table_1_2(7), b(0)=>conv_table_0_1(7), d=>i2_magnitude(7));
   i3_select_16Bus13_0 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(0), b(2)=>conv_table_1_0(0), b(1)=>
      conv_table_2_1(0), b(0)=>conv_table_1_2(0), d=>i3(0));
   i3_select_16Bus13_1 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(1), b(2)=>conv_table_1_0(1), b(1)=>
      conv_table_2_1(1), b(0)=>conv_table_1_2(1), d=>i3(1));
   i3_select_16Bus13_2 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(2), b(2)=>conv_table_1_0(2), b(1)=>
      conv_table_2_1(2), b(0)=>conv_table_1_2(2), d=>i3(2));
   i3_select_16Bus13_3 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(3), b(2)=>conv_table_1_0(3), b(1)=>
      conv_table_2_1(3), b(0)=>conv_table_1_2(3), d=>i3(3));
   i3_select_16Bus13_4 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(4), b(2)=>conv_table_1_0(4), b(1)=>
      conv_table_2_1(4), b(0)=>conv_table_1_2(4), d=>i3(4));
   i3_select_16Bus13_5 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(5), b(2)=>conv_table_1_0(5), b(1)=>
      conv_table_2_1(5), b(0)=>conv_table_1_2(5), d=>i3(5));
   i3_select_16Bus13_6 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(6), b(2)=>conv_table_1_0(6), b(1)=>
      conv_table_2_1(6), b(0)=>conv_table_1_2(6), d=>i3(6));
   i3_select_16Bus13_7 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_0(7), b(2)=>conv_table_1_0(7), b(1)=>
      conv_table_2_1(7), b(0)=>conv_table_1_2(7), d=>i3(7));
   i4_select_24Bus14_0 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(0), b(2)=>conv_table_2_0(0), b(1)=>
      conv_table_2_2(0), b(0)=>conv_table_0_2(0), d=>i4(0));
   i4_select_24Bus14_1 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(1), b(2)=>conv_table_2_0(1), b(1)=>
      conv_table_2_2(1), b(0)=>conv_table_0_2(1), d=>i4(1));
   i4_select_24Bus14_2 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(2), b(2)=>conv_table_2_0(2), b(1)=>
      conv_table_2_2(2), b(0)=>conv_table_0_2(2), d=>i4(2));
   i4_select_24Bus14_3 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(3), b(2)=>conv_table_2_0(3), b(1)=>
      conv_table_2_2(3), b(0)=>conv_table_0_2(3), d=>i4(3));
   i4_select_24Bus14_4 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(4), b(2)=>conv_table_2_0(4), b(1)=>
      conv_table_2_2(4), b(0)=>conv_table_0_2(4), d=>i4(4));
   i4_select_24Bus14_5 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(5), b(2)=>conv_table_2_0(5), b(1)=>
      conv_table_2_2(5), b(0)=>conv_table_0_2(5), d=>i4(5));
   i4_select_24Bus14_6 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(6), b(2)=>conv_table_2_0(6), b(1)=>
      conv_table_2_2(6), b(0)=>conv_table_0_2(6), d=>i4(6));
   i4_select_24Bus14_7 : select_4_4 port map ( a(3)=>valid_bits_stage1(0), 
      a(2)=>rtlc1_P5_SS0_n28, a(1)=>rtlc5_P8_SS0_n28, a(0)=>not_rtlcn16, 
      b(3)=>conv_table_0_1(7), b(2)=>conv_table_2_0(7), b(1)=>
      conv_table_2_2(7), b(0)=>conv_table_0_2(7), d=>i4(7));
   rtlc8n96 <= last_pixel_complete(0) AND o_valid_EXMPLR192 ;
   rtlc8n83 <= pixel_counter_16 AND valid_bits_stage1(3) ;
   rtlc9n79 <= i_valid AND rtlcn13 ;
   rtlc9n89 <= rtlc9n79 AND rtlcn14 ;
   rtlc9n64 <= i_reset OR not_rtlc9n385 ;
   not_rtlc9n385 <= NOT rtlc9n385 ;
   rtlc9_101_or_38 : or_8u_8u port map ( a(7)=>o_row_EXMPLR258(0), a(6)=>
      pixel_counter_1, a(5)=>pixel_counter_2, a(4)=>pixel_counter_3, a(3)=>
      pixel_counter_4, a(2)=>pixel_counter_5, a(1)=>pixel_counter_6, a(0)=>
      pixel_counter_7, d=>rtlc9n383);
   rtlc9n384 <= rtlc9n383 AND o_row_EXMPLR258(1) ;
   rtlc10n31 <= i_reset OR valid_bits_stage1(0) ;
   rtlc17_10_gt_39 : gt_14u_14u port map ( a(13)=>GND, a(12)=>r7_12, a(11)=>
      r7_11, a(10)=>r7_10, a(9)=>r7_9, a(8)=>r7_8, a(7)=>r7_7, a(6)=>r7_6, 
      a(5)=>r7_5, a(4)=>r7_4, a(3)=>r7_3, a(2)=>GND, a(1)=>GND, a(0)=>GND, 
      b(13)=>add5(13), b(12)=>add5(12), b(11)=>add5(11), b(10)=>add5(10), 
      b(9)=>add5(9), b(8)=>add5(8), b(7)=>add5(7), b(6)=>add5(6), b(5)=>
      add5(5), b(4)=>add5(4), b(3)=>add5(3), b(2)=>add5(2), b(1)=>add5(1), 
      b(0)=>NOT_r6_0, d=>not_rtlc17n50);
   rtlc17n40 <= valid_bits_stage2(2) AND not_rtlc17n50 ;
   rtlc18_r_mode_D_n9(0) <= NOT last_pixel_complete(1) ;
   rtlc18_r_mode_D_n9(1) <= NOT i_reset ;
   rtlc18n21 <= i_valid OR i_reset ;
   not_rtlcn15 <= NOT rtlcn15 ;
   not_rtlcn16 <= NOT rtlcn16 ;
   rtlcn15 <= o_mode_EXMPLR257(1) OR rtlc18n21 ;
   rtlcn23 <= not_valid_bits_stage1_1 AND valid_bits_stage1(2) ;
   rtlc3n40 <= valid_bits_stage1(0) OR rtlcn23 ;
   rtlcn27 <= valid_bits_stage1(1) OR valid_bits_stage1(2) ;
   not_rtlcn27 <= NOT rtlcn27 ;
   rtlc3n38 <= valid_bits_stage1(0) OR not_rtlcn27 ;
   rtlc_100_gt_41 : gt_8u_8u port map ( a(7)=>i2_magnitude(7), a(6)=>
      i2_magnitude(6), a(5)=>i2_magnitude(5), a(4)=>i2_magnitude(4), a(3)=>
      i2_magnitude(3), a(2)=>i2_magnitude(2), a(1)=>i2_magnitude(1), a(0)=>
      i2_magnitude(0), b(7)=>i1_magnitude(7), b(6)=>i1_magnitude(6), b(5)=>
      i1_magnitude(5), b(4)=>i1_magnitude(4), b(3)=>i1_magnitude(3), b(2)=>
      i1_magnitude(2), b(1)=>i1_magnitude(1), b(0)=>i1_magnitude(0), d=>
      not_rtlc0_copy_n346);
   rtlc0_copy_n346 <= NOT not_rtlc0_copy_n346 ;
   not_rtlc4n38 <= NOT rtlc4n38 ;
   rtlcn256 <= not_rtlc0_copy_n346 AND not_rtlc4n38 ;
   rtlcn258 <= rtlc0_copy_n346 AND rtlc3n38 ;
   rtlcn248 <= rtlcn256 OR rtlcn258 ;
   not_rtlc3n40 <= NOT rtlc3n40 ;
   max1_magnitude(0) <= i2_magnitude(0) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(0) ;
   max1_magnitude(1) <= i2_magnitude(1) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(1) ;
   max1_magnitude(2) <= i2_magnitude(2) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(2) ;
   max1_magnitude(3) <= i2_magnitude(3) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(3) ;
   max1_magnitude(4) <= i2_magnitude(4) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(4) ;
   max1_magnitude(5) <= i2_magnitude(5) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(5) ;
   max1_magnitude(6) <= i2_magnitude(6) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(6) ;
   max1_magnitude(7) <= i2_magnitude(7) when not_rtlc0_copy_n346 = '1' else 
   i1_magnitude(7) ;
   max2_magnitude(0) <= r3_magnitude(0) when nx29 = '1' else r2_magnitude(0)
    ;
   max2_magnitude(1) <= r3_magnitude(1) when nx29 = '1' else r2_magnitude(1)
    ;
   max2_magnitude(2) <= r3_magnitude(2) when nx29 = '1' else r2_magnitude(2)
    ;
   max2_magnitude(3) <= r3_magnitude(3) when nx29 = '1' else r2_magnitude(3)
    ;
   max2_magnitude(4) <= r3_magnitude(4) when nx29 = '1' else r2_magnitude(4)
    ;
   max2_magnitude(5) <= r3_magnitude(5) when nx29 = '1' else r2_magnitude(5)
    ;
   max2_magnitude(6) <= r3_magnitude(6) when nx29 = '1' else r2_magnitude(6)
    ;
   max2_magnitude(7) <= r3_magnitude(7) when nx29 = '1' else r2_magnitude(7)
    ;
   max2_magnitude(8) <= r3_magnitude(8) when nx29 = '1' else r2_magnitude(8)
    ;
   max2_magnitude(9) <= r3_magnitude(9) when nx29 = '1' else r2_magnitude(9)
    ;
   max2_direction(0) <= r3_direction(0) when nx29 = '1' else r2_direction(0)
    ;
   max2_direction(1) <= r3_direction(1) when nx29 = '1' else r2_direction(1)
    ;
   max2_direction(2) <= r3_direction(2) when nx29 = '1' else r2_direction(2)
    ;
   r1_10n1ss1(0) <= add1(0) when valid_bits_stage1(0) = '1' else add3(0) ;
   r1_10n1ss1(1) <= add1(1) when valid_bits_stage1(0) = '1' else add3(1) ;
   r1_10n1ss1(2) <= add1(2) when valid_bits_stage1(0) = '1' else add3(2) ;
   r1_10n1ss1(3) <= add1(3) when valid_bits_stage1(0) = '1' else add3(3) ;
   r1_10n1ss1(4) <= add1(4) when valid_bits_stage1(0) = '1' else add3(4) ;
   r1_10n1ss1(5) <= add1(5) when valid_bits_stage1(0) = '1' else add3(5) ;
   r1_10n1ss1(6) <= add1(6) when valid_bits_stage1(0) = '1' else add3(6) ;
   r1_10n1ss1(7) <= add1(7) when valid_bits_stage1(0) = '1' else add3(7) ;
   r1_10n1ss1(8) <= add1(8) when valid_bits_stage1(0) = '1' else add3(8) ;
   r2_11n1ss1(0) <= r3_magnitude(0) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(0) ;
   r2_11n1ss1(1) <= r3_magnitude(1) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(1) ;
   r2_11n1ss1(2) <= r3_magnitude(2) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(2) ;
   r2_11n1ss1(3) <= r3_magnitude(3) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(3) ;
   r2_11n1ss1(4) <= r3_magnitude(4) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(4) ;
   r2_11n1ss1(5) <= r3_magnitude(5) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(5) ;
   r2_11n1ss1(6) <= r3_magnitude(6) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(6) ;
   r2_11n1ss1(7) <= r3_magnitude(7) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(7) ;
   r2_11n1ss1(8) <= r3_magnitude(8) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(8) ;
   r2_11n1ss1(9) <= r3_magnitude(9) when valid_bits_stage1(1) = '1' else 
   max2_magnitude(9) ;
   r2_11n1ss1(10) <= r3_direction(0) when valid_bits_stage1(1) = '1' else 
   max2_direction(0) ;
   r2_11n1ss1(11) <= r3_direction(1) when valid_bits_stage1(1) = '1' else 
   max2_direction(1) ;
   r2_11n1ss1(12) <= r3_direction(2) when valid_bits_stage1(1) = '1' else 
   max2_direction(2) ;
   modgen_counter_pixel_counter : 
      counter_up_cnt_en_sclear_clock_0_17_cx0_kirsch port map ( clock=>
      i_clock, q(16)=>pixel_counter_16, q(15)=>o_row_EXMPLR258(7), q(14)=>
      o_row_EXMPLR258(6), q(13)=>o_row_EXMPLR258(5), q(12)=>
      o_row_EXMPLR258(4), q(11)=>o_row_EXMPLR258(3), q(10)=>
      o_row_EXMPLR258(2), q(9)=>o_row_EXMPLR258(1), q(8)=>o_row_EXMPLR258(0), 
      q(7)=>pixel_counter_7, q(6)=>pixel_counter_6, q(5)=>pixel_counter_5, 
      q(4)=>pixel_counter_4, q(3)=>pixel_counter_3, q(2)=>pixel_counter_2, 
      q(1)=>pixel_counter_1, q(0)=>pixel_counter_0, clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(16)=>DANGLING(0,1), data(15)=>DANGLING(0,2), data(14)
      =>DANGLING(0,3), data(13)=>DANGLING(0,4), data(12)=>DANGLING(0,5), 
      data(11)=>DANGLING(0,6), data(10)=>DANGLING(0,7), data(9)=>
      DANGLING(0,8), data(8)=>DANGLING(0,9), data(7)=>DANGLING(0,10), 
      data(6)=>DANGLING(0,11), data(5)=>DANGLING(0,12), data(4)=>
      DANGLING(0,13), data(3)=>DANGLING(0,14), data(2)=>DANGLING(0,15), 
      data(1)=>DANGLING(0,16), data(0)=>DANGLING(0,17), aset=>GND, sclear=>
      i_reset, updn=>PWR, cnt_en=>i_valid);
   add1_add8_1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i3(7), a(6)=>
      i3(6), a(5)=>i3(5), a(4)=>i3(4), a(3)=>i3(3), a(2)=>i3(2), a(1)=>i3(1), 
      a(0)=>i3(0), b(7)=>i4(7), b(6)=>i4(6), b(5)=>i4(5), b(4)=>i4(4), b(3)
      =>i4(3), b(2)=>i4(2), b(1)=>i4(1), b(0)=>i4(0), d(7)=>add1(7), d(6)=>
      add1(6), d(5)=>add1(5), d(4)=>add1(4), d(3)=>add1(3), d(2)=>add1(2), 
      d(1)=>add1(1), d(0)=>add1(0), cout=>add1(8));
   add4_add11_2 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>GND, a(9)
      =>r4(10), a(8)=>r4(9), a(7)=>r4(8), a(6)=>r4(7), a(5)=>r4(6), a(4)=>
      r4(5), a(3)=>r4(4), a(2)=>r4(3), a(1)=>r4(2), a(0)=>r4(1), b(10)=>
      r4(10), b(9)=>r4(9), b(8)=>r4(8), b(7)=>r4(7), b(6)=>r4(6), b(5)=>
      r4(5), b(4)=>r4(4), b(3)=>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>
      add4(0), d(10)=>add4(11), d(9)=>add4(10), d(8)=>add4(9), d(7)=>add4(8), 
      d(6)=>add4(7), d(5)=>add4(6), d(4)=>add4(5), d(3)=>add4(4), d(2)=>
      add4(3), d(1)=>add4(2), d(0)=>add4(1), cout=>add4(12));
   add2_magnitude_add9_4 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>
      add1(8), a(7)=>add1(7), a(6)=>add1(6), a(5)=>add1(5), a(4)=>add1(4), 
      a(3)=>add1(3), a(2)=>add1(2), a(1)=>add1(1), a(0)=>add1(0), b(8)=>GND, 
      b(7)=>max1_magnitude(7), b(6)=>max1_magnitude(6), b(5)=>
      max1_magnitude(5), b(4)=>max1_magnitude(4), b(3)=>max1_magnitude(3), 
      b(2)=>max1_magnitude(2), b(1)=>max1_magnitude(1), b(0)=>
      max1_magnitude(0), d(8)=>add2_magnitude(8), d(7)=>add2_magnitude(7), 
      d(6)=>add2_magnitude(6), d(5)=>add2_magnitude(5), d(4)=>
      add2_magnitude(4), d(3)=>add2_magnitude(3), d(2)=>add2_magnitude(2), 
      d(1)=>add2_magnitude(1), d(0)=>add2_magnitude(0), cout=>
      add2_magnitude(9));
   rtlcn5771 <= rtlc18_r_mode_D_n9(0) AND o_mode_EXMPLR257(0) ;
   debug_led_red(0) <= GND when GND = '1' else 'Z' ;
   debug_led_red(1) <= GND when GND = '1' else 'Z' ;
   debug_led_red(2) <= GND when GND = '1' else 'Z' ;
   debug_led_red(3) <= GND when GND = '1' else 'Z' ;
   debug_led_red(4) <= GND when GND = '1' else 'Z' ;
   debug_led_red(5) <= GND when GND = '1' else 'Z' ;
   debug_led_red(6) <= GND when GND = '1' else 'Z' ;
   debug_led_red(7) <= GND when GND = '1' else 'Z' ;
   debug_led_red(8) <= GND when GND = '1' else 'Z' ;
   debug_led_red(9) <= GND when GND = '1' else 'Z' ;
   debug_led_red(10) <= GND when GND = '1' else 'Z' ;
   debug_led_red(11) <= GND when GND = '1' else 'Z' ;
   debug_led_red(12) <= GND when GND = '1' else 'Z' ;
   debug_led_red(13) <= GND when GND = '1' else 'Z' ;
   debug_led_red(14) <= GND when GND = '1' else 'Z' ;
   debug_led_red(15) <= GND when GND = '1' else 'Z' ;
   debug_led_red(16) <= GND when GND = '1' else 'Z' ;
   debug_led_red(17) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(0) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(1) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(2) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(3) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(4) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(5) <= GND when GND = '1' else 'Z' ;
   debug_num_0(0) <= GND when GND = '1' else 'Z' ;
   debug_num_0(1) <= GND when GND = '1' else 'Z' ;
   debug_num_0(2) <= GND when GND = '1' else 'Z' ;
   debug_num_0(3) <= GND when GND = '1' else 'Z' ;
   debug_num_1(0) <= GND when GND = '1' else 'Z' ;
   debug_num_1(1) <= GND when GND = '1' else 'Z' ;
   debug_num_1(2) <= GND when GND = '1' else 'Z' ;
   debug_num_1(3) <= GND when GND = '1' else 'Z' ;
   debug_num_2(0) <= GND when GND = '1' else 'Z' ;
   debug_num_2(1) <= GND when GND = '1' else 'Z' ;
   debug_num_2(2) <= GND when GND = '1' else 'Z' ;
   debug_num_2(3) <= GND when GND = '1' else 'Z' ;
   debug_num_3(0) <= GND when GND = '1' else 'Z' ;
   debug_num_3(1) <= GND when GND = '1' else 'Z' ;
   debug_num_3(2) <= GND when GND = '1' else 'Z' ;
   debug_num_3(3) <= GND when GND = '1' else 'Z' ;
   debug_num_4(0) <= GND when GND = '1' else 'Z' ;
   debug_num_4(1) <= GND when GND = '1' else 'Z' ;
   debug_num_4(2) <= GND when GND = '1' else 'Z' ;
   debug_num_4(3) <= GND when GND = '1' else 'Z' ;
   debug_num_5(0) <= GND when GND = '1' else 'Z' ;
   debug_num_5(1) <= GND when GND = '1' else 'Z' ;
   debug_num_5(2) <= GND when GND = '1' else 'Z' ;
   debug_num_5(3) <= GND when GND = '1' else 'Z' ;
   DFFRSE (row_index(1),GND,i_reset,rtlc8n212,i_clock,row_index(2)) ;
   DFFRSE (row_index(0),GND,i_reset,rtlc8n212,i_clock,row_index(1)) ;
   DFFRSE (row_index(2),i_reset,GND,rtlc8n212,i_clock,row_index(0)) ;
   DFFRSE (PWR,GND,i_reset,rtlc8n96,i_clock,last_pixel_complete(1)) ;
   DFFRSE (PWR,GND,i_reset,rtlc8n83,i_clock,last_pixel_complete(0)) ;
   DFFRSE (valid_bits_stage2(2),GND,rtlc9n64,PWR,i_clock,o_valid_EXMPLR192)
    ;
   DFFRSE (valid_bits_stage2(1),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage2(2)) ;
   DFFRSE (valid_bits_stage2(0),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage2(1)) ;
   DFFRSE (valid_bits_stage1(3),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage2(0)) ;
   DFFRSE (valid_bits_stage1(2),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage1(3)) ;
   DFFRSE (valid_bits_stage1(1),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage1(2)) ;
   DFFRSE (valid_bits_stage1(0),GND,rtlc9n64,PWR,i_clock,
   valid_bits_stage1(1)) ;
   DFFRSE (rtlc9n89,GND,rtlc9n64,PWR,i_clock,valid_bits_stage1(0)) ;
   DFFRSE (add3(10),GND,rtlc10n31,PWR,i_clock,r1(10)) ;
   DFFRSE (add3(9),GND,rtlc10n31,PWR,i_clock,r1(9)) ;
   DFFRSE (r1_10n1ss1(8),GND,i_reset,PWR,i_clock,r1(8)) ;
   DFFRSE (r1_10n1ss1(7),GND,i_reset,PWR,i_clock,r1(7)) ;
   DFFRSE (r1_10n1ss1(6),GND,i_reset,PWR,i_clock,r1(6)) ;
   DFFRSE (r1_10n1ss1(5),GND,i_reset,PWR,i_clock,r1(5)) ;
   DFFRSE (r1_10n1ss1(4),GND,i_reset,PWR,i_clock,r1(4)) ;
   DFFRSE (r1_10n1ss1(3),GND,i_reset,PWR,i_clock,r1(3)) ;
   DFFRSE (r1_10n1ss1(2),GND,i_reset,PWR,i_clock,r1(2)) ;
   DFFRSE (r1_10n1ss1(1),GND,i_reset,PWR,i_clock,r1(1)) ;
   DFFRSE (r1_10n1ss1(0),GND,i_reset,PWR,i_clock,r1(0)) ;
   DFFRSE (r2_11n1ss1(12),GND,i_reset,PWR,i_clock,r2_direction(2)) ;
   DFFRSE (r2_11n1ss1(11),GND,i_reset,PWR,i_clock,r2_direction(1)) ;
   DFFRSE (r2_11n1ss1(10),GND,i_reset,PWR,i_clock,r2_direction(0)) ;
   DFFRSE (r2_11n1ss1(9),GND,i_reset,PWR,i_clock,r2_magnitude(9)) ;
   DFFRSE (r2_11n1ss1(8),GND,i_reset,PWR,i_clock,r2_magnitude(8)) ;
   DFFRSE (r2_11n1ss1(7),GND,i_reset,PWR,i_clock,r2_magnitude(7)) ;
   DFFRSE (r2_11n1ss1(6),GND,i_reset,PWR,i_clock,r2_magnitude(6)) ;
   DFFRSE (r2_11n1ss1(5),GND,i_reset,PWR,i_clock,r2_magnitude(5)) ;
   DFFRSE (r2_11n1ss1(4),GND,i_reset,PWR,i_clock,r2_magnitude(4)) ;
   DFFRSE (r2_11n1ss1(3),GND,i_reset,PWR,i_clock,r2_magnitude(3)) ;
   DFFRSE (r2_11n1ss1(2),GND,i_reset,PWR,i_clock,r2_magnitude(2)) ;
   DFFRSE (r2_11n1ss1(1),GND,i_reset,PWR,i_clock,r2_magnitude(1)) ;
   DFFRSE (r2_11n1ss1(0),GND,i_reset,PWR,i_clock,r2_magnitude(0)) ;
   DFFRSE (not_rtlc0_copy_n346,GND,i_reset,PWR,i_clock,r3_direction(2)) ;
   DFFRSE (not_rtlc3n40,GND,i_reset,PWR,i_clock,r3_direction(1)) ;
   DFFRSE (rtlcn248,GND,i_reset,PWR,i_clock,r3_direction(0)) ;
   DFFRSE (add2_magnitude(9),GND,i_reset,PWR,i_clock,r3_magnitude(9)) ;
   DFFRSE (add2_magnitude(8),GND,i_reset,PWR,i_clock,r3_magnitude(8)) ;
   DFFRSE (add2_magnitude(7),GND,i_reset,PWR,i_clock,r3_magnitude(7)) ;
   DFFRSE (add2_magnitude(6),GND,i_reset,PWR,i_clock,r3_magnitude(6)) ;
   DFFRSE (add2_magnitude(5),GND,i_reset,PWR,i_clock,r3_magnitude(5)) ;
   DFFRSE (add2_magnitude(4),GND,i_reset,PWR,i_clock,r3_magnitude(4)) ;
   DFFRSE (add2_magnitude(3),GND,i_reset,PWR,i_clock,r3_magnitude(3)) ;
   DFFRSE (add2_magnitude(2),GND,i_reset,PWR,i_clock,r3_magnitude(2)) ;
   DFFRSE (add2_magnitude(1),GND,i_reset,PWR,i_clock,r3_magnitude(1)) ;
   DFFRSE (add2_magnitude(0),GND,i_reset,PWR,i_clock,r3_magnitude(0)) ;
   DFFRSE (add3(10),GND,i_reset,valid_bits_stage1(3),i_clock,r4(10)) ;
   DFFRSE (add3(9),GND,i_reset,valid_bits_stage1(3),i_clock,r4(9)) ;
   DFFRSE (add3(8),GND,i_reset,valid_bits_stage1(3),i_clock,r4(8)) ;
   DFFRSE (add3(7),GND,i_reset,valid_bits_stage1(3),i_clock,r4(7)) ;
   DFFRSE (add3(6),GND,i_reset,valid_bits_stage1(3),i_clock,r4(6)) ;
   DFFRSE (add3(5),GND,i_reset,valid_bits_stage1(3),i_clock,r4(5)) ;
   DFFRSE (add3(4),GND,i_reset,valid_bits_stage1(3),i_clock,r4(4)) ;
   DFFRSE (add3(3),GND,i_reset,valid_bits_stage1(3),i_clock,r4(3)) ;
   DFFRSE (add3(2),GND,i_reset,valid_bits_stage1(3),i_clock,r4(2)) ;
   DFFRSE (add3(1),GND,i_reset,valid_bits_stage1(3),i_clock,r4(1)) ;
   DFFRSE (add3(0),GND,i_reset,valid_bits_stage1(3),i_clock,add4(0)) ;
   DFFRSE (max2_direction(2),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_direction(2)) ;
   DFFRSE (max2_direction(1),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_direction(1)) ;
   DFFRSE (max2_direction(0),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_direction(0)) ;
   DFFRSE (max2_magnitude(9),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(9)) ;
   DFFRSE (max2_magnitude(8),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(8)) ;
   DFFRSE (max2_magnitude(7),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(7)) ;
   DFFRSE (max2_magnitude(6),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(6)) ;
   DFFRSE (max2_magnitude(5),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(5)) ;
   DFFRSE (max2_magnitude(4),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(4)) ;
   DFFRSE (max2_magnitude(3),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(3)) ;
   DFFRSE (max2_magnitude(2),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(2)) ;
   DFFRSE (max2_magnitude(1),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(1)) ;
   DFFRSE (max2_magnitude(0),GND,i_reset,valid_bits_stage2(0),i_clock,
   r5_magnitude(0)) ;
   DFFRSE (add4(12),GND,i_reset,valid_bits_stage2(1),i_clock,r6(12)) ;
   DFFRSE (add4(11),GND,i_reset,valid_bits_stage2(1),i_clock,r6(11)) ;
   DFFRSE (add4(10),GND,i_reset,valid_bits_stage2(1),i_clock,r6(10)) ;
   DFFRSE (add4(9),GND,i_reset,valid_bits_stage2(1),i_clock,r6(9)) ;
   DFFRSE (add4(8),GND,i_reset,valid_bits_stage2(1),i_clock,r6(8)) ;
   DFFRSE (add4(7),GND,i_reset,valid_bits_stage2(1),i_clock,r6(7)) ;
   DFFRSE (add4(6),GND,i_reset,valid_bits_stage2(1),i_clock,r6(6)) ;
   DFFRSE (add4(5),GND,i_reset,valid_bits_stage2(1),i_clock,r6(5)) ;
   DFFRSE (add4(4),GND,i_reset,valid_bits_stage2(1),i_clock,r6(4)) ;
   DFFRSE (add4(3),GND,i_reset,valid_bits_stage2(1),i_clock,r6(3)) ;
   DFFRSE (add4(2),GND,i_reset,valid_bits_stage2(1),i_clock,r6(2)) ;
   DFFRSE (add4(1),GND,i_reset,valid_bits_stage2(1),i_clock,r6(1)) ;
   DFFRSE (add4(0),GND,i_reset,valid_bits_stage2(1),i_clock,r6(0)) ;
   DFFRSE (r5_magnitude(9),GND,i_reset,valid_bits_stage2(1),i_clock,r7_12) ;
   DFFRSE (r5_magnitude(8),GND,i_reset,valid_bits_stage2(1),i_clock,r7_11) ;
   DFFRSE (r5_magnitude(7),GND,i_reset,valid_bits_stage2(1),i_clock,r7_10) ;
   DFFRSE (r5_magnitude(6),GND,i_reset,valid_bits_stage2(1),i_clock,r7_9) ;
   DFFRSE (r5_magnitude(5),GND,i_reset,valid_bits_stage2(1),i_clock,r7_8) ;
   DFFRSE (r5_magnitude(4),GND,i_reset,valid_bits_stage2(1),i_clock,r7_7) ;
   DFFRSE (r5_magnitude(3),GND,i_reset,valid_bits_stage2(1),i_clock,r7_6) ;
   DFFRSE (r5_magnitude(2),GND,i_reset,valid_bits_stage2(1),i_clock,r7_5) ;
   DFFRSE (r5_magnitude(1),GND,i_reset,valid_bits_stage2(1),i_clock,r7_4) ;
   DFFRSE (r5_magnitude(0),GND,i_reset,valid_bits_stage2(1),i_clock,r7_3) ;
   DFFPC (rtlc17n40,GND,GND,i_clock,o_edge_EXMPLR193) ;
   DFFPC (rtlc18_r_mode_D_n9(1),GND,GND,i_clock,o_mode_EXMPLR257(1)) ;
   DFFRSE (i_pixel(7),GND,i_reset,i_valid,i_clock,conv_table_2_2(7)) ;
   DFFRSE (i_pixel(6),GND,i_reset,i_valid,i_clock,conv_table_2_2(6)) ;
   DFFRSE (i_pixel(5),GND,i_reset,i_valid,i_clock,conv_table_2_2(5)) ;
   DFFRSE (i_pixel(4),GND,i_reset,i_valid,i_clock,conv_table_2_2(4)) ;
   DFFRSE (i_pixel(3),GND,i_reset,i_valid,i_clock,conv_table_2_2(3)) ;
   DFFRSE (i_pixel(2),GND,i_reset,i_valid,i_clock,conv_table_2_2(2)) ;
   DFFRSE (i_pixel(1),GND,i_reset,i_valid,i_clock,conv_table_2_2(1)) ;
   DFFRSE (i_pixel(0),GND,i_reset,i_valid,i_clock,conv_table_2_2(0)) ;
   DFFRSE (conv_table_19n2ss1_63,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(7)) ;
   DFFRSE (conv_table_19n2ss1_62,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(6)) ;
   DFFRSE (conv_table_19n2ss1_61,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(5)) ;
   DFFRSE (conv_table_19n2ss1_60,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(4)) ;
   DFFRSE (conv_table_19n2ss1_59,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(3)) ;
   DFFRSE (conv_table_19n2ss1_58,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(2)) ;
   DFFRSE (conv_table_19n2ss1_57,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(1)) ;
   DFFRSE (conv_table_19n2ss1_56,GND,i_reset,i_valid,i_clock,
   conv_table_2_1(0)) ;
   DFFRSE (conv_table_19n2ss1_55,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(7)) ;
   DFFRSE (conv_table_19n2ss1_54,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(6)) ;
   DFFRSE (conv_table_19n2ss1_53,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(5)) ;
   DFFRSE (conv_table_19n2ss1_52,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(4)) ;
   DFFRSE (conv_table_19n2ss1_51,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(3)) ;
   DFFRSE (conv_table_19n2ss1_50,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(2)) ;
   DFFRSE (conv_table_19n2ss1_49,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(1)) ;
   DFFRSE (conv_table_19n2ss1_48,GND,i_reset,i_valid,i_clock,
   conv_table_2_0(0)) ;
   DFFRSE (conv_table_2_2(7),GND,i_reset,i_valid,i_clock,conv_table_1_2(7))
    ;
   DFFRSE (conv_table_2_2(6),GND,i_reset,i_valid,i_clock,conv_table_1_2(6))
    ;
   DFFRSE (conv_table_2_2(5),GND,i_reset,i_valid,i_clock,conv_table_1_2(5))
    ;
   DFFRSE (conv_table_2_2(4),GND,i_reset,i_valid,i_clock,conv_table_1_2(4))
    ;
   DFFRSE (conv_table_2_2(3),GND,i_reset,i_valid,i_clock,conv_table_1_2(3))
    ;
   DFFRSE (conv_table_2_2(2),GND,i_reset,i_valid,i_clock,conv_table_1_2(2))
    ;
   DFFRSE (conv_table_2_2(1),GND,i_reset,i_valid,i_clock,conv_table_1_2(1))
    ;
   DFFRSE (conv_table_2_2(0),GND,i_reset,i_valid,i_clock,conv_table_1_2(0))
    ;
   DFFRSE (conv_table_2_1(7),GND,i_reset,i_valid,i_clock,conv_table_1_1(7))
    ;
   DFFRSE (conv_table_2_1(6),GND,i_reset,i_valid,i_clock,conv_table_1_1(6))
    ;
   DFFRSE (conv_table_2_1(5),GND,i_reset,i_valid,i_clock,conv_table_1_1(5))
    ;
   DFFRSE (conv_table_2_1(4),GND,i_reset,i_valid,i_clock,conv_table_1_1(4))
    ;
   DFFRSE (conv_table_2_1(3),GND,i_reset,i_valid,i_clock,conv_table_1_1(3))
    ;
   DFFRSE (conv_table_2_1(2),GND,i_reset,i_valid,i_clock,conv_table_1_1(2))
    ;
   DFFRSE (conv_table_2_1(1),GND,i_reset,i_valid,i_clock,conv_table_1_1(1))
    ;
   DFFRSE (conv_table_2_1(0),GND,i_reset,i_valid,i_clock,conv_table_1_1(0))
    ;
   DFFRSE (conv_table_2_0(7),GND,i_reset,i_valid,i_clock,conv_table_1_0(7))
    ;
   DFFRSE (conv_table_2_0(6),GND,i_reset,i_valid,i_clock,conv_table_1_0(6))
    ;
   DFFRSE (conv_table_2_0(5),GND,i_reset,i_valid,i_clock,conv_table_1_0(5))
    ;
   DFFRSE (conv_table_2_0(4),GND,i_reset,i_valid,i_clock,conv_table_1_0(4))
    ;
   DFFRSE (conv_table_2_0(3),GND,i_reset,i_valid,i_clock,conv_table_1_0(3))
    ;
   DFFRSE (conv_table_2_0(2),GND,i_reset,i_valid,i_clock,conv_table_1_0(2))
    ;
   DFFRSE (conv_table_2_0(1),GND,i_reset,i_valid,i_clock,conv_table_1_0(1))
    ;
   DFFRSE (conv_table_2_0(0),GND,i_reset,i_valid,i_clock,conv_table_1_0(0))
    ;
   DFFRSE (conv_table_1_2(7),GND,i_reset,i_valid,i_clock,conv_table_0_2(7))
    ;
   DFFRSE (conv_table_1_2(6),GND,i_reset,i_valid,i_clock,conv_table_0_2(6))
    ;
   DFFRSE (conv_table_1_2(5),GND,i_reset,i_valid,i_clock,conv_table_0_2(5))
    ;
   DFFRSE (conv_table_1_2(4),GND,i_reset,i_valid,i_clock,conv_table_0_2(4))
    ;
   DFFRSE (conv_table_1_2(3),GND,i_reset,i_valid,i_clock,conv_table_0_2(3))
    ;
   DFFRSE (conv_table_1_2(2),GND,i_reset,i_valid,i_clock,conv_table_0_2(2))
    ;
   DFFRSE (conv_table_1_2(1),GND,i_reset,i_valid,i_clock,conv_table_0_2(1))
    ;
   DFFRSE (conv_table_1_2(0),GND,i_reset,i_valid,i_clock,conv_table_0_2(0))
    ;
   DFFRSE (conv_table_1_1(7),GND,i_reset,i_valid,i_clock,conv_table_0_1(7))
    ;
   DFFRSE (conv_table_1_1(6),GND,i_reset,i_valid,i_clock,conv_table_0_1(6))
    ;
   DFFRSE (conv_table_1_1(5),GND,i_reset,i_valid,i_clock,conv_table_0_1(5))
    ;
   DFFRSE (conv_table_1_1(4),GND,i_reset,i_valid,i_clock,conv_table_0_1(4))
    ;
   DFFRSE (conv_table_1_1(3),GND,i_reset,i_valid,i_clock,conv_table_0_1(3))
    ;
   DFFRSE (conv_table_1_1(2),GND,i_reset,i_valid,i_clock,conv_table_0_1(2))
    ;
   DFFRSE (conv_table_1_1(1),GND,i_reset,i_valid,i_clock,conv_table_0_1(1))
    ;
   DFFRSE (conv_table_1_1(0),GND,i_reset,i_valid,i_clock,conv_table_0_1(0))
    ;
   DFFRSE (conv_table_1_0(7),GND,i_reset,i_valid,i_clock,conv_table_0_0(7))
    ;
   DFFRSE (conv_table_1_0(6),GND,i_reset,i_valid,i_clock,conv_table_0_0(6))
    ;
   DFFRSE (conv_table_1_0(5),GND,i_reset,i_valid,i_clock,conv_table_0_0(5))
    ;
   DFFRSE (conv_table_1_0(4),GND,i_reset,i_valid,i_clock,conv_table_0_0(4))
    ;
   DFFRSE (conv_table_1_0(3),GND,i_reset,i_valid,i_clock,conv_table_0_0(3))
    ;
   DFFRSE (conv_table_1_0(2),GND,i_reset,i_valid,i_clock,conv_table_0_0(2))
    ;
   DFFRSE (conv_table_1_0(1),GND,i_reset,i_valid,i_clock,conv_table_0_0(1))
    ;
   DFFRSE (conv_table_1_0(0),GND,i_reset,i_valid,i_clock,conv_table_0_0(0))
    ;
   DFFRSE (rtlcn5771,rtlc18n21,not_rtlcn15,PWR,i_clock,o_mode_EXMPLR257(0))
    ;
   rtlc5_43_and_26_nx0 <= not_valid_bits_stage1_0 AND 
   not_valid_bits_stage1_1 ;
   rtlc5_P8_SS0_n28 <= rtlc5_43_and_26_nx0 AND valid_bits_stage1(2) ;
   rtlc4n38 <= valid_bits_stage1(0) OR valid_bits_stage1(1) ;
   rtlcn16 <= rtlc4n38 OR valid_bits_stage1(2) ;
   NOT_r6_0 <= NOT r6(0) ;
   add5_add13_3 : add_12u_12u_12u_0 port map ( cin=>r6(0), a(11)=>GND, a(10)
      =>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, a(6)=>GND, a(5)=>PWR, a(4)=>
      PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)=>PWR, b(11)=>r6(12), b(10)
      =>r6(11), b(9)=>r6(10), b(8)=>r6(9), b(7)=>r6(8), b(6)=>r6(7), b(5)=>
      r6(6), b(4)=>r6(5), b(3)=>r6(4), b(2)=>r6(3), b(1)=>r6(2), b(0)=>r6(1), 
      d(11)=>add5(12), d(10)=>add5(11), d(9)=>add5(10), d(8)=>add5(9), d(7)
      =>add5(8), d(6)=>add5(7), d(5)=>add5(6), d(4)=>add5(5), d(3)=>add5(4), 
      d(2)=>add5(3), d(1)=>add5(2), d(0)=>add5(1), cout=>add5(13));
   conv_table_19n2ss1_48 <= mem_out_0(0) when row_index(2) = '1' else nx817
    ;
   nx817 <= mem_out_2(0) when row_index(1) = '1' else mem_out_1(0) ;
   conv_table_19n2ss1_49 <= mem_out_0(1) when row_index(2) = '1' else nx823
    ;
   nx823 <= mem_out_2(1) when row_index(1) = '1' else mem_out_1(1) ;
   conv_table_19n2ss1_50 <= mem_out_0(2) when row_index(2) = '1' else nx829
    ;
   nx829 <= mem_out_2(2) when row_index(1) = '1' else mem_out_1(2) ;
   conv_table_19n2ss1_51 <= mem_out_0(3) when row_index(2) = '1' else nx835
    ;
   nx835 <= mem_out_2(3) when row_index(1) = '1' else mem_out_1(3) ;
   conv_table_19n2ss1_52 <= mem_out_0(4) when row_index(2) = '1' else nx841
    ;
   nx841 <= mem_out_2(4) when row_index(1) = '1' else mem_out_1(4) ;
   conv_table_19n2ss1_53 <= mem_out_0(5) when row_index(2) = '1' else nx847
    ;
   nx847 <= mem_out_2(5) when row_index(1) = '1' else mem_out_1(5) ;
   conv_table_19n2ss1_54 <= mem_out_0(6) when row_index(2) = '1' else nx853
    ;
   nx853 <= mem_out_2(6) when row_index(1) = '1' else mem_out_1(6) ;
   conv_table_19n2ss1_55 <= mem_out_0(7) when row_index(2) = '1' else nx859
    ;
   nx859 <= mem_out_2(7) when row_index(1) = '1' else mem_out_1(7) ;
   conv_table_19n2ss1_56 <= mem_out_1(0) when row_index(2) = '1' else nx865
    ;
   nx865 <= mem_out_0(0) when row_index(1) = '1' else mem_out_2(0) ;
   conv_table_19n2ss1_57 <= mem_out_1(1) when row_index(2) = '1' else nx871
    ;
   nx871 <= mem_out_0(1) when row_index(1) = '1' else mem_out_2(1) ;
   conv_table_19n2ss1_58 <= mem_out_1(2) when row_index(2) = '1' else nx877
    ;
   nx877 <= mem_out_0(2) when row_index(1) = '1' else mem_out_2(2) ;
   conv_table_19n2ss1_59 <= mem_out_1(3) when row_index(2) = '1' else nx883
    ;
   nx883 <= mem_out_0(3) when row_index(1) = '1' else mem_out_2(3) ;
   conv_table_19n2ss1_60 <= mem_out_1(4) when row_index(2) = '1' else nx889
    ;
   nx889 <= mem_out_0(4) when row_index(1) = '1' else mem_out_2(4) ;
   conv_table_19n2ss1_61 <= mem_out_1(5) when row_index(2) = '1' else nx895
    ;
   nx895 <= mem_out_0(5) when row_index(1) = '1' else mem_out_2(5) ;
   conv_table_19n2ss1_62 <= mem_out_1(6) when row_index(2) = '1' else nx901
    ;
   nx901 <= mem_out_0(6) when row_index(1) = '1' else mem_out_2(6) ;
   conv_table_19n2ss1_63 <= mem_out_1(7) when row_index(2) = '1' else nx907
    ;
   nx907 <= mem_out_0(7) when row_index(1) = '1' else mem_out_2(7) ;
   mem : ram_new_0_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      mem_out_0(7), rd_data1(6)=>mem_out_0(6), rd_data1(5)=>mem_out_0(5), 
      rd_data1(4)=>mem_out_0(4), rd_data1(3)=>mem_out_0(3), rd_data1(2)=>
      mem_out_0(2), rd_data1(1)=>mem_out_0(1), rd_data1(0)=>mem_out_0(0), 
      addr1(7)=>pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>
      pixel_counter_5, addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, 
      addr1(2)=>pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>
      pixel_counter_0, wr_clk1=>i_clock, rd_clk1=>i_clock, wr_ena1=>
      valid_wren(0), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, regce1=>PWR, 
      regrst1=>GND);
   mem_0 : ram_new_1_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      mem_out_1(7), rd_data1(6)=>mem_out_1(6), rd_data1(5)=>mem_out_1(5), 
      rd_data1(4)=>mem_out_1(4), rd_data1(3)=>mem_out_1(3), rd_data1(2)=>
      mem_out_1(2), rd_data1(1)=>mem_out_1(1), rd_data1(0)=>mem_out_1(0), 
      addr1(7)=>pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>
      pixel_counter_5, addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, 
      addr1(2)=>pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>
      pixel_counter_0, wr_clk1=>i_clock, rd_clk1=>i_clock, wr_ena1=>
      valid_wren(1), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, regce1=>PWR, 
      regrst1=>GND);
   mem_1 : ram_new_2_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      mem_out_2(7), rd_data1(6)=>mem_out_2(6), rd_data1(5)=>mem_out_2(5), 
      rd_data1(4)=>mem_out_2(4), rd_data1(3)=>mem_out_2(3), rd_data1(2)=>
      mem_out_2(2), rd_data1(1)=>mem_out_2(1), rd_data1(0)=>mem_out_2(0), 
      addr1(7)=>pixel_counter_7, addr1(6)=>pixel_counter_6, addr1(5)=>
      pixel_counter_5, addr1(4)=>pixel_counter_4, addr1(3)=>pixel_counter_3, 
      addr1(2)=>pixel_counter_2, addr1(1)=>pixel_counter_1, addr1(0)=>
      pixel_counter_0, wr_clk1=>i_clock, rd_clk1=>i_clock, wr_ena1=>
      valid_wren(2), rd_ena1=>PWR, ena1=>PWR, rst1=>GND, regce1=>PWR, 
      regrst1=>GND);
   modgen_or_17 : or_7u_7u port map ( a(6)=>o_row_EXMPLR258(2), a(5)=>
      o_row_EXMPLR258(3), a(4)=>o_row_EXMPLR258(4), a(3)=>o_row_EXMPLR258(5), 
      a(2)=>o_row_EXMPLR258(6), a(1)=>o_row_EXMPLR258(7), a(0)=>
      o_row_EXMPLR258(1), d=>rtlcn13);
   modgen_or_18 : or_7u_7u port map ( a(6)=>pixel_counter_2, a(5)=>
      pixel_counter_3, a(4)=>pixel_counter_4, a(3)=>pixel_counter_5, a(2)=>
      pixel_counter_6, a(1)=>pixel_counter_7, a(0)=>pixel_counter_1, d=>
      rtlcn14);
   modgen_or_19 : or_8u_8u port map ( a(7)=>o_row_EXMPLR258(2), a(6)=>
      o_row_EXMPLR258(3), a(5)=>o_row_EXMPLR258(4), a(4)=>o_row_EXMPLR258(5), 
      a(3)=>o_row_EXMPLR258(6), a(2)=>o_row_EXMPLR258(7), a(1)=>
      pixel_counter_16, a(0)=>rtlc9n384, d=>rtlc9n385);
   modgen_and_20 : and_9u_9u port map ( a(8)=>pixel_counter_7, a(7)=>
      pixel_counter_6, a(6)=>pixel_counter_5, a(5)=>pixel_counter_4, a(4)=>
      pixel_counter_3, a(3)=>pixel_counter_2, a(2)=>pixel_counter_1, a(1)=>
      pixel_counter_0, a(0)=>i_valid, d=>rtlc8n212);
end main ;

