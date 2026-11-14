-- DML : DATA MANIPULATION LANGUAGE
use playground;
-- CREATE TABLE USERS(
-- u_id INT PRIMARY KEY NOT NULL,
-- u_name varchar(50) NOT NULL,
-- u_mail varchar(25) UNIQUE NOT NULL,
-- is_active BOOLEAN DEFAULT TRUE

-- );

-- ALTER TABLE USERS modify column u_id INT auto_increment;

-- USING INSERT COMMAND
-- INSERT INTO users (u_id,u_name,u_mail,is_active) VALUES
-- (2,'RAHUL','rahul@abc.com',TRUE),
-- (3,'AMIT','amit@abc.com',TRUE),
-- (4,'PRIYA','priya@abc.com',TRUE),
-- (5,'NEHA','neha@abc.com',FALSE),
-- (6,'ROHIT','rohit@abc.com',TRUE),
-- (7,'ANKIT','ankit@abc.com',TRUE),
-- (8,'PANKAJ','pankaj@abc.com',FALSE),
-- (9,'SNEHA','sneha@abc.com',TRUE),
-- (10,'VIKAS','vikas@abc.com',TRUE)


-- UPDATION

-- UPDATE USERS SET u_name='RIYA', u_mail='riya@abc.com' WHERE u_id=9;

-- DELETION : WILL DELETE THE inactive user
-- DELETE FROM users where u_id=5

-- REPLACE COMMAND
REPLACE INTO users (u_id, u_name, u_mail, is_active)
VALUES (1, 'DEEPAK', 'deepak@gmail.com', TRUE);

REPLACE INTO users (u_id, u_name, u_mail, is_active)
VALUES (2, 'RAHUL', 'rahul@gmail.com', FALSE);

select * FROM users 



