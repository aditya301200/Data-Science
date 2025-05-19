-- CASE statements

select first_name,last_name,
case
	when age <= 30 and gender = 'Male' then 'Young Man'
    when age between 31 and 50 and gender='Male' then 'Middle aged Male'
    when age between 31 and 50 and gender='Female' then 'Middle aged Female'
    when age >= 50 then 'OLD'
end as age_bracket
from employee_demographics;

-- Pay increase and Bonus
-- <50000 = 5%
-- >50000 = 7%
-- Finance = 10% bonus
select concat(first_name,' ',last_name) as name,
salary as old_salary,
CASE
	when salary < 50000 then salary*1.05
    when salary > 50000 then salary*1.07
END as new_salary,
CASE
	when dept_id = 6 then salary*.1
END as bonus
from employee_salary;