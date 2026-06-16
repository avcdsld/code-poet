-- The Unproven Is Let In
CREATE TABLE t (
  x INTEGER CHECK (x <> x)
);

INSERT INTO t VALUES (NULL);
