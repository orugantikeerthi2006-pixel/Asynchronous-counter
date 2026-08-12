`timescale 1ns/1ps

module asynchronous_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] q;

    // Connect asynchronous counter
    asynchronous_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("output.vcd");
        $dumpvars(0, asynchronous_counter_tb);

        // Initial values
        clk = 0;
        reset = 1;

        #10;

        // Release reset
        reset = 0;

        // Run counter
        #200;

        // Reset counter again
        reset = 1;
        #10;

        reset = 0;

        #50;

        $finish;

    end

endmodule