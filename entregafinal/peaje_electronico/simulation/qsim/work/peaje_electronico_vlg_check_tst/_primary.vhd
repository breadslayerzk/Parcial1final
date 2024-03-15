library verilog;
use verilog.vl_types.all;
entity peaje_electronico_vlg_check_tst is
    port(
        alarm_out       : in     vl_logic;
        cat_display_out : in     vl_logic_vector(6 downto 0);
        entry_barrier_out: in     vl_logic;
        entry_green_out : in     vl_logic;
        entry_red_out   : in     vl_logic;
        exit_barrier_out: in     vl_logic;
        exit_green_out  : in     vl_logic;
        exit_red_out    : in     vl_logic;
        green_led_out   : in     vl_logic;
        red_led_out     : in     vl_logic;
        time_display_out: in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end peaje_electronico_vlg_check_tst;
