-- CREATE DATABASE company_db;
-- Create schema test;
-- create table test.employees (id serial primary key, name varchar(55), age int, email varchar(55), salary int, department varchar(55), hire_date date);
SELECT * FROM test.employees;
-- ALTER TABLE test.employees ADD COLUMN phone varchar(55);
TRUNCATE test.employees;
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar8',28,'ilqar8@gmail.com',800,'IT','23.12.2023','+994 77 331 28 09');
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar1',20,'ilqar1@gmail.com',1200,'IT','23.01.2025','+994 77 331 21 09');
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar2',22,'ilqar2@gmail.com',1300,'IT','23.02.2025','+994 77 331 22 09');
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar3',23,'ilqar3@gmail.com',1400,'IT','23.03.2025',null);
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar4',24,'ilqar4@gmail.com',1500,'IT','23.04.2025','+994 77 331 24 09');
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar5',25,'ilqar5@gmail.com',1500,'IT','23.05.2025', null);
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar6',26,'ilqar6@gmail.com',1700,'IT','23.06.2025','+994 77 331 26 09');
INSERT INTO test.employees (name, age, email, salary, department, hire_date, phone)
VALUES ('Ilqar7',27,'ilqar7@gmail.com',1900,'IT','23.07.2025','+994 77 331 27 09');

UPDATE test.employees SET salary=2000 where id=18;
DELETE from test.employees where id=25;
SELECT * FROM test.employees;
SELECT name AS employee_name FROM test.employees;
SELECT DISTINCT salary FROM test.employees;
SELECT * FROM test.employees LIMIT 3;

SELECT * FROM test.employees WHERE age > 20;
SELECT * FROM test.employees WHERE salary >= 1500 AND age >= 24;
SELECT * FROM test.employees WHERE phone IS NULL;

-- if salary of two identical we sort by age
SELECT * FROM test.employees ORDER BY phone NULLS LAST, salary DESC, age ASC;
SELECT * FROM test.employees WHERE salary BETWEEN 1400 AND 1600;
SELECT * FROM test.employees WHERE age IN (22,24,27);
SELECT * FROM test.employees WHERE name LIKE '%l%';
SELECT * FROM test.employees WHERE name ILIKE 'ILQAR%';






