-- Write a query which outputs the current date(YYYY-MM-DD).
SELECT CURRENT_DATE();

-- Write a query which outputs the current time(HH:MM:SS).
SELECT CURRENT_TIME();

-- Write a query which returns the date(YYYY-MM-DD) of 1 month from CURRENT DATE.
SELECT DATE_ADD(CURRENT_DATE, INTERVAL 1 MONTH);

-- Write a query which returns the time(HH:MM:SS) of 30 minutes from CURRENT TIME.
SELECT TIME(NOW()+INTERVAL 30 MINUTE);

-- Write a query which outputs the '%d-%m-%y %H:%i:%S' format of 10th days from '2023-04-20 13:40:23'.
SELECT DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 10 DAY),'%d-%m-%Y %H:%i:%S') AS date_after_10;
SELECT DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 10 DAY),'%D %M,%Y %h:%i:%S %p') AS date_after_10;