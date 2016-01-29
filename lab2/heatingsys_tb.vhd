------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
   signal cur_temp       : signed(7 downto 0); -- current temp
   signal des_temp       : signed(7 downto 0); -- desired temp
   signal reset          : std_logic := '0';          -- reset
   signal clock          : std_logic := '0';   -- clock
   signal state          : heat_ty;            -- mode
   constant clock_period : time := 10 ns;
begin

  hs : entity work.heatingsys(main)
    port map(
      i_cur_temp => cur_temp,
      i_des_temp => des_temp,
      i_reset => reset,
      i_clock => clock,
      o_heatmode => state
    );

  process 
  begin
    --init at off
    cur_temp <= "00000000"; des_temp <= "00000000"; reset <= '0';
    wait for clock_period;
 
    --transition to low
    cur_temp <= "00000000"; des_temp <= "00000011"; reset <= '0';
    wait for clock_period;

    --transition to high
    cur_temp <= "00000000"; des_temp <= "00001111"; reset <= '0';
    wait for clock_period;
    
    --transition to low
    cur_temp <= "00001111"; des_temp <= "00000000"; reset <= '0';
    wait for clock_period;
 
    --transition to off
    cur_temp <= "00001111"; des_temp <= "00000000"; reset <= '0';
    wait for clock_period;
    
    --transition to high
    cur_temp <= "00000000"; des_temp <= "00111111"; reset <= '0';
    wait for clock_period;

    --reset to off
    cur_temp <= "00001111"; des_temp <= "00000000"; reset <= '1';
    wait for clock_period;
  end process;

  proc_clk : process 
  begin
    clock <= '0';
    wait for clock_period / 2;
    clock <= '1';
    wait for clock_period / 2;
  end process;

end architecture;
