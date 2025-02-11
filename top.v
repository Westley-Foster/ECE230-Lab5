module top(
    input [7:0]sw,
    output [5:0]led
    
);
wire carrybetween;
    light stair_light(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
        
    );
    adder CarryY(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    full_adder MSB(
        .A(sw[5]),
        .B(sw[7]),
        .Y(led[4]),
        .Cout(led[5]),
        .Cin(carrybetween)
    );
    full_adder LSB(
        .A(sw[4]),
        .B(sw[6]),
        .Y(led[3]),
        .Cout(carrybetween),
        .Cin(0)
    );

endmodule
