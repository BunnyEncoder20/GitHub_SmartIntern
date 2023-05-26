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