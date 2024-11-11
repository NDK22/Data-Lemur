select c.customer_id from customer_contracts c inner join products p 
on c.product_id = p.product_id group by c.customer_id 
HAVING COUNT(DISTINCT product_category) = (SELECT COUNT(DISTINCT product_category) FROM products) ;
