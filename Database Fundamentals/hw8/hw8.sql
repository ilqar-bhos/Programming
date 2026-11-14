-- create table accounts (
-- account_id serial primary key, 
-- owner_name varchar(55),
-- balance int);

-- insert into accounts(owner_name, balance) VALUES ('ilqar',400),('Eldeniz',120),('Novruz',500);
BEGIN;
UPDATE accounts SET balance = balance - 50 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 50 WHERE account_id = 3;
COMMIT;

BEGIN;
UPDATE accounts SET balance = balance - 50 WHERE account_id = 1;
UPDATE accounts SET invalid_column = 999 WHERE account_id = 2; 
ROLLBACK;

SELECT * FROM accounts;

BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
SAVEPOINT sp1;
UPDATE accounts SET invalid_column = 999 WHERE account_id = 2;
ROLLBACK TO sp1;
COMMIT;
select * from accounts;




