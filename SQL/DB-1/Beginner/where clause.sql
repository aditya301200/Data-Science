-- WHERE Clause
USE parks_and_recreation;
SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
WHERE salary <= 50000 AND dept_id=1;

SELECT *
FROM employee_salary
WHERE last_name LIKE "p%";