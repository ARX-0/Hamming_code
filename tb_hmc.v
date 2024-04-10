
`timescale 1ns / 1ps

module tb_hmc(); 
    reg [3:0] ip_data;
    wire [6:0] op_hamm_code;
    wire op_parity;
    
    integer success_count = 0 , error_count = 0 , test_count = 0 , i = 0 ;
    
    hamming_c EG(
    .ip_data(ip_data),
    .op_hamm_code(op_hamm_code),
    .op_parity(op_parity)
    );
    
    initial begin
    $display($time , "TEST START");
    ip_data = 4'd0;
    #1;
    
    for (i = 1 ; i<16 ; i = i + 1 )
    begin
    ip_data=i;
    #1;
    compare_data(i[3:0] , op_hamm_code);
      end
      
     #5
     $display ($time,success_count,error_count,test_count);
     $stop;
   end
   
   
task compare_data(input [3:0] ip_data, input [6:0] i_hamming74);
begin: cmp_data
    reg [6:0]exp_hamming74;

    // Create the expected data case (i_data)
    case(ip_data)
        4'd0: exp_hamming74 = 7'b000_0_0_00;
        4'd1: exp_hamming74 = 7'b000_0_1_11;
        4'd2: exp_hamming74 = 7'b001_1_0_01;
        4'd3: exp_hamming74 = 7'b001_1_1_10;
        4'd4: exp_hamming74 = 7'b010_1_0_10;
        4'd5: exp_hamming74 = 7'b010_1_1_01;
        4'd6: exp_hamming74 = 7'b011_0_0_11;
        4'd7: exp_hamming74 = 7'b011_0_1_00;
        4'd8: exp_hamming74 = 7'b100_1_0_11;

        4'd9: exp_hamming74 =  7'b100_1_1_00;
        4'd10: exp_hamming74 = 7'b101_0_0_10;
        4'd11: exp_hamming74 = 7'b101_0_1_01;
        4'd12: exp_hamming74 = 7'b110_0_0_01;
        4'd13: exp_hamming74 = 7'b110_0_1_10;
        4'd14: exp_hamming74 = 7'b111_1_0_00;
        4'd15: exp_hamming74 = 7'b111_1_1_11;
        default: exp_hamming74 = 7'b000_0000; 
    endcase

    if (i_hamming74 == exp_hamming74) begin 
      $display("SUCCESS \t EXPECTED : data %b, : hamming74 %b = exp_hamming74 %b", ip_data, i_hamming74, exp_hamming74);
        success_count = success_count + 1;
    end else begin
      $display("ERROR \t EXPECTED data %b, : hamming74 %b != exp_hamming74 %b", ip_data, i_hamming74, exp_hamming74);
        error_count = error_count + 1;
    end

    test_count = test_count + 1;
end : cmp_data
endtask

endmodule
