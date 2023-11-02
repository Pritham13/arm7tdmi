// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Oct 30 15:48:58 2023
// Host        : LAPTOP-BP8CQOFU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/prit4/OneDrive/Desktop/vivado_stuff/arm7tdmi_testing/barrel_shifter_test/barrel_shifter_test.sim/sim_1/synth/timing/xsim/barrel_shifter_tb_time_synth.v
// Design      : barrel_shifter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module barrel_shifter
   (data,
    amt,
    dir_lr,
    out);
  input [31:0]data;
  input [4:0]amt;
  input dir_lr;
  output [31:0]out;

  wire [4:0]amt;
  wire [4:0]amt_IBUF;
  wire [31:0]data;
  wire [31:0]data_IBUF;
  wire dir_lr;
  wire dir_lr_IBUF;
  wire [31:0]out;
  wire [31:0]out_OBUF;
  wire \out_OBUF[16]_inst_i_2_n_0 ;
  wire \out_OBUF[16]_inst_i_3_n_0 ;
  wire \out_OBUF[17]_inst_i_2_n_0 ;
  wire \out_OBUF[17]_inst_i_3_n_0 ;
  wire \out_OBUF[18]_inst_i_2_n_0 ;
  wire \out_OBUF[18]_inst_i_3_n_0 ;
  wire \out_OBUF[19]_inst_i_2_n_0 ;
  wire \out_OBUF[19]_inst_i_3_n_0 ;
  wire \out_OBUF[20]_inst_i_2_n_0 ;
  wire \out_OBUF[20]_inst_i_3_n_0 ;
  wire \out_OBUF[21]_inst_i_2_n_0 ;
  wire \out_OBUF[21]_inst_i_3_n_0 ;
  wire \out_OBUF[22]_inst_i_2_n_0 ;
  wire \out_OBUF[22]_inst_i_3_n_0 ;
  wire \out_OBUF[23]_inst_i_2_n_0 ;
  wire \out_OBUF[23]_inst_i_3_n_0 ;
  wire \out_OBUF[24]_inst_i_2_n_0 ;
  wire \out_OBUF[24]_inst_i_3_n_0 ;
  wire \out_OBUF[25]_inst_i_2_n_0 ;
  wire \out_OBUF[25]_inst_i_3_n_0 ;
  wire \out_OBUF[26]_inst_i_2_n_0 ;
  wire \out_OBUF[26]_inst_i_3_n_0 ;
  wire \out_OBUF[27]_inst_i_2_n_0 ;
  wire \out_OBUF[27]_inst_i_3_n_0 ;
  wire \out_OBUF[28]_inst_i_10_n_0 ;
  wire \out_OBUF[28]_inst_i_11_n_0 ;
  wire \out_OBUF[28]_inst_i_12_n_0 ;
  wire \out_OBUF[28]_inst_i_13_n_0 ;
  wire \out_OBUF[28]_inst_i_2_n_0 ;
  wire \out_OBUF[28]_inst_i_3_n_0 ;
  wire \out_OBUF[28]_inst_i_6_n_0 ;
  wire \out_OBUF[28]_inst_i_7_n_0 ;
  wire \out_OBUF[28]_inst_i_8_n_0 ;
  wire \out_OBUF[28]_inst_i_9_n_0 ;
  wire \out_OBUF[29]_inst_i_10_n_0 ;
  wire \out_OBUF[29]_inst_i_11_n_0 ;
  wire \out_OBUF[29]_inst_i_12_n_0 ;
  wire \out_OBUF[29]_inst_i_13_n_0 ;
  wire \out_OBUF[29]_inst_i_2_n_0 ;
  wire \out_OBUF[29]_inst_i_3_n_0 ;
  wire \out_OBUF[29]_inst_i_6_n_0 ;
  wire \out_OBUF[29]_inst_i_7_n_0 ;
  wire \out_OBUF[29]_inst_i_8_n_0 ;
  wire \out_OBUF[29]_inst_i_9_n_0 ;
  wire \out_OBUF[30]_inst_i_10_n_0 ;
  wire \out_OBUF[30]_inst_i_11_n_0 ;
  wire \out_OBUF[30]_inst_i_12_n_0 ;
  wire \out_OBUF[30]_inst_i_13_n_0 ;
  wire \out_OBUF[30]_inst_i_2_n_0 ;
  wire \out_OBUF[30]_inst_i_3_n_0 ;
  wire \out_OBUF[30]_inst_i_6_n_0 ;
  wire \out_OBUF[30]_inst_i_7_n_0 ;
  wire \out_OBUF[30]_inst_i_8_n_0 ;
  wire \out_OBUF[30]_inst_i_9_n_0 ;
  wire \out_OBUF[31]_inst_i_10_n_0 ;
  wire \out_OBUF[31]_inst_i_11_n_0 ;
  wire \out_OBUF[31]_inst_i_12_n_0 ;
  wire \out_OBUF[31]_inst_i_13_n_0 ;
  wire \out_OBUF[31]_inst_i_2_n_0 ;
  wire \out_OBUF[31]_inst_i_3_n_0 ;
  wire \out_OBUF[31]_inst_i_6_n_0 ;
  wire \out_OBUF[31]_inst_i_7_n_0 ;
  wire \out_OBUF[31]_inst_i_8_n_0 ;
  wire \out_OBUF[31]_inst_i_9_n_0 ;
  wire [31:0]s1;
  wire [31:0]s3;

