library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package state_pkg is
  subtype row_state_ty is std_logic_vector(2 downto 0);
  constant initial_row_state : row_state_ty := "001";

  subtype valid_bit_ty is std_logic_vector(3 downto 0);
  constant initial_valid_bit : valid_bit_ty := "0000";
end state_pkg;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.state_pkg.all;
use work.kirsch_synth_pkg.all;

package max_pkg is
type max_record is record
    direction  : direction_ty;
    magnitude  : unsigned(9 downto 0);
  end record max_record;  
end max_pkg;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.kirsch_synth_pkg.all;
use work.state_pkg.all;
use work.max_pkg.all;

entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    -- o_col      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ; 
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    ------------------------------------------
  );  
end entity;


architecture main of kirsch is
  type mem_array is array (2 downto 0) of  std_logic_vector(7 downto 0);
  type mem_grid is array (2 downto 0) of  mem_array;

  type dir_record is
  record
     direction: direction_ty;
     value: unsigned(8 downto 0);
  end record;

  -- number of valid pixels; covers the entire 256 x 256 grid
  signal pixel_counter : unsigned(16 downto 0);

  -- memory
  signal row_index  : row_state_ty;
  signal valid_wren : row_state_ty;
  signal mem_out    : mem_array;

  -- conv table
  signal conv_table : mem_grid;
  signal a, b, c,
         d, e, f,
         g, h, i    : std_logic_vector(7 downto 0);

  -- inputs
  signal i1 : max_record;
  signal i2 : max_record;
  signal i3 : unsigned(7 downto 0);
  signal i4 : unsigned(7 downto 0);

  signal max1 : max_record;
  signal max2 : max_record;

  -- memory
  signal valid_bits_stage1 : valid_bit_ty;

  -- registers
  signal r1 : unsigned(10 downto 0);    -- 11 bits
  signal r2 : max_record;     -- 10 bits 
  signal r3 : max_record;     -- 10 bits - same as add2
  signal r4 : unsigned(10 downto 0);
  signal r5 : max_record;
  signal r6 : unsigned(12 downto 0);
  signal r7 : unsigned(12 downto 0);
  signal r8 : unsigned(12 downto 0); -- output

  signal r_edge : std_logic;

  -- addition
  signal add1 : unsigned(8 downto 0);   -- 9 bits
  signal add2 : max_record;   -- 10 bits
  signal add3 : unsigned(10 downto 0);  -- 11 bits
  signal add4 : unsigned(12 downto 0);  -- 13 bits
  
  --subtraction
  signal sub1 : unsigned(12 downto 0); 
  


  -- A function to rotate left (rol) a vector by n bits
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;

  -- Max Function
  function max_func ( x : max_record; y : max_record )
    return max_record
  is
  begin
    if(x.magnitude >= y.magnitude) then
        return x;
    else 
        return y;
    end if;
  end max_func;

