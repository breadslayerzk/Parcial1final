library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity peaje_electronico is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           front_sensor_raw : in STD_LOGIC;
           back_sensor_raw : in STD_LOGIC;
           tag_read_raw : in STD_LOGIC_VECTOR (4 downto 0);
           
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
end peaje_electronico;

architecture Structural of peaje_electronico is

    -- SeÃ±ales internas para interconectar los mÃ³dulos
    signal front_sensor, back_sensor : STD_LOGIC;
    signal tag_read : STD_LOGIC_VECTOR (4 downto 0);
    signal tag_valid, max_attempts : STD_LOGIC;
    signal cat_code : STD_LOGIC_VECTOR (1 downto 0);
    signal timeout, led_toggle : STD_LOGIC;
    signal entry_green, entry_red, exit_green, exit_red : STD_LOGIC;
    signal entry_barrier, exit_barrier, green_led, red_led, alarm : STD_LOGIC;
    signal cat_display : STD_LOGIC_VECTOR (1 downto 0);
    signal time_display : STD_LOGIC_VECTOR (6 downto 0);

    -- InstanciaciÃ³n de los mÃ³dulos
    component input_interface
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               front_sensor_raw : in STD_LOGIC;
               back_sensor_raw : in STD_LOGIC;
               tag_read_raw : in STD_LOGIC_VECTOR (4 downto 0);
               front_sensor : out STD_LOGIC;
               back_sensor : out STD_LOGIC;
               tag_read : out STD_LOGIC_VECTOR (4 downto 0);
               tag_valid : out STD_LOGIC;
               max_attempts : out STD_LOGIC);
    end component;

    component tag_categorizer
        Port ( tag_read : in STD_LOGIC_VECTOR (4 downto 0);
               tag_valid : in STD_LOGIC;
               cat_code : out STD_LOGIC_VECTOR (1 downto 0));
    end component;

    component timer
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable : in STD_LOGIC;
               timeout : out STD_LOGIC;
               led_toggle : out STD_LOGIC);
    end component;

    component vehicle_counter
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable : in STD_LOGIC;
               count : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    -- Nuevo componente peaje_controller
    component peaje_controller
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               front_sensor : in STD_LOGIC;
               back_sensor : in STD_LOGIC;
               tag_read : in STD_LOGIC_VECTOR (4 downto 0);
               tag_valid : in STD_LOGIC;
               cat_code : in STD_LOGIC_VECTOR (1 downto 0);
               timeout : in STD_LOGIC;
               led_toggle : in STD_LOGIC;
               max_attempts : in STD_LOGIC;
               entry_green : out STD_LOGIC;
               entry_red : out STD_LOGIC;
               exit_green : out STD_LOGIC;
               exit_red : out STD_LOGIC;
               entry_barrier : out STD_LOGIC;
               exit_barrier : out STD_LOGIC;
               green_led : out STD_LOGIC;
               red_led : out STD_LOGIC;
               alarm : out STD_LOGIC;
               cat_display : out STD_LOGIC_VECTOR (1 downto 0));
    end component;

    component output_interface
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
    end component;

begin

    -- Instancias de los mÃ³dulos y conexiones de seÃ±ales
    input_interface_inst : input_interface
        Port map ( clk => clk,
                   reset => reset,
                   front_sensor_raw => front_sensor_raw,
                   back_sensor_raw => back_sensor_raw,
                   tag_read_raw => tag_read_raw,
                   front_sensor => front_sensor,
                   back_sensor => back_sensor,
                   tag_read => tag_read,
                   tag_valid => tag_valid,
                   max_attempts => max_attempts);

    tag_categorizer_inst : tag_categorizer
        Port map ( tag_read => tag_read,
                   tag_valid => tag_valid,
                   cat_code => cat_code);

    timer_inst : timer
        Port map ( clk => clk,
                   reset => reset,
                   enable => '1', -- Habilitado continuamente
                   timeout => timeout,
                   led_toggle => led_toggle);

    vehicle_counter_inst : vehicle_counter
        Port map ( clk => clk,
                   reset => reset,
                   enable => '1', -- Habilitado continuamente
                   count => time_display);

    peaje_controller_inst : peaje_controller
        Port map ( clk => clk,
                   reset => reset,
                   front_sensor => front_sensor,
                   back_sensor => back_sensor,
                   tag_read => tag_read,
                   tag_valid => tag_valid,
                   cat_code => cat_code,
                   timeout => timeout,
                   led_toggle => led_toggle,
                   max_attempts => max_attempts,
                   entry_green => entry_green,
                   entry_red => entry_red,
                   exit_green => exit_green,
                   exit_red => exit_red,
                   entry_barrier => entry_barrier,
                   exit_barrier => exit_barrier,
                   green_led => green_led,
                   red_led => red_led,
                   alarm => alarm,
                   cat_display => cat_display);

    output_interface_inst : output_interface
        Port map ( entry_green => entry_green,
                   entry_red => entry_red,
                   exit_green => exit_green,
                   exit_red => exit_red,
                   entry_barrier => entry_barrier,
                   exit_barrier => exit_barrier,
                   green_led => green_led,
                   red_led => red_led,
                   alarm => alarm,
                   cat_display => cat_display,
                   time_display => time_display,
                   entry_green_out => entry_green_out,
                   entry_red_out => entry_red_out,
                   exit_green_out => exit_green_out,
                   exit_red_out => exit_red_out,
                   entry_barrier_out => entry_barrier_out,
                   exit_barrier_out => exit_barrier_out,
                   green_led_out => green_led_out,
                   red_led_out => red_led_out,
                   alarm_out => alarm_out,
                   cat_display_out => cat_display_out,
                   time_display_out => time_display_out);

end Structural;

-- DeclaraciÃ³n de la biblioteca antes de la entidad "tag_categorizer"
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- DefiniciÃ³n de la entidad "tag_categorizer"
entity tag_categorizer is
    Port ( tag_read : in STD_LOGIC_VECTOR (4 downto 0);
           tag_valid : in STD_LOGIC;
           cat_code : out STD_LOGIC_VECTOR (1 downto 0));
end entity tag_categorizer;

architecture rtl of tag_categorizer is
begin
    -- LÃ³gica de la entidad "tag_categorizer"
    -- AquÃ­ debes implementar la lÃ³gica para categorizar los tags
end architecture rtl;

-- DefiniciÃ³n de la entidad "timer"
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity timer is
    generic (
        TIMER_MAX : natural := 50_000_000  -- Valor máximo del contador (1 segundo a 50 MHz)
    );
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        enable   : in  std_logic;
        timeout  : out std_logic;
        led_toggle : out std_logic
    );
end entity timer;

architecture rtl of timer is
    signal counter : unsigned(31 downto 0) := (others => '0');
    signal toggle_reg : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
            timeout <= '0';
            led_toggle <= '0';
            toggle_reg <= '0';
        elsif rising_edge(clk) then
            if enable = '1' then
                if counter = TIMER_MAX - 1 then
                    counter <= (others => '0');
                    timeout <= '1';
                    toggle_reg <= not toggle_reg;
                    led_toggle <= toggle_reg;
                else
                    counter <= counter + 1;
                    timeout <= '0';
                    led_toggle <= toggle_reg;
                end if;
            end if;
        end if;
    end process;

end architecture rtl;