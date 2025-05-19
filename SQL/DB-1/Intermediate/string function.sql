-- String Function

select first_name, upper(first_name) from employee_salary;

-- TRIM function
select rtrim('				sky    ');

-- substring
select first_name, left(first_name,4), right(first_name,4), substring(first_name,3,2),birth_date,substring(birth_date,6,2)
from employee_demographics;

-- replace
select first_name, replace(first_name,'a','z') 
from employee_demographics;

-- locate
select locate('x','Alexander');

-- concatination
select first_name,last_name,
concat(first_name,' ',last_name)
from employee_demographics;