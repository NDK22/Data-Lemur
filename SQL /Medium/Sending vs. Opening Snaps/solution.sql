with cte as (SELECT b.age_bucket,
sum(case when a.activity_type ='open' then a.time_spent else Null end) as Time_spent_opening, 
sum(case when a.activity_type ='send' then a.time_spent else Null end)as Time_spent_sending, 
sum(a.time_spent) as total_time
from activities a left join age_breakdown b on  a.user_id=b.user_id 
where a.activity_type in ('send', 'open')
group by b.age_bucket)
select age_bucket,round((Time_spent_sending/total_time)*100.0,2)as send_perc,round((Time_spent_opening/total_time)*100.0,2) as open_perc from cte 
