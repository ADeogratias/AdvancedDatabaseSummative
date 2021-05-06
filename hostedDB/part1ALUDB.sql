/* Creating DB */
CREATE DATABASE aludb;

/* Creating Tables */
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


/* The queries below have been tested and they work */

/* Alternative to Creating Tables works in PHPMyadmin*/

CREATE TABLE `department` (
  `department_id` Integer NOT NULL PRIMARY KEY,
  `department_name` VARCHAR (50) NOT NULL
);

CREATE TABLE `classroom` (
  `classroom_id` Integer NOT NULL PRIMARY KEY,
  `classroom_name` VARCHAR (50) NOT NULL,
  `classroom_capactity` VARCHAR (50) NOT NULL
);

CREATE TABLE `cohort` (
  `cohort_id` Integer PRIMARY KEY,
  `year_Group` VARCHAR (50),
  `cohort_number` VARCHAR (50)
);

CREATE TABLE `staff` (
  `staff_id` Integer NOT NULL PRIMARY KEY,
  `staff_name` VARCHAR (50) NOT NULL,
  `staff_email` VARCHAR (50) NOT NULL
);

CREATE TABLE `course` (
  `course_id` Integer NOT NULL PRIMARY KEY,
  `course_name` VARCHAR (50),
  `staff_id` Integer,
  `department_id` Integer,
  `requirements` VARCHAR (50),
  FOREIGN KEY (staff_id) REFERENCES aludb.staff(staff_id),
  FOREIGN KEY (department_id) REFERENCES aludb.department(department_id)
);

CREATE TABLE `student` (
  `student_id` Integer NOT NULL PRIMARY KEY,
  `cohort_id` Integer,
  `student_name` VARCHAR (50) NOT NULL,
  `student_email` VARCHAR (50) NOT NULL,
   FOREIGN KEY (cohort_id) REFERENCES aludb.cohort(cohort_id)
);

CREATE TABLE `student_has_course` (
  `student_id` Integer,
  `course_id` Integer,
   FOREIGN KEY (student_id) REFERENCES aludb.student(student_id),
   FOREIGN KEY (course_id) REFERENCES aludb.course(course_id)  
);

CREATE TABLE `schedule` (
  `schedule_id` Integer NOT NULL PRIMARY KEY ,
  `course_id` Integer,
  `classroom_id` Integer,
  `startTime` VARCHAR (50) NOT NULL,
  `endTime` VARCHAR (50) NOT NULL,
  `datehappening` date NOT NULL,
  FOREIGN KEY (course_id) REFERENCES aludb.course(course_id), 
  FOREIGN KEY (classroom_id) REFERENCES aludb.classroom(classroom_id)  
);



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

-- Inserting entries into classroom table
INSERT INTO aludb.classroom VALUES (1, 'Kigali', 20);
INSERT INTO aludb.classroom VALUES (2, 'Kinshasa', 25);
INSERT INTO aludb.classroom VALUES (3, 'Nairobi', 26);
INSERT INTO aludb.classroom VALUES (4, 'Bujumbura', 19);
INSERT INTO aludb.classroom VALUES (5, 'Kampala', 14);
INSERT INTO aludb.classroom VALUES (6, 'Lusaka', 15);
INSERT INTO aludb.classroom VALUES (7, 'Port Louis', 10);
INSERT INTO aludb.classroom VALUES (8, 'Johburg', 50);
INSERT INTO aludb.classroom VALUES (9, 'Wakanda', 40);
INSERT INTO aludb.classroom VALUES (10, 'Africa', 19);

-- Inserting entries into Cohort table
INSERT INTO aludb.cohort VALUES (1, 4, 1);
INSERT INTO aludb.cohort VALUES (2, 4, 2);
INSERT INTO aludb.cohort VALUES (3, 4, 1);
INSERT INTO aludb.cohort VALUES (4, 4, 1);
INSERT INTO aludb.cohort VALUES (5, 4, 1);
INSERT INTO aludb.cohort VALUES (6, 4, 1);
INSERT INTO aludb.cohort VALUES (7, 4, 1);
INSERT INTO aludb.cohort VALUES (8, 4, 1);
INSERT INTO aludb.cohort VALUES (9, 4, 1);
INSERT INTO aludb.cohort VALUES (10, 4, 1);

