module arbiter_tb();
  logic requester_0, requester_1, grant_0, grant_1;
  arbiter dut(.requester_0(requester_0), .requester_1(requester_1), .grant_0(grant_0), .grant_1(grant_1));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, arbiter_tb);
      
      requester_0 = 0; requester_1 = 0;
      #10;
      requester_0 = 1; requester_1 = 0;
      #10;
      requester_0 = 0; requester_1 = 1;
      #10;
      requester_0 = 1; requester_1 = 1;
      #10;
      
      #10; $finish;
    end
endmodule