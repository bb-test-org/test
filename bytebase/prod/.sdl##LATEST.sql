-- CREATE TABLE t1
CREATE TABLE t1(
  a int NOT NULL,
  b int NOT NULL,
  c int,
  d int,
  e int,
  f int,
  g int,
  x int,
  z int,
  PRIMARY KEY (a, b),
  CONSTRAINT check_t1_1 CHECK (b > 0),
  CONSTRAINT check_t1_2 CHECK (c > 0)
);

CREATE UNIQUE INDEX uk_t1_a_c on t1(a, c);
