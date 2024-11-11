with cte as (SELECT cast(measurement_time as DATE), measurement_value, ROW_NUMBER()
over (PARTITION BY cast(measurement_time as date) order by measurement_time) as ranking
FROM measurements)
select measurement_time, 
sum(measurement_value) FILTER (where ranking%2!=0) as odd_sum,
sum(measurement_value) filter (where ranking%2=0) as even_sum
from cte group by measurement_time;
