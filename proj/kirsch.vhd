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
  -- -- no idea what this does
  -- -- ok so this is the 3x3 grid
  -- subtype mem_data is unsigned(7 downto 0);
  -- type mem_data_vector is array(2 downto 0) of mem_data;
  -- type mem_data_crazy_vector is array(2 downto 0) of mem_data_vector;
  -- -- will remove later

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

  signal register_1 : unsigned(8 downto 0);
  signal register_2 : unsigned(8 downto 0);
  signal register_3 : unsigned(8 downto 0);
  signal register_4 : unsigned(8 downto 0);
  signal register_5 : unsigned(8 downto 0);
  signal register_6 : unsigned(8 downto 0);
  signal register_7 : unsigned(8 downto 0);
  signal register_8 : unsigned(8 downto 0);

  -- A function to rotate left (rol) a vector by n bits
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;

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

  increment_conv_table: process begin
      wait until rising_edge(i_clock);
      if( i_reset = '1') then
        -- clear all of the values
        -- a <= "00000000";
        -- b <= "00000000";
        -- c <= "00000000";
-- 
        -- d <= "00000000";
        -- e <= "00000000";
        -- f <= "00000000";
-- 
        -- g <= "00000000";
        -- h <= "00000000";
        -- i <= "00000000";
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
