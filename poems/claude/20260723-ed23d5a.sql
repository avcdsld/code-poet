-- Every Question I Ever Asked You

SELECT
    asked.moment,
    replied.words
FROM
    asked
LEFT JOIN
    replied
ON
    asked.moment = replied.moment;
