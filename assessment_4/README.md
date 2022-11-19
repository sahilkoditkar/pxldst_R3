
# SQL optimisation

SELECT count(*)
FROM shawarma_purchases
WHERE
YEAR(purchased_at) == '2017'


SELECT count(*)
FROM shawarma_purchases
WHERE
  purchased_at >= '2017-01-01' AND
  purchased_at <= '2017-31-12'


The first query uses functions while second uses comparison. using comparison on column will be faster as it will work on indexed data, on the other hand use of function will take time as it tries to scan the entire database.