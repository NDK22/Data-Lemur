SELECT round((sum(case when i.country_id!=r.country_id then 1 else Null end)::Numeric/count(*))*100,1) as international_calls_pct 
FROM phone_calls c 
JOIN  phone_info i on c.receiver_id =i.caller_id 
JOIN  phone_info r on c.caller_id =r.caller_id
