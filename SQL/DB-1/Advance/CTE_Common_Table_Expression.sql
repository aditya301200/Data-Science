-- CTEs : Common Table Expression

-- example-1
WITH CTE_example (gender,AVG_salary,MAX_salary,MIN_salary,COUNT_salary) as
(
	select gender, avg(salary) as avg_salary, max(salary) as max_salary, min(salary) as min_salary, count(salary) as count_salary
	from employee_demographics as dem
    join employee_salary as sal
		on dem.employee_id=sal.employee_id
	group by gender
)
select *
from CTE_example;

-- example-2
WITH CTE_example as
(
	select employee_id,gender,birth_date
	from employee_demographics 
    where birth_date > '1985-01-01'
),
CTE_example2 as
(
	select employee_id,salary
    from employee_salary
    where salary > 50000
)
select *
from CTE_example
join CTE_example2
	on CTE_example.employee_id=CTE_example2.employee_id;