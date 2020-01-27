-- ---------------------------
-- DBS201 Week 5 LAB
-- Name: Lien Tran
-- October 6, 2019
-- ---------------------------

 -- Part A (DDL) :
/*1.	Create table the following tables and their given constraints:
L5_MOVIES (id:int, title:varchar(35), year:int, director:int,score:decimal(3,2))*/
CREATE TABLE L5_MOVIES(
id int primary key,
title varchar(35) not null,
year int not null,
director int not null,
score decimal(3,2)
);

-- L5_ACTORS (id:int, name:varchar(20), lastname:varchar(30)
CREATE TABLE L5_ACTORS(
id int primary key,
firstName varchar(20) not null,
lastName varchar(30) not  null
);

-- L5_CASTINGS (movieid:int, actorid:int)
CREATE TABLE L5_CASTINGS(
movieid int,
actorid int,
primary key (movieid,actorid),
 CONSTRAINT MOVIE_CASTING_FK FOREIGN KEY (movieid) REFERENCES L5_MOVIES(id),
 CONSTRAINT MOVIE_ACTOR_FK FOREIGN KEY (actorid) REFERENCES L5_ACTORS(id)
 );

-- L5_DIRECTORS(id:int, name:varchar(20), lastname:varchar(30))
CREATE TABLE L5_DIRECTORS(
id int primary key,
name varchar(20) not null,
Lastname varchar(30) not null
);


-- 2.	Modify the movies table to create a foreign key constraint that refers to table directors. 
ALTER TABLE L5_MOVIES
	ADD CONSTRAINT MOVIE_DIRECTOR_FK FOREIGN KEY (director) 
									REFERENCES L5_DIRECTORS(id);
                                    
-- 3.	Modify the movies table to create a new constraint so the uniqueness of the movie title is guaranteed. 
ALTER TABLE L5_MOVIES
	ADD CONSTRAINT TITLE_UNIQUE unique(title);
    
-- 4.	Write insert statements to add the following data to table directors and movies.
INSERT INTO L5_DIRECTORS 
VALUE
 (1010, 'Rob', 'Minkoff'),
 (1020, 'Bill', 'Condon'),
 (1050, 'Josh', 'Cooley'),
 (2010, 'Brad', 'Bird'),
 (3020, 'Lake', 'Bell');
 
 
 INSERT INTO L5_MOVIES
 (id , title, year, director, score)
VALUE 
(100, 'The Lion King', 2019, 3020, 3.50),
 (200, 'Beauty and the Beast', 2017, 1050, 4.20),
 (300, 'Toy Story 4', 2019, 1020, 4.50),
 (400, 'Mission Impossible', 2018, 2010, 5.00),
 (500, 'The Secret Life of Pets', 2016, 1010, 3.90);
 
-- 5.	Write a SQL statement to remove all above tables. Is the order of tables important when removing? Why? 
DROP TABLE  L5_CASTINGS, L5_MOVIES, L5_DIRECTORS, L5_ACTORS ;
/* Yes , the order of tables matters because when we try to delete we should first delete the table which has
foreign key since it have relevant to other table! else, it can create a problem.*/			

-- Part B (More DML):
-- 6.	Create a new empty table employee2 exactly the same as table employees.
CREATE TABLE employee2(
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
extension varchar(10) not null,
email varchar(100) not null,
officeCode varchar(10) not null,
reportsTo int(11) default null,
jobTitle varchar(50) not null,
CONSTRAINT EMPLLOYEE_OFFICECODE_FK FOREIGN KEY (officeCode) REFERENCES offices(officeCode),
CONSTRAINT EMPLLOYEE_REPORT_FK FOREIGN KEY (reportsTo) REFERENCES employees(employeeNumber)
);


/* 7.	Modify table employee2 and add a new column username to this table.
 The value of this column is not required and does not have to be unique.*/
 ALTER TABLE employee2
ADD COLUMN username  varchar(50) ;

/*8.	Insert all student data from the employees table into your new table employee2.  */
INSERT INTO employee2 (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
SELECT * 
FROM employees; 


/*9.	In table employee2, write a SQL statement to change the first name and the last name of employee with ID 1002 to your name. */
UPDATE employee2 SET 
firstName = 'Lien',
lastName = 'Tran'
WHERE employeeNumber = 1002;

/*10.	In table employee2, generate the email address for column username for each student by concatenating
 the first character of employee’s first name and the employee’s last name.
 For instance, the username of employee Peter Stone will be pstone. NOTE: the username is in all lower case letters*/
UPDATE employee2 SET
 username = LOWER(CONCAT(lEFT(firstName,1),lastName))
WHERE firstName is not null 
AND lastName is not null;

/* 11.	In table employee2, remove all employees with office code 4. */
DELETE FROM employee2
WHERE officeCode = 4;

-- 12.
	DROP TABLE employee2;


SELECT * FROM employee2;
