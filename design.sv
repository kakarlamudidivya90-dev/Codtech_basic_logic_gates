// ============================================================================
// Company Name: CODTECH IT SOLUTIONS
// Intern Name:  Kakarlamudi Divya
// Intern ID:    CITS998
// Domain:       VLSI
// Task:         Basic Logic Gates (Verilog Implementation)
// ============================================================================

`timescale 1ns/1ps
module basic_gates (
    input  wire a,      // Input Signal A
    input  wire b,      // Input Signal B
    output wire y_and,  // AND Gate Output
    output wire y_or,   // OR Gate Output
    output wire y_not,  // NOT Gate Output (Inverts 'a')
    output wire y_nand, // NAND Gate Output
    output wire y_nor,  // NOR Gate Output
    output wire y_xor,  // XOR Gate Output
    output wire y_xnor  // XNOR Gate Output
);

    // Continuous assignment using bitwise operators (Dataflow Modeling)
    assign y_and  = a & b;   // Logic AND
    assign y_or   = a | b;   // Logic OR
    assign y_not  = ~a;      // Logic NOT
    assign y_nand = ~(a & b);// Logic NAND
    assign y_nor  = ~(a | b);// Logic NOR
    assign y_xor  = a ^ b;   // Logic XOR
    assign y_xnor = ~(a ^ b);// Logic XNOR

endmodule
