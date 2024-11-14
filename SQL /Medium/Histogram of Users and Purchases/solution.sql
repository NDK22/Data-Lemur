with cte as (SELECT transaction_date,	user_id, count(product_id) as purchase_count, rank() over (PARTITION BY user_id  order by transaction_date desc) as rank
FROM user_transactions GROUP BY
transaction_date, user_id
order by transaction_date desc, user_id asc)

select transaction_date,user_id, purchase_count from cte where rank=1 order by transaction_date 
