-- CREATE TABLE t1
CREATE TABLE t1(
  a int,
  b int,
  c int,
  d int,
  e int,
  f int,
  PRIMARY KEY (a, b)
);

CREATE UNIQUE INDEX uk_t1_a_b_c on t1(a, b, c);
