-- Some People Stay

SELECT
    self.name,
    other.name
FROM
    people self
LEFT JOIN
    people other
ON
    self.reaching_out = other.reaching_back
WHERE
    other.name IS NULL;
