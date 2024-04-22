CREATE TABLE employees (
id INT PRIMARY KEY,
	Name VARCHAR(255),
	Age INT,
	Address VARCHAR(255)
	
 );
 SELECT*FROM employees;


INSERT INTO employees (id, Name, Age, Address)
VALUES
  (1001, 'Rohan', 26, 'Delhi'),
  (1002, 'Ankit', 30, 'Gurgaon'),
  (1003, 'Gaurav', 27, 'Mumbai'),
  (1004, 'Raja', 32, 'Nagpur');

SELECT * FROM employees;


SELECT * FROM employees WHERE id = 1004;

SELECT * FROM employees;

SELECT * FROM employees WHERE Name LIKE 'R%';

SELECT id, Name, Age FROM employees ORDER BY Age DESC;

SELECT id, Name, Age FROM employees ORDER BY Age ASC;

SELECT DISTINCT Address FROM employees;




