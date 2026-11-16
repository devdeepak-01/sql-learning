-- =========================================================
-- MULTIPLE TABLE JOINS
-- Join more than two related tables in one query.
-- The ON clause specifies how each table is related.
-- =========================================================

USE sql_joins_practice;

-- Student + department + enrolment + course + instructor.
-- LEFT JOIN is used so that missing optional relationships
-- (such as an unassigned instructor) do not remove the row.
SELECT
    s.student_name,
    d.department_name AS student_department,
    c.course_name,
    e.enrollment_date,
    e.marks,
    i.instructor_name
FROM students AS s
LEFT JOIN departments AS d
    ON s.department_id = d.department_id
LEFT JOIN enrollments AS e
    ON s.student_id = e.student_id
LEFT JOIN courses AS c
    ON e.course_id = c.course_id
LEFT JOIN instructors AS i
    ON c.instructor_id = i.instructor_id
ORDER BY s.student_id, c.course_id;

-- Aggregate example: number of students enrolled in each course.
-- COUNT(e.student_id) returns 0 for courses with no enrolments.
SELECT
    c.course_name,
    COUNT(e.student_id) AS enrolled_students,
    ROUND(AVG(e.marks), 2) AS average_marks
FROM courses AS c
LEFT JOIN enrollments AS e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY c.course_id;

-- Join with a condition in ON:
-- Keep all students, but match only enrolments with marks >= 80.
-- Putting the condition in ON preserves students with no qualifying mark.
SELECT
    s.student_name,
    e.course_id,
    e.marks
FROM students AS s
LEFT JOIN enrollments AS e
    ON s.student_id = e.student_id
   AND e.marks >= 80
ORDER BY s.student_id;
