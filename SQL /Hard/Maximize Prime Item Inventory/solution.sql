with cte as (SELECT item_type, count(item_type) as item_count, sum(square_footage) as square_footage   FROM inventory group by item_type)
, prime_cte as (select floor(500000/square_footage)*square_footage as total from cte where item_type= 'prime_eligible')
select item_type, case 
when item_type = 'prime_eligible' then floor(500000/square_footage)*item_count
when item_type = 'not_prime'  then floor((500000 - (select * from prime_cte))/square_footage)*item_count end
as item_count from cte order by item_type desc;
