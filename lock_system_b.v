module digital_lock_top(
    input clk,          // 100 MHz clock
    input reset,
    input check,
    input [3:0] sw,
    output unlock,
    output error,
    output locked
);

//============================
// CLOCK DRIVER (DIVIDER)
//============================
reg [26:0] counter = 0;
reg slow_clk = 0;

always @(posedge clk)
begin
    counter <= counter + 1;

    if(counter == 50_000_000)   // ~1 second toggle
    begin
        slow_clk <= ~slow_clk;
        counter <= 0;
    end
end


//============================
// DIGITAL LOCK INSTANCE
//============================
digital_lock LOCK(
    .clk(slow_clk),   // ← slowed clock
    .reset(reset),
    .check(check),
    .sw(sw),
    .unlock(unlock),
    .error(error),
    .locked(locked)
);

endmodule