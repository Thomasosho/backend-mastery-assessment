CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Sales');

INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 1),
(3, 'Charlie', 2),
(4, 'David', 3);

INSERT INTO salaries (employee_id, salary) VALUES
(1, 80000),
(2, 90000),
(3, 75000),
(4, 85000);

SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    s.salary,
    RANK() OVER (PARTITION BY d.department_id ORDER BY s.salary DESC) AS salary_rank
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id
WHERE 
    e.employee_id IN (
        SELECT employee_id 
        FROM salaries 
        WHERE salary > (SELECT AVG(salary) FROM salaries)
    );