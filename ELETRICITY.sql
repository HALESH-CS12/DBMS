-- Create Database
-- Create database electricity_info.
DROP DATABASE IF EXISTS ELETRICITY;

CREATE DATABASE ELETRICITY;

USE ELETRICITY;

-- Create Table
-- Create table electricitybill with the following fields:
-- RR_no VARCHAR(5)
-- Customer_name VARCHAR(5)
-- Billing_date DATE
-- Units INT(5)


CREATE TABLE ELECTRICITYBILL (
    RR_no VARCHAR(5),
    Customer_name VARCHAR(50),
    Billing_date DATE,
    Units INT
);

-- 1. Check the structure of the table by using the DESC command.
DESC ELECTRICITYBILL;


-- 2. Insert 5 records into the table.

INSERT INTO ELECTRICITYBILL VALUES
('RR001', 'Arun',  '2026-09-01', 50),
('RR002', 'Ravi',  '2026-09-02', 100),
('RR003', 'Kiran', '2026-09-03', 120),
('RR004', 'Priya', '2026-09-04', 200),
('RR005', 'Sneha', '2026-09-05', 300);


-- 3. Add two fields into the table:
-- Bill_amount
-- Due_date

ALTER TABLE ELECTRICITYBILL
ADD Bill_amount DECIMAL(10,2),
ADD Due_date DATE;

DESC ELECTRICITYBILL;

-- 4. Compute the bill amount for each customer based on the following rules:
-- Minimum amount = 250
-- First 100 units = ₹4.50 per unit
-- Above 100 units = ₹5.50 per unit

UPDATE ELECTRICITYBILL
SET Bill_amount =
CASE
    WHEN Units <= 100 AND Units * 4.50 < 250 THEN 250
    WHEN Units <= 100 THEN Units * 4.50
    ELSE (100 * 4.50) + ((Units - 100) * 5.50)
END;

-- 5. Compute the due date based on the billing date + 15 days.

UPDATE ELECTRICITYBILL
SET Due_date = DATE_ADD(Billing_date, INTERVAL 15 DAY);


-- 6. List all the bills generated.

SELECT * FROM ELECTRICITYBILL;