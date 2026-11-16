-- =========================================================
-- SELF JOIN
-- A table is joined with itself.
-- Use aliases to treat the same table as two logical tables.
-- Common use: employee-manager relationships, referrals, etc.
-- =========================================================

USE sql_joins_practice;

-- Create a separate employee table for the self-join example.
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    manager_id INT NULL,
    CONSTRAINT fk_employee_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_id, employee_name, manager_id)
VALUES
    (1, 'Priya Manager', NULL),
    (2, 'Amit Developer', 1),
    (3, 'Neha Tester', 1),
    (4, 'Rohan Analyst', 2),
    (5, 'Mira Designer', 2);

-- e = employee; m = that employee's manager.
-- LEFT JOIN ensures the top-level manager also appears.
SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.employee_id
ORDER BY e.employee_id;
