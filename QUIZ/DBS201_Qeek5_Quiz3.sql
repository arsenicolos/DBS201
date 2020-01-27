-- DBS201 - Week 5, Quiz 3
-- Sept 30, 2019

-- Using the following Create table script
CREATE TABLE q3_studentOpinions (
	studentID bigint PRIMARY KEY,
    firstName varchar(25) NOT NULL,
    middleName varchar(30),
	lastname varchar(30) NOT NULL,
    favCourseCode varchar(6) NOT NULL,
    worstCourseCode varchar(6) NOT NULL,
    rateDBS201 tinyint CHECK(rateDBS201 BETWEEN 0 AND 10)
    );
    
-- Q1 - Create 1 new data row in the above table using your own student ID, name and fill in the required information.  Yes I am askling for opinions.
         -- be honest, it helps.
insert into q3_studentOpinions 
VALUES ('163733173' , Lien, Ngoc, Tran, ULI101, WEB222, 8);



-- Q2 - add a second row, adding ME, use 100999888 for the student number and my name.  Bonus for who gets my name perfect (first middle and last).  Make up my ratings.
insert into q3_studentOpinions 
values ('100999888', Clint, null, MacDonald, DBS201, LGE244,9);



-- Q3 - Oops, you made a mistake, change the data in the row you added for me so the ratings are (favCourse: DBS201, worstCourse: IPC144, rateDBS201: 8).
UPDate q3_studentOpinions  
SET favCourseCode = DBS201, worstCourseCode = IPC144, rateDBS201= 8
WHERE studentID = 100999888;



-- Q4 - Delete the one row you created above (pretend this is one of many records in your code)
DELETE FROM q3_studentOpinions 
WHERE studentID = 100999888;


-- Q5 - In your own words, why is the WHERE clause so important when writing data to a database.alter
-- we need where to specific the condition 


-- Q6 - run the following statement to clean up your database.
DROP TABLE q3_studentOpinions;