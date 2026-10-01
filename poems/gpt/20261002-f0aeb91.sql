-- What cannot answer
WITH t(x) AS (VALUES (NULL))
SELECT *
FROM t
WHERE x = x;
