-- create table test.constractors (emp_id serial PRIMARY KEY, name VARCHAR(55) NOT NULL, salary INT check (salary>0), dept_id INT);
-- alter table test.employees add column manager_id int;
-- alter table test.employees 
-- add constraint fk_manager 
-- foreign key (manager_id) 
-- references test.employees(emp_id) 
-- on delete set NULL;
-- insert into test.departments (dept_id, dept_name) VALUES (1, 'IT');
-- insert into test.departments (dept_id, dept_name) VALUES (2, 'HR');
-- insert into test.departments (dept_id, dept_name, city) VALUES (3, 'Finance', 'Ganja');
-- insert into test.departments (dept_id, dept_name, city) VALUES (4, 'Marketing', 'Sumgait');
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(1, 'Aysel', 4000, 1, NULL);
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(2, 'Rashad', 2500, 1, 1);
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(3, 'Leyla', 2000, 2, 1);
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(4, 'Kamran', 3000, 3, 1);
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(5, 'Nigar', 1800, 3, 4);
-- insert into test.employees (emp_id, name, salary, dept_id, manager_id) 
-- values(6, 'Orkhan', 2200, NULL, 2);
-- values(3, 'Leyla', 2000, 2, 1);
-- insert into test.constractors (emp_id, name, salary, dept_id) 
-- values(4, 'Kamran', 3000, 3);
-- insert into test.constractors (emp_id, name, salary, dept_id) 
-- values(5, 'Nigar', 1800, 3);
-- insert into test.constractors (emp_id, name, salary, dept_id) 
-- values(6, 'Orkhan', 2200, NULL);

select * from test.employees;
select * from test.departments;
select emp_id, name, salary, test.employees.dept_id, manager_id, test.departments.dept_name from test.employees INNER JOIN test.departments  on test.employees.dept_id = test.departments.dept_id;
select * from test.departments LEFT JOIN test.employees on test.employees.dept_id = test.departments.dept_id where test.employees.dept_id is NULL;
select * from test.employees CROSS JOIN test.departments;
select e.emp_id as employee, m.emp_id as manager from test.employees e LEFT JOIN test.employees m on e.manager_id = m.emp_id;  
select *  from test.employees where salary > (select AVG(salary) from test.employees);
select *  from test.employees where dept_id IN (select dept_id from test.departments where city='Baku');
select name, salary from test.employees where salary > ANY (select salary from test.employees where dept_id = 1);
select name, salary from test.employees where salary > ALL (select salary from test.employees where dept_id = 1);
select name, salary from test.employees where EXISTS (select 1 from test.departments d where d.dept_id = test.employees.dept_id);
with dept_avg as (
select dept_id, AVG(salary) as average_salary
from test.employees
group by dept_id
)
select e.name, e.salary, d.average_salary
from test.employees e
join dept_avg d on e.dept_id = d.dept_id
where e.salary > d.average_salary;

select emp_id, name from test.employees UNION select emp_id, name from test.constractors;
select emp_id, name from test.employees INTERSECT select emp_id, name from test.constractors;
select emp_id, name from test.employees EXCEPT select emp_id, name from test.constractors;