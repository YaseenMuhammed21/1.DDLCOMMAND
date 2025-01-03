-- Create a database named School and perform all the DDL commands(CREATE, ALTER, DROP, RENAME, TRUNCATE) 
-- For the table named STUDENT with fields: Roll_No Name Marks Grade 
-- Create data on your own based on the given columns 
-- (1) Use the select command to display the table. 
-- (2) Add a column named Contact to the STUDENT table. 
-- (3) Remove the Grade column from the Student table. 
-- (4) Rename the table to CLASSTEN. 
-- (5) Delete all rows from the table. 
-- (6) Remove the table from the database.

#CREATING THE DATABASE CALLED SCHOOL

CREATE database SCHOOL;

#USING THE DATABASE SCHOOL

USE SCHOOL;

#CREATING THE TABLE NAMED STUDENTS

CREATE TABLE STUDENT(
	ROLLNO INT auto_increment PRIMARY KEY, -- CREATED ROLLNO AS INT WITH AUTO INCREMENT
	NAME varchar(100) NOT null, -- CREATED NAME AS VARIABLE CHARACTER WITH THE LENGTH 100 IT SHOULD BE NOT NULL
	MARKS INT CHECK(MARKS>=0 AND MARKS<=100), -- CREATED MARKS AS INT AND IT SHOULD BE CHECKED IN BETWEEN 0 AND 100
    GRADE CHAR(1) CHECK(GRADE IN ('A','B','C','D','E')) -- CREATED GRADE COLUMN AND IT WILL CHECK IN BETWEEN THE CHARACTER GIVEN A,B,C,D AND E
);

#TO VIEW THE TABLE WHICH IS CREATED

DESC STUDENT;

#INSERTING THE VALUES INSIDE THE TABLE CREATED AS STUDENT

INSERT INTO STUDENT(ROLLNO,NAME,MARKS,GRADE) -- INSERTING THE VALUES INSIDE THE TABLE STUDENT
VALUES
	(1,'TANYA',99,'A'),
	(2,'SANYA',79,'B'),
	(3,'MANYA',59,'C'),
	(4,'DANYA',39,'D'),
	(5,'PANYA',19,'E')
;

#TO VIEW THE TABLE CONTENT WHICH IS CREATED(SELECT COMMAND TO DISPLAY THE CONTENT INSIDE THE COLUMN)

SELECT * FROM STUDENT;

#ADDING COLUMN NAMED CONTACT TO THE TABLE STUDENT

ALTER TABLE STUDENT
ADD CONTACT VARCHAR(15); -- ADDING THE COLUMN NAMED CONTACT WITH THE TYPE VARCHAR

#TO VIEW THE TABLE

DESC STUDENT;

#DELETING THE VALUE OF TABLE AND KEEPING THE TABLE FORMAT TO INSERT THE DATA TO CONTACT COLUMN

TRUNCATE TABLE STUDENT;

#INSERTING THE VALUES INTO THE COLUMN CONTACT

INSERT INTO STUDENT(ROLLNO,NAME,MARKS,GRADE,CONTACT) -- INSERTING THE VALUES INSIDE THE TABLE STUDENT
VALUES
	(1,'TANYA',99,'A','1234567890'),
	(2,'SANYA',79,'B','1234567896'),
	(3,'MANYA',59,'C','1234567897'),
	(4,'DANYA',39,'D','1234567898'),
	(5,'PANYA',19,'E','1234567899')
;

#TO VIEW THE TABLE CONTENT WHICH IS CREATED(SELECT COMMAND TO DISPLAY THE CONTENT INSIDE THE COLUMN

SELECT * FROM STUDENT;

#DELETING THE COLUMN NAMED CONTACT FROM THE TABLE STUDENT

ALTER TABLE STUDENT 
DROP COLUMN CONTACT;

#ADDING THE COLUMN CONTACT

ALTER TABLE STUDENT
ADD CONTACT VARCHAR(15);

#TO VIEW THE COLUMN ENTRIES

SELECT * FROM STUDENT;

#DELETING THE GRADE COLUMN

ALTER TABLE STUDENT 
DROP COLUMN GRADE;

#RENAMING THE TABLE STUDENT TO CLASSTEN

RENAME TABLE STUDENT TO CLASSTEN;

#DELETING ALL ROWS FROM THE TABLE CLASSTEN

TRUNCATE TABLE CLASSTEN;

#CHECKING THE DESCRIPTION OF CLASSTEN

DESC CLASSTEN;

#DELETING THE TABLE CLASSTEN FROM DATABASE SCHOOL

DROP TABLE CLASSTEN;

-- END OF THE ASSIGNMENT.