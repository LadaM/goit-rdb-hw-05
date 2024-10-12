USE topic_3;

-- get order date as utc timestamp
SELECT id,
       date,
       UNIX_TIMESTAMP(date) AS order_utc_timestamp
FROM orders;
