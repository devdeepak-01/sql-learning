-- =========================================================
-- SQL JOINS PRACTICE PROJECT
-- Database: MySQL 8+
-- File 1: Create the database and all required tables
-- Run this file first.
-- =========================================================

CREATE DATABASE IF NOT EXISTS sql_joins_practice;
USE sql_joins_practice;

-- Drop tables in child-to-parent order so the script can be rerun.
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS departments;

-- A department can have many students, courses and instructors.
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(80) NOT NULL UNIQUE,
    building VARCHAR(80)
);

-- An instructor belongs to one department.
CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2),
    CONSTRAINT fk_instructor_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- A student belongs to one department.
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    department_id INT,
    admission_year YEAR,
    CONSTRAINT fk_student_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- A course is offered by a department and taught by an instructor.
-- instructor_id is nullable to demonstrate courses without an assigned instructor.
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    department_id INT,
    instructor_id INT NULL,
    CONSTRAINT chk_course_credits CHECK (credits > 0),
    CONSTRAINT fk_course_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT fk_course_instructor
        FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id)
);

-- Junction table: students and courses have a many-to-many relationship.
-- One student can enrol in many courses; one course can contain many students.
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    marks DECIMAL(5,2) NULL,
    CONSTRAINT chk_marks CHECK (marks IS NULL OR (marks BETWEEN 0 AND 100)),
    CONSTRAINT uq_student_course UNIQUE (student_id, course_id),
    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);
