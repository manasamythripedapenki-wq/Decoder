module test;
  reg X,Y;
  wire A,B,C,D;
  decoder uut(
    .X(X),
    .Y(Y),
    .A(A),
    .B(B),
    .C(C),
    .D(D)
  );
  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0,test);	
    X=0; Y=0; #10;
    X=0; Y=1; #10;
    X=1; Y=0; #10;
    X=1; Y=1; #10;
  end
  initial begin
    $monitor("X=%b Y=%b A=%b B=%b C=%b D=%b",X,Y,A,B,C,D);
  end 
endmodule