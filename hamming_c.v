`timescale 1ns / 1ps

module hamming_c(
    input [3:0] ip_data,
    output [6:0] op_hamm_code,
    output op_parity
    );
    reg p1,p2,p3;
    
    always @ (*) begin
    p1 = ip_data[0] ^ ip_data[1] ^ ip_data[3];
    p2 = ip_data[0] ^ ip_data[2] ^ ip_data[3];
    p3 = ip_data[1] ^ ip_data[2] ^ ip_data[3];
    end
    
    assign op_hamm_code = { ip_data[3:1] , p3 , ip_data[0] , p2 , p1};
// in the above code we just re arrage the bits in hamming code format     
//           ip[3] , ip[2] , ip[1] , p3 , ip[0] , p2 , p1 
//            d3      d2      d1          d0 

assign op_parity = ^op_hamm_code;
endmodule
