-- CREATE TABLE t1
CREATE TABLE t1(
  a int,
  b int,
  c int,
  PRIMARY KEY (a, b),
  UNIQUE uk_t1_a_b_c (a, b, c)
);
