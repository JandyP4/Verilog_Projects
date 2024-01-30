module dff_posedge_activelowreset(Q,D,Clk,Rst)

input D,Clk,Rst;
output reg Q;

always@(posedge Clk or negedge Rst) //The Reset and Clock have no relation, thus Async
        if(Rst)
                Q <= 1'b0;
        else
                Q <= D;

endmodule