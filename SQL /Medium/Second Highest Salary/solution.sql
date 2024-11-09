with cte as(SELECT salary,Rank() over ( order by salary DESC) as rank
FROM employee)
select distinct(salary) as second_highest_salary from cte where rank=2
