module arbiter(input logic requester_0, requester_1,
               output logic grant_0, grant_1);
  always_comb
    begin
      if(requester_0)
        begin
          grant_0 = 1;
          grant_1 = 0;
        end
      else if(requester_1)
        begin
          grant_0 = 0;
          grant_1 = 1;
        end
      else
        begin
          grant_0 = 0;
          grant_1 = 0;
        end
    end
endmodule