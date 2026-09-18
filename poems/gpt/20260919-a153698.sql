-- spared by doubt

CREATE TABLE a (
  b BOOLEAN CHECK (b)
);

INSERT INTO a VALUES (NULL);
