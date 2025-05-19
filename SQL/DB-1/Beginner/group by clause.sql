-- GROUP BY clause

select * from employee_salary;

select occupation, count(occupation) from employee_salary group by occupation;