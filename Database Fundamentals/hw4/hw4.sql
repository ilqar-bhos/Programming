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
select name, salary, dep_id rank()
from ranked_salary;


------------------------
select dep_id, max(age) as highest_age, min(age) as lowest_age, max(age)-min(age) as difference_between_age
from l4.employee 
group by dep_id 
having max(age)-min(age)>2; --used 2 instead of 10

WITH department_salary AS (
select name, salary, dep_id, avg(salary) OVER (PARTITION BY dep_id) AS dep_salary from l4.students
)
select name, salary, dep_id, dep_salary
from department_salary
where salary>dep_salary;



