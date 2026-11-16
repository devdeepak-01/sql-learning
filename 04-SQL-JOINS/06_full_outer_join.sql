-- =========================================================
-- FULL OUTER JOIN
-- A FULL OUTER JOIN returns:
--   1. Matching rows from both tables
--   2. Unmatched rows from the left table
--   3. Unmatched rows from the right table
--
-- IMPORTANT: MySQL does NOT support FULL OUTER JOIN directly.
-- Use LEFT JOIN + UNION + RIGHT JOIN to achieve the same result.
-- UNION removes duplicate matching rows.
-- =========================================================

USE sql_joins_practice;

SELECT
    s.student_id,
    s.student_name,
    d.department_id,
    d.department_name
FROM students AS s
LEFT JOIN departments AS d
    ON s.department_id = d.department_id

UNION

SELECT
    s.student_id,
    s.student_name,
    d.department_id,
    d.department_name
FROM students AS s
RIGHT JOIN departments AS d
    ON s.department_id = d.department_id;

-- Result includes:
-- - Students with a matching department
-- - Kabir, who has no department
-- - Civil department, which has no students
