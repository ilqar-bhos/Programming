-- create database lec4;
-- create schema l4 ;
-- create table l4.departments
-- (id serial primary key, name varchar(50));
-- create table l4.students (
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
-- insert into l4.students 
--  (name,salary,age, dep_id)
-- values ('ali',500.5,21, 1), 
-- ('aysel',400.6,22,2),
-- ('revan',200.6,23,1),
-- ('uzeyr',300.6,24,2),
-- ('tural',600.6,25,2),
-- ('rustem',700.6,26,3),
-- ('rustem',800.6,29,4);
-- SELECT * FROM l4.students;
SELECT count(*) from l4.students;
-- count
-- 14
-- select count(distinct name) from l4.students;
-- count
-- 6
-- -- ERROR 
-- select count(distinct *) from l4.students 
 --categorical data, continous
-- select avg(salary) from l4.students;
-- select sum(salary) from l4.students;
select dep_id, count(*) from 
l4.students
group by dep_id;

select dep_id, sum(salary)
from l4.students 
where dep_id > 2
group by dep_id 
having sum(salary)>200 and  dep_id>2;

select name, salary, row_number() over(order by salary) as r_number from l4.students s;

SELECT dep_id, age,
Row_number() OVER (ORDER BY dep_id DESC) 
AS rank
  FROM l4.students;