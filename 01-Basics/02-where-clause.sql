USE playground;
-- COMPARISON OPERATORS 

-- 1. Students whose marks are equal to 85
SELECT * FROM students
WHERE marks = 85;

-- 2. Students whose marks are not equal to 85
SELECT * FROM students
WHERE marks != 85;

-- 3. Students scoring more than 80
SELECT * FROM students
WHERE marks > 80;

-- 4. Students scoring less than 70
SELECT * FROM students
WHERE marks < 70;

-- 5. Students aged 20 or above
SELECT * FROM students
WHERE age >= 20;

-- 6. Students scoring 80 or below
SELECT * FROM students
WHERE marks <= 80;

-- Logical Operator

-- 1. Students aged 20 AND scoring above 80
SELECT * FROM students
WHERE age = 20 AND marks > 80;

-- 2. Students from Kolkata OR Delhi
SELECT * FROM students
WHERE city = 'Kolkata' OR city = 'Delhi';

-- 3. Students NOT from Kolkata
SELECT * FROM students
WHERE NOT city = 'Kolkata';

-- 4. Students aged 20 AND from Kolkata
SELECT * FROM students
WHERE age = 20 AND city = 'Kolkata';

-- 5. Students from Kolkata OR scoring above 90
SELECT * FROM students
WHERE city = 'Kolkata' OR marks > 90;

-- 6. Students aged 20 or above AND scoring above 70
SELECT * FROM students
WHERE age >= 20 AND marks > 70;

-- RANGE CHECKING

-- 1. Students scoring between 70 and 90
SELECT * FROM students
WHERE marks BETWEEN 70 AND 90;

-- 2. Students aged between 19 and 21
SELECT * FROM students
WHERE age BETWEEN 19 AND 21;

-- 3. Students scoring outside the range of 60 to 80
SELECT * FROM students
WHERE marks NOT BETWEEN 60 AND 80;

-- 4. Students whose marks are between 80 and 100
SELECT * FROM students
WHERE marks BETWEEN 80 AND 100;

-- SET MATCHING

-- 1. Students from Kolkata, Delhi or Mumbai
SELECT * FROM students
WHERE city IN ('Kolkata', 'Delhi', 'Mumbai');

-- 2. Students aged 19 or 21
SELECT * FROM students
WHERE age IN (19, 21);

-- 3. Students not from Kolkata or Delhi
SELECT * FROM students
WHERE city NOT IN ('Kolkata', 'Delhi');

-- 4. Students scoring 55, 85 or 95
SELECT * FROM students
WHERE marks IN (55, 85, 95);

-- PATTERN MATCHING 

-- 1. Names starting with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';

-- 2. Names ending with 'a'
SELECT * FROM students
WHERE name LIKE '%a';

-- 3. Names containing 'an'
SELECT * FROM students
WHERE name LIKE '%an%';


-- 5. Names starting with 'R' and ending with 'a'
SELECT * FROM students
WHERE name LIKE 'R%a';

-- NULL CHECKING

-- 1. Display students whose city is NULL
<<<<<<< HEAD
INSERT  into students (student_id,name,age) values(9,"raydu",87), (10,"Jodha",21);
=======
INSERT  into students (student_id,name,age) values(9,"Raydu",87), (10,"Jodha",21);
>>>>>>> 10fb9dbfc587f849a8dee2a1f4d35d991965b6e8
select * from students;

SELECT * FROM students
WHERE city IS NULL;

-- 2. Display students whose city is not NULL
SELECT * FROM students
WHERE city IS NOT NULL;

-- 3. Display students whose marks are NULL
SELECT * FROM students
WHERE marks IS NULL;

-- 4. Display students whose city is NULL OR marks are NULL
SELECT * FROM students
WHERE city IS NULL OR marks IS NULL;

-- 5. Using MySQL ISNULL() function
SELECT * FROM students
<<<<<<< HEAD
WHERE ISNULL(city);
=======
WHERE ISNULL(city);
>>>>>>> 10fb9dbfc587f849a8dee2a1f4d35d991965b6e8
