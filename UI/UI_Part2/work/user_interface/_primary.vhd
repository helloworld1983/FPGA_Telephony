library verilog;
use verilog.vl_types.all;
entity user_interface is
    generic(
        idle            : integer := 0;
        incoming        : integer := 1;
        outgoing        : integer := 2;
        busy            : integer := 3;
        call_while_busy : integer := 4;
        initialize      : integer := 5;
        conference      : integer := 0;
        selective       : integer := 0;
        block_state     : integer := 0;
        call_number     : integer := 0;
        volume          : integer := 1;
        voicemail       : integer := 2;
        get_num         : integer := 3;
        set_time        : integer := 4;
        dialing         : integer := 7;
        change_vol      : integer := 8;
        toggle_v        : integer := 9;
        unread          : integer := 10;
        saved           : integer := 11;
        play_unread     : integer := 12;
        del_unread      : integer := 13;
        del_all_unread  : integer := 14;
        play_saved      : integer := 15;
        del_saved       : integer := 16;
        del_all_saved   : integer := 17;
        disp_num        : integer := 30;
        set_dt          : integer := 31;
        def_incoming    : integer := 32;
        accept          : integer := 33;
        \reject\        : integer := 34;
        send_to_v       : integer := 35;
        def_outgoing    : integer := 36;
        end_call        : integer := 37;
        def_busy        : integer := 38;
        end_call_b      : integer := 39;
        set_volume      : integer := 40;
        reject_call     : integer := 46;
        send_2_v        : integer := 47;
        end_call_inc    : integer := 48;
        hold_curr       : integer := 49;
        def_welcome     : integer := 50;
        def_init        : integer := 51;
        def_inc_busy    : integer := 52;
        def_sys         : integer := 53;
        init_signal     : integer := 0;
        make_call       : integer := 1;
        stop_call       : integer := 2;
        accept_call     : integer := 3;
        go_to_voicemail : integer := 4;
        connected       : integer := 1;
        sent_to_v       : integer := 2;
        failed          : integer := 4;
        incoming_call   : integer := 5;
        call_ended      : integer := 6;
        UI              : integer := 0;
        date_time       : integer := 1;
        voicemail_disp  : integer := 2;
        CMD_IDLE        : integer := 0;
        CMD_START_RD    : integer := 1;
        CMD_END_RD      : integer := 2;
        CMD_START_WR    : integer := 3;
        CMD_END_WR      : integer := 4;
        CMD_VIEW_UNRD   : integer := 5;
        CMD_VIEW_SAVED  : integer := 6;
        CMD_DEL         : integer := 7;
        CMD_SAVE        : integer := 8;
        STS_NO_CF_DEVICE: integer := 0;
        STS_CMD_RDY     : integer := 1;
        STS_BUSY        : integer := 2;
        STS_RDING       : integer := 3;
        STS_RD_FIN      : integer := 4;
        STS_WRING       : integer := 5;
        STS_WR_FIN      : integer := 6;
        STS_ERR_VM_FULL : integer := 7;
        STS_ERR_RD_FAIL : integer := 8;
        STS_ERR_WR_FAIL : integer := 9
    );
    port(
        clk             : in     vl_logic;
        s7              : in     vl_logic;
        s6              : in     vl_logic;
        s5              : in     vl_logic;
        s4              : in     vl_logic;
        s3              : in     vl_logic;
        s2              : in     vl_logic;
        s1              : in     vl_logic;
        s0              : in     vl_logic;
        b3              : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        reset           : in     vl_logic;
        enter           : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        left            : in     vl_logic;
        right           : in     vl_logic;
        inc_command     : in     vl_logic_vector(2 downto 0);
        init            : in     vl_logic;
        inc_address     : in     vl_logic_vector(7 downto 0);
        audio_in_data   : in     vl_logic_vector(15 downto 0);
        ready           : in     vl_logic;
        voicemail_status: in     vl_logic_vector(3 downto 0);
        dout            : in     vl_logic_vector(15 downto 0);
        voicemail_command: out    vl_logic_vector(3 downto 0);
        phn_num         : out    vl_logic_vector(7 downto 0);
        din             : out    vl_logic_vector(15 downto 0);
        disp_control    : out    vl_logic_vector(1 downto 0);
        address         : out    vl_logic_vector(7 downto 0);
        command         : out    vl_logic_vector(2 downto 0);
        current_state   : out    vl_logic_vector(2 downto 0);
        current_menu_item: out    vl_logic_vector(5 downto 0);
        headphone_volume: out    vl_logic_vector(4 downto 0);
        audio_out_data  : out    vl_logic_vector(15 downto 0)
    );
end user_interface;
