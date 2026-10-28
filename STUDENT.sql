-- 1. Create a database named college.

DROP DATABASE IF EXISTS COLLEGE;
CREATE DATABASE COLLEGE;
USE COLLEGE;

-- 2. Create a table named students with the following fields:
-- ID, NAME, SUB1, SUB2, SUB3, SUB4, SUB5 and SUB6.
CREATE TABLE STUDENT(
    ID INT(5) PRIMARY KEY,
    NAME VARCHAR(20),
    SUB1 INT(3),
    SUB2 INT(3),
    SUB3 INT(3),
    SUB4 INT(3),
    SUB5 INT(3),
    SUB6 INT(3)
);

DESC STUDENT;

-- 3. Insert 10 records into the student table.

INSERT INTO STUDENT VALUES
(1,'APPU', 90, 80, 70, 77, 88, 99),
(2,'SURAJ', 90, 85, 70, 77, 88, 87),
(3,'RAJ', 90, 80, 70, 77, 88, 99),
(4,'RAVI', 90, 80, 70, 77, 88, 99),
(5,'RAJESH', 90, 80, 70, 77, 88, 99),
(6,'SANTOSH', 32, 80, 70, 77, 88, 99),
(7,'KUMAR', 55, 50, 54, 61, 61, 65),
(8,'RAJIV', 90, 80, 70, 77, 28, 99),
(9,'RAHUL', 90, 80, 70, 77, 88, 99),
(10,'RAMESH',90 ,80 ,70 ,77 ,88 ,99);

SELECT * FROM STUDENT;

-- 4. Add TOTAL and PERCENTAGE fields to the students table
-- and calculate the total marks and percentage of each student.

ALTER TABLE STUDENT 
ADD TOTAL INT(3),
ADD PERCENTAGE DECIMAL(5,2);

UPDATE STUDENT
SET TOTAL = SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6,
    PERCENTAGE = ((SUB1 + SUB2 + SUB3 + SUB4 + SUB5 + SUB6) / 600) * 100;

    SELECT * FROM STUDENT;

-- 5. Add a RESULT field to the students table and determine
-- whether each student has PASSED or FAILED.
-- A student passes only if they score 35 or more in all six subjects

ALTER TABLE STUDENT
ADD RESULT VARCHAR(10);

UPDATE STUDENT 
SET RESULT = 
 CASE 
 WHEN SUB1 >= 35
 AND SUB2 >= 35
 AND SUB3 >= 35
 AND SUB4 >= 35
 AND SUB5 >= 35
 AND SUB6 >= 35
 THEN 'PASS'
 ELSE  'FAIL'
 END;

-- 6. Display all student details including the RESULT.

 SELECT * FROM STUDENT;

 -- 7. Display ID and name of all students.

SELECT ID , NAME FROM STUDENT;

-- 8. Display all details of students who have PASSED.

SELECT * FROM STUDENT WHERE RESULT = "PASS";

-- 9. Display all details of students who have FAILED.

SELECT * FROM STUDENT WHERE RESULT = "FAIL";

-- 11. Count the number of students who have PASSED.

SELECT COUNT(*) FROM STUDENT 
WHERE RESULT = "PASS";

-- 12. Count the number of students who have FAILED.

SELECT COUNT(*) FROM STUDENT 
WHERE RESULT = "FAIL";

-- 13. Display all student details whose percentage is less than 60.

SELECT * FROM STUDENT 
WHERE PERCENTAGE < 60;