CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

-- Question 1:
-- Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name
-- <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME 
FROM org.worker;

-- Question 2:
-- Write an SQL query to fetch unique values of DEPARTMENT from the worker table
SELECT DISTINCT(DEPARTMENT) FROM org.worker;

-- Question 3:
-- Write an SQL query to print the first three characters of FIRST_NAME from the Worker table.
SELECT SUBSTR(FIRST_NAME,1,3) FROM org.worker;

-- Question 4:
-- Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and
-- prints its length.

SELECT LENGTH(DISTINCT(DEPARTMENT)) FROM org.worker;(ERROR)

-- Question 5:
-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT DESCENDING.

SELECT * FROM org.worker
ORDER BY FIRST_NAME ASC , DEPARTMENT DESC;

-- Question 6:
-- Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”

SELECT * FROM org.worker
WHERE DEPARTMENT = "Admin";

-- Question 7:
-- Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

SELECT * FROM org.worker
WHERE SALARY BETWEEN 100000 AND 500000;

-- Question 8:
-- Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

SELECT CONCAT(FIRST_NAME, '  ',LAST_NAME) AS Workers_name, SALARY 
FROM org.worker
WHERE SALARY BETWEEN 50000 AND 100000;

-- Question 9:
-- Write an SQL query to show only even rows from the WORKER table.

SELECT * FROM org.worker 
WHERE WORKER_ID IN(SELECT WORKER_ID FROM org.worker WHERE WORKER_ID%2 = 0);

-- Question 10:
-- Write an SQL query to print details of the Workers who joined in Feb’2014.
SELECT * FROM org.worker
WHERE YEAR(JOINING_DATE) = 2014
AND MONTH(JOINING_DATE) = 2;
