-- TRUNCATE TABLE test.departments, test.employees;
-- CREATE database work_lab3
-- create schema test;
-- 1.
-- create table test.departments (dept_id serial PRIMARY KEY, dept_name VARCHAR(55) UNIQUE, city VARCHAR(55) DEFAULT 'Baku');
-- create table test.employees (emp_id serial PRIMARY KEY, name VARCHAR(55) NOT NULL, salary INT check (salary>0), dept_id INT, manager_id int,
-- CONSTRAINT dept_id_cascade
--         FOREIGN KEY (dept_id) 
--         REFERENCES test.departments (dept_id) 
--         ON DELETE SET NULL);
-- 2.
insert into test.departments (dept_id, dept_name) VALUES (1, 'IT');
insert into test.departments (dept_id, dept_name) VALUES (2, 'IT');
-- SQL state: 23505
-- Detail: Ключ "(dept_name)=(HR)" уже существует(already exists).

-- inserts
insert into test.departments (dept_id, dept_name) VALUES (2, 'HR');
insert into test.departments (dept_id, dept_name, city) VALUES (3, 'Finance', 'Ganja');
insert into test.departments (dept_id, dept_name, city) VALUES (4, 'Marketing', 'Sumgait');

insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(1, 'Aysel', 4000, 1, NULL);
insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(2, 'Rashad', 2500, 1, 1);
insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(3, 'Leyla', 2000, 2, 1);
insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(4, 'Kamran', 3000, 3, 1);
insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(5, 'Nigar', 1800, 3, 4);
insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
values(6, 'Orkhan', 2200, NULL, 2);

-- 3.
SELECT 
	salary::text as salary_as_text,                    
    '2500'::numeric as compare_int,  
    salary >= '2500'::numeric AS greater_or_equal
FROM test.employees;

-- 4.
SELECT emp_id, name, salary, test.employees.dept_id, manager_id, test.departments.dept_name FROM test.employees INNER JOIN test.departments  ON test.employees.dept_id = test.departments.dept_id;
-- 5.
SELECT * FROM test.employees LEFT JOIN test.departments ON test.employees.dept_id = test.departments.dept_id;
-- 6.
SELECT * FROM test.employees RIGHT JOIN test.departments ON test.employees.dept_id = test.departments.dept_id;
-- 7.
SELECT * FROM test.employees FULL JOIN test.departments ON test.employees.dept_id = test.departments.dept_id;
-- 8. excpected 4*6=24
SELECT * FROM test.employees CROSS JOIN test.departments;
-- 9. 
SELECT e.name AS employee, m.name AS manager FROM test.employees e JOIN test.employees m ON e.manager_id = m.emp_id;
-- 10.
SELECT *  FROM test.employees where salary > (SELECT AVG(salary) FROM test.employees);
-- 11.
SELECT *  FROM test.employees where dept_id IN (SELECT dept_id FROM test.departments where city='Baku');
-- 12. didn't understand what it asks
-- 13.
WITH dept_avg AS (
SELECT dept_id, AVG(salary) as average_salary
FROM test.employees
GROUP BY dept_id
)
SELECT e.name, e.salary, d.average_salary
FROM test.employees e
JOIN dept_avg d ON e.dept_id = d.dept_id
WHERE e.salary > d.average_salary;
-- 14.
SELECT dept_id FROM test.employees UNION SELECT dept_id FROM test.departments;
SELECT dept_id FROM test.employees INTERSECT SELECT dept_id FROM test.departments;
SELECT dept_id FROM test.employees EXCEPT SELECT dept_id FROM test.departments;



