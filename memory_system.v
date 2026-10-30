module memory_system(
    input  [7:0] data,
    input store,
    input  [1:0] addr,
    output [7:0] memory
);

    reg [3:0] store_demux;

    wire [7:0] byte0_out;
    wire [7:0] byte1_out;
    wire [7:0] byte2_out;
    wire [7:0] byte3_out;

    always @(*) begin
        case (addr)
            2'b00: store_demux = {3'b000, store};
            2'b01: store_demux = {2'b00, store, 1'b0};
            2'b10: store_demux = {1'b0, store, 2'b00};
            2'b11: store_demux = {store, 3'b000};
            default: store_demux = 4'b0000;
        endcase
    end

    byte_memory b0 (
        .data(data),
        .store(store_demux[0]),
        .memory(byte0_out)
    );

    byte_memory b1 (
        .data(data),
        .store(store_demux[1]),
        .memory(byte1_out)
    );

    byte_memory b2 (
        .data(data),
        .store(store_demux[2]),
        .memory(byte2_out)
    );

    byte_memory b3 (
        .data(data),
        .store(store_demux[3]),
        .memory(byte3_out)
    );

    reg [7:0] mux_out;
    
    always @(*) begin
        case (addr)
            2'b00: mux_out = byte0_out;
            2'b01: mux_out = byte1_out;
            2'b10: mux_out = byte2_out;
            2'b11: mux_out = byte3_out;
            default: mux_out = 8'b0;
        endcase
    end

    assign memory = mux_out;

endmodule