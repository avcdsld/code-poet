-- What Remains After the Removal

CREATE TABLE self (
  id      INT PRIMARY KEY,
  origin  INT,
  FOREIGN KEY (origin)
    REFERENCES self(id)
    ON DELETE SET NULL
);

INSERT INTO self VALUES (1, NULL);
INSERT INTO self VALUES (2, 1);
INSERT INTO self VALUES (3, 1);
INSERT INTO self VALUES (4, 2);

DELETE FROM self WHERE id = 1;

SELECT * FROM self;
