with cte as (SELECT 
  d.department_name,
  e.name,
  e.salary, 
  Dense_rank() over(partition by e.department_id order by e.salary desc) as rank
    FROM employee e 
    left join department d
    on e.department_id=d.department_id)
select department_name, name, salary from cte where rank <=3 order by department_name asc, salary desc, name asc
