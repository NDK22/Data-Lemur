with cte as(SELECT count(*)as policy_holder_count 
FROM callers group by policy_holder_id having count(policy_holder_id)>=3)
select count(*)as policy_holder_count  from cte
