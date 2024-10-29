--Solution 1
SELECT e.employee_id,e.name as employee_name FROM employee e
where salary> (select salary from employee temp where temp.employee_id= e.manager_id)

--Solution 2
SELECT 
  emp.employee_id AS employee_id,
  emp.name AS employee_name
FROM employee AS mgr
INNER JOIN employee AS emp
  ON mgr.employee_id = emp.manager_id
WHERE emp.salary > mgr.salary;
