SELECT round(100*
sum(case when call_category is Null or lower(call_category) ='n/a' then 1 else Null end)::numeric/count(*),1) as uncategorised_call_pct
FROM callers ;
