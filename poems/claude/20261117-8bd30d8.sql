-- Two Strangers Who Were the Same

SELECT *
FROM (SELECT NULL AS face) a,
     (SELECT NULL AS face) b
WHERE a.face = b.face;
