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
