with cte as (
SELECT user_id, 
lead(transaction_date,2) over (partition by user_id order by transaction_date) - transaction_date as consecutive_days 
FROM transactions order by user_id, transaction_date)
select user_id from cte where extract ( day from consecutive_days)>=2 order by user_id ;
