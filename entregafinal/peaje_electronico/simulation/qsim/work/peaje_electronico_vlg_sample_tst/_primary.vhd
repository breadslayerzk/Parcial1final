library verilog;
use verilog.vl_types.all;
entity peaje_electronico_vlg_sample_tst is
    port(
        back_sensor_raw : in     vl_logic;
        clk             : in     vl_logic;
        front_sensor_raw: in     vl_logic;
        reset           : in     vl_logic;
        tag_read_raw    : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end peaje_electronico_vlg_sample_tst;
