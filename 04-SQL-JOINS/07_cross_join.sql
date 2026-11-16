-- =========================================================
-- CROSS JOIN
-- Returns the Cartesian product: every row of table 1 is
-- combined with every row of table 2.
-- If table 1 has 5 rows and table 2 has 4 rows, result = 20 rows.
-- No ON condition is required.
-- =========================================================

USE sql_joins_practice;

-- Example 1: Generate every possible student-course combination.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
CROSS JOIN courses AS c;

-- Example 2: Count the combinations.
SELECT COUNT(*) AS total_combinations
FROM students
CROSS JOIN courses;
