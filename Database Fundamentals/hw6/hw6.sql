-- create database hw6;
-- create table departments
-- (id serial primary key, name varchar(50));
-- create table employee (
--     id serial primary key,
--     name varchar(50),
--     salary numeric(10,2),
--     age smallint,
--     dep_id int,
--     constraint d_id
--     foreign key (dep_id)
--     references departments(id)
-- );
-- insert into departments 
-- (name) VALUES ('BPM'),('RDL'),('CE'),('PAM'),('IT');
-- insert into employee 
--  (name,salary,age, dep_id)
-- values ('ali',500.5,21, 1), 
-- ('aysel',400.6,22,2),
-- ('revan',200.6,23,1),
-- ('uzeyr',300.6,24,2),
-- ('tural',300.6,25,2),
-- ('rustem',700.6,26,3),
-- ('rustem',800.6,29,4);
SELECT * FROM employee;
SELECT * FROM departments;
-- INSERT INTO employee (name, salary, age, dep_id)
-- SELECT 
--     'Name' || i,                      
--     (RANDOM() * 5000 + 15000)::int,  
-- 	20,
-- 	1
-- FROM generate_series(1, 10000) AS i;

EXPLAIN ANALYZE SELECT * FROM employee WHERE salary > 5000;
CREATE INDEX idx_employee_salary ON employee (salary);
EXPLAIN ANALYZE SELECT * FROM employee WHERE salary > 5000;
CREATE INDEX idx_dept_salary ON employee (dep_id, salary);
EXPLAIN ANALYZE SELECT * FROM employee WHERE dep_id = 1 AND salary > 15000;
CREATE UNIQUE INDEX idx_employee_email ON employee (email);
ALTER TABLE employee ADD COLUMN email VARCHAR(100);
INSERT INTO employee (name, salary, age, dep_id, email) 
VALUES ('TestUser', 45000, 22, 1, 'duplicate@example.com');
INSERT INTO employee (name, salary, age, dep_id, email) 
VALUES ('AnotherUser', 50000, 25, 1, 'duplicate@example.com');
EXPLAIN ANALYZE SELECT * FROM employee WHERE UPPER(name) = 'NAME1';
CREATE INDEX idx_employee_upper_name ON employee (UPPER(name));
EXPLAIN ANALYZE SELECT * FROM employee WHERE UPPER(name) = 'NAME1';
DROP INDEX idx_employee_salary;

ANALYZE employee;

EXPLAIN ANALYZE SELECT * FROM employee WHERE dep_id = 1 AND salary > 5000;