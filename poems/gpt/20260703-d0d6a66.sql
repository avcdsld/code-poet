-- Asked To Be Itself
SELECT *
FROM (VALUES (NULL)) AS a(a)
WHERE a = NULL;
