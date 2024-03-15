library verilog;
use verilog.vl_types.all;
entity peaje_electronico is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        front_sensor_raw: in     vl_logic;
        back_sensor_raw : in     vl_logic;
        tag_read_raw    : in     vl_logic_vector(4 downto 0);
        entry_green_out : out    vl_logic;
        entry_red_out   : out    vl_logic;
        exit_green_out  : out    vl_logic;
        exit_red_out    : out    vl_logic;
        entry_barrier_out: out    vl_logic;
        exit_barrier_out: out    vl_logic;
        green_led_out   : out    vl_logic;
        red_led_out     : out    vl_logic;
        alarm_out       : out    vl_logic;
        cat_display_out : out    vl_logic_vector(6 downto 0);
        time_display_out: out    vl_logic_vector(6 downto 0)
    );
end peaje_electronico;
