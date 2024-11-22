with cte as (
SELECT e.department_id, 
to_char(payment_date,'MM-YYYY') as payment_date, 
avg(s.amount) over (PARTITION BY e.department_id) as avg_dept_salary,
avg(s.amount) over () as avg_salary
FROM employee e  JOIN salary s on e.employee_id = s.employee_id
where 
extract(month from s.payment_date)='03' 
and extract(year from s.payment_date) ='2024')

select department_id, payment_date,
case when avg(avg_dept_salary)>avg(avg_salary) then 'higher'
when avg(avg_dept_salary)=avg(avg_salary) then 'same'
else 'lower' end as comparison
from cte group by department_id, payment_date;
