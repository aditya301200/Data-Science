-- Joins
select * from employee_salary;
select * from employee_demographics;

-- Inner Join
select dem.employee_id,dem.first_name,age,occupation from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Left Outer Join
select * from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- Right Outer Join
select * from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Self Join
select emp1.employee_id as emp_santa,
	emp1.first_name as first_name_santa,
    emp1.last_name as last_name_santa,
    emp2.employee_id as emp_name,
	emp2.first_name as first_name_emp,
    emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id+1=emp2.employee_id;
    
-- Joining multiple tables togather
select * from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
join parks_departments as pd
	on sal.dept_id = pd.department_id;