-- ============================================================
-- CREATE DATABASE
-- Create a database for person details and generate the following queries.
-- ============================================================
DROP DATABASE IF EXISTS PERSONS_INFO;
CREATE DATABASE PERSONS_INFO;
USE PERSONS_INFO;

-- ============================================================
-- CREATE TABLE
-- Create table person.
-- Fill person name, person ID, person address and phone number, DOB.
-- ============================================================


CREATE TABLE PERSONS(
    NAME VARCHAR(20),
    PHONE_NUMBER BIGINT,
    PERSONS_ID INT PRIMARY KEY,
    PERSONS_ADDRESS VARCHAR(50),
    DOB DATE
);

-- ============================================================
-- INSERT RECORDS
-- Insert 10 records into the person table.
-- ============================================================

INSERT INTO PERSONS VALUES
('ARUN', 9876543210, 1, 'BANGALORE', '1990-01-01'),
('RAVI', 9876543211, 2, 'CHENNAI', '1992-02-02'),
('KIRAN', 9876543212, 3, 'LUCKNOW', '1994-03-03'),
('PRIYA', 9876543213, 4, 'DELHI', '1996-04-04'),
('SNEHA', 9876543214, 5, 'MANDYA', '1998-05-05'),
('RAJ', 9876543215, 6, 'LUCKNOW', '2000-06-06'),
('ANITA', 9876543216, 7, 'PUNE', '2002-07-07'),
('VIKRAM', 9876543217, 8, 'MYSORE', '2004-08-08'),
('MEERA', 9876543218, 9, 'LUCKNOW', '2006-09-09'),
('RAHUL', 9876543219, 10, 'CHANDIGARH', '2008-10-10');

-- ============================================================
-- 1. Retrieve ID, name and address from the person table.
-- ============================================================
SELECT PERSONS_ID , NAME ,PERSONS_ADDRESS FROM PERSONS;

-- ============================================================
-- 2. Retrieve all columns in different sequence.
-- ============================================================
SELECT NAME, DOB ,PERSONS_ADDRESS,PERSONS_ID FROM PERSONS;

-- ============================================================
-- 3. Display person name in alphabetical order.
-- ============================================================
SELECT NAME FROM PERSONS ORDER BY NAME ASC;

-- ============================================================
-- 4. Sort the name in descending order.
-- ============================================================
SELECT NAME FROM PERSONS ORDER BY NAME DESC;

-- ============================================================
-- 5. List all distinct name in person table.
-- ============================================================

 SELECT DISTINCT NAME FROM PERSONS;

 -- ============================================================
-- 6. List who are living in Bangalore.
-- ============================================================

 SELECT NAME FROM PERSONS WHERE PERSONS_ADDRESS='BANGALORE'; 

 -- ============================================================
-- 7. List person name, ID, address, where phone number = 9876543213.
-- ============================================================

SELECT NAME ,PERSONS_ID,PERSONS_ADDRESS FROM PERSONS WHERE PHONE_NUMBER = 9876543213;

-- ============================================================
-- 8. List who are living in LUCKNOW.
-- ============================================================

SELECT NAME FROM PERSONS WHERE PERSONS_ADDRESS = 'LUCKNOW';

-- ============================================================
-- 9. List person name who are living either Mysore or in Mandya.
-- ============================================================

SELECT NAME FROM PERSONS WHERE PERSONS_ADDRESS IN ('MYSORE','MANDYA');

-- ============================================================
-- 10. List person details whose ID is 6,7 and 8.
-- ============================================================

SELECT NAME FROM PERSONS WHERE PERSONS_ID IN(6,7,8);

-- ============================================================
-- 11. List all person names whose name starts with letter S.
-- ============================================================

SELECT NAME FROM PERSONS WHERE NAME LIKE 'S%';

-- ============================================================
-- 12. List all person names whose name ends with A.
-- ============================================================

SELECT NAME FROM PERSONS WHERE NAME LIKE '%A';

-- ============================================================
-- 13. Count the number of records in the person table.
-- ============================================================

SELECT COUNT(*) AS TOTAL_RECORDS FROM PERSONS;

-- ============================================================
-- 14. Write query to change the person name from ARUN to ARUNA.
-- ============================================================

UPDATE PERSONS SET NAME='ARUNA' WHERE PERSONS_ID=1;
 SELECT * FROM PERSONS;

 -- ============================================================
-- 15. Write a query to delete one particular row.
-- ============================================================

DELETE FROM PERSONS WHERE PERSONS_ID=10;
SELECT * FROM PERSONS;

-- ============================================================
-- 16. Write a query to add new field into the table (email).
-- ============================================================

 ALTER TABLE PERSONS ADD EMAIL VARCHAR(50);
 SELECT * FROM PERSONS;

 -- ============================================================
-- 17. Display name, date of birth, phone number, whose ID is 1.
-- ============================================================

SELECT NAME, DOB, PHONE_NUMBER FROM PERSONS WHERE PERSONS_ID=1;

-- ============================================================
-- 18. List person ID whose name consists of five letters.
-- ============================================================
SELECT PERSONS_ID FROM PERSONS  WHERE LENGTH(NAME=5);

-- ============================================================
-- 19. Write query to change address from Mangalore to Hassan.
-- ============================================================

UPDATE PERSONS SET PERSONS_ADDRESS='BANGALORE' WHERE PERSONS_ID=7;
SELECT * FROM PERSONS;