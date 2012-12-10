library verilog;
use verilog.vl_types.all;
entity complete is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        onephoneNum     : in     vl_logic_vector(7 downto 0);
        oneuserInp      : in     vl_logic_vector(4 downto 0);
        onepacketIn     : in     vl_logic_vector(15 downto 0);
        onecmdIn        : in     vl_logic_vector(1 downto 0);
        sendData        : in     vl_logic;
        twouserInp      : in     vl_logic_vector(4 downto 0);
        twophoneOut     : out    vl_logic_vector(7 downto 0);
        twotransportBusy: out    vl_logic
    );
end complete;
