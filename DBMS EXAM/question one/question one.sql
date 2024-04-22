CREATE TABLE employees(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	salary DECIMAL(10,2),
	department_id INT,
	hire_date DATE

);
	SELECT*FROM employees;	

CREATE TABLE departments(
	id INT PRIMARY KEY,
	name VARCHAR(255)
);
SELECT*FROM departments;

INSERT INTO departments(id,name)
VALUES
(1,'Engineering'),
(2,'Sales'),
(3,'Marketing'),
(4,'HR');
SELECT*FROM departments;

INSERT INTO employees(id,name,salary,department_id,hire_date)
VALUES
(1,'Alice',60000.00,1,'2020-01-01'),
(2,'Bob',70000.00,1,'2020-01-15'),
(3,'Charlie',80000.00,2,'2020-02-01'),
(4,'Dave',90000.00,3,'2020-02-15'),
(5,'Eve',100000.00,4,'2020-03-01');
SELECT*FROM employees;

-- using an alias e for shortneting employee name
SELECT e.name, e.salary
FROM employees e
JOIN (
  SELECT department_id, MAX(salary) as maximum_salary
  FROM employees
  GROUP BY department_id
) maximum_salary_per_dept
ON e.department_id = maximum_salary_per_dept.department_id
AND e.salary = maximum_salary_per_dept.max_salary
LIMIT 1;


SELECT e.name, e.hire_date
FROM employees e
JOIN (
  SELECT department_id, MIN(hire_date) as min_hire_date
  FROM employees
  GROUP BY department_id
) min_hire_date_per_dept
ON e.department_id = min_hire_date_per_dept.department_id
AND e.hire_date = min_hire_date_per_dept.min_hire_date
LIMIT 1;


SELECT e.name, e.salary
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) as avg_salary
  FROM employees
  GROUP BY department_id
) avg_salary_per_dept
ON e.department_id = avg_salary_per_dept.department_id
WHERE e.salary > avg_salary_per_dept.avg_salary;

	
	