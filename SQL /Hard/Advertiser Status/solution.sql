SELECT 
COALESCE(a.user_id, d.user_id) AS user_id,
case 
when d.paid is Null then 'CHURN' 
when d.paid is not Null and lower(a.status)='churn' then 'RESURRECT'
when a.user_id is Null then 'NEW'
else 'EXISTING' end as new_status 
FROM 
advertiser a 
FULL OUTER JOIN  daily_pay d 
on a.user_id=d.user_id order by user_id;
