-- The one who cannot answer is spared
CREATE TABLE a (
  b INTEGER CHECK (b = b)
);

INSERT INTO a VALUES (NULL);
