-- =========================================================
-- RIGHT JOIN (RIGHT OUTER JOIN)
-- Returns every row from the RIGHT table and matching rows
-- from the LEFT table. Unmatched left-side columns become NULL.
-- RIGHT JOIN can usually be rewritten as LEFT JOIN by reversing
-- the table order.
-- =========================================================

USE sql_joins_practice;

-- Example 1: Show every department, even departments with no students.
SELECT
    s.student_name,
    d.department_name
FROM students AS s
RIGHT JOIN departments AS d
    ON s.department_id = d.department_id
ORDER BY d.department_id, s.student_name;

-- Equivalent LEFT JOIN (often easier to read):
SELECT
    s.student_name,
    d.department_name
FROM departments AS d
LEFT JOIN students AS s
    ON d.department_id = s.department_id;
