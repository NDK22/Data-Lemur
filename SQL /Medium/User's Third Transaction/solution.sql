with cte as (SELECT user_id,spend,transaction_date, 
RANK() over (PARTITION BY user_id order by transaction_date) as rank
FROM transactions)
select user_id,spend,transaction_date from cte where rank=3
