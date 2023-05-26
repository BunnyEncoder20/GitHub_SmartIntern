/*
	Commeting in MySQL
    --, #  use these for single line commenting 
    
    NOTE : SQL scripts are not really ment to be run all at once. Select the statements
    that you want to run and then run those (this script has been written in that manner)
    Hence do not try to run all of it at once, may create errors.
    
    NOTE : Getting the right table : 
    - either you specify the db at the beginning 
    - or you can use database.tableName 
*/


# DML : Data Manipulating Language 
/*
	1. INSERT
    2. SELECT
    3. UPADTE
    4. DELETE 
    5. Aggregate Functions 
		> Sum
        > Avg
        > Max
        > Min
        > Count
        
*/

#1. INSERT 
-- -------
INSERT INTO students (name, email, phone, dept) VALUES
('Soma','somasoma@gmail.com','1234567890','CSE'),
('Bunny','bunbun@gmail.com','9876543210','CSE'),
('Tarun','chuzee@gmail.com','5555555555','BBA') ;

#2. SELECT
-- -------
SELECT * FROM students ;

SELECT * FROM students 
WHERE dept = 'CSE' ;

SELECT name,email FROM students
WHERE dept = 'CSE' ;


#3. UPDATE
-- -------
UPDATE students 
SET name='Varun'
WHERE id = 2 ;


#5. Aggregate Functions  
-- --------------------
-- 1. Sum
SELECT SUM(id) FROM students ;
SELECT SUM(salary) FROM students where dept="CSE" ;

-- 2. Avg
SELECT AVG(salary) FROM students ;

-- 3. Min
SELECT MIN(salary) FROM students ;

-- 4. Max
SELECT MAX(salary) FROM students ;

-- 5. Count (doesn't count the total only the number of rows)
SELECT COUNT(*) FROM students ; -- return the total number of rows in th e table 
SELECT COUNT(*) FROM students WHERE salary > 60000 ;	-- returns the number of rows where salary > 60000


# DDL : Data Defining Language 
/*
	1. CREATE
    2. ALTER 
    3. DELETE
    4. TRUNCATE
    5. RENAME
*/

#1. CREATE 
-- --------
CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;
-- alternative to this : double click on the database on the schemas panel.

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    dept VARCHAR(30)
);



#2. ALTER
-- -------
-- 1. Adding a row to the table :-
ALTER TABLE students ADD COLUMN address VARCHAR(200) ;

-- 2. Modifying existing col datatype and size :-
ALTER TABLE students MODIFY COLUMN email VARCHAR(150) ;

-- 3. Renaming a column 
ALTER TABLE students CHANGE COLUMN phone mobile INT(10);

-- 4. Deleting a col from table
ALTER TABLE students DROP COLUMN address ;

-- 5. Adding a col to the table 
ALTER TABLE students ADD COLUMN Salary INT ;


#3. DELETE
-- --------
-- Used to delete rows from the table :-
INSERT INTO students (name,email,phone,dept) VALUES ("Row to be Deleted","nope@gmail.com","4024024024","Fake") ;
SELECT * FROM students ;

DELETE FROM students 
WHERE id = 4 ;
SELECT * FROM students ;



#4. Truncating all the rows from the table
-- ---------------------------------------
DELETE FROM students ;


#5. Renaming a Table
-- -----------------
RENAME TABLE students TO CoolKids ;
RENAME TABLE coolkids to students ;