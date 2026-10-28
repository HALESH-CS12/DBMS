-- ============================================================
-- CREATE DATABASE
-- Create database company.
-- ============================================================

DROP DATABASE  IF EXISTS COMPANY;
CREATE DATABASE COMPANY;
USE COMPANY;

-- ============================================================
-- CREATE EMPLOYEE TABLE
-- Create table employee with fields ID, name, salary,
-- designation and destination.
-- ============================================================

CREATE TABLE EMP
(
    ID INT PRIMARY KEY,
    ENAME VARCHAR(15),
    SALARY DECIMAL(10,2),
    DESIG VARCHAR(20),
    DEST VARCHAR(20),
    SUPERVISOR_ID INT
);

-- ============================================================
-- CREATE DEPARTMENT TABLE
-- Create table department, department number, department name,
-- and employee ID.
-- ============================================================

CREATE TABLE DEPT
(
    DID INT,
    DEPT_NO INT,
    DEPT_NAME VARCHAR(30)
);

-- ============================================================
-- 1. Insert five records into the employee and department table.
-- ============================================================
INSERT INTO EMP VALUES 
(1, 'HARI', 40000, 'DEVELOPER','MANDYA', NULL),
(2, 'HARSHA',50000, 'MANAGER','HASSAN',11),
(3, 'MOKSHA',20000,'CLEARK','HASSAN',22),
(4, 'SHASHANK',30000,'Researcher','MYSORE',33),
(5, 'SURAJ',60000,'HR EXECUTIVE','BANGALURU',NULL);

INSERT INTO DEPT VALUES
(1,111,'SALES'),
(2,222,'RESEARCH'),
(3,333,'SALES'),
(4,444,'DEVELOPMENT'),
(5,555,'HR');

-- ============================================================
-- 2. Display ID, name and designation from employee table.
-- ============================================================

SELECT ID, ENAME, DESIG FROM EMP;

-- ============================================================
-- 3. Retrieve all the columns in different sequence.
-- ============================================================

SELECT ENAME, SUPERVISOR_ID, ID, DESIG, SALARY, DEST FROM EMP;

-- ============================================================
-- 4. Display employee name in alphabetical order.
-- ============================================================

SELECT ENAME FROM EMP
ORDER BY ENAME ASC;

-- ============================================================
-- 5. Sort the employee name in descending order.
-- ============================================================

SELECT ENAME FROM EMP
ORDER BY ENAME DESC;

-- ============================================================
-- 6. Display the name of employees who was working as manager.
-- ============================================================

SELECT ENAME FROM EMP
WHERE DESIG = "MANAGER";


-- ============================================================
-- 7. Display employee name who not working in department number 3.
-- ============================================================

SELECT E.ENAME
FROM EMP E
JOIN DEPT D ON E.ID = D.DID
WHERE D.DEPT_NO <> 333;

-- ============================================================
-- 8. Display employee name and salary whose salary is more than 30,000.
-- ============================================================

SELECT ENAME, SALARY FROM EMP
WHERE SALARY > 30000;

-- ============================================================
-- 9. List employee name, department number, who are working
-- at department number 444.
-- ============================================================

SELECT E.ENAME , D.DEPT_NO
FROM EMP E
JOIN DEPT D ON E.ID = D.DID
WHERE D.DEPT_NO = 444;

-- ============================================================
-- 10. List all employees name with salary is greater than 20,000
-- and working in department 555.
-- ============================================================

SELECT E.ENAME
FROM EMP E
JOIN DEPT D ON E.ID = D.DID
WHERE E.SALARY > 20000
AND D.DEPT_NO = 555;

-- ============================================================
-- 11. List employee name who are living either in Mandya or Mysore.
-- ============================================================

SELECT ENAME FROM EMP
WHERE DEST IN ('MANDYA','MYSORE');

-- ============================================================
-- 12. Display employee data, who does not belong to department 555 and 444.
-- ============================================================

SELECT E.* FROM EMP E
JOIN DEPT D ON E.ID = D.DID
WHERE D.DEPT_NO NOT IN (555, 444);

-- ============================================================
-- 13. List employee details through IDs 1 and 3.
-- ============================================================

SELECT * FROM EMP 
WHERE ID IN (1, 3);

-- ============================================================
-- 14. List different destination available in Employee table.
-- =========================================================

SELECT DISTINCT DEST FROM EMP;\

-- ============================================================
-- 15. Count the number of records in the employee table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_EMP FROM EMP;

-- ============================================================
-- 16. Find the average salary in the employee table.
-- ============================================================

SELECT AVG(SALARY) AS AVG FROM EMP;

-- ============================================================
-- 17. Find the total salary in employee table.
-- ============================================================

SELECT SUM(SALARY) AS TOTAL_SALARY FROM EMP;


-- ============================================================
-- 18. Find the matching sales in employee table.
-- ============================================================

SELECT E.ENAME
FROM EMP E
JOIN DEPT D ON E.ID = D.DID 
WHERE D.DEPT_NAME ="SALES";

-- ============================================================
-- 19. Find the minimum salary in employee table.
-- ============================================================

SELECT MIN(SALARY) AS MIN_SALARY FROM EMP;


-- ============================================================
-- 20. Add a new attribute in the table, change address
-- Bangalore to Hassan.
-- ============================================================
 
 ALTER TABLE EMP
 ADD ADDRESS VARCHAR(30);

 UPDATE EMP
 SET ADDRESS = DEST;
 SELECT * FROM EMP;
 
 UPDATE EMP
 SET ADDRESS ="BANGALURU"
 WHERE ADDRESS = "HASSAN";

 SELECT * FROM EMP;

 -- ============================================================
-- 21. Display name of all employees who work for research department.
-- ============================================================
  
SELECT E.ENAME 
FROM EMP E
JOIN DEPT D ON E.ID = D.DID
WHERE D.DEPT_NAME ='RESEARCH';

-- ============================================================
-- 22. Display all employees details whose salary is in between
-- 30,000 and 40,000.
-- ============================================================
 
SELECT * FROM EMP
WHERE SALARY BETWEEN 30000 AND 40000;

-- ============================================================
-- 23. Display the name of the person who do not have supervisor.
-- ============================================================

SELECT ENAME FROM EMP
WHERE SUPERVISOR_ID IS NULL;