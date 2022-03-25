module xor_gate_test();
reg a,b;
wire c;
xor_gate DUT(.a(a),.b(b),.c(c));
initial begin
$monitor("a=%b b=%b c=%b",a,b,c);
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;
#10;
end
endmodule

module xor_gate(a,b,c);
input a,b;
output c;
assign c=(a&~b)|(~a&b);
endmodule
