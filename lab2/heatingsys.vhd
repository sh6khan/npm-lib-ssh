library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       i_reset          : in std_logic;          -- reset
       i_clock          : in std_logic;          -- clock
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty;   
begin

  proc_main: process  
  begin
    wait until rising_edge(i_clock);
      case state is 
        when off =>
          if (i_reset = '1') then
            state <= off;
          elsif (3 <= (i_des_temp - i_cur_temp) and (i_des_temp - i_cur_temp) < 5) then
            state <= low;
          elsif (5 <= (i_des_temp - i_cur_temp)) then
            state <= high;
          else
            state <= off;
          end if;
        when low =>
          if (i_reset = '1') then
            state <= off;
          elsif (7 <= (i_des_temp - i_cur_temp)) then
            state <= high;
          elsif (2 < (i_cur_temp-i_des_temp)) then
            state <= off;
          else
            state <= low;
          end if;
        when high =>
          if (i_reset = '1') then
            state <= off;
          elsif (3 < (i_cur_temp - i_des_temp)) then
            state <= low;
          else
            state <= high;
          end if;
        when others =>
            state <= off;        
      end case;
  end process;
  
  proc_out: process (state)
  begin
    o_heatmode <= state;
  end process;           

end main;

-- question 1
--1-bit flip flops : 1
--1-bit latches : 0
--ANDS : 12
--ORs : 11
--XORs : 0
--NOTs : 13
--adders : 0
--subtracters : 2
--comparators : 0
--multiplexers : 0
