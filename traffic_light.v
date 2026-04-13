module traffic_light (
    input clk,
    input rst,
    output reg [2:0] NS,
    output reg [2:0] EW
);

reg [1:0] state;
reg [3:0] count;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

parameter GREEN_TIME  = 10;
parameter YELLOW_TIME = 3;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= S0;
        count <= 0;
    end else begin
        count <= count + 1;

        case(state)
            S0: if (count == GREEN_TIME) begin state <= S1; count <= 0; end
            S1: if (count == YELLOW_TIME) begin state <= S2; count <= 0; end
            S2: if (count == GREEN_TIME) begin state <= S3; count <= 0; end
            S3: if (count == YELLOW_TIME) begin state <= S0; count <= 0; end
        endcase
    end
end

always @(*) begin
    case(state)
        S0: begin NS = 3'b001; EW = 3'b100; end
        S1: begin NS = 3'b010; EW = 3'b100; end
        S2: begin NS = 3'b100; EW = 3'b001; end
        S3: begin NS = 3'b100; EW = 3'b010; end
        default: begin NS = 3'b100; EW = 3'b100; end
    endcase
end

endmodule

