module \7segDispHex  (
  input A,
  input B,
  input C,
  input D,
  output out_a,
  output out_b,
  output out_c,
  output out_d,
  output out_e,
  output out_f,
  output out_g
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  assign s0 = ~ A;
  assign s1 = ~ B;
  assign s2 = ~ C;
  assign s3 = ~ D;
  assign out_a = (((s1 & s3) | (s0 & C) | (B & C) | (A & s3) | (s0 & B & D)) | (A & s1 & s2));
  assign out_b = ((s0 & s1) | (s1 & s3) | (s0 & s2 & s3) | (s0 & C & D) | (A & s2 & D));
  assign out_c = ((s0 & s2) | (s0 & D) | (s2 & D) | (s0 & B) | (A & s1));
  assign out_d = ((A & s2) | (s0 & s1 & s3) | (s1 & C & D) | (B & s2 & D) | (B & C & s3));
  assign out_e = ((s1 & s3) | (C & s3) | (A & C) | (A & B));
  assign out_f = ((s2 & s3) | (B & s3) | (A & s1) | (A & C) | (s0 & B & s2));
  assign out_g = ((s1 & C) | (C & s3) | (A & s1) | (A & D) | (s0 & B & s2));
endmodule
