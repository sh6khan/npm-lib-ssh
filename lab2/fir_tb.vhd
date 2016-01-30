------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is
  signal clock      : std_logic := '0';
  signal in_data    : word;
  signal out_data   : word;    
  constant clock_period :time := 10 ns;
begin
  
  firEnt : entity work.fir(avg)
    port map(
      clk => clock,
      i_data => in_data,
      o_data => out_data
    );
      
  process 
  begin
    --hold in_data at 0 for 5 cycles to clear filter
    in_data <= x"0000";
    wait for clock_period * 5;
    
    in_data <= x"1000";
    wait for clock_period;

    in_data <= x"0000";
    wait for 500 ns;      

  end process;


  clk_proc : process
  begin
    clock <=  '0';
    wait for clock_period / 2;
    clock <= '1';
    wait for clock_period / 2;
  end process;

  
end architecture;
------------------------------------------------------------------------

