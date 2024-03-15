library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity output_interface is
    Port ( entry_green : in STD_LOGIC;
           entry_red : in STD_LOGIC;
           exit_green : in STD_LOGIC;
           exit_red : in STD_LOGIC;
           entry_barrier : in STD_LOGIC;
           exit_barrier : in STD_LOGIC;
           green_led : in STD_LOGIC;
           red_led : in STD_LOGIC;
           alarm : in STD_LOGIC;
           cat_display : in STD_LOGIC_VECTOR (1 downto 0);
           time_display : in STD_LOGIC_VECTOR (6 downto 0);
           
           entry_green_out : out STD_LOGIC;
           entry_red_out : out STD_LOGIC;
           exit_green_out : out STD_LOGIC;
           exit_red_out : out STD_LOGIC;
           entry_barrier_out : out STD_LOGIC;
           exit_barrier_out : out STD_LOGIC;
           green_led_out : out STD_LOGIC;
           red_led_out : out STD_LOGIC;
           alarm_out : out STD_LOGIC;
           cat_display_out : out STD_LOGIC_VECTOR (6 downto 0);
           time_display_out : out STD_LOGIC_VECTOR (6 downto 0));
end output_interface;

architecture Behavioral of output_interface is
begin
    entry_green_out <= entry_green;
    entry_red_out <= entry_red;
    exit_green_out <= exit_green;
    exit_red_out <= exit_red;
    entry_barrier_out <= entry_barrier;
    exit_barrier_out <= exit_barrier;
    green_led_out <= green_led;
    red_led_out <= red_led;
    alarm_out <= alarm;
    
    -- Decodificadores para los displays de 7 segmentos
    with cat_display select
        cat_display_out <= "1001111" when "00", -- Categoría no válida
                           "0001100" when "01", -- Categoría I
                           "0010010" when "10", -- Categoría II
                           "0000110" when "11", -- Categoría III
                           "1111111" when others; -- Error
                           
    with time_display select
        time_display_out <= "1000000" when "0000000", -- 0
                            "1111001" when "0000001", -- 1
                            "0100100" when "0000010", -- 2
                            "0110000" when "0000011", -- 3
                            "0011001" when "0000100", -- 4
                            "0010010" when "0000101", -- 5
                            "0000010" when "0000110", -- 6
                            "1111000" when "0000111", -- 7
                            "0000000" when "0001000", -- 8
                            "0010000" when "0001001", -- 9
                            "1111111" when others; -- Error
end Behavioral;