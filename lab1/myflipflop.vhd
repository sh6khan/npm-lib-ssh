library ieee;
use ieee.std_logic_1164.all;

entity myflipflop is
  port(  i_clock   -- clock
       , i_d       -- flip-flop input
       , i_ce      -- flip-flop chip enable
       , i_reset   -- flip-flop reset
       , i_sel     -- mux selector 
       , i_d2      -- the second data input
       : in std_logic; 
         o_q       -- flip-flop output for basic flop
       , o_q_a     -- flip-flop output for part (a)
       , o_q_b     -- flip-flop output for part (b)
       , o_q_c     -- flip-flop output for part (c)
       , o_q_d     -- flip-flop output for part (d)
       : out std_logic 
  );
end myflipflop;

architecture main of myflipflop is

signal dtemp : std_logic; 

begin

  basic : process
  begin
      wait until rising_edge(i_clock);
      o_q <= i_d;
  end process; 

  proc_a : process
  begin
    wait until rising_edge(i_clock);
    o_q_a <= (not i_reset) and i_d; 
  end process;

  proc_b : process
  begin
    wait until rising_edge(i_clock);
    if (i_ce = '1') then
      o_q_b <= i_d;
    end if;
  end process;

  proc_c : process
  begin
   wait until rising_edge(i_clock);
   if (i_sel = '1') then
    o_q_c <= i_d2;
   else
    o_q_c <= i_d;
   end if; 
  end process;

  proc_d : process
  begin
    wait until rising_edge(i_clock);
    if (i_sel = '1') then
      o_q_d <= not dtemp;
      dtemp <= not dtemp;
    else
     o_q_d <= i_d;
     dtemp <= i_d;
    end if;
  end process;

  -- place any extra code or processes here

end architecture;
