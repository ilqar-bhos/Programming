create database lec4;
create schema l4 ;
create table l4.departments
(id serial primary key, name varchar(50));
create table l4.students (
    id serial primary key,
    name varchar(50),
    salary numeric(10,2),
    age smallint,
    dep_id int
    constraint d_id
    foreign key (dep_id)
    reference departments(id);
);
insert into l4.departments 
(name) VALUES ('BPM'),('RDL'),('CE'),('PAM'),('IT');
insert into l4.students 
(name,salary,age dep_id)
values('ali',500.5,21, 1), 
('aysel',400.6,22,2),
('revan',200.6,23,1),
('uzeyr',300.6,24,2),
('tural',600.6,25,2),
('rustem',700.6,26,3);
('rustem',800.6,29,4);

-- select * from employees
-- #   id  name    salary  dep_id
-- 1   1   ali     500.50      1
-- 2   2   aysel   400.60      2
-- 3   3   revan   200.60      1
-- 4   4   uzeyr   300.60      2
-- 5   5   tural   600.60      2
-- 6   6   rustem  700.60      3

-- select count(*) from l4.employees

-- #   count
-- 1   6

-- -- ERROR 
-- select count(distinct *) from l4.employees 
-- select count(distinct name) from l4.employees
--  --categorical data, continous
-- select avg(salary) from l4.employees
-- select sum(salary) from l4.employees

-- select dept_id, count(*) from 
-- l4.employees
-- group by dept_id

-- select sum(salary), count(*) from l4.employees 

-- select dept_id,  sum(salary), count(*) from l4.employees
-- group by dept_id,name

-- select dep_id, sum(salary)
-- from l4.employees 
-- where dep_id > 2 and  sum(salary)
-- group by dep_id 
-- having sum(salary)>200 --and  dep_id>2


-- select dep_id, sum(salary)  as s
-- from l4.employees 
-- where dep_id > 2 
--   group by dep_id
-- having  sum(salary)  >200 
-- order by s 
-- desc

-- select s.*,  sum(salary) from l4.employees s
-- group by dept_id

-- select s.*, avg(salary) 
-- over(Partition by dep_id) as dep_avg
-- from l4.employees s

-- id      name    salary  dep_id  dep_avg
-- 1   1   ali     500.50  1   350.5500000000000000
-- 2   3   revan   200.60  1   350.5500000000000000
-- 3   5   tural   600.60  2   433.9333333333333333
-- 4   4   uzeyr   300.60  2   433.9333333333333333
-- 5   2   aysel   400.60  2   433.9333333333333333
-- 6   6   rustem  700.60  3   700.6000000000000000
-- 7   7   rustem  800.60  4   800.6000000000000000


-- select name, salary, 
-- row_number() over(order by salary) as r_number
-- from l4.employees s 

--    SELECT dep_id, salary,
-- Row_number() OVER (ORDER BY dep_id DESC) 
-- AS rank
--   FROM l4.employees;


