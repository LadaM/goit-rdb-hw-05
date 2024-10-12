USE topic_3;

-- order date
SELECT id,
       date,
       YEAR(date)  AS year,
       MONTH(date) AS month,
       DAY(date)   AS day
FROM orders;