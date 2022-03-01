CREATE DATABASE students;

USE students;

-- create a table

CREATE TABLE users (rollNo INT (10) primary key,student_name varchar(45), student_email varchar(40));

CREATE TABLE codekata (rollNo INT (10) primary key,problems_solved int(100));

CREATE TABLE attendance ( rollNo INT (10) primary key,attendance_in_percentage int(100));
 
CREATE TABLE topics (topics varchar(40));
  
CREATE TABLE task (rollNo INT (10) primary key,Tasks completed int(50));
   
CREATE TABLE company_drives (rollNo INT (10) primary key,companies_attend int(50));
    
CREATE TABLE mentors (mentors_name varchar(45) ,alotted_students int(10));
     
CREATE TABLE students_activated_courses (rollNo INT (10) primary key,student_name varchar(45),in_active_course varchar(100));
      
CREATE TABLE courses  (course_name varchar(45));
       
-- insert some values

INSERT INTO users VALUES (201,'john','john@mail.com'),(202,'mary','mary@mail.com'),(203,'tim','tim@mail.com'),(204,'joe','joe@mail.com'),(205,'ria','ria@mail.com');

INSERT INTO codekata VALUES (201,55),(202,57),(203,48),(204,79),(205,62);

INSERT INTO attendance VALUES (201,77),(202,75),(203,81),(204,71),(205,92);

INSERT INTO topics VALUES (55),(57),(48),(79),(62);

INSERT INTO task VALUES (201,12),(202,15),(203,20),(204,10),(205,17);

INSERT INTO company_drives VALUES (201,2),(202,1),(203,5),(204,4),(205,3);

INSERT INTO mentors VALUES ('nathon',1),('stan',1),('kate',2),('emma',1),('rick',1);

INSERT INTO students_activated_courses  VALUES (202,'mary','python'),(203,'tim','javascript'),(205,'ria','c++'),(201,'john','python'),(204,'joe','assembly');

INSERT INTO courses VALUES ('python'),('c++'),('javascript'),('Go'),('c#');


-- fetch some values
SELECT * FROM users right join codekata on codekata.rollNo = users.rollNo;
SELECT users.student_name,company_drives.companies_attend FROM users left join company_drives on users.rollNo = company_drives.rollNo; 
SELECT mentors_name FROM mentors;
SELECT * FROM mentors;
SELECT * FROM courses left join students_activated_courses on courses.course_name = students_activated_courses.in_active_course;

