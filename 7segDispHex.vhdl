LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    D: in std_logic;
    out_a: out std_logic;
    out_b: out std_logic;
    out_c: out std_logic;
    out_d: out std_logic;
    out_e: out std_logic;
    out_f: out std_logic;
    out_g: out std_logic);
end main;

architecture Behavioral of main is
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
  signal s3: std_logic;
begin
  s0 <= NOT A;
  s1 <= NOT B;
  s2 <= NOT C;
  s3 <= NOT D;
  out_a <= (((s1 AND s3) OR (s0 AND C) OR (B AND C) OR (A AND s3) OR (s0 AND B AND D)) OR (A AND s1 AND s2));
  out_b <= ((s0 AND s1) OR (s1 AND s3) OR (s0 AND s2 AND s3) OR (s0 AND C AND D) OR (A AND s2 AND D));
  out_c <= ((s0 AND s2) OR (s0 AND D) OR (s2 AND D) OR (s0 AND B) OR (A AND s1));
  out_d <= ((A AND s2) OR (s0 AND s1 AND s3) OR (s1 AND C AND D) OR (B AND s2 AND D) OR (B AND C AND s3));
  out_e <= ((s1 AND s3) OR (C AND s3) OR (A AND C) OR (A AND B));
  out_f <= ((s2 AND s3) OR (B AND s3) OR (A AND s1) OR (A AND C) OR (s0 AND B AND s2));
  out_g <= ((s1 AND C) OR (C AND s3) OR (A AND s1) OR (A AND D) OR (s0 AND B AND s2));
end Behavioral;
