module test();
wire sum, carry;
reg bit1, bit2, bit3;

// add bit1 + bit2 + bit3
// put results on wires sum & carry

fulladder fa(.s(sum), .cout(carry), .a(bit1), .b(bit2), .cin(bit3));

initial
 begin
  #0 bit1=1'b0;
     bit2=1'b0;
     bit3=1'b0;
  #5 bit1=1'b1;
  #5 bit2=1'b1;
  #5 bit3=1'b1;
  #5 $finish;
 end

initial
 begin
  $shm_open ("shm.db");
  $shm_probe (test,"AS");
  $shm_save;
 end
endmodule
