-- create database hw7;
-- create table departments
-- (id serial primary key, name varchar(50));
-- create table employees (
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
-- insert into employees 
--  (name,salary,age, dep_id)
-- values ('ali',500.5,21, 1), 
-- ('aysel',400.6,22,2),
-- ('revan',200.6,23,1),
-- ('uzeyr',300.6,24,2),
-- ('tural',300.6,25,2),
-- ('rustem',700.6,26,3),
-- ('rustem',800.6,29,4);
CREATE FUNCTION get_annual_salary(monthly_salary NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
RETURN monthly_salary * 12;
END;
$$ LANGUAGE plpgsql;
SELECT get_annual_salary(5000);

CREATE FUNCTION get_employee_count(department INT)
RETURNS INT AS $$
DECLARE
emp_count INT;
BEGIN
SELECT COUNT(*) INTO emp_count FROM employees WHERE dep_id =
department;
RETURN emp_count;
END;
$$ LANGUAGE plpgsql;
SELECT get_employee_count(1);

CREATE TABLE salary_log (
    log_id SERIAL PRIMARY KEY,
    emp_id INT REFERENCES employees(id) ON DELETE CASCADE,
    old_salary INT,
    new_salary INT,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE PROCEDURE give_raise(emp_id INT, amount NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
UPDATE employees
SET salary = salary + amount
WHERE employees.id = give_raise.emp_id;
COMMIT; END; $$;
CALL give_raise(1, 500);


CREATE FUNCTION log_salary_change()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO salary_log(emp_id, old_salary, new_salary, changed_at)
VALUES (OLD.id, OLD.salary, NEW.salary, NOW());
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_salary_update
AFTER UPDATE OF salary ON employees
FOR EACH ROW
EXECUTE FUNCTION log_salary_change();
UPDATE employees SET salary = salary + 123 WHERE employees.id = 3;
select * from salary_log;

DROP TRIGGER trg_salary_update ON employees;
UPDATE employees SET salary = salary + 123 WHERE employees.id = 3;
select * from salary_log;