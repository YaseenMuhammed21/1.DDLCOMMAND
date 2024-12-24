# DDLCOMMAND
## This is the assignment done for the DDL Command

Where we have done all the command CREATE,DROP,ALTER,TRUNCATE AND RENAME

## Created,Dropped,Altered,Truncated and Renamed the table for the database school
### 1. CREATE
##
  	CREATE database SCHOOL;
##
  	CREATE TABLE STUDENT
   	(
		ROLLNO INT auto_increment PRIMARY KEY, NAME varchar(100) NOT null, MARKS INT CHECK(MARKS>=0 AND MARKS<=100), GRADE CHAR(1) CHECK(GRADE IN ('A','B','C','D','E'))
	);

### 2. ALTER
##
	ALTER TABLE STUDENT ADD CONTACT VARCHAR(15);
##
  	ALTER TABLE STUDENT DROP COLUMN CONTACT;

### 3. TRUNCATE
##
  	TRUNCATE TABLE STUDENT;
##
  	TRUNCATE TABLE CLASSTEN;

### 4. DROP
##
  	ALTER TABLE STUDENT DROP COLUMN GRADE;
##
  	DROP TABLE CLASSTEN;

### 5. RENAME
##
  	RENAME TABLE STUDENT TO CLASSTEN;

:blush:
