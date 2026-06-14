module decoder(
  input X,
  input Y,
  output A,
  output B,
  output C,
  output D
);
  assign A=(X==0 && Y==0);
  assign B=(X==0 && Y==1);
  assign C=(X==1 && Y==0);
  assign D=(X==1 && Y==1);
endmodule