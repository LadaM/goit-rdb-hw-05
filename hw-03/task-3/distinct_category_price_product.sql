use topic_3;

-- selecting the distinct top 10 distinct categories and prices
select distinct category_id, price
from products
order by price desc
limit 10;