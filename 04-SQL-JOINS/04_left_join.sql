-- =========================================================
-- LEFT JOIN (LEFT OUTER JOIN)
-- Returns every row from the LEFT table and matching rows
-- from the RIGHT table. If no match exists, right-side columns
-- contain NULL.
-- =========================================================

USE sql_joins_practice;

-- Example 1: Show ALL students, including students with no department.
SELECT
    s.student_id,
    s.student_name,
    d.department_name
FROM students AS s
LEFT JOIN departments AS d
    ON s.department_id = d.department_id;

-- Example 2: Find students who have NOT enrolled in any course.
-- The LEFT JOIN keeps all students; unmatched enrollment rows are NULL.
-- WHERE e.enrollment_id IS NULL filters only those unmatched students.
SELECT
    s.student_id,
    s.student_name
FROM students AS s
LEFT JOIN enrollments AS e
    ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

-- Example 3: Show all courses, even if nobody has enrolled in them.
SELECT
    c.course_name,
    s.student_name,
    e.marks
FROM courses AS c
LEFT JOIN enrollments AS e
    ON c.course_id = e.course_id
LEFT JOIN students AS s
    ON e.student_id = s.student_id;