begin

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');
  
  -- Generate the memory array
  MEMORY_ARRAY_GEN : for i in 0 to 2 generate
    valid_wren(i) <= i_valid and row_index(i);
    memblock : entity work.mem(main)
    port map (
               clock    => i_clock,
               address  => std_logic_vector(pixel_counter(7 downto 0)),
               wren     => valid_wren(i),
               data     => std_logic_vector(i_pixel),
               q        => mem_out(i)
             );
  end generate MEMORY_ARRAY_GEN;
    
    valid_pixel: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
        row_index <= initial_row_state;
        pixel_counter <= to_unsigned(0, 17);
      elsif( i_valid = '1') then
        pixel_counter <= pixel_counter + 1;
        -- end of row
        if ( pixel_counter(7 downto 0)  = "11111111" )  then
          row_index <=  row_index rol 1;
        end if;
      end if;
    end process;

    on_to_the_next_state: process begin
        wait until rising_edge(i_clock);

        -- reset to the initial state 
        if( i_reset = '1') then
            valid_bits_stage1 <= initial_valid_bit;
        else
            -- shift all of the bits down
            valid_bits_stage1(3 downto 1) <= valid_bits_stage1(2 downto 0);
            -- set the first bit to 1 when i_valid is high
            valid_bits_stage1(0) <= i_valid;
        end if;
    end process;

    i1.magnitude <= ("00" & unsigned(g)) when valid_bits_stage1(0) = '1' else 
          ("00" & unsigned(a)) when valid_bits_stage1(1) = '1' else
          ("00" & unsigned(c)) when valid_bits_stage1(2) = '1' else
          ("00" & unsigned(e));

    i2.magnitude <= ("00" & unsigned(b)) when valid_bits_stage1(0) = '1' else 
          ("00" & unsigned(d)) when valid_bits_stage1(1) = '1' else
          ("00" & unsigned(f)) when valid_bits_stage1(2) = '1' else
          ("00" & unsigned(h));

    i1.direction <= dir_w when valid_bits_stage1(0) = '1' else 
          dir_n when valid_bits_stage1(1) = '1' else
          dir_e when valid_bits_stage1(2) = '1' else
          dir_s;

    i2.direction <= dir_nw when valid_bits_stage1(0) = '1' else 
          dir_ne  when valid_bits_stage1(1) = '1' else
          dir_se  when valid_bits_stage1(2) = '1' else
          dir_sw;

    i3 <= unsigned(a) when valid_bits_stage1(0) = '1' else 
          unsigned(b) when valid_bits_stage1(1) = '1' else
          unsigned(d) when valid_bits_stage1(2) = '1' else
          unsigned(f);

    i4 <= unsigned(h) when valid_bits_stage1(0) = '1' else 
          unsigned(c) when valid_bits_stage1(1) = '1' else
          unsigned(e) when valid_bits_stage1(2) = '1' else
          unsigned(g);

  register1_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r1 <= to_unsigned(0, 11);
      else
        if( valid_bits_stage1(0) = '1' ) then
            r1 <= ("00" & add1);
        else
            r1 <= add3;
        end if;
      end if;
  end process;

  register2_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r2.direction <= "000";
            r2.magnitude <= to_unsigned(0, 10);
      else
        if(valid_bits_stage1(1) = '1') then
            r2.direction <= r3.direction;
            r2.magnitude <= r3.magnitude;
        else
            r2.direction <= max2.direction;
            r2.magnitude <= max2.magnitude;
        end if;
      end if;
  end process;

  register3_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r3.direction <= "000";
            r3.magnitude <= to_unsigned(0, 10);
      else
            r3.direction <= add2.direction;
            r3.magnitude <= add2.magnitude;
      end if;
  end process;

  max1 <= max_func(i1, i2);
  max2 <= max_func(r2, r3);
  add1 <= ('0' & i3) + ('0' & i4);

  add2.magnitude <= ('0' & add1) + (max1.magnitude);
  add2.direction <= max1.direction;

  add3 <= ("00" & add1) + r1;
  
  add4 <= ("00" & r4) + ('0' & (r4 sll 1));

  sub1 <= 383 + r6;

  register4_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r4 <= to_unsigned(0, 11);
      elsif (valid_bits_stage1(3) = '1') then
            r4 <= add3;
      else
            r4 <= r4;
      end if;
  end process;

  register5_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r5.magnitude <= to_unsigned(0, 10);
            r5.direction <= "000";
      elsif(valid_bits_stage1(0) = '1') then
            r5.magnitude <= max2.magnitude;
            r5.direction <= max2.direction;
      else
            r5.magnitude <= r5.magnitude;
            r5.direction <= r5.direction;
      end if;
  end process;

  register6_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r6 <= to_unsigned(0, 13);
      elsif (valid_bits_stage1(1) = '1') then 
            r6 <= add4;
      else 
            r6 <= r6;
      end if;
  end process;

  register7_proc: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
            r7 <= to_unsigned(0, 13);
      elsif (valid_bits_stage1(1) = '1') then 
            r7 <= ("000" & r5.magnitude) sll 3;
      else 
            r7 <= r7;
      end if;
  end process;

  register8_proc: process begin
      wait until rising_edge(i_clock);
      if ((valid_bits_stage1(2) = '1') and ((r7 > sub1))) then
          r_edge <= '1';
      else
          r_edge <= '0';
      end if;
  end process;

  o_valid <= valid_bits_stage1(3); -- r_edge;
  o_dir <= r5.direction and (2 downto 0 => r_edge); 
  o_edge <= r_edge;
  -- o_col <= pixel_counter(7 downto 0);
  o_row <= std_logic_vector(pixel_counter(15 downto 8));

  increment_conv_table: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
        -- clear all of the values
        conv_table(0)(0) <= "00000000";
        conv_table(1)(0) <= "00000000";

        conv_table(0)(1) <= "00000000";
        conv_table(1)(1) <= "00000000";

        conv_table(0)(2) <= "00000000";
        conv_table(1)(2) <= "00000000";

        conv_table(2)(0) <= "00000000";
        conv_table(2)(1) <= "00000000";
        conv_table(2)(2) <= "00000000";

      elsif (i_valid = '1') then
        -- shift the table over
        -- a, h, g, b, and f get values from registers
        -- c and d get new values from the memory
        -- e gets the most recent i_pixel value

        conv_table(0)(0) <= conv_table(1)(0);
        conv_table(1)(0) <= conv_table(2)(0);

        conv_table(0)(1) <= conv_table(1)(1);
        conv_table(1)(1) <= conv_table(2)(1);

        conv_table(0)(2) <= conv_table(1)(2);
        conv_table(1)(2) <= conv_table(2)(2);

        -- right column
        if( row_index(2) = '1') then
            conv_table(2)(0) <= mem_out(0);
            conv_table(2)(1) <= mem_out(1);
        elsif(row_index(1) = '1') then
            conv_table(2)(0) <= mem_out(2);
            conv_table(2)(1) <= mem_out(0);
        else
            conv_table(2)(0) <= mem_out(1);
            conv_table(2)(1) <= mem_out(2);
        end if;

        conv_table(2)(2) <= i_pixel;
      end if;
    end process;

    a <= conv_table(0)(0);
    b <= conv_table(1)(0);
    c <= conv_table(2)(0);

    h <= conv_table(0)(1);
    i <= conv_table(1)(1);
    d <= conv_table(2)(1);

    g <= conv_table(0)(2);
    f <= conv_table(1)(2);
    e <= conv_table(2)(2);

end architecture;
