-- =========================================================
-- EXTRA PRACTICE QUERIES
-- Try predicting the output before executing each query.
-- =========================================================

USE sql_joins_practice;

-- 1. List students and their department names.
SELECT s.student_name, d.department_name
FROM students s
JOIN departments d ON s.department_id = d.department_id;

-- 2. List courses and instructor names, including unassigned courses.
SELECT c.course_name, i.instructor_name
FROM courses c
LEFT JOIN instructors i ON c.instructor_id = i.instructor_id;

-- 3. Find departments that currently have no students.
SELECT d.department_id, d.department_name
FROM departments d
LEFT JOIN students s ON d.department_id = s.department_id
WHERE s.student_id IS NULL;

-- 4. Find students who scored 85 or above.
SELECT s.student_name, c.course_name, e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.marks >= 85;

-- 5. Show each instructor and the courses they teach.
SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c ON i.instructor_id = c.instructor_id;

-- 6. Count courses in each department, including departments with zero courses.
SELECT d.department_name, COUNT(c.course_id) AS course_count
FROM departments d
LEFT JOIN courses c ON d.department_id = c.department_id
GROUP BY d.department_id, d.department_name;

-- 7. Find pairs of different students from the same department.
-- This is a self-join on the students table.
SELECT
    s1.student_name AS student_one,
    s2.student_name AS student_two,
    s1.department_id
FROM students s1
JOIN students s2
    ON s1.department_id = s2.department_id
   AND s1.student_id < s2.student_id
WHERE s1.department_id IS NOT NULL;
