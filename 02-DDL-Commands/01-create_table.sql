use playground;
CREATE TABLE course(
<<<<<<< HEAD
course_id INT  PRIMARY KEY,
=======
course_id INT auto_increment PRIMARY KEY,
>>>>>>> 10fb9dbfc587f849a8dee2a1f4d35d991965b6e8
course_name varchar(50) NOT NULL UNIQUE,
description text,
duration INT CHECK (duration>0),
start_date date not null,
 end_date DATE,
 constraint chek_date check(end_date is NULL or end_date > start_date),
<<<<<<< HEAD
 is_Active boolean DEFAULT TRUE,
created_at TIMESTAMP DEFAULT current_timestamp
=======
 is_Active boolean DEFAULT TRUE
>>>>>>> 10fb9dbfc587f849a8dee2a1f4d35d991965b6e8

);


