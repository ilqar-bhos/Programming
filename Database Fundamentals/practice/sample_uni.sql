-- create schema best;
-- create table best.departments (dept_id serial primary key, dept_name varchar(55), city varchar(55));

-- create table best.employees (
-- emp_id serial primary key,
--  name varchar(55),
--  age int,
--  email varchar(55),
--  salary int,
--  dept_id int,
--  foreign key(dept_id) references best.departments,
--  manager_id int,
--  foreign key(emp_id) references best.employees,
--  hire_date date
-- );
-- create table best.contractors (contractor_id serial primary key, name varchar(55), hourly_rate numeric(10,2));

-- INSERT INTO best.departments VALUES 
-- (10, 'Sales', 'Baku'), (20, 'IT', 'Baku'), (30, 'HR', 'Ganja'), 
-- (40, 'Finance', 'Sumgait'), (50, 'Legal', 'Ganja'); 
-- INSERT INTO best.employees VALUES 
-- (1, 'Aysel', 45, 'aysel@corp.az', 5000, 20, NULL, '2015-03-01'), 
-- (2, 'Rauf',  38, 'rauf@corp.az',  3500, 20, 1,    '2018-06-15'), 
-- (3, 'Leyla', 29, NULL,            

-- 3000, 20, 2,    '2020-01-10'), 
-- (4, 'Orxan', 33, 'orxan@corp.az', 2800, 10, 1,    '2019-09-01'), 
-- (5, 'Nigar', 27, 'nigar@corp.az', 2800, 10, 4,    '2021-04-20'), 
-- (6, 'Vusal', 41, NULL,            
-- 4200, 30, 1,    '2016-11-05'), 
-- (7, 'Sara',  25, 'sara@corp.az',  2200, 30, 6,    '2022-02-14'), 
-- (8, 'Kamal', 52, 'kamal@corp.az', 6000, 40, 1,    '2012-08-30'), 
-- (9, 'Ilkin', 31, 'ilkin@corp.az', 3500, 40, 8,    '2020-07-07'), 
-- (10,'Anar',  36, 'anar@corp.az',  3000, NULL, 1,  '2019-05-12'); 
-- INSERT INTO best.contractors VALUES 
-- (1, 'Sara', 25.00), (2, 'Elnur', 30.00), 
-- (3, 'Ilkin', 28.50), (4, 'Tural', 22.00); 
-- 1
-- create table best.bonuses (emp_id int, foreign key(emp_id) references best.employees, bonus_year int, amount numeric(8,2) not null default 0, primary key(emp_id,bonus_year));
-- Alter table best.employees add column phone varchar(15);
-- insert into best.departments values (60,'Marketing','Baku');
-- update best.employees set salary = salary * 1.1 where dept_id = 20;
-- delete from best.employees where dept_id=80;
-- 2
-- select name,age, hire_date from best.employees where age>=30 and hire_date>'2017-12-31' and dept_id IN(20,40, NULL) order by age asc;
select name from best.employees where name like '____l' order by name asc;














-- select dept_id, count(*) as total_employees,
-- ROUND(AVG(salary),1) as avg_salary
-- from best.employees where age>26
-- group by dept_id having count(*)>1 order by avg(salary) desc;

-- SELECT name, 
--        salary,
--        ROW_NUMBER() OVER (ORDER BY salary DESC, name ASC) AS row_num,
--        RANK() OVER (ORDER BY salary DESC) AS rnk,
--        DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rnk
-- FROM best.employees
-- ORDER BY salary DESC, name ASC;















-- create table test.faculties (faculty_id serial primary key, faculty_name varchar(55),
-- city varchar(55));
-- create table test.students (student_id serial primary key, name varchar(55), age int, email varchar(55), scholarship int, faculty_id int, foreign key(faculty_id) references test.faculties, mentor_id int, foreign key (student_id) references test.students, enroll_date date);
-- create table test.tutors (tutor_id serial primary key, name varchar(55), hourly_rate numeric(2,2));


-- INSERT INTO test.faculties VALUES 
-- (10, 'Engineering', 'Baku'), (20, 'Medicine', 'Baku'), 
-- (30, 'Law', 'Ganja'), (40, 'Economics', 'Sumgait'), 
-- (50, 'Arts', 'Ganja'); 
-- INSERT INTO test.students VALUES 
-- (1, 'Aynur', 
--   28, 'aynur@uni.az',
--    500, 20, NULL, '2019-09-01'), 
-- (2, 'Rashad',  25, 'rashad@uni.az',  350, 20, 1,    '2021-09-01'), 
-- (3, 'Lala',  
--   22, NULL,          
--    300, 20, 2,    '2022-09-05'), 
-- (4, 'Orkhan',  24, 'orkhan@uni.az',  280, 10, 1,    '2020-09-01'), 
-- (5, 'Nurlan',  21, 'nurlan@uni.az',  280, 10, 4,    '2023-09-04'), 
-- (6, 'Vugar', 
--   27, NULL,          
--    420, 30, 1,    '2018-09-03'), 
-- (7, 'Sevinj',  19, 'sevinj@uni.az',  220, 30, 6,    '2024-09-02'), 
-- (8, 'Kanan', 
--   29, 'kanan@uni.az',  
--  600, 40, 1,    
-- '2017-09-01'), 
-- (9, 'Ismayil', 23, 'ismayil@uni.az', 350, 40, 8,    '2022-02-10'), 
-- (10,'Altay', 
--   26, 'altay@uni.az',
--    300, NULL, 1,  '2021-02-08');
-- ALTER TABLE test.tutors ALTER COLUMN hourly_rate TYPE numeric(10,2);
-- INSERT INTO test.tutors VALUES 
-- (1, 'Sevinj', 25.00), (2, 'Elnur', 30.00), 
-- (3, 'Ismayil', 28.50), (4, 'Tural', 22.00); 
-- select * from test.tutors;
-- create table test.courses (course_id serial primary key, title varchar(55) not null, tuition numeric(10,2), start_date date, faculty_id int, foreign key (faculty_id) references test.faculties);
-- alter table test.courses ADD COLUMN status varchar(20) default 'open';
-- select name as student_name, scholarship, enroll_date from test.students where faculty_id IN(10,20,30,40) and (scholarship between 250 and 500) and email is not null and name not like 'A%' order by scholarship desc, name asc limit 3;
-- select distinct city from test.faculties order by city;
-- select s.name, f.faculty_name, f.city from test.students s inner join test.faculties f on s.faculty_id = f.faculty_id order by s.name;
-- select f.faculty_name from test.faculties f left join test.students s on f.faculty_id = s.faculty_id where s.student_id is null;
-- select name, scholarship from test.students where scholarship > (select AVG(scholarship) from test.students) order by scholarship desc;
-- select f.faculty_name from test.faculties f where exists(select 1 from test.students s where s.faculty_id = f.faculty_id and s.scholarship>400) order by f.faculty_name asc;
-- select faculty_id, count(*) as total_students, ROUND(AVG(scholarship),1) as avg_scholarship from test.students where age>22 group by faculty_id having count(*)>1 order by avg_scholarship desc;
-- select name, scholarship, row_number() over(order by scholarship desc, name) as row_num , rank() over(order by scholarship desc) as rnk, dense_rank() over(order by scholarship desc) as dense_rnk from test.students order by scholarship desc, name asc;



