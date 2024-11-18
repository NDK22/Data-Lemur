SELECT extract(month from event_date) as month ,count(distinct user_id) as monthly_active_users from  user_actions 
where user_id in (select distinct(user_id) from user_actions where extract(month from event_date)='06'and extract(year from event_date)='2022')
and extract(month from event_date)='07'and extract(year from event_date)='2022'
group by extract(month from event_date)
