`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:09:25 10/30/2019 
// Design Name: 
// Module Name:    MULTIPLIER 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module MULTIPLIER_U(input[31:0] A, input[31:0] B,	output[31:0] LOW, output[31:0] HIGH);


wire[31:0] add31 = B[31] == 0 ? 0 : A;
wire[31:0] d31_low;
wire[31:0] d31_high;
wire [31:0]carry31;
wire red31;
assign carry31[31:1] = 0;
ADDER adder31_low(0, add31, d31_low, carry31[0]);
ADDER adder31_high(0, carry31, d31_high, red31);

wire[31:0] d31_low_shifted;
wire[31:0] d31_high_shifted;
SHIFT_MULTIPLY shift31(d31_high, d31_low, d31_high_shifted, d31_low_shifted);
wire[31:0] add30 = (B[30] == 0) ? 0 : A;
wire[31:0] d30_low;
wire[31:0] d30_high;
wire[31:0] carry30;
wire red30;
assign carry30[31:1] = 0;
ADDER adder30_low(d31_low_shifted, add30, d30_low, carry30[0]);
ADDER adder30_high(d31_high_shifted, carry30, d30_high, red30);

wire[31:0] d30_low_shifted;
wire[31:0] d30_high_shifted;
SHIFT_MULTIPLY shift30(d30_high, d30_low, d30_high_shifted, d30_low_shifted);
wire[31:0] add29 = (B[29] == 0) ? 0 : A;
wire[31:0] d29_low;
wire[31:0] d29_high;
wire[31:0] carry29;
wire red29;
assign carry29[31:1] = 0;
ADDER adder29_low(d30_low_shifted, add29, d29_low, carry29[0]);
ADDER adder29_high(d30_high_shifted, carry29, d29_high, red29);

wire[31:0] d29_low_shifted;
wire[31:0] d29_high_shifted;
SHIFT_MULTIPLY shift29(d29_high, d29_low, d29_high_shifted, d29_low_shifted);
wire[31:0] add28 = (B[28] == 0) ? 0 : A;
wire[31:0] d28_low;
wire[31:0] d28_high;
wire[31:0] carry28;
wire red28;
assign carry28[31:1] = 0;
ADDER adder28_low(d29_low_shifted, add28, d28_low, carry28[0]);
ADDER adder28_high(d29_high_shifted, carry28, d28_high, red28);

wire[31:0] d28_low_shifted;
wire[31:0] d28_high_shifted;
SHIFT_MULTIPLY shift28(d28_high, d28_low, d28_high_shifted, d28_low_shifted);
wire[31:0] add27 = (B[27] == 0) ? 0 : A;
wire[31:0] d27_low;
wire[31:0] d27_high;
wire[31:0] carry27;
wire red27;
assign carry27[31:1] = 0;
ADDER adder27_low(d28_low_shifted, add27, d27_low, carry27[0]);
ADDER adder27_high(d28_high_shifted, carry27, d27_high, red27);

wire[31:0] d27_low_shifted;
wire[31:0] d27_high_shifted;
SHIFT_MULTIPLY shift27(d27_high, d27_low, d27_high_shifted, d27_low_shifted);
wire[31:0] add26 = (B[26] == 0) ? 0 : A;
wire[31:0] d26_low;
wire[31:0] d26_high;
wire[31:0] carry26;
wire red26;
assign carry26[31:1] = 0;
ADDER adder26_low(d27_low_shifted, add26, d26_low, carry26[0]);
ADDER adder26_high(d27_high_shifted, carry26, d26_high, red26);

wire[31:0] d26_low_shifted;
wire[31:0] d26_high_shifted;
SHIFT_MULTIPLY shift26(d26_high, d26_low, d26_high_shifted, d26_low_shifted);
wire[31:0] add25 = (B[25] == 0) ? 0 : A;
wire[31:0] d25_low;
wire[31:0] d25_high;
wire[31:0] carry25;
wire red25;
assign carry25[31:1] = 0;
ADDER adder25_low(d26_low_shifted, add25, d25_low, carry25[0]);
ADDER adder25_high(d26_high_shifted, carry25, d25_high, red25);

wire[31:0] d25_low_shifted;
wire[31:0] d25_high_shifted;
SHIFT_MULTIPLY shift25(d25_high, d25_low, d25_high_shifted, d25_low_shifted);
wire[31:0] add24 = (B[24] == 0) ? 0 : A;
wire[31:0] d24_low;
wire[31:0] d24_high;
wire[31:0] carry24;
wire red24;
assign carry24[31:1] = 0;
ADDER adder24_low(d25_low_shifted, add24, d24_low, carry24[0]);
ADDER adder24_high(d25_high_shifted, carry24, d24_high, red24);

wire[31:0] d24_low_shifted;
wire[31:0] d24_high_shifted;
SHIFT_MULTIPLY shift24(d24_high, d24_low, d24_high_shifted, d24_low_shifted);
wire[31:0] add23 = (B[23] == 0) ? 0 : A;
wire[31:0] d23_low;
wire[31:0] d23_high;
wire[31:0] carry23;
wire red23;
assign carry23[31:1] = 0;
ADDER adder23_low(d24_low_shifted, add23, d23_low, carry23[0]);
ADDER adder23_high(d24_high_shifted, carry23, d23_high, red23);

wire[31:0] d23_low_shifted;
wire[31:0] d23_high_shifted;
SHIFT_MULTIPLY shift23(d23_high, d23_low, d23_high_shifted, d23_low_shifted);
wire[31:0] add22 = (B[22] == 0) ? 0 : A;
wire[31:0] d22_low;
wire[31:0] d22_high;
wire[31:0] carry22;
wire red22;
assign carry22[31:1] = 0;
ADDER adder22_low(d23_low_shifted, add22, d22_low, carry22[0]);
ADDER adder22_high(d23_high_shifted, carry22, d22_high, red22);

wire[31:0] d22_low_shifted;
wire[31:0] d22_high_shifted;
SHIFT_MULTIPLY shift22(d22_high, d22_low, d22_high_shifted, d22_low_shifted);
wire[31:0] add21 = (B[21] == 0) ? 0 : A;
wire[31:0] d21_low;
wire[31:0] d21_high;
wire[31:0] carry21;
wire red21;
assign carry21[31:1] = 0;
ADDER adder21_low(d22_low_shifted, add21, d21_low, carry21[0]);
ADDER adder21_high(d22_high_shifted, carry21, d21_high, red21);

wire[31:0] d21_low_shifted;
wire[31:0] d21_high_shifted;
SHIFT_MULTIPLY shift21(d21_high, d21_low, d21_high_shifted, d21_low_shifted);
wire[31:0] add20 = (B[20] == 0) ? 0 : A;
wire[31:0] d20_low;
wire[31:0] d20_high;
wire[31:0] carry20;
wire red20;
assign carry20[31:1] = 0;
ADDER adder20_low(d21_low_shifted, add20, d20_low, carry20[0]);
ADDER adder20_high(d21_high_shifted, carry20, d20_high, red20);

wire[31:0] d20_low_shifted;
wire[31:0] d20_high_shifted;
SHIFT_MULTIPLY shift20(d20_high, d20_low, d20_high_shifted, d20_low_shifted);
wire[31:0] add19 = (B[19] == 0) ? 0 : A;
wire[31:0] d19_low;
wire[31:0] d19_high;
wire[31:0] carry19;
wire red19;
assign carry19[31:1] = 0;
ADDER adder19_low(d20_low_shifted, add19, d19_low, carry19[0]);
ADDER adder19_high(d20_high_shifted, carry19, d19_high, red19);

wire[31:0] d19_low_shifted;
wire[31:0] d19_high_shifted;
SHIFT_MULTIPLY shift19(d19_high, d19_low, d19_high_shifted, d19_low_shifted);
wire[31:0] add18 = (B[18] == 0) ? 0 : A;
wire[31:0] d18_low;
wire[31:0] d18_high;
wire[31:0] carry18;
wire red18;
assign carry18[31:1] = 0;
ADDER adder18_low(d19_low_shifted, add18, d18_low, carry18[0]);
ADDER adder18_high(d19_high_shifted, carry18, d18_high, red18);

wire[31:0] d18_low_shifted;
wire[31:0] d18_high_shifted;
SHIFT_MULTIPLY shift18(d18_high, d18_low, d18_high_shifted, d18_low_shifted);
wire[31:0] add17 = (B[17] == 0) ? 0 : A;
wire[31:0] d17_low;
wire[31:0] d17_high;
wire[31:0] carry17;
wire red17;
assign carry17[31:1] = 0;
ADDER adder17_low(d18_low_shifted, add17, d17_low, carry17[0]);
ADDER adder17_high(d18_high_shifted, carry17, d17_high, red17);

wire[31:0] d17_low_shifted;
wire[31:0] d17_high_shifted;
SHIFT_MULTIPLY shift17(d17_high, d17_low, d17_high_shifted, d17_low_shifted);
wire[31:0] add16 = (B[16] == 0) ? 0 : A;
wire[31:0] d16_low;
wire[31:0] d16_high;
wire[31:0] carry16;
wire red16;
assign carry16[31:1] = 0;
ADDER adder16_low(d17_low_shifted, add16, d16_low, carry16[0]);
ADDER adder16_high(d17_high_shifted, carry16, d16_high, red16);

wire[31:0] d16_low_shifted;
wire[31:0] d16_high_shifted;
SHIFT_MULTIPLY shift16(d16_high, d16_low, d16_high_shifted, d16_low_shifted);
wire[31:0] add15 = (B[15] == 0) ? 0 : A;
wire[31:0] d15_low;
wire[31:0] d15_high;
wire[31:0] carry15;
wire red15;
assign carry15[31:1] = 0;
ADDER adder15_low(d16_low_shifted, add15, d15_low, carry15[0]);
ADDER adder15_high(d16_high_shifted, carry15, d15_high, red15);

wire[31:0] d15_low_shifted;
wire[31:0] d15_high_shifted;
SHIFT_MULTIPLY shift15(d15_high, d15_low, d15_high_shifted, d15_low_shifted);
wire[31:0] add14 = (B[14] == 0) ? 0 : A;
wire[31:0] d14_low;
wire[31:0] d14_high;
wire[31:0] carry14;
wire red14;
assign carry14[31:1] = 0;
ADDER adder14_low(d15_low_shifted, add14, d14_low, carry14[0]);
ADDER adder14_high(d15_high_shifted, carry14, d14_high, red14);

wire[31:0] d14_low_shifted;
wire[31:0] d14_high_shifted;
SHIFT_MULTIPLY shift14(d14_high, d14_low, d14_high_shifted, d14_low_shifted);
wire[31:0] add13 = (B[13] == 0) ? 0 : A;
wire[31:0] d13_low;
wire[31:0] d13_high;
wire[31:0] carry13;
wire red13;
assign carry13[31:1] = 0;
ADDER adder13_low(d14_low_shifted, add13, d13_low, carry13[0]);
ADDER adder13_high(d14_high_shifted, carry13, d13_high, red13);

wire[31:0] d13_low_shifted;
wire[31:0] d13_high_shifted;
SHIFT_MULTIPLY shift13(d13_high, d13_low, d13_high_shifted, d13_low_shifted);
wire[31:0] add12 = (B[12] == 0) ? 0 : A;
wire[31:0] d12_low;
wire[31:0] d12_high;
wire[31:0] carry12;
wire red12;
assign carry12[31:1] = 0;
ADDER adder12_low(d13_low_shifted, add12, d12_low, carry12[0]);
ADDER adder12_high(d13_high_shifted, carry12, d12_high, red12);

wire[31:0] d12_low_shifted;
wire[31:0] d12_high_shifted;
SHIFT_MULTIPLY shift12(d12_high, d12_low, d12_high_shifted, d12_low_shifted);
wire[31:0] add11 = (B[11] == 0) ? 0 : A;
wire[31:0] d11_low;
wire[31:0] d11_high;
wire[31:0] carry11;
wire red11;
assign carry11[31:1] = 0;
ADDER adder11_low(d12_low_shifted, add11, d11_low, carry11[0]);
ADDER adder11_high(d12_high_shifted, carry11, d11_high, red11);

wire[31:0] d11_low_shifted;
wire[31:0] d11_high_shifted;
SHIFT_MULTIPLY shift11(d11_high, d11_low, d11_high_shifted, d11_low_shifted);
wire[31:0] add10 = (B[10] == 0) ? 0 : A;
wire[31:0] d10_low;
wire[31:0] d10_high;
wire[31:0] carry10;
wire red10;
assign carry10[31:1] = 0;
ADDER adder10_low(d11_low_shifted, add10, d10_low, carry10[0]);
ADDER adder10_high(d11_high_shifted, carry10, d10_high, red10);

wire[31:0] d10_low_shifted;
wire[31:0] d10_high_shifted;
SHIFT_MULTIPLY shift10(d10_high, d10_low, d10_high_shifted, d10_low_shifted);
wire[31:0] add9 = (B[9] == 0) ? 0 : A;
wire[31:0] d9_low;
wire[31:0] d9_high;
wire[31:0] carry9;
wire red9;
assign carry9[31:1] = 0;
ADDER adder9_low(d10_low_shifted, add9, d9_low, carry9[0]);
ADDER adder9_high(d10_high_shifted, carry9, d9_high, red9);

wire[31:0] d9_low_shifted;
wire[31:0] d9_high_shifted;
SHIFT_MULTIPLY shift9(d9_high, d9_low, d9_high_shifted, d9_low_shifted);
wire[31:0] add8 = (B[8] == 0) ? 0 : A;
wire[31:0] d8_low;
wire[31:0] d8_high;
wire[31:0] carry8;
wire red8;
assign carry8[31:1] = 0;
ADDER adder8_low(d9_low_shifted, add8, d8_low, carry8[0]);
ADDER adder8_high(d9_high_shifted, carry8, d8_high, red8);

wire[31:0] d8_low_shifted;
wire[31:0] d8_high_shifted;
SHIFT_MULTIPLY shift8(d8_high, d8_low, d8_high_shifted, d8_low_shifted);
wire[31:0] add7 = (B[7] == 0) ? 0 : A;
wire[31:0] d7_low;
wire[31:0] d7_high;
wire[31:0] carry7;
wire red7;
assign carry7[31:1] = 0;
ADDER adder7_low(d8_low_shifted, add7, d7_low, carry7[0]);
ADDER adder7_high(d8_high_shifted, carry7, d7_high, red7);

wire[31:0] d7_low_shifted;
wire[31:0] d7_high_shifted;
SHIFT_MULTIPLY shift7(d7_high, d7_low, d7_high_shifted, d7_low_shifted);
wire[31:0] add6 = (B[6] == 0) ? 0 : A;
wire[31:0] d6_low;
wire[31:0] d6_high;
wire[31:0] carry6;
wire red6;
assign carry6[31:1] = 0;
ADDER adder6_low(d7_low_shifted, add6, d6_low, carry6[0]);
ADDER adder6_high(d7_high_shifted, carry6, d6_high, red6);

wire[31:0] d6_low_shifted;
wire[31:0] d6_high_shifted;
SHIFT_MULTIPLY shift6(d6_high, d6_low, d6_high_shifted, d6_low_shifted);
wire[31:0] add5 = (B[5] == 0) ? 0 : A;
wire[31:0] d5_low;
wire[31:0] d5_high;
wire[31:0] carry5;
wire red5;
assign carry5[31:1] = 0;
ADDER adder5_low(d6_low_shifted, add5, d5_low, carry5[0]);
ADDER adder5_high(d6_high_shifted, carry5, d5_high, red5);

wire[31:0] d5_low_shifted;
wire[31:0] d5_high_shifted;
SHIFT_MULTIPLY shift5(d5_high, d5_low, d5_high_shifted, d5_low_shifted);
wire[31:0] add4 = (B[4] == 0) ? 0 : A;
wire[31:0] d4_low;
wire[31:0] d4_high;
wire[31:0] carry4;
wire red4;
assign carry4[31:1] = 0;
ADDER adder4_low(d5_low_shifted, add4, d4_low, carry4[0]);
ADDER adder4_high(d5_high_shifted, carry4, d4_high, red4);

wire[31:0] d4_low_shifted;
wire[31:0] d4_high_shifted;
SHIFT_MULTIPLY shift4(d4_high, d4_low, d4_high_shifted, d4_low_shifted);
wire[31:0] add3 = (B[3] == 0) ? 0 : A;
wire[31:0] d3_low;
wire[31:0] d3_high;
wire[31:0] carry3;
wire red3;
assign carry3[31:1] = 0;
ADDER adder3_low(d4_low_shifted, add3, d3_low, carry3[0]);
ADDER adder3_high(d4_high_shifted, carry3, d3_high, red3);

wire[31:0] d3_low_shifted;
wire[31:0] d3_high_shifted;
SHIFT_MULTIPLY shift3(d3_high, d3_low, d3_high_shifted, d3_low_shifted);
wire[31:0] add2 = (B[2] == 0) ? 0 : A;
wire[31:0] d2_low;
wire[31:0] d2_high;
wire[31:0] carry2;
wire red2;
assign carry2[31:1] = 0;
ADDER adder2_low(d3_low_shifted, add2, d2_low, carry2[0]);
ADDER adder2_high(d3_high_shifted, carry2, d2_high, red2);

wire[31:0] d2_low_shifted;
wire[31:0] d2_high_shifted;
SHIFT_MULTIPLY shift2(d2_high, d2_low, d2_high_shifted, d2_low_shifted);
wire[31:0] add1 = (B[1] == 0) ? 0 : A;
wire[31:0] d1_low;
wire[31:0] d1_high;
wire[31:0] carry1;
wire red1;
assign carry1[31:1] = 0;
ADDER adder1_low(d2_low_shifted, add1, d1_low, carry1[0]);
ADDER adder1_high(d2_high_shifted, carry1, d1_high, red1);

wire[31:0] d1_low_shifted;
wire[31:0] d1_high_shifted;
SHIFT_MULTIPLY shift1(d1_high, d1_low, d1_high_shifted, d1_low_shifted);
wire[31:0] add0 = (B[0] == 0) ? 0 : A;
wire[31:0] d0_low;
wire[31:0] d0_high;
wire[31:0] carry0;
wire red0;
assign carry0[31:1] = 0;
ADDER adder0_low(d1_low_shifted, add0, d0_low, carry0[0]);
ADDER adder0_high(d1_high_shifted, carry0, d0_high, red0);

assign LOW = d0_low;
assign HIGH = d0_high;

endmodule




