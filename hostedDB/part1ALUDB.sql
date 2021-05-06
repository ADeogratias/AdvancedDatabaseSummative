/* Creating DB */
CREATE DATABASE aludb;

CREATE TABLE `department` (
  `department_id` Integer PRIMARY KEY,
  `department_name` String
);

CREATE TABLE `course` (
  `course_id` Integer PRIMARY KEY,
  `course_name` String,
  `staff_id` Integer,
  `department_id` Integer,
  `requirements` String
);

CREATE TABLE `staff` (
  `staff_id` Integer PRIMARY KEY,
  `staff_name` String,
  `staff_email` String
);

CREATE TABLE `student` (
  `student_id` Integer PRIMARY KEY,
  `cohort_id` Integer,
  `student_name` String,
  `student_email` String
);

CREATE TABLE `student_has_course` (
  `student_id` Integer,
  `course_id` Integer
);

CREATE TABLE `schedule` (
  `schedule_id` Integer PRIMARY KEY,
  `course_id` Integer,
  `classrom_id` Integer,
  `startTime` datetime,
  `endTime` datetime,
  `datehappening` DATE
);

CREATE TABLE `classroom` (
  `classroom_id` Integer PRIMARY KEY,
  `classroom_name` String,
  `classroom_capactity` String
);

CREATE TABLE `cohort` (
  `cohort_id` Integer PRIMARY KEY,
  `year_Group` Integer,
  `cohort_number` Integer
);

ALTER TABLE `course` ADD FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

ALTER TABLE `course` ADD FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

ALTER TABLE `student` ADD FOREIGN KEY (`cohort_id`) REFERENCES `cohort` (`cohort_id`);

ALTER TABLE `student_has_course` ADD FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

ALTER TABLE `student_has_course` ADD FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

ALTER TABLE `schedule` ADD FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

ALTER TABLE `schedule` ADD FOREIGN KEY (`classrom_id`) REFERENCES `classroom` (`classroom_id`);


/* Inserting entries into Tables */

-- Inserting entries into Departments table
INSERT INTO aludb.department VALUES (1, 'Computer Science');
INSERT INTO aludb.department VALUES (2, 'Global Challenges');
INSERT INTO aludb.department VALUES (3, 'Agricultur');
INSERT INTO aludb.department VALUES (4, 'Elctrical Engineering');
INSERT INTO aludb.department VALUES (5, 'Math');
INSERT INTO aludb.department VALUES (6, 'Business International');
INSERT INTO aludb.department VALUES (7, 'Economics');
INSERT INTO aludb.department VALUES (8, 'Science and Fiction');
INSERT INTO aludb.department VALUES (9, 'Animation');
INSERT INTO aludb.department VALUES (10, 'Art');

course
  `course_id` Integer PRIMARY KEY,
  `course_name` String,
  `staff_id` Integer,
  `department_id` Integer,
  `requirements` String
  
staff
student
student_has_course
schedule
classroom
cohort



-- Inserting entries into Courses table
INSERT INTO alu_db.Courses VALUES (1, 'Advanced Databases', 4, 2, 1, 1);
INSERT INTO alu_db.Courses VALUES (2, 'Databases Systems', 2, 1, 1, 9);
INSERT INTO alu_db.Courses VALUES (3, 'Programming I - Python', 2, 1, 1, 8);
INSERT INTO alu_db.Courses VALUES (4, 'Programming II - Java', 2, 2, 1, 8);
INSERT INTO alu_db.Courses VALUES (5, 'Macro Economics', 3, 2, 3, 10);
INSERT INTO alu_db.Courses VALUES (6, 'Micro Economics', 3, 1, 3, 10);
INSERT INTO alu_db.Courses VALUES (7, 'Design Thinking', 2, 1, 6, 10);
INSERT INTO alu_db.Courses VALUES (8, 'Mobile Development', 3, 1, 1, 5);
INSERT INTO alu_db.Courses VALUES (9, 'Machine Learning', 4, 1, 1, 2);
INSERT INTO alu_db.Courses VALUES (10, 'Data Mining', 4, 2, 1, 2);


-- Inserting entries into Staff table
INSERT INTO alu_db.Staff VALUES (1, 'Robert', 'Last Name', 'Facilitator', 1);
INSERT INTO alu_db.Staff VALUES (2, 'Tatenda', 'Last Name', 'Facilitator', 2);
INSERT INTO alu_db.Staff VALUES (3, 'Thadee', 'Last Name', 'Facilitator', 3);
INSERT INTO alu_db.Staff VALUES (4, 'Donart', 'Last Name', 'Facilitator', 4);
INSERT INTO alu_db.Staff VALUES (5, 'Lucy', 'Last Name', 'Facilitator', 5);
INSERT INTO alu_db.Staff VALUES (6, 'Clovis', 'Last Name', 'Facilitator', 6);
INSERT INTO alu_db.Staff VALUES (7, 'Obed', 'Last Name', 'Facilitator', 7);
INSERT INTO alu_db.Staff VALUES (8, 'Mehdi', 'Last Name', 'Facilitator', 8);
INSERT INTO alu_db.Staff VALUES (9, 'Emelyne', 'Last Name', 'Facilitator', 9);
INSERT INTO alu_db.Staff VALUES (10, 'Ela', 'Last Name', 'Facilitator', 10);

