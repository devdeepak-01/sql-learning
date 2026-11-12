use playground;
CREATE TABLE course(
course_id INT auto_increment PRIMARY KEY,
course_name varchar(50) NOT NULL UNIQUE,
description text,
duration INT CHECK (duration>0),
start_date date not null,
 end_date DATE,
 constraint chek_date check(end_date is NULL or end_date > start_date),
 is_Active boolean DEFAULT TRUE

);


