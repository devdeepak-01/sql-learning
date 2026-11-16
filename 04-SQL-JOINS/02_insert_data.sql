-- =========================================================
-- File 2: Insert sample records
-- Run after 01_create_tables.sql.
-- Explicit IDs make the JOIN examples predictable.
-- =========================================================

USE sql_joins_practice;

INSERT INTO departments
    (department_id, department_name, building)
VALUES
    (1, 'Computer Science', 'Block A'),
    (2, 'Electronics', 'Block B'),
    (3, 'Mathematics', 'Block C'),
    (4, 'Mechanical', 'Block D'),
    (5, 'Civil', 'Block E'); -- Deliberately has no students/instructors/courses.

INSERT INTO instructors
    (instructor_id, instructor_name, department_id, salary)
VALUES
    (1, 'Ananya Sen', 1, 65000.00),
    (2, 'Rahul Das', 1, 62000.00),
    (3, 'Moumita Roy', 2, 60000.00),
    (4, 'Arindam Ghosh', 3, 58000.00),
    (5, 'Sourav Paul', NULL, 50000.00); -- Instructor not assigned to a department.

INSERT INTO students
    (student_id, student_name, email, department_id, admission_year)
VALUES
    (1, 'Aarav Sharma', 'aarav@example.com', 1, 2023),
    (2, 'Diya Roy', 'diya@example.com', 1, 2023),
    (3, 'Ishaan Das', 'ishaan@example.com', 2, 2022),
    (4, 'Riya Sen', 'riya@example.com', 3, 2023),
    (5, 'Kabir Khan', 'kabir@example.com', NULL, 2024); -- Student without a department.

INSERT INTO courses
    (course_id, course_name, credits, department_id, instructor_id)
VALUES
    (1, 'Database Management Systems', 4, 1, 1),
    (2, 'Computer Networks', 3, 1, 2),
    (3, 'Digital Electronics', 4, 2, 3),
    (4, 'Discrete Mathematics', 4, 3, 4),
    (5, 'Engineering Mechanics', 3, 4, NULL); -- Course without an assigned instructor.

INSERT INTO enrollments
    (enrollment_id, student_id, course_id, enrollment_date, marks)
VALUES
    (1, 1, 1, '2026-07-01', 88.50),
    (2, 1, 2, '2026-07-02', 79.00),
    (3, 2, 1, '2026-07-01', 92.00),
    (4, 2, 4, '2026-07-03', 85.00),
    (5, 3, 3, '2026-07-02', 81.00),
    (6, 4, 4, '2026-07-03', NULL);
-- Kabir (student 5) is intentionally not enrolled in any course.
