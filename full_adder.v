module full_adder(
    // Declare your A/B inputs
    // Declare Y output
    // Declare carry output
  input Cin,
  input A, 
  input B,
  output Y,
  output Cout

);
assign Cout = (A*B)|(B*Cin)|(A*Cin);
assign Y = (~A*~B*Cin)|(~A*B*~Cin)|(A*B*Cin)|(A*~B*~Cin);
    // Enter logic equation here

endmodule