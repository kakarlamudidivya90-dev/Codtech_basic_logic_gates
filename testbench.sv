// ============================================================================
// Company Name: CODTECH IT SOLUTIONS
// Intern Name:  Kakarlamudi Divya
// Intern ID:    CITS998
// Domain:       VLSI
// Task:         Basic Logic Gates Testbench
// ============================================================================

`timescale 1ns / 1ps

module tb_basic_gates;

    // Inputs declaration (reg type for testbenches)
    reg tb_a;
    reg tb_b;

    // Outputs declaration (wire type to monitor UUT)
    wire tb_and, tb_or, tb_not, tb_nand, tb_nor, tb_xor, tb_xnor;

    // Instantiate the Unit Under Test (UUT)
    basic_gates uut (
        .a(tb_a), .b(tb_b),
        .y_and(tb_and), .y_or(tb_or), .y_not(tb_not),
        .y_nand(tb_nand), .y_nor(tb_nor), .y_xor(tb_xor), .y_xnor(tb_xnor)
    );

    // Stimulus block to test all 4 binary combinations
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
end
    initial begin 
        // Display format for simulation console
        $monitor("Time=%0td | Input A=%b B=%b | AND=%b OR=%b NOT_A=%b NAND=%b NOR=%b XOR=%b XNOR=%b", 
                 $time, tb_a, tb_b, tb_and, tb_or, tb_not, tb_nand, tb_nor, tb_xor, tb_xnor);

        // Case 1: Binary 00
        tb_a = 0; tb_b = 0; #10;
        
        // Case 2: Binary 01
        tb_a = 0; tb_b = 1; #10;
        
        // Case 3: Binary 10
        tb_a = 1; tb_b = 0; #10;
        
        // Case 4: Binary 11
        tb_a = 1; tb_b = 1; #10;

        // Finish simulation
        $finish;
    end

endmodule
