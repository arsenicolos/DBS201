-- -------------------------------
-- Name: Lien Tran
-- ID: 163733173
-- DBS201 - Week 6 - Lab 6
-- Introduction to Design and the Associated DDL
-- -------------------------------

/*
In this lab you are going to design and create a mini database.  This will not be a full database,
but a small part of a larger database.  You will be creating a data base to help the professor keep track 
of your marks in this class.  

You will need to tracks students (Just basic information for the class only).  You will need to track the 
markable items (tests, labs, quizzes, assignments) and their percentage of the final mark, then record each students mark for each markable item.  

Tasks
1) Create the appropriate tables, fields, field types and sizes, and required constraints (your choice)
2) Insert your student information and that of 3 of your classmates. (Fake data is okay)
3) Insert marks for all markable items for those 4 students
4) Create a Query (Select) that calculates the final mark for each student
5) Create a View that stores the above query.alter

HINTS: 
1) Use the course outline for the mark breakdown
2) draw the tables with circles and lines on paper to determine their relationships
3) Use your experience so far as to what fields are required.
4) ASK QUESTIONS 
*/

CREATE TABLE student(
id 			int primary key,
firstName 	varchar(30),
lastName 	varchar(30)
);

INSERT INTO student VALUES
(163733173, 'Lien', 'Tran'),
(189673452, 'Roger', 'Jim'),
(153495763, 'Man', 'Huynh'),
(145539728, 'Duy', 'Nguyen');

SELECT * FROM student;

CREATE TABLE itemType(
typeid 	tinyint 	primary key,
name 	varchar(10),	
Worth	dec(5,3) not null
);

INSERT INTO itemType VALUES
(1, 'Quiz1', 2.5),
(2, 'Quiz2', 2.5),
(3, 'Quiz3', 2.5),
(4, 'Lab1', 3.0),
(5, 'Lab2', 3.0),
(6, 'Lab3', 3.0),
(7, 'Mid-term', 20.0),
(8, 'project', 25.0);

SELECT * FROM itemType;

CREATE TABLE markableItem(
studentid 	int 		not null,
itemid 		int		 	primary key,
mark 		tinyint	,
typeid		tinyint		not null,
CONSTRAINT student_mark_fk FOREIGN KEY(studentid) REFERENCES student(id),
CONSTRAINT item_type_fk FOREIGN KEY(typeid) REFERENCES itemType(typeid)
);

INSERT INTO markableItem VALUES
(163733173, 1, 100, 1),
(163733173, 2, 92,	2),
(163733173, 3, 75, 3),
(163733173, 4, 100, 4),
(163733173, 5, 90, 5),
(163733173, 6, 85, 6),
(189673452, 7, 30, 1),
(189673452, 8, 94, 2),
(189673452, 9, 70, 3),
(189673452, 10, 90, 4),
(189673452, 11, 100, 5),
(189673452, 12, 85, 6),
(153495763, 13, 77, 1),
(153495763, 14, 60, 2),
(153495763, 15, 85, 3),
(153495763, 16, 100, 4),
(153495763, 17, 100, 5),
(153495763, 18, 89, 6),
(145539728, 19, 45, 1), 
(145539728, 20, 79, 2),
(145539728, 21, 84, 3),
(145539728, 22, 78, 4),
(145539728, 23, 60, 5),
(145539728, 24, 95, 6);

SELECT * FROM markableItem;
 
 CREATE VIEW student_finalMark AS 
 SElECT s.firstName, s.lastName, m.studentid, ROUND(SUM(m.mark*i.worth)/SUM(i.worth),2) AS finalMark
 FROM itemType i JOIN markableItem m USING(typeid) JOIN student s ON s.id = m.studentid 
 GROUP BY m.studentid;
 

-- DROP TABLE markableItem, itemType, student;







