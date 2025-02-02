```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity fixed_counter is
    generic (max_count : integer := 1023); -- Set maximum count
    port (clk : in std_logic;
          rst : in std_logic;
          count : out integer);
end entity fixed_counter;

architecture behavioral of fixed_counter is
    signal internal_count : integer := 0;
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_count <= 0;
        elsif rising_edge(clk) then
            internal_count <= (internal_count + 1) mod (max_count + 1); -- Modulo operation prevents overflow
        end if;
    end process;
    count <= internal_count;
end architecture behavioral;
```