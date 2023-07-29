CREATE TABLE empolyees(
	id INT PRIMARY KEY, 
	name VARCHAR (50) NOT NULL,
	deparment VARCHAR (50),
	age INT CHECK (age>=18),
	salary DECIMAL(10,2),
	hire_date DATE
);

INSERT INTO0empolyees (id,name, deparment,age, salary,hire_date)VALUES
(1, 'John Doe', 'HR', 30, 5000.00, '2020-05-15'),
(2, 'Jane Smith', 'Finance', 28, 5500.00, '2019-10-10'),
(3, 'Michael Johnson', 'Sales', 35, 6000.00, '2018-08-22'),
(4, 'Emily Adams', 'Marketing', 25, 4800.00, '2021-01-05'),
(5, 'Robert Brown', 'IT', 32, 6200.00, '2017-03-12'),
(6, 'Sarah Lee', 'HR', 29, 5300.00, '2019-06-30'),
(7, 'William Wilson', 'Finance', 26, 5800.00, '2020-09-18'),
(8, 'Linda Davis', 'Sales', 40, 6500.00, '2015-12-03'),
(9, 'James Miller', 'IT', 27, 6000.00, '2018-11-25'),
(10, 'Jennifer Taylor', 'Marketing', 31, 5100.00, '2016-07-20');

SELECT * FROM empolyees;
SELECT id,name,deparment FROM empolyees;
SELECT name AS isim FROM empolyees;
ALTER TABLE empolyees RENAME COLUMN name TO isim;
ALTER TABLE empolyees RENAME COLUMN isim TO name;
SELECT * FROM empolyees;
SELECT * FROM empolyees WHERE deparment='HR';
SELECT name,age,deparment FROM empolyees WHERE deparment='IT';
SELECT name,deparment FROM empolyees WHERE age>30;
SELECT * FROM empolyees WHERE age>25 and age <30;

CREATE VIEW hr_d AS 
SELECT * FROM empolyees WHERE deparment='HR';
---ORDER BY SIRALAMA
SELECT name,hire_date FROM empolyees ORDER BY hire_date DESC;
CREATE VIEW myview AS
SELECT name,hire_date FROM empolyees ORDER BY hire_date ASC, name ASC;
SELECT * FROM empolyees ORDER BY salary DESC;
SELECT * FROM empolyees WHERE deparment IN ( 'HR', 'Finance') ORDER BY deparment ASC, name ASC;
SELECT * FROM empolyees WHERE NOT deparment ='HR';
INSERT INTO empolyees (id, name, daparment) VALUES (14, 'fARUK',30, 'IT');
UPDATE empolyees SET salary=65000 WHERE id=14;

SELECT name ||''|| age AS "NEW_DATE",salary FROM empolyees;--CONCATİNATİON OPERATÖR

ALTER TABLE empolyees 
ADD COLUMN name_age VARCHAR(100);

UPDATE empolyees 
SET name_age =name ||''|| age;

SELECT * FROM empolyees;

SELECT AVG (Salary) FROM empolyees;
SELECT ROUND (Salary) FROM empolyees;
SELECT *,
       ROUND((SELECT AVG(salary) FROM employees) - salary, 2) AS average_salary
FROM employees;














 