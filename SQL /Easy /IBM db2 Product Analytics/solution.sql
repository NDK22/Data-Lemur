with cte as (
select 
e.employee_id as employee_id,
count(distinct q.query_id) as query_count
from 
employees as e 
left join 
queries as q 
on e.employee_id = q.employee_id
and extract(month from q.query_starttime) between 7 and  9 
group by e.employee_id)
select distinct(query_count) as unique_queries,count(employee_id) as employee_count from cte group by query_count order by unique_queries