initial begin
 $sdf_annotate("barrel_shifter_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \amt_IBUF[0]_inst 
       (.I(amt[0]),
        .O(amt_IBUF[0]));
  IBUF \amt_IBUF[1]_inst 
       (.I(amt[1]),
        .O(amt_IBUF[1]));
  IBUF \amt_IBUF[2]_inst 
       (.I(amt[2]),
        .O(amt_IBUF[2]));
  IBUF \amt_IBUF[3]_inst 
       (.I(amt[3]),
        .O(amt_IBUF[3]));
  IBUF \amt_IBUF[4]_inst 
       (.I(amt[4]),
        .O(amt_IBUF[4]));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[10]_inst 
       (.I(data[10]),
        .O(data_IBUF[10]));
  IBUF \data_IBUF[11]_inst 
       (.I(data[11]),
        .O(data_IBUF[11]));
  IBUF \data_IBUF[12]_inst 
       (.I(data[12]),
        .O(data_IBUF[12]));
  IBUF \data_IBUF[13]_inst 
       (.I(data[13]),
        .O(data_IBUF[13]));
  IBUF \data_IBUF[14]_inst 
       (.I(data[14]),
        .O(data_IBUF[14]));
  IBUF \data_IBUF[15]_inst 
       (.I(data[15]),
        .O(data_IBUF[15]));
  IBUF \data_IBUF[16]_inst 
       (.I(data[16]),
        .O(data_IBUF[16]));
  IBUF \data_IBUF[17]_inst 
       (.I(data[17]),
        .O(data_IBUF[17]));
  IBUF \data_IBUF[18]_inst 
       (.I(data[18]),
        .O(data_IBUF[18]));
  IBUF \data_IBUF[19]_inst 
       (.I(data[19]),
        .O(data_IBUF[19]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[20]_inst 
       (.I(data[20]),
        .O(data_IBUF[20]));
  IBUF \data_IBUF[21]_inst 
       (.I(data[21]),
        .O(data_IBUF[21]));
  IBUF \data_IBUF[22]_inst 
       (.I(data[22]),
        .O(data_IBUF[22]));
  IBUF \data_IBUF[23]_inst 
       (.I(data[23]),
        .O(data_IBUF[23]));
  IBUF \data_IBUF[24]_inst 
       (.I(data[24]),
        .O(data_IBUF[24]));
  IBUF \data_IBUF[25]_inst 
       (.I(data[25]),
        .O(data_IBUF[25]));
  IBUF \data_IBUF[26]_inst 
       (.I(data[26]),
        .O(data_IBUF[26]));
  IBUF \data_IBUF[27]_inst 
       (.I(data[27]),
        .O(data_IBUF[27]));
  IBUF \data_IBUF[28]_inst 
       (.I(data[28]),
        .O(data_IBUF[28]));
  IBUF \data_IBUF[29]_inst 
       (.I(data[29]),
        .O(data_IBUF[29]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[30]_inst 
       (.I(data[30]),
        .O(data_IBUF[30]));
  IBUF \data_IBUF[31]_inst 
       (.I(data[31]),
        .O(data_IBUF[31]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  IBUF \data_IBUF[8]_inst 
       (.I(data[8]),
        .O(data_IBUF[8]));
  IBUF \data_IBUF[9]_inst 
       (.I(data[9]),
        .O(data_IBUF[9]));
  IBUF dir_lr_IBUF_inst
       (.I(dir_lr),
        .O(dir_lr_IBUF));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[0]_inst_i_1 
       (.I0(\out_OBUF[16]_inst_i_3_n_0 ),
        .I1(\out_OBUF[16]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[16]),
        .I4(amt_IBUF[4]),
        .I5(s3[0]),
        .O(out_OBUF[0]));
  OBUF \out_OBUF[10]_inst 
       (.I(out_OBUF[10]),
        .O(out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[10]_inst_i_1 
       (.I0(\out_OBUF[26]_inst_i_3_n_0 ),
        .I1(\out_OBUF[26]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[26]),
        .I4(amt_IBUF[4]),
        .I5(s3[10]),
        .O(out_OBUF[10]));
  OBUF \out_OBUF[11]_inst 
       (.I(out_OBUF[11]),
        .O(out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[11]_inst_i_1 
       (.I0(\out_OBUF[27]_inst_i_3_n_0 ),
        .I1(\out_OBUF[27]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[27]),
        .I4(amt_IBUF[4]),
        .I5(s3[11]),
        .O(out_OBUF[11]));
  OBUF \out_OBUF[12]_inst 
       (.I(out_OBUF[12]),
        .O(out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[12]_inst_i_1 
       (.I0(\out_OBUF[28]_inst_i_3_n_0 ),
        .I1(\out_OBUF[28]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[28]),
        .I4(amt_IBUF[4]),
        .I5(s3[12]),
        .O(out_OBUF[12]));
  OBUF \out_OBUF[13]_inst 
       (.I(out_OBUF[13]),
        .O(out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[13]_inst_i_1 
       (.I0(\out_OBUF[29]_inst_i_3_n_0 ),
        .I1(\out_OBUF[29]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[29]),
        .I4(amt_IBUF[4]),
        .I5(s3[13]),
        .O(out_OBUF[13]));
  OBUF \out_OBUF[14]_inst 
       (.I(out_OBUF[14]),
        .O(out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[14]_inst_i_1 
       (.I0(\out_OBUF[30]_inst_i_3_n_0 ),
        .I1(\out_OBUF[30]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[30]),
        .I4(amt_IBUF[4]),
        .I5(s3[14]),
        .O(out_OBUF[14]));
  OBUF \out_OBUF[15]_inst 
       (.I(out_OBUF[15]),
        .O(out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[15]_inst_i_1 
       (.I0(\out_OBUF[31]_inst_i_3_n_0 ),
        .I1(\out_OBUF[31]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[31]),
        .I4(amt_IBUF[4]),
        .I5(s3[15]),
        .O(out_OBUF[15]));
  OBUF \out_OBUF[16]_inst 
       (.I(out_OBUF[16]),
        .O(out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_1 
       (.I0(\out_OBUF[16]_inst_i_2_n_0 ),
        .I1(\out_OBUF[16]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[0]),
        .I4(amt_IBUF[4]),
        .I5(s3[16]),
        .O(out_OBUF[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_2 
       (.I0(\out_OBUF[28]_inst_i_9_n_0 ),
        .I1(\out_OBUF[28]_inst_i_10_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_11_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_12_n_0 ),
        .O(\out_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_3 
       (.I0(\out_OBUF[28]_inst_i_13_n_0 ),
        .I1(\out_OBUF[28]_inst_i_6_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_7_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_8_n_0 ),
        .O(\out_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_4 
       (.I0(s1[20]),
        .I1(s1[24]),
        .I2(amt_IBUF[3]),
        .I3(s1[28]),
        .I4(amt_IBUF[2]),
        .I5(s1[0]),
        .O(s3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_5 
       (.I0(s1[4]),
        .I1(s1[8]),
        .I2(amt_IBUF[3]),
        .I3(s1[12]),
        .I4(amt_IBUF[2]),
        .I5(s1[16]),
        .O(s3[16]));
  OBUF \out_OBUF[17]_inst 
       (.I(out_OBUF[17]),
        .O(out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_1 
       (.I0(\out_OBUF[17]_inst_i_2_n_0 ),
        .I1(\out_OBUF[17]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[1]),
        .I4(amt_IBUF[4]),
        .I5(s3[17]),
        .O(out_OBUF[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_2 
       (.I0(\out_OBUF[29]_inst_i_9_n_0 ),
        .I1(\out_OBUF[29]_inst_i_10_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_11_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_12_n_0 ),
        .O(\out_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_3 
       (.I0(\out_OBUF[29]_inst_i_13_n_0 ),
        .I1(\out_OBUF[29]_inst_i_6_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_7_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_8_n_0 ),
        .O(\out_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_4 
       (.I0(s1[21]),
        .I1(s1[25]),
        .I2(amt_IBUF[3]),
        .I3(s1[29]),
        .I4(amt_IBUF[2]),
        .I5(s1[1]),
        .O(s3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_5 
       (.I0(s1[5]),
        .I1(s1[9]),
        .I2(amt_IBUF[3]),
        .I3(s1[13]),
        .I4(amt_IBUF[2]),
        .I5(s1[17]),
        .O(s3[17]));
  OBUF \out_OBUF[18]_inst 
       (.I(out_OBUF[18]),
        .O(out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_1 
       (.I0(\out_OBUF[18]_inst_i_2_n_0 ),
        .I1(\out_OBUF[18]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[2]),
        .I4(amt_IBUF[4]),
        .I5(s3[18]),
        .O(out_OBUF[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_2 
       (.I0(\out_OBUF[30]_inst_i_9_n_0 ),
        .I1(\out_OBUF[30]_inst_i_10_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_11_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_12_n_0 ),
        .O(\out_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_3 
       (.I0(\out_OBUF[30]_inst_i_13_n_0 ),
        .I1(\out_OBUF[30]_inst_i_6_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_7_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_8_n_0 ),
        .O(\out_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_4 
       (.I0(s1[22]),
        .I1(s1[26]),
        .I2(amt_IBUF[3]),
        .I3(s1[30]),
        .I4(amt_IBUF[2]),
        .I5(s1[2]),
        .O(s3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_5 
       (.I0(s1[6]),
        .I1(s1[10]),
        .I2(amt_IBUF[3]),
        .I3(s1[14]),
        .I4(amt_IBUF[2]),
        .I5(s1[18]),
        .O(s3[18]));
  OBUF \out_OBUF[19]_inst 
       (.I(out_OBUF[19]),
        .O(out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_1 
       (.I0(\out_OBUF[19]_inst_i_2_n_0 ),
        .I1(\out_OBUF[19]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[3]),
        .I4(amt_IBUF[4]),
        .I5(s3[19]),
        .O(out_OBUF[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_9_n_0 ),
        .I1(\out_OBUF[31]_inst_i_10_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_11_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_12_n_0 ),
        .O(\out_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_3 
       (.I0(\out_OBUF[31]_inst_i_13_n_0 ),
        .I1(\out_OBUF[31]_inst_i_6_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_7_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_8_n_0 ),
        .O(\out_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_4 
       (.I0(s1[23]),
        .I1(s1[27]),
        .I2(amt_IBUF[3]),
        .I3(s1[31]),
        .I4(amt_IBUF[2]),
        .I5(s1[3]),
        .O(s3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_5 
       (.I0(s1[7]),
        .I1(s1[11]),
        .I2(amt_IBUF[3]),
        .I3(s1[15]),
        .I4(amt_IBUF[2]),
        .I5(s1[19]),
        .O(s3[19]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[1]_inst_i_1 
       (.I0(\out_OBUF[17]_inst_i_3_n_0 ),
        .I1(\out_OBUF[17]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[17]),
        .I4(amt_IBUF[4]),
        .I5(s3[1]),
        .O(out_OBUF[1]));
  OBUF \out_OBUF[20]_inst 
       (.I(out_OBUF[20]),
        .O(out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_1 
       (.I0(\out_OBUF[20]_inst_i_2_n_0 ),
        .I1(\out_OBUF[20]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[4]),
        .I4(amt_IBUF[4]),
        .I5(s3[20]),
        .O(out_OBUF[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_2 
       (.I0(\out_OBUF[28]_inst_i_8_n_0 ),
        .I1(\out_OBUF[28]_inst_i_9_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_10_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_11_n_0 ),
        .O(\out_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_3 
       (.I0(\out_OBUF[28]_inst_i_12_n_0 ),
        .I1(\out_OBUF[28]_inst_i_13_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_6_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_7_n_0 ),
        .O(\out_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_4 
       (.I0(s1[24]),
        .I1(s1[28]),
        .I2(amt_IBUF[3]),
        .I3(s1[0]),
        .I4(amt_IBUF[2]),
        .I5(s1[4]),
        .O(s3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_5 
       (.I0(s1[8]),
        .I1(s1[12]),
        .I2(amt_IBUF[3]),
        .I3(s1[16]),
        .I4(amt_IBUF[2]),
        .I5(s1[20]),
        .O(s3[20]));
  OBUF \out_OBUF[21]_inst 
       (.I(out_OBUF[21]),
        .O(out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_1 
       (.I0(\out_OBUF[21]_inst_i_2_n_0 ),
        .I1(\out_OBUF[21]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[5]),
        .I4(amt_IBUF[4]),
        .I5(s3[21]),
        .O(out_OBUF[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_2 
       (.I0(\out_OBUF[29]_inst_i_8_n_0 ),
        .I1(\out_OBUF[29]_inst_i_9_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_10_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_11_n_0 ),
        .O(\out_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_3 
       (.I0(\out_OBUF[29]_inst_i_12_n_0 ),
        .I1(\out_OBUF[29]_inst_i_13_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_6_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_7_n_0 ),
        .O(\out_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_4 
       (.I0(s1[25]),
        .I1(s1[29]),
        .I2(amt_IBUF[3]),
        .I3(s1[1]),
        .I4(amt_IBUF[2]),
        .I5(s1[5]),
        .O(s3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_5 
       (.I0(s1[9]),
        .I1(s1[13]),
        .I2(amt_IBUF[3]),
        .I3(s1[17]),
        .I4(amt_IBUF[2]),
        .I5(s1[21]),
        .O(s3[21]));
  OBUF \out_OBUF[22]_inst 
       (.I(out_OBUF[22]),
        .O(out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_1 
       (.I0(\out_OBUF[22]_inst_i_2_n_0 ),
        .I1(\out_OBUF[22]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[6]),
        .I4(amt_IBUF[4]),
        .I5(s3[22]),
        .O(out_OBUF[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_2 
       (.I0(\out_OBUF[30]_inst_i_8_n_0 ),
        .I1(\out_OBUF[30]_inst_i_9_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_10_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_11_n_0 ),
        .O(\out_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_3 
       (.I0(\out_OBUF[30]_inst_i_12_n_0 ),
        .I1(\out_OBUF[30]_inst_i_13_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_6_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_7_n_0 ),
        .O(\out_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_4 
       (.I0(s1[26]),
        .I1(s1[30]),
        .I2(amt_IBUF[3]),
        .I3(s1[2]),
        .I4(amt_IBUF[2]),
        .I5(s1[6]),
        .O(s3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_5 
       (.I0(s1[10]),
        .I1(s1[14]),
        .I2(amt_IBUF[3]),
        .I3(s1[18]),
        .I4(amt_IBUF[2]),
        .I5(s1[22]),
        .O(s3[22]));
  OBUF \out_OBUF[23]_inst 
       (.I(out_OBUF[23]),
        .O(out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_1 
       (.I0(\out_OBUF[23]_inst_i_2_n_0 ),
        .I1(\out_OBUF[23]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[7]),
        .I4(amt_IBUF[4]),
        .I5(s3[23]),
        .O(out_OBUF[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_8_n_0 ),
        .I1(\out_OBUF[31]_inst_i_9_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_10_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_11_n_0 ),
        .O(\out_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_3 
       (.I0(\out_OBUF[31]_inst_i_12_n_0 ),
        .I1(\out_OBUF[31]_inst_i_13_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_6_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_7_n_0 ),
        .O(\out_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_4 
       (.I0(s1[27]),
        .I1(s1[31]),
        .I2(amt_IBUF[3]),
        .I3(s1[3]),
        .I4(amt_IBUF[2]),
        .I5(s1[7]),
        .O(s3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_5 
       (.I0(s1[11]),
        .I1(s1[15]),
        .I2(amt_IBUF[3]),
        .I3(s1[19]),
        .I4(amt_IBUF[2]),
        .I5(s1[23]),
        .O(s3[23]));
  OBUF \out_OBUF[24]_inst 
       (.I(out_OBUF[24]),
        .O(out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_1 
       (.I0(\out_OBUF[24]_inst_i_2_n_0 ),
        .I1(\out_OBUF[24]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[8]),
        .I4(amt_IBUF[4]),
        .I5(s3[24]),
        .O(out_OBUF[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_2 
       (.I0(\out_OBUF[28]_inst_i_7_n_0 ),
        .I1(\out_OBUF[28]_inst_i_8_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_9_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_10_n_0 ),
        .O(\out_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_3 
       (.I0(\out_OBUF[28]_inst_i_11_n_0 ),
        .I1(\out_OBUF[28]_inst_i_12_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_13_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_6_n_0 ),
        .O(\out_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_4 
       (.I0(s1[28]),
        .I1(s1[0]),
        .I2(amt_IBUF[3]),
        .I3(s1[4]),
        .I4(amt_IBUF[2]),
        .I5(s1[8]),
        .O(s3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_5 
       (.I0(s1[12]),
        .I1(s1[16]),
        .I2(amt_IBUF[3]),
        .I3(s1[20]),
        .I4(amt_IBUF[2]),
        .I5(s1[24]),
        .O(s3[24]));
  OBUF \out_OBUF[25]_inst 
       (.I(out_OBUF[25]),
        .O(out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_1 
       (.I0(\out_OBUF[25]_inst_i_2_n_0 ),
        .I1(\out_OBUF[25]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[9]),
        .I4(amt_IBUF[4]),
        .I5(s3[25]),
        .O(out_OBUF[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_2 
       (.I0(\out_OBUF[29]_inst_i_7_n_0 ),
        .I1(\out_OBUF[29]_inst_i_8_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_9_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_10_n_0 ),
        .O(\out_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_3 
       (.I0(\out_OBUF[29]_inst_i_11_n_0 ),
        .I1(\out_OBUF[29]_inst_i_12_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_13_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_6_n_0 ),
        .O(\out_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_4 
       (.I0(s1[29]),
        .I1(s1[1]),
        .I2(amt_IBUF[3]),
        .I3(s1[5]),
        .I4(amt_IBUF[2]),
        .I5(s1[9]),
        .O(s3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_5 
       (.I0(s1[13]),
        .I1(s1[17]),
        .I2(amt_IBUF[3]),
        .I3(s1[21]),
        .I4(amt_IBUF[2]),
        .I5(s1[25]),
        .O(s3[25]));
  OBUF \out_OBUF[26]_inst 
       (.I(out_OBUF[26]),
        .O(out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_1 
       (.I0(\out_OBUF[26]_inst_i_2_n_0 ),
        .I1(\out_OBUF[26]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[10]),
        .I4(amt_IBUF[4]),
        .I5(s3[26]),
        .O(out_OBUF[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_2 
       (.I0(\out_OBUF[30]_inst_i_7_n_0 ),
        .I1(\out_OBUF[30]_inst_i_8_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_9_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_10_n_0 ),
        .O(\out_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_3 
       (.I0(\out_OBUF[30]_inst_i_11_n_0 ),
        .I1(\out_OBUF[30]_inst_i_12_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_13_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_6_n_0 ),
        .O(\out_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_4 
       (.I0(s1[30]),
        .I1(s1[2]),
        .I2(amt_IBUF[3]),
        .I3(s1[6]),
        .I4(amt_IBUF[2]),
        .I5(s1[10]),
        .O(s3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_5 
       (.I0(s1[14]),
        .I1(s1[18]),
        .I2(amt_IBUF[3]),
        .I3(s1[22]),
        .I4(amt_IBUF[2]),
        .I5(s1[26]),
        .O(s3[26]));
  OBUF \out_OBUF[27]_inst 
       (.I(out_OBUF[27]),
        .O(out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_1 
       (.I0(\out_OBUF[27]_inst_i_2_n_0 ),
        .I1(\out_OBUF[27]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[11]),
        .I4(amt_IBUF[4]),
        .I5(s3[27]),
        .O(out_OBUF[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_7_n_0 ),
        .I1(\out_OBUF[31]_inst_i_8_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_9_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_10_n_0 ),
        .O(\out_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_3 
       (.I0(\out_OBUF[31]_inst_i_11_n_0 ),
        .I1(\out_OBUF[31]_inst_i_12_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_13_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_6_n_0 ),
        .O(\out_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_4 
       (.I0(s1[31]),
        .I1(s1[3]),
        .I2(amt_IBUF[3]),
        .I3(s1[7]),
        .I4(amt_IBUF[2]),
        .I5(s1[11]),
        .O(s3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_5 
       (.I0(s1[15]),
        .I1(s1[19]),
        .I2(amt_IBUF[3]),
        .I3(s1[23]),
        .I4(amt_IBUF[2]),
        .I5(s1[27]),
        .O(s3[27]));
  OBUF \out_OBUF[28]_inst 
       (.I(out_OBUF[28]),
        .O(out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_1 
       (.I0(\out_OBUF[28]_inst_i_2_n_0 ),
        .I1(\out_OBUF[28]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[12]),
        .I4(amt_IBUF[4]),
        .I5(s3[28]),
        .O(out_OBUF[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_10 
       (.I0(data_IBUF[11]),
        .I1(data_IBUF[10]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[9]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[8]),
        .O(\out_OBUF[28]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_11 
       (.I0(data_IBUF[7]),
        .I1(data_IBUF[6]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[5]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[4]),
        .O(\out_OBUF[28]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_12 
       (.I0(data_IBUF[3]),
        .I1(data_IBUF[2]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[1]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[0]),
        .O(\out_OBUF[28]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_13 
       (.I0(data_IBUF[31]),
        .I1(data_IBUF[30]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[29]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[28]),
        .O(\out_OBUF[28]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_14 
       (.I0(data_IBUF[29]),
        .I1(data_IBUF[30]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[31]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[0]),
        .O(s1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_15 
       (.I0(data_IBUF[1]),
        .I1(data_IBUF[2]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[3]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[4]),
        .O(s1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_16 
       (.I0(data_IBUF[5]),
        .I1(data_IBUF[6]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[7]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[8]),
        .O(s1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_17 
       (.I0(data_IBUF[9]),
        .I1(data_IBUF[10]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[11]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[12]),
        .O(s1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_18 
       (.I0(data_IBUF[13]),
        .I1(data_IBUF[14]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[15]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[16]),
        .O(s1[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_19 
       (.I0(data_IBUF[17]),
        .I1(data_IBUF[18]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[19]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[20]),
        .O(s1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_2 
       (.I0(\out_OBUF[28]_inst_i_6_n_0 ),
        .I1(\out_OBUF[28]_inst_i_7_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_8_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_9_n_0 ),
        .O(\out_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_20 
       (.I0(data_IBUF[21]),
        .I1(data_IBUF[22]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[23]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[24]),
        .O(s1[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_21 
       (.I0(data_IBUF[25]),
        .I1(data_IBUF[26]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[27]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[28]),
        .O(s1[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_3 
       (.I0(\out_OBUF[28]_inst_i_10_n_0 ),
        .I1(\out_OBUF[28]_inst_i_11_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[28]_inst_i_12_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_13_n_0 ),
        .O(\out_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_4 
       (.I0(s1[0]),
        .I1(s1[4]),
        .I2(amt_IBUF[3]),
        .I3(s1[8]),
        .I4(amt_IBUF[2]),
        .I5(s1[12]),
        .O(s3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_5 
       (.I0(s1[16]),
        .I1(s1[20]),
        .I2(amt_IBUF[3]),
        .I3(s1[24]),
        .I4(amt_IBUF[2]),
        .I5(s1[28]),
        .O(s3[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_6 
       (.I0(data_IBUF[27]),
        .I1(data_IBUF[26]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[25]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[24]),
        .O(\out_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_7 
       (.I0(data_IBUF[23]),
        .I1(data_IBUF[22]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[21]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[20]),
        .O(\out_OBUF[28]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_8 
       (.I0(data_IBUF[19]),
        .I1(data_IBUF[18]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[17]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[16]),
        .O(\out_OBUF[28]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_9 
       (.I0(data_IBUF[15]),
        .I1(data_IBUF[14]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[13]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[12]),
        .O(\out_OBUF[28]_inst_i_9_n_0 ));
  OBUF \out_OBUF[29]_inst 
       (.I(out_OBUF[29]),
        .O(out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_1 
       (.I0(\out_OBUF[29]_inst_i_2_n_0 ),
        .I1(\out_OBUF[29]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[13]),
        .I4(amt_IBUF[4]),
        .I5(s3[29]),
        .O(out_OBUF[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_10 
       (.I0(data_IBUF[12]),
        .I1(data_IBUF[11]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[10]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[9]),
        .O(\out_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_11 
       (.I0(data_IBUF[8]),
        .I1(data_IBUF[7]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[6]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[5]),
        .O(\out_OBUF[29]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_12 
       (.I0(data_IBUF[4]),
        .I1(data_IBUF[3]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[2]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[1]),
        .O(\out_OBUF[29]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_13 
       (.I0(data_IBUF[0]),
        .I1(data_IBUF[31]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[30]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[29]),
        .O(\out_OBUF[29]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_14 
       (.I0(data_IBUF[30]),
        .I1(data_IBUF[31]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[0]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[1]),
        .O(s1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_15 
       (.I0(data_IBUF[2]),
        .I1(data_IBUF[3]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[4]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[5]),
        .O(s1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_16 
       (.I0(data_IBUF[6]),
        .I1(data_IBUF[7]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[8]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[9]),
        .O(s1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_17 
       (.I0(data_IBUF[10]),
        .I1(data_IBUF[11]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[12]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[13]),
        .O(s1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_18 
       (.I0(data_IBUF[14]),
        .I1(data_IBUF[15]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[16]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[17]),
        .O(s1[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_19 
       (.I0(data_IBUF[18]),
        .I1(data_IBUF[19]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[20]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[21]),
        .O(s1[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_2 
       (.I0(\out_OBUF[29]_inst_i_6_n_0 ),
        .I1(\out_OBUF[29]_inst_i_7_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_8_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_9_n_0 ),
        .O(\out_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_20 
       (.I0(data_IBUF[22]),
        .I1(data_IBUF[23]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[24]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[25]),
        .O(s1[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_21 
       (.I0(data_IBUF[26]),
        .I1(data_IBUF[27]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[28]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[29]),
        .O(s1[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_3 
       (.I0(\out_OBUF[29]_inst_i_10_n_0 ),
        .I1(\out_OBUF[29]_inst_i_11_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[29]_inst_i_12_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_13_n_0 ),
        .O(\out_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_4 
       (.I0(s1[1]),
        .I1(s1[5]),
        .I2(amt_IBUF[3]),
        .I3(s1[9]),
        .I4(amt_IBUF[2]),
        .I5(s1[13]),
        .O(s3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_5 
       (.I0(s1[17]),
        .I1(s1[21]),
        .I2(amt_IBUF[3]),
        .I3(s1[25]),
        .I4(amt_IBUF[2]),
        .I5(s1[29]),
        .O(s3[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_6 
       (.I0(data_IBUF[28]),
        .I1(data_IBUF[27]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[26]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[25]),
        .O(\out_OBUF[29]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_7 
       (.I0(data_IBUF[24]),
        .I1(data_IBUF[23]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[22]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[21]),
        .O(\out_OBUF[29]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_8 
       (.I0(data_IBUF[20]),
        .I1(data_IBUF[19]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[18]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[17]),
        .O(\out_OBUF[29]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_9 
       (.I0(data_IBUF[16]),
        .I1(data_IBUF[15]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[14]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[13]),
        .O(\out_OBUF[29]_inst_i_9_n_0 ));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[2]_inst_i_1 
       (.I0(\out_OBUF[18]_inst_i_3_n_0 ),
        .I1(\out_OBUF[18]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[18]),
        .I4(amt_IBUF[4]),
        .I5(s3[2]),
        .O(out_OBUF[2]));
  OBUF \out_OBUF[30]_inst 
       (.I(out_OBUF[30]),
        .O(out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_1 
       (.I0(\out_OBUF[30]_inst_i_2_n_0 ),
        .I1(\out_OBUF[30]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[14]),
        .I4(amt_IBUF[4]),
        .I5(s3[30]),
        .O(out_OBUF[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_10 
       (.I0(data_IBUF[13]),
        .I1(data_IBUF[12]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[11]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[10]),
        .O(\out_OBUF[30]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_11 
       (.I0(data_IBUF[9]),
        .I1(data_IBUF[8]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[7]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[6]),
        .O(\out_OBUF[30]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_12 
       (.I0(data_IBUF[5]),
        .I1(data_IBUF[4]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[3]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[2]),
        .O(\out_OBUF[30]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_13 
       (.I0(data_IBUF[1]),
        .I1(data_IBUF[0]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[31]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[30]),
        .O(\out_OBUF[30]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_14 
       (.I0(data_IBUF[31]),
        .I1(data_IBUF[0]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[1]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[2]),
        .O(s1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_15 
       (.I0(data_IBUF[3]),
        .I1(data_IBUF[4]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[5]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[6]),
        .O(s1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_16 
       (.I0(data_IBUF[7]),
        .I1(data_IBUF[8]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[9]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[10]),
        .O(s1[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_17 
       (.I0(data_IBUF[11]),
        .I1(data_IBUF[12]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[13]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[14]),
        .O(s1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_18 
       (.I0(data_IBUF[15]),
        .I1(data_IBUF[16]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[17]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[18]),
        .O(s1[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_19 
       (.I0(data_IBUF[19]),
        .I1(data_IBUF[20]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[21]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[22]),
        .O(s1[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_2 
       (.I0(\out_OBUF[30]_inst_i_6_n_0 ),
        .I1(\out_OBUF[30]_inst_i_7_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_8_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_9_n_0 ),
        .O(\out_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_20 
       (.I0(data_IBUF[23]),
        .I1(data_IBUF[24]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[25]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[26]),
        .O(s1[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_21 
       (.I0(data_IBUF[27]),
        .I1(data_IBUF[28]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[29]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[30]),
        .O(s1[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_3 
       (.I0(\out_OBUF[30]_inst_i_10_n_0 ),
        .I1(\out_OBUF[30]_inst_i_11_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[30]_inst_i_12_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_13_n_0 ),
        .O(\out_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_4 
       (.I0(s1[2]),
        .I1(s1[6]),
        .I2(amt_IBUF[3]),
        .I3(s1[10]),
        .I4(amt_IBUF[2]),
        .I5(s1[14]),
        .O(s3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_5 
       (.I0(s1[18]),
        .I1(s1[22]),
        .I2(amt_IBUF[3]),
        .I3(s1[26]),
        .I4(amt_IBUF[2]),
        .I5(s1[30]),
        .O(s3[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_6 
       (.I0(data_IBUF[29]),
        .I1(data_IBUF[28]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[27]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[26]),
        .O(\out_OBUF[30]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_7 
       (.I0(data_IBUF[25]),
        .I1(data_IBUF[24]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[23]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[22]),
        .O(\out_OBUF[30]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_8 
       (.I0(data_IBUF[21]),
        .I1(data_IBUF[20]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[19]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[18]),
        .O(\out_OBUF[30]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_9 
       (.I0(data_IBUF[17]),
        .I1(data_IBUF[16]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[15]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[14]),
        .O(\out_OBUF[30]_inst_i_9_n_0 ));
  OBUF \out_OBUF[31]_inst 
       (.I(out_OBUF[31]),
        .O(out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_1 
       (.I0(\out_OBUF[31]_inst_i_2_n_0 ),
        .I1(\out_OBUF[31]_inst_i_3_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[15]),
        .I4(amt_IBUF[4]),
        .I5(s3[31]),
        .O(out_OBUF[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_10 
       (.I0(data_IBUF[14]),
        .I1(data_IBUF[13]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[12]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[11]),
        .O(\out_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_11 
       (.I0(data_IBUF[10]),
        .I1(data_IBUF[9]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[8]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[7]),
        .O(\out_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_12 
       (.I0(data_IBUF[6]),
        .I1(data_IBUF[5]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[4]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[3]),
        .O(\out_OBUF[31]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_13 
       (.I0(data_IBUF[2]),
        .I1(data_IBUF[1]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[0]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[31]),
        .O(\out_OBUF[31]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_14 
       (.I0(data_IBUF[0]),
        .I1(data_IBUF[1]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[2]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[3]),
        .O(s1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_15 
       (.I0(data_IBUF[4]),
        .I1(data_IBUF[5]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[6]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[7]),
        .O(s1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_16 
       (.I0(data_IBUF[8]),
        .I1(data_IBUF[9]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[10]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[11]),
        .O(s1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_17 
       (.I0(data_IBUF[12]),
        .I1(data_IBUF[13]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[14]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[15]),
        .O(s1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_18 
       (.I0(data_IBUF[16]),
        .I1(data_IBUF[17]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[18]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[19]),
        .O(s1[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_19 
       (.I0(data_IBUF[20]),
        .I1(data_IBUF[21]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[22]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[23]),
        .O(s1[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_6_n_0 ),
        .I1(\out_OBUF[31]_inst_i_7_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_8_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_9_n_0 ),
        .O(\out_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_20 
       (.I0(data_IBUF[24]),
        .I1(data_IBUF[25]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[26]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[27]),
        .O(s1[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_21 
       (.I0(data_IBUF[28]),
        .I1(data_IBUF[29]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[30]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[31]),
        .O(s1[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_3 
       (.I0(\out_OBUF[31]_inst_i_10_n_0 ),
        .I1(\out_OBUF[31]_inst_i_11_n_0 ),
        .I2(amt_IBUF[3]),
        .I3(\out_OBUF[31]_inst_i_12_n_0 ),
        .I4(amt_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_13_n_0 ),
        .O(\out_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_4 
       (.I0(s1[3]),
        .I1(s1[7]),
        .I2(amt_IBUF[3]),
        .I3(s1[11]),
        .I4(amt_IBUF[2]),
        .I5(s1[15]),
        .O(s3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_5 
       (.I0(s1[19]),
        .I1(s1[23]),
        .I2(amt_IBUF[3]),
        .I3(s1[27]),
        .I4(amt_IBUF[2]),
        .I5(s1[31]),
        .O(s3[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_6 
       (.I0(data_IBUF[30]),
        .I1(data_IBUF[29]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[28]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[27]),
        .O(\out_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_7 
       (.I0(data_IBUF[26]),
        .I1(data_IBUF[25]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[24]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[23]),
        .O(\out_OBUF[31]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_8 
       (.I0(data_IBUF[22]),
        .I1(data_IBUF[21]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[20]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[19]),
        .O(\out_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_9 
       (.I0(data_IBUF[18]),
        .I1(data_IBUF[17]),
        .I2(amt_IBUF[1]),
        .I3(data_IBUF[16]),
        .I4(amt_IBUF[0]),
        .I5(data_IBUF[15]),
        .O(\out_OBUF[31]_inst_i_9_n_0 ));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[3]_inst_i_1 
       (.I0(\out_OBUF[19]_inst_i_3_n_0 ),
        .I1(\out_OBUF[19]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[19]),
        .I4(amt_IBUF[4]),
        .I5(s3[3]),
        .O(out_OBUF[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[4]_inst_i_1 
       (.I0(\out_OBUF[20]_inst_i_3_n_0 ),
        .I1(\out_OBUF[20]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[20]),
        .I4(amt_IBUF[4]),
        .I5(s3[4]),
        .O(out_OBUF[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[5]_inst_i_1 
       (.I0(\out_OBUF[21]_inst_i_3_n_0 ),
        .I1(\out_OBUF[21]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[21]),
        .I4(amt_IBUF[4]),
        .I5(s3[5]),
        .O(out_OBUF[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[6]_inst_i_1 
       (.I0(\out_OBUF[22]_inst_i_3_n_0 ),
        .I1(\out_OBUF[22]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[22]),
        .I4(amt_IBUF[4]),
        .I5(s3[6]),
        .O(out_OBUF[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[7]_inst_i_1 
       (.I0(\out_OBUF[23]_inst_i_3_n_0 ),
        .I1(\out_OBUF[23]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[23]),
        .I4(amt_IBUF[4]),
        .I5(s3[7]),
        .O(out_OBUF[7]));
  OBUF \out_OBUF[8]_inst 
       (.I(out_OBUF[8]),
        .O(out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[8]_inst_i_1 
       (.I0(\out_OBUF[24]_inst_i_3_n_0 ),
        .I1(\out_OBUF[24]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[24]),
        .I4(amt_IBUF[4]),
        .I5(s3[8]),
        .O(out_OBUF[8]));
  OBUF \out_OBUF[9]_inst 
       (.I(out_OBUF[9]),
        .O(out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[9]_inst_i_1 
       (.I0(\out_OBUF[25]_inst_i_3_n_0 ),
        .I1(\out_OBUF[25]_inst_i_2_n_0 ),
        .I2(dir_lr_IBUF),
        .I3(s3[25]),
        .I4(amt_IBUF[4]),
        .I5(s3[9]),
        .O(out_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
