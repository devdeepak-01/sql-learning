-- SQL Learning Journey
-- Section: 01 Basics
-- Purpose: Creating a sample database and table



USE playground;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO students
VALUES
(1, 'Rahul', 20, 'Kolkata', 85),
(2, 'Amit', 21, 'Delhi', 72),
(3, 'Priya', 19, 'Mumbai', 90),
(4, 'Sneha', 20, 'Kolkata', 65),
(5, 'Arjun', 22, 'Delhi', 78),
(6, 'Riya', 19, 'Mumbai', 88),
(7, 'Karan', 21, 'Pune', 55),
(8, 'Ananya', 20, 'Kolkata', 95);
