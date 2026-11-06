-- Neither Broken Nor Kept
CREATE TABLE t (
  x BOOLEAN CHECK (x)
);

INSERT INTO t VALUES (NULL);
