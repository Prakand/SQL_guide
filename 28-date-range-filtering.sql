-- SELECT * FROM sales
-- WHERE date_created>'2021-12-01' AND date_created<'2022-02-20';


-- SELECT * FROM sales
-- where date_created BETWEEN '2021-11-01' AND '2022-05-01';

-- SELECT * FROM sales
-- WHERE volume >500 AND volume <5000 ;

SELECT * FROM sales
WHERE volume BETWEEN 500 AND 5000;