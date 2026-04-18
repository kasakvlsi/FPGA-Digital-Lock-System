  
  `timescale 1ns/1ps
  
  module digital_lock(
    input clk,
    input reset,
    input check,
    input [3:0] sw,
    output reg unlock,
    output reg error,
    output reg locked
);

reg [1:0] attempts;
parameter PASSWORD = 4'b1010;

initial begin
unlock = 0;
error = 0;
locked = 1;
attempts = 0;

end

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        unlock <= 0;
        error <= 0;
        locked <= 1;
        attempts <= 0;
    end
    else if(check)
    begin
        if(locked)
        begin
            if(sw == PASSWORD)
            begin
                unlock <= 1;
                error <= 0;
                locked <= 0;
            end
            else
            begin
                unlock <= 0;
                error <= 1;
                attempts <= attempts + 1;

                if(attempts == 2)
                    locked <= 1;
            end
        end
    end
end

endmodule