-- create table lab5.users
-- (id serial primary key, 
--     name varchar(50),
--     age smallint,
--     phone_number varchar(50),
--     constraint s_id
--     foreign key (student_id)
--     references lab5.students(id));

-- create table lab5.students (
--     id serial primary key,
--     name varchar(50),
--     age smallint,
--     student_card int,
--     constraint d_id
--     foreign key (course_id)
--     references lab5.courses(id)
-- );
-- create table lab5.courses (
--     id serial primary key,
--     title varchar(50),
--     teacher varchar(50),
--     student_card int,
--     room int,
--     constraint s_id
--     foreign key (student_id)
--     references lab5.students(id)
-- );


-- Application of 1NF we should have no repeating groups or multivalued attributes
-- Application of 2NF partial dependecies removed, each table has its own id
-- Application of 3NF each table attribute is in its own table, removed birthdate because attributes shouldn't depend on each other

