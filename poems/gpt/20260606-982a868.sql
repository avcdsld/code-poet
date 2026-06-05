-- The Missing Thing Will Not Say Yes
WITH a(b) AS (VALUES (NULL))
SELECT b
FROM a
WHERE b = NULL;
