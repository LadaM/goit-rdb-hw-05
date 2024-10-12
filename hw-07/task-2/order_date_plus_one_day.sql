USE topic_3;

-- order date +1 day
SELECT id,
       date,
       date + INTERVAL 1 DAY AS plus_one_day
FROM orders;