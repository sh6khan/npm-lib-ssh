library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_data    : out unsigned(7 downto 0)   -- output data
  );
end entity lab3;

architecture main of lab3 is

  -- A function to rotate left (rol) a vector by n bits
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;
  
  --count is # of edges detected, counter is # of data received  
  signal count : unsigned (7 downto 0); 
  signal counter : unsigned (8 downto 0);

  --mem data type
  type mem_data is array (2 downto 0) of
    std_logic_vector (7 downto 0);  


  --signals for mem arrays
  signal row_index : std_logic_vector(2 downto 0);
  signal col_count : unsigned(4 downto 0);
  signal wrens : std_logic_vector(2 downto 0);
  signal qs : mem_data;
  
  signal calc : unsigned(2 downto 0);
  signal end_input : std_logic;
begin
  
  
  mem : for i in 0 to 2 generate
    wrens(i) <= row_index(i) and i_valid;
    mem_array : entity work.mem(main)
      port map(
        address => std_logic_vector(col_count(3 downto 0)),
        clock => clk,
        data => std_logic_vector(i_data),
        wren => wrens(i),
        q => qs(i)
      );
  end generate;

  reset_proc : process
  begin
    wait until rising_edge(clk);
    if (reset = '1' or end_input = '1') then
      col_count <= to_unsigned(0,5);
      row_index <= "001";
      counter <= to_unsigned(0,9);
      end_input <= '0';
    else
      if (i_valid = '1') then
        col_count <= col_count + 1;
        counter <= counter + 1;
      end if;
      if (col_count = 16) then
        row_index <= row_index rol 1;
        col_count <= to_unsigned(0,5);
      end if;
      if (counter = 256) then
        end_input <= '1';
      end if;
    end if;
  end process;
            
  data_path : process(qs, i_data)
  begin
    --writing to mem 0
    if ((unsigned(qs(1)) + (i_data)) >= unsigned(qs(2))) then
      calc(0) <= '1';
    else
      calc(0) <= '0';
    end if;
    --writing to mem 1
    if ((unsigned(qs(2)) + (i_data)) >= unsigned(qs(0))) then
      calc(1) <= '1';
    else 
      calc(1) <= '0';
    end if;
    --writing to mem 2
    if ((unsigned(qs(0)) + (i_data)) >= unsigned(qs(1))) then
      calc(2) <= '1';
    else 
      calc(2) <= '0';
    end if;
  end process;

  add_count : process
  begin
    wait until rising_edge(clk);
    if (reset = '1') then
      count <= to_unsigned(0,8);  
    --past second row
    elsif (counter >= 32 and i_valid = '1') then
      if (row_index(0) = '1') then
        if (calc(0) = '1') then
          count <= count + 1;
        end if;
      elsif (row_index(1) = '1') then
        if (calc(1) = '1') then
          count <= count + 1;
        end if;
      elsif (row_index(2) = '1') then
        if (calc(2) = '1') then
          count <= count + 1;
        end if;
      end if;
    end if;
  end process;
  
  output : process
  begin
    wait until rising_edge(clk);
    o_data <= count;
  end process;
end architecture main;

-- Q1: number of flip flops and lookup tables?
-- our implementation uses 86 luts and 34 flip flops  

-- Q2: maximum clock frequency?
--224 Mhz

-- Q3: source and destination signals of critical path?
--source reg_out_o...uf(0)/clk to destination o_data(0)
-- Q4: does your implementation function correctly?  If not,
-- explain bug and how you would fix it if you had more time.
-- the implementation functions correctly for all tests
