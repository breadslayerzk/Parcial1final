library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vehicle_counter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (6 downto 0));
end vehicle_counter;

architecture Behavioral of vehicle_counter is
    signal count_reg, count_next : unsigned(6 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count_reg <= (others => '0');
        elsif rising_edge(clk) then
            count_reg <= count_next;
        end if;
    end process;

    process(count_reg, enable)
    begin
        if enable = '1' then
            count_next <= count_reg + 1;
        else
            count_next <= (others => '0');
        end if;
    end process;

    count <= std_logic_vector(count_reg);
	 
end Behavioral;