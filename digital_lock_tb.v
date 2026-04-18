`timescale 1ns/1ps

module digital_lock_tb;

reg clk;
reg reset;
reg check;
reg [3:0] sw;

wire unlock;
wire error;
wire locked;

digital_lock uut(
    .clk(clk),
    .reset(reset),
    .check(check),
    .sw(sw),
    .unlock(unlock),
    .error(error),
    .locked(locked)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    check = 0;
    sw = 4'b0000;

    #10 reset = 0;

    // Wrong password
    sw = 4'b0011;
    check = 1; #10;
    check = 0; #20;

    // Correct password
    sw = 4'b1010;
    check = 1; #10;
    check = 0;

    #50 $finish;
end

endmodule