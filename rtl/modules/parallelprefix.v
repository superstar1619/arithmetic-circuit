module parallelprefix(c, g, p);

    input [31:0] g, p;

    output [32:1] c;

    wire [31:0] g0, p0;
    layer0 l0 (g0, p0, g, p);
    
    wire [31:0] g1, p1;
    layer1 l1 (g1, p1, g0, p0);
    
    wire [31:0] g2, p2;
    layer2 l2 (g2, p2, g1, p1);
    
    wire [31:0] g3, p3;
    layer3 l3 (g3, p3, g2, p2);
    
    wire [31:0] g4, p4;
    layer4 l4 (g4, p4, g3, p3);
    
    wire [31:0] g5, p5;
    layer5 l5 (g5, p5, g4, p4);
    
    wire [31:0] g6, p6;
    layer6 l6 (g6, p6, g5, p5);
    
    wire [31:0] g7, p7;
    layer7 l7 (g7, p7, g6, p6);
    
    wire [31:0] g8, p8;
    layer8 l8 (g8, p8, g7, p7);
    
    wire [31:0] g9, p9;
    layer9 l9 (g9, p9, g8, p8);

    assign c = g9;

endmodule

module layer0(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    white n31(gout[31], pout[31], gin[31], pin[31]);

endmodule

module layer1(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    black b1(gout[1], pout[1], gin[1], pin[1], gin[0], pin[0]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    black b3(gout[3], pout[3], gin[3], pin[3], gin[2], pin[2]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    black b5(gout[5], pout[5], gin[5], pin[5], gin[4], pin[4]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    black b7(gout[7], pout[7], gin[7], pin[7], gin[6], pin[6]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    black b9(gout[9], pout[9], gin[9], pin[9], gin[8], pin[8]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    black b11(gout[11], pout[11], gin[11], pin[11], gin[10], pin[10]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    black b13(gout[13], pout[13], gin[13], pin[13], gin[12], pin[12]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    black b15(gout[15], pout[15], gin[15], pin[15], gin[14], pin[14]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    black b17(gout[17], pout[17], gin[17], pin[17], gin[16], pin[16]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    black b19(gout[19], pout[19], gin[19], pin[19], gin[18], pin[18]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    black b21(gout[21], pout[21], gin[21], pin[21], gin[20], pin[20]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    black b23(gout[23], pout[23], gin[23], pin[23], gin[22], pin[22]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    black b25(gout[25], pout[25], gin[25], pin[25], gin[24], pin[24]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    black b27(gout[27], pout[27], gin[27], pin[27], gin[26], pin[26]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    black b29(gout[29], pout[29], gin[29], pin[29], gin[28], pin[28]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    black b31(gout[31], pout[31], gin[31], pin[31], gin[30], pin[30]);

endmodule

module layer2(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    black b3(gout[3], pout[3], gin[3], pin[3], gin[1], pin[1]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    black b7(gout[7], pout[7], gin[7], pin[7], gin[5], pin[5]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    black b11(gout[11], pout[11], gin[11], pin[11], gin[9], pin[9]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    black b15(gout[15], pout[15], gin[15], pin[15], gin[13], pin[13]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    black b19(gout[19], pout[19], gin[19], pin[19], gin[17], pin[17]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    black b23(gout[23], pout[23], gin[23], pin[23], gin[21], pin[21]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    black b27(gout[27], pout[27], gin[27], pin[27], gin[25], pin[25]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    black n31(gout[31], pout[31], gin[31], pin[31], gin[29], pin[29]);

endmodule

module layer3(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    black b7(gout[7], pout[7], gin[7], pin[7], gin[3], pin[3]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    black b15(gout[15], pout[15], gin[15], pin[15], gin[11], pin[11]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    black b23(gout[23], pout[23], gin[23], pin[23], gin[19], pin[19]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    black b31(gout[31], pout[31], gin[31], pin[31], gin[27], pin[27]);

endmodule


module layer4(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    black b15(gout[15], pout[15], gin[15], pin[15], gin[7], pin[7]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    black b31(gout[31], pout[31], gin[31], pin[31], gin[23], pin[23]);

endmodule



module layer5(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    black b31(gout[31], pout[31], gin[31], pin[31], gin[15], pin[15]);

endmodule



module layer6(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    black b23(gout[23], pout[23], gin[23], pin[23], gin[15], pin[15]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    white n31(gout[31], pout[31], gin[31], pin[31]);

endmodule



module layer7(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    black b11(gout[11], pout[11], gin[11], pin[11], gin[7], pin[7]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    black b19(gout[19], pout[19], gin[19], pin[19], gin[15], pin[15]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    black b27(gout[27], pout[27], gin[27], pin[27], gin[23], pin[23]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    white n31(gout[31], pout[31], gin[31], pin[31]);

endmodule



module layer8(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    white n2(gout[2], pout[2], gin[2], pin[2]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    white n4(gout[4], pout[4], gin[4], pin[4]);
    black b5(gout[5], pout[5], gin[5], pin[5], gin[3], pin[3]);
    white n6(gout[6], pout[6], gin[6], pin[6]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    white n8(gout[8], pout[8], gin[8], pin[8]);
    black b9(gout[9], pout[9], gin[9], pin[9], gin[7], pin[7]);
    white n10(gout[10], pout[10], gin[10], pin[10]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    white n12(gout[12], pout[12], gin[12], pin[12]);
    black b13(gout[13], pout[13], gin[13], pin[13], gin[11], pin[11]);
    white n14(gout[14], pout[14], gin[14], pin[14]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    white n16(gout[16], pout[16], gin[16], pin[16]);
    black b17(gout[17], pout[17], gin[17], pin[17], gin[15], pin[15]);
    white n18(gout[18], pout[18], gin[18], pin[18]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    white n20(gout[20], pout[20], gin[20], pin[20]);
    black b21(gout[21], pout[21], gin[21], pin[21], gin[19], pin[19]);
    white n22(gout[22], pout[22], gin[22], pin[22]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    white n24(gout[24], pout[24], gin[24], pin[24]);
    black b25(gout[25], pout[25], gin[25], pin[25], gin[23], pin[23]);
    white n26(gout[26], pout[26], gin[26], pin[26]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    white n28(gout[28], pout[28], gin[28], pin[28]);
    black b29(gout[29], pout[29], gin[29], pin[29], gin[27], pin[27]);
    white n30(gout[30], pout[30], gin[30], pin[30]);
    white n31(gout[31], pout[31], gin[31], pin[31]);

endmodule


module layer9(gout, pout, gin, pin);

    input [31:0] gin, pin;

    output [31:0] gout, pout;
    
    white n0(gout[0], pout[0], gin[0], pin[0]);
    white n1(gout[1], pout[1], gin[1], pin[1]);
    black b2(gout[2], pout[2], gin[2], pin[2], gin[1], pin[1]);
    white n3(gout[3], pout[3], gin[3], pin[3]);
    black b4(gout[4], pout[4], gin[4], pin[4], gin[3], pin[3]);
    white n5(gout[5], pout[5], gin[5], pin[5]);
    black b6(gout[6], pout[6], gin[6], pin[6], gin[5], pin[5]);
    white n7(gout[7], pout[7], gin[7], pin[7]);
    black b8(gout[8], pout[8], gin[8], pin[8], gin[7], pin[7]);
    white n9(gout[9], pout[9], gin[9], pin[9]);
    black b10(gout[10], pout[10], gin[10], pin[10], gin[9], pin[9]);
    white n11(gout[11], pout[11], gin[11], pin[11]);
    black b12(gout[12], pout[12], gin[12], pin[12], gin[11], pin[11]);
    white n13(gout[13], pout[13], gin[13], pin[13]);
    black b14(gout[14], pout[14], gin[14], pin[14], gin[13], pin[13]);
    white n15(gout[15], pout[15], gin[15], pin[15]);
    black b16(gout[16], pout[16], gin[16], pin[16], gin[15], pin[15]);
    white n17(gout[17], pout[17], gin[17], pin[17]);
    black b18(gout[18], pout[18], gin[18], pin[18], gin[17], pin[17]);
    white n19(gout[19], pout[19], gin[19], pin[19]);
    black b20(gout[20], pout[20], gin[20], pin[20], gin[19], pin[19]);
    white n21(gout[21], pout[21], gin[21], pin[21]);
    black b22(gout[22], pout[22], gin[22], pin[22], gin[21], pin[21]);
    white n23(gout[23], pout[23], gin[23], pin[23]);
    black n24(gout[24], pout[24], gin[24], pin[24], gin[23], pin[23]);
    white n25(gout[25], pout[25], gin[25], pin[25]);
    black b26(gout[26], pout[26], gin[26], pin[26], gin[25], pin[25]);
    white n27(gout[27], pout[27], gin[27], pin[27]);
    black b28(gout[28], pout[28], gin[28], pin[28], gin[27], pin[27]);
    white n29(gout[29], pout[29], gin[29], pin[29]);
    black n30(gout[30], pout[30], gin[30], pin[30], gin[29], pin[29]);
    white n31(gout[31], pout[31], gin[31], pin[31]);

endmodule
