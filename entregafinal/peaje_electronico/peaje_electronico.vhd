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

    -- SeÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â±ales internas para interconectar los mÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³dulos
    signal front_sensor, back_sensor : STD_LOGIC;
    signal tag_read : STD_LOGIC_VECTOR (4 downto 0);
    signal tag_valid, max_attempts : STD_LOGIC;
    signal cat_code : STD_LOGIC_VECTOR (1 downto 0);
    signal timeout, led_toggle : STD_LOGIC;
    signal entry_green, entry_red, exit_green, exit_red : STD_LOGIC;
    signal entry_barrier, exit_barrier, green_led, red_led, alarm : STD_LOGIC;
    signal cat_display : STD_LOGIC_VECTOR (1 downto 0);
    signal time_display : STD_LOGIC_VECTOR (6 downto 0);

    -- InstanciaciÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³n de los mÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³dulos
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

    -- Instancias de los mÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³dulos y conexiones de seÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â±ales
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


-- Declaración de la biblioteca antes de la entidad "tag_categorizer"
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Definición de la entidad "tag_categorizer"
entity tag_categorizer is
    Port ( tag_read : in STD_LOGIC_VECTOR (4 downto 0);
           tag_valid : in STD_LOGIC;
           cat_code : out STD_LOGIC_VECTOR (1 downto 0));
end entity tag_categorizer;

architecture rtl of tag_categorizer is
begin
    -- Lógica de la entidad "tag_categorizer"
    process(tag_read, tag_valid)
    begin
        -- Asignar categoría por defecto
        cat_code <= "00";

        -- Verificar validez del tag
        if tag_valid = '1' then
            -- Categorizar los tags según su valor
            case tag_read is
                when "00000" =>
                    cat_code <= "00"; -- Categoría 0 (por ejemplo, vehículos particulares)
                when "00001" | "00010" | "00011" =>
                    cat_code <= "01"; -- Categoría 1 (por ejemplo, vehículos de transporte público)
                when "00100" | "00101" | "00110" | "00111" =>
                    cat_code <= "10"; -- Categoría 2 (por ejemplo, vehículos de carga)
                when others =>
                    cat_code <= "11"; -- Categoría 3 (por ejemplo, otros tipos de vehículos)
            end case;
        end if;
    end process;
end architecture rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity timer is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC; -- SeÃ±al de habilitaciÃ³n agregada
           timeout : out STD_LOGIC;
           led_toggle : out STD_LOGIC);
end entity timer;

architecture rtl of timer is
    constant CLK_FREQ : natural := 50_000_000; -- Frecuencia de reloj de entrada (50 MHz)
    constant DIV_RATIO : natural := CLK_FREQ; -- RazÃ³n de divisiÃ³n para obtener 1 Hz

    signal counter : unsigned(31 downto 0) := (others => '0');
    signal clk_out : STD_LOGIC := '0'; -- SeÃ±al interna para el reloj dividido
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
            clk_out <= '0';
            timeout <= '0'; -- Inicializar salida timeout
            led_toggle <= '0'; -- Inicializar salida led_toggle
        elsif rising_edge(clk) and enable = '1' then -- Divisor habilitado por la seÃ±al enable
            if counter = DIV_RATIO - 1 then
                counter <= (others => '0');
                clk_out <= not clk_out;
                timeout <= clk_out; -- Asignar el reloj dividido a la salida timeout
                led_toggle <= not clk_out; -- Asignar la negaciÃ³n del reloj dividido a la salida led_toggle
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

end architecture rtl;