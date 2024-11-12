SELECT case when order_id%2!=0 and order_id != (select max(order_id) from orders) then order_id+1 
when order_id = (select max(order_id) from orders) and order_id%2!=0 then order_id
else order_id-1 end as corrected_order_id, item
FROM orders  order by corrected_order_id
