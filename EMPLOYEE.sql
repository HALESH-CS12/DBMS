-- ============================================================
-- Create a database named employee_db.
-- ============================================================
DROP DATABASE IF EXISTS EMPLOYEE_DB;
CREATE DATABASE EMPLOYEE_DB;
USE EMPLOYEE_DB;

-- ============================================================
-- Create a table named employee_info with the following fields:
-- ID, NAME, EDU_QUAL, SALARY, and DESIGNATION.
-- ============================================================

CREATE TABLE EMPLOYEE
(ID INT(5),
NAME VARCHAR(15),
EDU_QUAL VARCHAR(20),
SALARY DECIMAL (10,2),
DESI VARCHAR(20)
); 


-- ============================================================
-- Insert 5 records into the employee_info table.
-- ============================================================

INSERT INTO EMPLOYEE VALUES
(1,'HARI','BE',40000,'SOFTWARE ENGINEER'),
(2, 'HARSHA','MCS',50000,'DEVELOPER'),
(3, 'MOKSHA','MSC',30000,'CLEARK'),
(4, 'SHASHANK', 'MCA',45000,'TESTER'),
(5, 'SAGAR', 'MSC', 40000, 'SOFTWARE ENGINEER');

-- ============================================================
-- Display all employee details.
-- ============================================================

SELECT * FROM EMPLOYEE;

-- ============================================================
-- Alter the employee_info table and add CITY, PROJECT, and
-- WORK_LOCATION fields.
-- ============================================================

ALTER TABLE EMPLOYEE
ADD CITY VARCHAR(30),
ADD PROJECT VARCHAR(30),
ADD WORK_LOC VARCHAR(30);

-- ============================================================
-- Update the CITY, PROJECT, and WORK_LOCATION of all 5
-- employees using their IDs. Use the cities Bangalore,
-- Hassan, Mysore, and Mandya, and projects Project 1,
-- Project 2, and Project 3.
-- ============================================================

UPDATE EMPLOYEE
SET CITY = "HASSAN",
     PROJECT = "PROJECT 1",
    WORK_LOC = "BENGALURU" 
WHERE ID = 1;

UPDATE EMPLOYEE 
SET CITY = "MYSORE",
    PROJECT = "PROJECT 2",
    WORK_LOC = "MYSORE"
    WHERE ID = 2;

UPDATE EMPLOYEE 
SET CITY = "MANDYA",
    PROJECT = "PROJECT 3",
    WORK_LOC = "MYSORE"
    WHERE ID = 3;

UPDATE EMPLOYEE 
SET CITY = "BENGALURU",
    PROJECT = "PROJECT 4",
    WORK_LOC = "BENGALURU"
    WHERE ID = 4;

    UPDATE EMPLOYEE 
SET CITY = "TUMAKUR",
    PROJECT = "PROJECT 5",
    WORK_LOC = "TUMAKUR"
    WHERE ID = 5;

    
-- ============================================================
-- Display all employee details.
-- ============================================================

SELECT * FROM EMPLOYEE;

-- ============================================================
-- 1. Count the number of Software Engineers in the table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_SOFTWARE_ENGINEER
FROM EMPLOYEE
WHERE DESI = "SOFTWARE ENGINEER";

-- ============================================================
-- 2. Display the name and ID of those employees who live
-- in Mysore.
-- ============================================================
 
 SELECT ID, NAME FROM EMPLOYEE
 WHERE CITY = "MYSORE";

 -- ============================================================
-- 3. Count the number of employees who work on Project 1
-- and Project 2.
-- ============================================================

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE
WHERE PROJECT IN ('PROJECT 1','PROJECT 2');

-- ============================================================
-- 4. List the employees who live in Hassan but work
-- in Bangalore.
-- ============================================================

SELECT * FROM EMPLOYEE 
WHERE CITY= "HASSAN"
AND WORK_LOC = "BENGALURU";

