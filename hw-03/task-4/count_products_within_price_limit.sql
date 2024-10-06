use topic_3;

-- counting products with prices withing [20, 100]
select count(id) as product_count
from products
where price >= 20 and price <= 100;