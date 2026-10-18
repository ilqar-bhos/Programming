-- create database lec4;
-- create schema l4 ;
-- create table l4.departments
-- (id serial primary key, name varchar(50));
-- create table l4.employee (
--     id serial primary key,
--     name varchar(50),
--     salary numeric(10,2),
--     age smallint,
--     dep_id int,
--     constraint d_id
--     foreign key (dep_id)
--     references l4.departments(id)
-- );
-- insert into l4.departments 
-- (name) VALUES ('BPM'),('RDL'),('CE'),('PAM'),('IT');
-- insert into l4.employee 
--  (name,salary,age, dep_id)
-- values ('ali',500.5,21, 1), 
-- ('aysel',400.6,22,2),
-- ('revan',200.6,23,1),
-- ('uzeyr',300.6,24,2),
-- ('tural',300.6,25,2),
-- ('rustem',700.6,26,3),
-- ('rustem',800.6,29,4);
-- SELECT * FROM l4.employee;


SELECT count(*) from l4.employee;

select dep_id, avg(salary) from l4.employee group by dep_id;

select dep_id, count(id)
from l4.employee 
group by dep_id 
having count(id)>=3;

select name, salary, dep_id, avg(salary) over (partition by dep_id) AS dep_avg_salary from l4.employee;

SELECT dep_id, salary, age,
Row_number() OVER (ORDER BY salary DESC) 
AS Row_number
  FROM l4.employee;

SELECT dep_id, salary, age,
Rank() OVER (ORDER BY salary DESC) 
AS rank
  FROM l4.employee;

SELECT dep_id, salary, age,
Dense_rank() OVER (ORDER BY salary DESC) 
AS dense_rank
  FROM l4.employee;

WITH ranked_salary AS (
select name, salary, dep_id, rank() OVER (PARTITION BY dep_id order by salary desc) AS dep_salary from l4.employee
)
select name, salary, dep_id, dep_salary from ranked_salary order by dep_id asc, dep_salary asc;

-- ALTER TABLE l4.employee ADD COLUMN hire_date int;
-- Update l4.employee set hire_date=2020 where dep_id=1;
-- Update l4.employee set hire_date=2021 where dep_id=2;
-- Update l4.employee set hire_date=2023 where dep_id=3;
-- Update l4.employee set hire_date=2024 where dep_id=4;
-- Update l4.employee set hire_date=2025 where dep_id=5;
select name, salary, dep_id, hire_date, SUM(salary) OVER(PARTITION by hire_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) from l4.employee;

select dep_id, AVG(salary) from l4.employee where hire_date > 2022 group by dep_id having AVG(salary) > 750;



