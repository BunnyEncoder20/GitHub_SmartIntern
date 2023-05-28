/*
	Constrainsts in SQL
    -------------------
    1. NOT NULL : column cannot have any nul values 
    2. Unique : col cannot have any duplicates 
    3. Primary Key : NOT NULL + UNIQUE
    4. Foreign Key : Cannot insert into child without inserting into parent 
    5. Check : specific condition should be met
    6. default : default value will be entered if no value is provided 
    7. Create Index : retrive data from database quickly 
*/

-- NOT NULL
/*
	Syntax :
	CREATE TABLE TABLENAME( COL_NAME TYPE NOT NULL) ;
    
*/
-- UNIQUE


# Joins in MySQL 
-- -------------
/*
	1. Inner Join : Intersection of the 2 tables 
    2. Left (Outer Join) : All the records of table 1 + Intersection (matching rows) of table 2
    3. Right (Outer Join) : All the records of table 2 + Intersection (matching rows) of table 1
    4. Full Outer Join : Union of the 2 tables
*/

CREATE TABLE IF NOT EXISTS contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50),
    lname VARCHAR(50)
);

INSERT INTO contacts (fname,lname) VALUES
("Soma" , "Senpai"),
("Varun" , "Verma"),
("Tarun" , "Puneet") ;

SELECT * FROM contacts ;

CREATE TABLE IF NOT EXISTS results (
	sid INT PRIMARY KEY auto_increment,
    fname VARCHAR(50),
    lname VARCHAR(50),
    gpa INT
);

INSERT INTO results (fname,lname,gpa) VALUES
("Soma" , "Senpai",10),
("Varun" , "Verma" , 9),
("Tarun" , "Puneet", 10) ;

SELECT * FROM results ;

SELECT contacts.fname,contacts.lname, results.gpa
FROM contacts INNER JOIN results
ON contacts.fname = results.fname AND contacts.lname = results.lname ;

INSERT INTO contacts (fname,lname) VALUES
("Somya" , "Kumari"),
("Bunny" , "Bun");

INSERT INTO results (fname,lname,gpa) VALUES
("Soma" , "Bun",10),
("Bunny" , "Verma" , 9),
("Tarun" , "Verma", 10) ;

SELECT contacts.fname,contacts.lname, results.gpa
FROM contacts Left JOIN results
ON contacts.fname = results.fname AND contacts.lname = results.lname ;

SELECT contacts.fname,contacts.lname, results.gpa
FROM contacts RIGHT JOIN results
ON contacts.fname = results.fname AND contacts.lname = results.lname ;