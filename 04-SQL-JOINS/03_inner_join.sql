-- =========================================================
-- INNER JOIN
-- Returns only rows that have matching values in BOTH tables.
-- Syntax:
-- SELECT columns
-- FROM table1
-- INNER JOIN table2 ON table1.common_column = table2.common_column;
-- =========================================================

USE sql_joins_practice;

-- Example 1: Show each student with their department.
-- Students with department_id NULL or without a matching department are excluded.
SELECT
    s.student_id,
    s.student_name,
    d.department_name
FROM students AS s
INNER JOIN departments AS d
    ON s.department_id = d.department_id;

-- Example 2: Show each student's enrolled courses and marks.
-- Three tables are joined: students -> enrollments -> courses.
SELECT
    s.student_name,
    c.course_name,
    e.marks
FROM students AS s
INNER JOIN enrollments AS e
    ON s.student_id = e.student_id
INNER JOIN courses AS c
    ON e.course_id = c.course_id
ORDER BY s.student_name, c.course_name;
