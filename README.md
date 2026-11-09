# SQL Learning Journey

Welcome to my SQL Learning Journey!

This repository contains my SQL practice, queries, and progress as I learn database management using **MySQL and MySQL Workbench**.

My goal is to strengthen my SQL fundamentals through consistent practice and hands-on database exercises.

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- Git
- GitHub

## 📚 Learning Progress

### 01. SQL Basics

## 01. SQL Basics

Currently learning and practising fundamental SQL commands using MySQL Workbench.

| No. | Topic | What It Does | Example Query |
|---|---|---|---|
| 01 | SELECT, FROM | Retrieves selected columns from a table. | `SELECT * FROM students;` |
| 02 | WHERE | Filters records based on specified conditions. | `SELECT * FROM students WHERE age > 20;` |
| 03 | LIMIT | Restricts the number of returned records. | `SELECT * FROM students LIMIT 5;` |
| 04 | DISTINCT | Returns unique values without duplicate records. | `SELECT DISTINCT city FROM students;` |
| 05 | ORDER BY | Sorts records in ascending or descending order. | `SELECT * FROM students ORDER BY marks DESC;` |
| 06 | BETWEEN | Filters values within a specified range. | `SELECT * FROM students WHERE marks BETWEEN 70 AND 90;` |
| 07 | IN | Matches values against a specified list. | `SELECT * FROM students WHERE city IN ('Kolkata', 'Delhi');` |
| 08 | IS NULL | Checks whether a column contains NULL values. | `SELECT * FROM students WHERE city IS NULL;` |

**Status:** 8 topics completed.

**Practice Database:** `sql_practice`

**Table Used:** `students`

### Upcoming Topics

- Aggregate Functions
- GROUP BY and HAVING
- SQL Joins
- Subqueries
- Constraints
- Views
- Indexes
- Advanced SQL

## 📂 Repository Structure

```text
sql-learning-journey/
│
├── README.md
│
└── 01-Basics/
    ├── 00-setup.sql
    ├── 01-select-from.sql
    ├── 02-where.sql
    ├── 03-limit.sql
    ├── 04-distinct.sql
    ├── 05-order-by.sql
    ├── 06-between.sql
    ├── 07-in.sql
    └── 08-is-null.sql
```

## 🎯 Learning Goals

- Build strong SQL fundamentals.
- Practise writing efficient SQL queries.
- Understand relational databases.
- Learn database design and management.
- Apply SQL concepts through practical projects.

## 📈 Progress

This repository will be updated regularly as I learn new SQL concepts and work on practical database projects.

**Learning consistently, one query at a time!**
