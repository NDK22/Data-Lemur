SELECT app_id, 
round(100.0*sum(case when lower(event_type) = 'click' then 1 else 0 end)/sum(case when lower(event_type) = 'impression' then 1 else 0 end),2) as ctr 
FROM events where extract(year from timestamp)='2022' group by app_id;
