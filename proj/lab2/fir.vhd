------------------------------------------------------------------------
-- finite-impulse response filters
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir is
  port(
    clk     : in  std_logic;
    i_data  : in  word;
    o_data  : out word
  );
end entity;

architecture avg of fir is

  signal tap0, tap1 , tap2 , tap3 , tap4
             , prod1, prod2, prod3, prod4
                    , sum2 , sum3 , sum4
       : word;

  constant coef1 : word := x"0400";
  constant coef2 : word := x"0400";
  constant coef3 : word := x"0400";
  constant coef4 : word := x"0400";
  
begin

  -- delay line of flops to hold samples of input data
  tap0 <= i_data;
  delay_line : process(clk)
  begin
    if (rising_edge(clk)) then
      tap1 <= tap0;
      tap2 <= tap1;
      tap3 <= tap2;
      tap4 <= tap3;
    end if;
  end process;
  
  -- simple averaging circuit
  --
  -- Note that mult is a quick 'n' dirty multiplier
  -- However, a multiplier is NOT built in hardware because one input is a particular
  --  constant allowing optimizations to be done.  If you had to multiply by 2 or 4 or 16
  --  in hardware could you do it WITHOUT any adders, shifters or multipliers?
  --
  prod1 <= mult( tap1, coef1);
  prod2 <= mult( tap2, coef2);
  prod3 <= mult( tap3, coef3);
  prod4 <= mult( tap4, coef4);

  sum2  <= prod1 + prod2;
  sum3  <= sum2  + prod3;
  sum4  <= sum3  + prod4;
  
  o_data <= sum4;

end architecture;

------------------------------------------------------------------------
-- low-pass filter
------------------------------------------------------------------------

architecture low_pass of fir is

  -- Use the signal names tap, prod, and sum, but change the type to
  -- match your needs.
--For building the design you'll need to add fir_synth_pkg.vhd to the fir.uwp file.  Now is the time to
--   start figuring out what the project file is for.  It has to include all vhdl files used in a project.
  constant num_taps : natural := 17; 
  signal tap : word_vector(0 to num_taps); 
  signal prod : word_vector(1 to num_taps);
  signal sum : word_vector(2 to num_taps);

  attribute logic_block of tap, prod, sum : signal is true;
begin
  
  tap(0) <= i_data;
 
   
  delay : for i in 1 to num_taps generate
    delay_proc : process
    begin
      wait until rising_edge(clk);
        tap(i) <= tap(i-1);
    end process;
  end generate;

  prodgen : for i in 1 to num_taps generate
    prod(i) <= mult( tap(i), lpcoef(i));
  end generate;

  sum(2) <= prod(1) + prod(2);
  
  sumgen : for i in 3 to num_taps generate
    sum(i) <= sum(i-1) + prod(i);
  end generate;

  o_data <= sum(num_taps);


end architecture;

-- question 2
--there are 47 LUTs used between the 3 adders,so it would be 15 per adder (rounded down)
-- question 3
--a mult costs 0 LUTS to implement
