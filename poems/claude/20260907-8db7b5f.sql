-- Every Morning, the Table Is Set for Two

CREATE TABLE every_morning (place INT PRIMARY KEY);
INSERT INTO every_morning VALUES (1),(2),(3),(4),(5),(6),(7);

CREATE TABLE missing (place INT PRIMARY KEY, voice INT, warmth INT);

SELECT
  every_morning.place,
  missing.voice,
  missing.warmth
FROM   every_morning
LEFT JOIN missing
  ON every_morning.place = missing.place;
