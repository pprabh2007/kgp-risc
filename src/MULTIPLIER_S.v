`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:35 10/30/2019 
// Design Name: 
// Module Name:    MULTIPLIER_S 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:43 10/30/2019 
// Design Name: 
// Module Name:    MULTIPLIER_S 
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
module MULTIPLIER_S(input[31:0] M, input[31:0] Q0,	output[31:0] LOW, output[31:0] HIGH);

wire[31:0] M_not;
COMP comp(M, M_not);

wire[31:0] AC0;
wire Q_minus_0;
assign AC0 = 0;
assign Q_minus_0 = 1'b0;



wire[31:0] add1 = (Q0[0]==Q_minus_0) ? 0 : ((Q0[0]==1) ? M_not : M);
wire[31:0] prelim1;
wire red1;
ADDER adder1(AC0, add1, prelim1, red1);
wire[31:0] Q1;
wire Q_minus_1;
wire[31:0] AC1;
BOOTH_SHIFTER shifter1(prelim1, Q0, AC1, Q1, Q_minus_1);

wire[31:0] add2 = (Q1[0]==Q_minus_1) ? 0 : ((Q1[0]==1) ? M_not : M);
wire[31:0] prelim2;
wire red2;
ADDER adder2(AC1, add2, prelim2, red2);
wire[31:0] Q2;
wire Q_minus_2;
wire[31:0] AC2;
BOOTH_SHIFTER shifter2(prelim2, Q1, AC2, Q2, Q_minus_2);

wire[31:0] add3 = (Q2[0]==Q_minus_2) ? 0 : ((Q2[0]==1) ? M_not : M);
wire[31:0] prelim3;
wire red3;
ADDER adder3(AC2, add3, prelim3, red3);
wire[31:0] Q3;
wire Q_minus_3;
wire[31:0] AC3;
BOOTH_SHIFTER shifter3(prelim3, Q2, AC3, Q3, Q_minus_3);

wire[31:0] add4 = (Q3[0]==Q_minus_3) ? 0 : ((Q3[0]==1) ? M_not : M);
wire[31:0] prelim4;
wire red4;
ADDER adder4(AC3, add4, prelim4, red4);
wire[31:0] Q4;
wire Q_minus_4;
wire[31:0] AC4;
BOOTH_SHIFTER shifter4(prelim4, Q3, AC4, Q4, Q_minus_4);

wire[31:0] add5 = (Q4[0]==Q_minus_4) ? 0 : ((Q4[0]==1) ? M_not : M);
wire[31:0] prelim5;
wire red5;
ADDER adder5(AC4, add5, prelim5, red5);
wire[31:0] Q5;
wire Q_minus_5;
wire[31:0] AC5;
BOOTH_SHIFTER shifter5(prelim5, Q4, AC5, Q5, Q_minus_5);

wire[31:0] add6 = (Q5[0]==Q_minus_5) ? 0 : ((Q5[0]==1) ? M_not : M);
wire[31:0] prelim6;
wire red6;
ADDER adder6(AC5, add6, prelim6, red6);
wire[31:0] Q6;
wire Q_minus_6;
wire[31:0] AC6;
BOOTH_SHIFTER shifter6(prelim6, Q5, AC6, Q6, Q_minus_6);

wire[31:0] add7 = (Q6[0]==Q_minus_6) ? 0 : ((Q6[0]==1) ? M_not : M);
wire[31:0] prelim7;
wire red7;
ADDER adder7(AC6, add7, prelim7, red7);
wire[31:0] Q7;
wire Q_minus_7;
wire[31:0] AC7;
BOOTH_SHIFTER shifter7(prelim7, Q6, AC7, Q7, Q_minus_7);

wire[31:0] add8 = (Q7[0]==Q_minus_7) ? 0 : ((Q7[0]==1) ? M_not : M);
wire[31:0] prelim8;
wire red8;
ADDER adder8(AC7, add8, prelim8, red8);
wire[31:0] Q8;
wire Q_minus_8;
wire[31:0] AC8;
BOOTH_SHIFTER shifter8(prelim8, Q7, AC8, Q8, Q_minus_8);

wire[31:0] add9 = (Q8[0]==Q_minus_8) ? 0 : ((Q8[0]==1) ? M_not : M);
wire[31:0] prelim9;
wire red9;
ADDER adder9(AC8, add9, prelim9, red9);
wire[31:0] Q9;
wire Q_minus_9;
wire[31:0] AC9;
BOOTH_SHIFTER shifter9(prelim9, Q8, AC9, Q9, Q_minus_9);

wire[31:0] add10 = (Q9[0]==Q_minus_9) ? 0 : ((Q9[0]==1) ? M_not : M);
wire[31:0] prelim10;
wire red10;
ADDER adder10(AC9, add10, prelim10, red10);
wire[31:0] Q10;
wire Q_minus_10;
wire[31:0] AC10;
BOOTH_SHIFTER shifter10(prelim10, Q9, AC10, Q10, Q_minus_10);

wire[31:0] add11 = (Q10[0]==Q_minus_10) ? 0 : ((Q10[0]==1) ? M_not : M);
wire[31:0] prelim11;
wire red11;
ADDER adder11(AC10, add11, prelim11, red11);
wire[31:0] Q11;
wire Q_minus_11;
wire[31:0] AC11;
BOOTH_SHIFTER shifter11(prelim11, Q10, AC11, Q11, Q_minus_11);

wire[31:0] add12 = (Q11[0]==Q_minus_11) ? 0 : ((Q11[0]==1) ? M_not : M);
wire[31:0] prelim12;
wire red12;
ADDER adder12(AC11, add12, prelim12, red12);
wire[31:0] Q12;
wire Q_minus_12;
wire[31:0] AC12;
BOOTH_SHIFTER shifter12(prelim12, Q11, AC12, Q12, Q_minus_12);

wire[31:0] add13 = (Q12[0]==Q_minus_12) ? 0 : ((Q12[0]==1) ? M_not : M);
wire[31:0] prelim13;
wire red13;
ADDER adder13(AC12, add13, prelim13, red13);
wire[31:0] Q13;
wire Q_minus_13;
wire[31:0] AC13;
BOOTH_SHIFTER shifter13(prelim13, Q12, AC13, Q13, Q_minus_13);

wire[31:0] add14 = (Q13[0]==Q_minus_13) ? 0 : ((Q13[0]==1) ? M_not : M);
wire[31:0] prelim14;
wire red14;
ADDER adder14(AC13, add14, prelim14, red14);
wire[31:0] Q14;
wire Q_minus_14;
wire[31:0] AC14;
BOOTH_SHIFTER shifter14(prelim14, Q13, AC14, Q14, Q_minus_14);

wire[31:0] add15 = (Q14[0]==Q_minus_14) ? 0 : ((Q14[0]==1) ? M_not : M);
wire[31:0] prelim15;
wire red15;
ADDER adder15(AC14, add15, prelim15, red15);
wire[31:0] Q15;
wire Q_minus_15;
wire[31:0] AC15;
BOOTH_SHIFTER shifter15(prelim15, Q14, AC15, Q15, Q_minus_15);

wire[31:0] add16 = (Q15[0]==Q_minus_15) ? 0 : ((Q15[0]==1) ? M_not : M);
wire[31:0] prelim16;
wire red16;
ADDER adder16(AC15, add16, prelim16, red16);
wire[31:0] Q16;
wire Q_minus_16;
wire[31:0] AC16;
BOOTH_SHIFTER shifter16(prelim16, Q15, AC16, Q16, Q_minus_16);

wire[31:0] add17 = (Q16[0]==Q_minus_16) ? 0 : ((Q16[0]==1) ? M_not : M);
wire[31:0] prelim17;
wire red17;
ADDER adder17(AC16, add17, prelim17, red17);
wire[31:0] Q17;
wire Q_minus_17;
wire[31:0] AC17;
BOOTH_SHIFTER shifter17(prelim17, Q16, AC17, Q17, Q_minus_17);

wire[31:0] add18 = (Q17[0]==Q_minus_17) ? 0 : ((Q17[0]==1) ? M_not : M);
wire[31:0] prelim18;
wire red18;
ADDER adder18(AC17, add18, prelim18, red18);
wire[31:0] Q18;
wire Q_minus_18;
wire[31:0] AC18;
BOOTH_SHIFTER shifter18(prelim18, Q17, AC18, Q18, Q_minus_18);

wire[31:0] add19 = (Q18[0]==Q_minus_18) ? 0 : ((Q18[0]==1) ? M_not : M);
wire[31:0] prelim19;
wire red19;
ADDER adder19(AC18, add19, prelim19, red19);
wire[31:0] Q19;
wire Q_minus_19;
wire[31:0] AC19;
BOOTH_SHIFTER shifter19(prelim19, Q18, AC19, Q19, Q_minus_19);

wire[31:0] add20 = (Q19[0]==Q_minus_19) ? 0 : ((Q19[0]==1) ? M_not : M);
wire[31:0] prelim20;
wire red20;
ADDER adder20(AC19, add20, prelim20, red20);
wire[31:0] Q20;
wire Q_minus_20;
wire[31:0] AC20;
BOOTH_SHIFTER shifter20(prelim20, Q19, AC20, Q20, Q_minus_20);

wire[31:0] add21 = (Q20[0]==Q_minus_20) ? 0 : ((Q20[0]==1) ? M_not : M);
wire[31:0] prelim21;
wire red21;
ADDER adder21(AC20, add21, prelim21, red21);
wire[31:0] Q21;
wire Q_minus_21;
wire[31:0] AC21;
BOOTH_SHIFTER shifter21(prelim21, Q20, AC21, Q21, Q_minus_21);

wire[31:0] add22 = (Q21[0]==Q_minus_21) ? 0 : ((Q21[0]==1) ? M_not : M);
wire[31:0] prelim22;
wire red22;
ADDER adder22(AC21, add22, prelim22, red22);
wire[31:0] Q22;
wire Q_minus_22;
wire[31:0] AC22;
BOOTH_SHIFTER shifter22(prelim22, Q21, AC22, Q22, Q_minus_22);

wire[31:0] add23 = (Q22[0]==Q_minus_22) ? 0 : ((Q22[0]==1) ? M_not : M);
wire[31:0] prelim23;
wire red23;
ADDER adder23(AC22, add23, prelim23, red23);
wire[31:0] Q23;
wire Q_minus_23;
wire[31:0] AC23;
BOOTH_SHIFTER shifter23(prelim23, Q22, AC23, Q23, Q_minus_23);

wire[31:0] add24 = (Q23[0]==Q_minus_23) ? 0 : ((Q23[0]==1) ? M_not : M);
wire[31:0] prelim24;
wire red24;
ADDER adder24(AC23, add24, prelim24, red24);
wire[31:0] Q24;
wire Q_minus_24;
wire[31:0] AC24;
BOOTH_SHIFTER shifter24(prelim24, Q23, AC24, Q24, Q_minus_24);

wire[31:0] add25 = (Q24[0]==Q_minus_24) ? 0 : ((Q24[0]==1) ? M_not : M);
wire[31:0] prelim25;
wire red25;
ADDER adder25(AC24, add25, prelim25, red25);
wire[31:0] Q25;
wire Q_minus_25;
wire[31:0] AC25;
BOOTH_SHIFTER shifter25(prelim25, Q24, AC25, Q25, Q_minus_25);

wire[31:0] add26 = (Q25[0]==Q_minus_25) ? 0 : ((Q25[0]==1) ? M_not : M);
wire[31:0] prelim26;
wire red26;
ADDER adder26(AC25, add26, prelim26, red26);
wire[31:0] Q26;
wire Q_minus_26;
wire[31:0] AC26;
BOOTH_SHIFTER shifter26(prelim26, Q25, AC26, Q26, Q_minus_26);

wire[31:0] add27 = (Q26[0]==Q_minus_26) ? 0 : ((Q26[0]==1) ? M_not : M);
wire[31:0] prelim27;
wire red27;
ADDER adder27(AC26, add27, prelim27, red27);
wire[31:0] Q27;
wire Q_minus_27;
wire[31:0] AC27;
BOOTH_SHIFTER shifter27(prelim27, Q26, AC27, Q27, Q_minus_27);

wire[31:0] add28 = (Q27[0]==Q_minus_27) ? 0 : ((Q27[0]==1) ? M_not : M);
wire[31:0] prelim28;
wire red28;
ADDER adder28(AC27, add28, prelim28, red28);
wire[31:0] Q28;
wire Q_minus_28;
wire[31:0] AC28;
BOOTH_SHIFTER shifter28(prelim28, Q27, AC28, Q28, Q_minus_28);

wire[31:0] add29 = (Q28[0]==Q_minus_28) ? 0 : ((Q28[0]==1) ? M_not : M);
wire[31:0] prelim29;
wire red29;
ADDER adder29(AC28, add29, prelim29, red29);
wire[31:0] Q29;
wire Q_minus_29;
wire[31:0] AC29;
BOOTH_SHIFTER shifter29(prelim29, Q28, AC29, Q29, Q_minus_29);

wire[31:0] add30 = (Q29[0]==Q_minus_29) ? 0 : ((Q29[0]==1) ? M_not : M);
wire[31:0] prelim30;
wire red30;
ADDER adder30(AC29, add30, prelim30, red30);
wire[31:0] Q30;
wire Q_minus_30;
wire[31:0] AC30;
BOOTH_SHIFTER shifter30(prelim30, Q29, AC30, Q30, Q_minus_30);

wire[31:0] add31 = (Q30[0]==Q_minus_30) ? 0 : ((Q30[0]==1) ? M_not : M);
wire[31:0] prelim31;
wire red31;
ADDER adder31(AC30, add31, prelim31, red31);
wire[31:0] Q31;
wire Q_minus_31;
wire[31:0] AC31;
BOOTH_SHIFTER shifter31(prelim31, Q30, AC31, Q31, Q_minus_31);

wire[31:0] add32 = (Q31[0]==Q_minus_31) ? 0 : ((Q31[0]==1) ? M_not : M);
wire[31:0] prelim32;
wire red32;
ADDER adder32(AC31, add32, prelim32, red32);
wire[31:0] Q32;
wire Q_minus_32;
wire[31:0] AC32;
BOOTH_SHIFTER shifter32(prelim32, Q31, AC32, Q32, Q_minus_32);

assign LOW = Q32;
assign HIGH = AC32;

endmodule

