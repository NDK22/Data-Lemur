with cte as (SELECT searches FROM search_frequency group by searches,generate_series(1,num_users))
select PERCENTILE_CONT(0.5) within group(order by searches) as median from cte 
