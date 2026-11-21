-- create database lab10;
-- create table students
-- (id serial primary key,
-- fullname varchar(50),
-- age int,
-- grade numeric(10,2));
-- create table courses
-- (id serial primary key,
-- course_name varchar(50),
-- credit int);

-- insert into students (fullname, age, grade)
-- values('ilqar agaliyev',20,700);
-- insert into students (fullname, age, grade)
-- values('ilqar2 agaliyev',20,500);
-- insert into students (fullname, age, grade)
-- values('ilqar3 agaliyev',20,300);
-- insert into courses (course_name, credit)
-- values('dba',10);
-- insert into courses (course_name, credit)
-- values('js',10);
-- insert into courses (course_name, credit)
-- values('ai',10);

create user ilqar with password 'ilqar123' --user
create role eldeniz with login password 'eldeniz12'

select rolname,rolsuper, rolcanlogin
from pg_roles
where rolname not like 'pg\_%'

grant privileges create update delete on schema students to ilqar;
grant usage, create on schema public TO ilqar;
grant insert, update, delete on all tables in schema public TO ilqar;
grant select on all tables in schema public to eldeniz;