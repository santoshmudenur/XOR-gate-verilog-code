module xor_gate(a,b,c);
input a,b;
output c;
assign c=(a&~b)|(~a&b);
endmodule

