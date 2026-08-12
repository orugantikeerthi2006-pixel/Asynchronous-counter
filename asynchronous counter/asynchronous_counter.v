module asynchronous_counter (
    input clk,
    input reset,
    output reg [3:0] q
);

    // First flip-flop
    always @(negedge clk or posedge reset) begin

        if (reset)
            q[0] <= 1'b0;
        else
            q[0] <= ~q[0];

    end

    // Second flip-flop
    always @(negedge q[0] or posedge reset) begin

        if (reset)
            q[1] <= 1'b0;
        else
            q[1] <= ~q[1];

    end

    // Third flip-flop
    always @(negedge q[1] or posedge reset) begin

        if (reset)
            q[2] <= 1'b0;
        else
            q[2] <= ~q[2];

    end

    // Fourth flip-flop
    always @(negedge q[2] or posedge reset) begin

        if (reset)
            q[3] <= 1'b0;
        else
            q[3] <= ~q[3];

    end

endmodule