-- Inserting entries into Staff table
INSERT INTO aludb.staff VALUES (1, 'Sir Robert', 'robert@alustaff.com');
INSERT INTO aludb.staff VALUES (2, 'Sir Thadee', 'thadee@alustaff.com');
INSERT INTO aludb.staff VALUES (3, 'Sir Tatenda', 'tatenda@alustaff.com');
INSERT INTO aludb.staff VALUES (4, 'Sir Donart', 'donart@alustaff.com');
INSERT INTO aludb.staff VALUES (5, 'Sir Clovis', 'clovis@alustaff.com');
INSERT INTO aludb.staff VALUES (6, 'Sir Kuda', 'kuda@alustaff.com');
INSERT INTO aludb.staff VALUES (7, 'Sir Kumar', 'kumar@alustaff.com');
INSERT INTO aludb.staff VALUES (8, 'Sir Obed', 'obed@alustaff.com');
INSERT INTO aludb.staff VALUES (9, 'Sir Biased', 'biased@alustaff.com');
INSERT INTO aludb.staff VALUES (10, 'Sir Notgood', 'notgood@alustaff.com');

-- Inserting entries into Course table
INSERT INTO aludb.course VALUES (1, 'Data Mining', 1, 1, 'Computer');
INSERT INTO aludb.course VALUES (2, 'Programming I - Java', 2, 1, 'Computer');
INSERT INTO aludb.course VALUES (3, 'Programming II - Python', 3, 1, 'Computer');
INSERT INTO aludb.course VALUES (4, 'Programming III - C', 4, 1, 'Computer');
INSERT INTO aludb.course VALUES (5, 'Databases Systems', 5, 1, 'Computer');
INSERT INTO aludb.course VALUES (6, 'Forestry', 6, 3,'Computer');
INSERT INTO aludb.course VALUES (7, 'System Design', 7, 1, 'Computer');
INSERT INTO aludb.course VALUES (8, 'Tech and Society', 9, 1, 'Computer');
INSERT INTO aludb.course VALUES (9, 'Growth', 8, 1, 'Computer');
INSERT INTO aludb.course VALUES (10, 'Life Hacks CS', 10, 2, 'Computer');

-- Inserting entries into Students table
INSERT INTO aludb.student VALUES (1, 1, 'Deo', 'deo@alustudent.com');
INSERT INTO aludb.student VALUES (2, 1, 'lor', 'lor@alustudent.com');
INSERT INTO aludb.student VALUES (3, 1, 'John', 'john@alustudent.com');
INSERT INTO aludb.student VALUES (4, 1, 'Kevin', 'kevin@alustudent.com');
INSERT INTO aludb.student VALUES (5, 1, 'lora', 'lora@alustudent.com');
INSERT INTO aludb.student VALUES (6, 1, 'Sam', 'sam@alustudent.com');
INSERT INTO aludb.student VALUES (7, 2, 'steve', 'steve@alustudent.com');
INSERT INTO aludb.student VALUES (8, 2, 'Pit', 'pit@alustudent.com');
INSERT INTO aludb.student VALUES (9, 2, 'Mary', 'mystudent@alustudent.com');
INSERT INTO aludb.student VALUES (10, 2, 'You', 'you@alustudent.com');

-- Inserting entries into student_hascourse table
INSERT INTO aludb.student_has_course VALUES (1, 1);
INSERT INTO aludb.student_has_course VALUES (2, 2);
INSERT INTO aludb.student_has_course VALUES (3, 1);
INSERT INTO aludb.student_has_course VALUES (4, 1);
INSERT INTO aludb.student_has_course VALUES (5, 1);
INSERT INTO aludb.student_has_course VALUES (6, 2);
INSERT INTO aludb.student_has_course VALUES (7, 2);
INSERT INTO aludb.student_has_course VALUES (8, 2);
INSERT INTO aludb.student_has_course VALUES (9, 1);
INSERT INTO aludb.student_has_course VALUES (10, 1);

-- Inserting entries into schedule table
INSERT INTO aludb.schedule VALUES (1, 1, 1, '8:00', '9:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (2, 2, 2, '10:00', '11:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (3, 3, 3, '12:00', '13:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (4, 4, 4, '14:00', '15:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (5, 5, 5, '16:00', '17:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (6, 6, 6, '18:00', '19:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (7, 7, 7, '20:00', '21:00', '2021-04-20');
INSERT INTO aludb.schedule VALUES (8, 8, 8, '8:00', '9:00', '2021-04-21');
INSERT INTO aludb.schedule VALUES (9, 9, 9, '10:00', '11:00', '2021-04-21');
INSERT INTO aludb.schedule VALUES (10, 10, 10, '12:00', '13:00', '2021-04-21');


