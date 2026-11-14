use playground;
-- USE OF ALTER COMMAND: ADDED EMAIL NEW COLUMN
-- ALTER TABLE course ADD EMAIL varchar(50);
-- select * FROM course;

-- USE OF ALTER MODIFY: MODIFED THE COURSE_ID 
-- ALTER TABLE course MODIFY course_id INT AUTO_INCREMENT;
-- ALTER TABLE course MODIFY course_id INT NOT NULL AUTO_INCREMENT;

-- USE OF ALTER RENAME: RENAMED COURSE_ID to C_ID
 -- ALTER TABLE course rename column course_id to c_id;
 
 -- RENAMING A TABLE :
  -- RENAME TABLE course TO courses;
  -- THIS GIVES ERROR ABOUT CONSTRAINT CHECKING ONE OF MY LEARNING
 --  ALTER TABLE courses rename column duration TO course_duration;
 
 -- STEP 1- DROP THE check constraint
 -- ALTER TABLE courses drop CHECK courses_chk_1 ;
 -- STEP2- RENAME THE COLUMN
 -- ALTER TABLE courses rename column duration to course_duration;
 -- STEP 3 - GIVE THE CHECK CONSTRAINT AGAIN WITH CHANGED COLUMN NAME
 ALTER TABLE courses ADD constraint courses_chk_1 check (course_duration>0);
 
 select * FROM courses;
 DROP TABLE courses;