-- Inserting entries into Facilitators table
INSERT INTO alu_db.Facilitators VALUES (1, 'Robert', 'Last Name', 'remail@alueducation.com', 'Male', '1990-01-01', 1, 1, 1);
INSERT INTO alu_db.Facilitators VALUES (2, 'Tatenda', 'Last Name', 'temail@alueducation.com', 'Male', '1990-02-01', 2, 1, 2);
INSERT INTO alu_db.Facilitators VALUES (3, 'Thadee', 'Last Name', 'themail@alueducation.com', 'Male', '1990-03-01', 3, 1, 3);
INSERT INTO alu_db.Facilitators VALUES (4, 'Donart', 'Last Name', 'demail@alueducation.com', 'Male', '1990-04-01', 4, 1, 4);
INSERT INTO alu_db.Facilitators VALUES (5, 'Lucy', 'Last Name', 'lemail@alueducation.com', 'Male', '1990-05-01', 5, 1, 5);
INSERT INTO alu_db.Facilitators VALUES (6, 'Clovis', 'Last Name', 'cemail@alueducation.com', 'Male', '1990-01-01', 6, 1, 6);
INSERT INTO alu_db.Facilitators VALUES (7, 'Obed', 'Last Name', 'oemail@alueducation.com', 'Male', '1990-07-01', 7, 1, 7);
INSERT INTO alu_db.Facilitators VALUES (8, 'Mehdi', 'Last Name', 'memail@alueducation.com', 'Male', '1990-08-01', 8, 1, 8);
INSERT INTO alu_db.Facilitators VALUES (9, 'Emelyne', 'Last Name', 'eemail@alueducation.com', 'Male', '1990-09-01', 9, 1, 9);
INSERT INTO alu_db.Facilitators VALUES (10, 'Ela', 'Last Name', 'elemail@alueducation.com', 'Male', '1990-01-01', 10, 1, 10);

-- Inserting entries into Clubs table
INSERT INTO alu_db.Clubs VALUES (1, 'Robotics Club', 10, 1, 1);
INSERT INTO alu_db.Clubs VALUES (2, 'IoT', 11, 2, 1);
INSERT INTO alu_db.Clubs VALUES (3, 'Data Science Club', 12, 3, 1);
INSERT INTO alu_db.Clubs VALUES (4, 'Entreprenuership Club', 13, 4, 2);
INSERT INTO alu_db.Clubs VALUES (5, 'Consulting Club', 14, 5, 2);
INSERT INTO alu_db.Clubs VALUES (6, 'AI Lab', 15, 6, 1);
INSERT INTO alu_db.Clubs VALUES (7, 'Problem-Solving Lab', 16, 7, 3);
INSERT INTO alu_db.Clubs VALUES (8, 'Club-123', 17, 8, 4);
INSERT INTO alu_db.Clubs VALUES (9, 'Club-124', 18, 9, 4);
INSERT INTO alu_db.Clubs VALUES (10, 'Club-125', 19, 10, 4);

-- Inserting entries into Degree Programs table
INSERT INTO alu_db.DegreePrograms VALUES (1, 'Computer Science', 4, 1);
INSERT INTO alu_db.DegreePrograms VALUES (2, 'Global Challenges', 4, 2);
INSERT INTO alu_db.DegreePrograms VALUES (3, 'International Business & Trade', 6, 1);
INSERT INTO alu_db.DegreePrograms VALUES (4, 'Entreprenuership', 6, 1);
INSERT INTO alu_db.DegreePrograms VALUES (5, 'Physics', 1, 1);
INSERT INTO alu_db.DegreePrograms VALUES (6, 'Chemistry', 1, 1);
INSERT INTO alu_db.DegreePrograms VALUES (7, 'Mathematics', 1, 1);
INSERT INTO alu_db.DegreePrograms VALUES (8, 'Mechanical Engineering', 1, 1);
INSERT INTO alu_db.DegreePrograms VALUES (9, 'Political Science', 3, 1);
INSERT INTO alu_db.DegreePrograms VALUES (10, 'Engineering Science', 1, 1);


-- Inserting entries into Students table
INSERT INTO alu_db.Students VALUES (1, 'Mwiza', 'Last Name', 'mstudent@email.com', 'Male', '1999-01-01', 1, 1);
INSERT INTO alu_db.Students VALUES (2, 'Jorja', 'Last Name', 'jjstudent@email.com', 'Female', '1999-02-01', 1, 1);
INSERT INTO alu_db.Students VALUES (3, 'John', 'Last Name', 'jstudent@email.com', 'Male', '1999-03-01', 1, 1);
INSERT INTO alu_db.Students VALUES (4, 'Kevin', 'Last Name', 'kstudent@email.com', 'Male', '1999-04-01', 2, 1);
INSERT INTO alu_db.Students VALUES (5, 'Patrick', 'Last Name', 'j2student@email.com', 'Male', '1999-05-01', 2, 1);
INSERT INTO alu_db.Students VALUES (6, 'Sam', 'Last Name', 'sstudent@email.com', 'Male', '1999-06-01', 2, 2);
INSERT INTO alu_db.Students VALUES (7, 'Jane', 'Last Name', 'jastudent@email.com', 'Female', '1999-07-01', 3, 2);
INSERT INTO alu_db.Students VALUES (8, 'Philip', 'Last Name', 'pstudent@email.com', 'Male', '1999-08-01', 3, 3);
INSERT INTO alu_db.Students VALUES (9, 'Mary', 'Last Name', 'mystudent@email.com', 'Female', '1999-09-01', 3, 3);
INSERT INTO alu_db.Students VALUES (10, 'Judith', 'Last Name', 'jdstudent@email.com', 'Female', '1999-10-01', 4, 3);







