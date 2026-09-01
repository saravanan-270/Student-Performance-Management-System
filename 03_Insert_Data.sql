-- Student Performance Management System
-- 03_Insert_Data.sql

USE student_performance;

-- Student data:
-- 250 synthetic student records were generated using Mockaroo
-- and imported into the Students table using MySQL Workbench.

-- Course data:
INSERT INTO Courses (course_id, course_name, course_details)
VALUES
(1, 'SQL', 'Relational databases, queries and data management'),
(2, 'Python Programming', 'Programming fundamentals and problem solving'),
(3, 'Java Development', 'Object-oriented programming and application development'),
(4, 'Web Development', 'HTML, CSS, JavaScript and web applications'),
(5, 'Cloud Computing', 'Cloud services, deployment and infrastructure'),
(6, 'Cybersecurity Fundamentals', 'Security principles, threats and protection'),
(7, 'UI/UX Design', 'User interface and user experience design'),
(8, 'Machine Learning', 'Machine learning algorithms and predictive modeling'),
(9, 'DevOps', 'CI/CD, automation and software deployment'),
(10, 'Data Structures & Algorithms', 'Algorithms, complexity and problem solving');

-- Enrollment data:
-- 454 synthetic student-course enrollment records
-- were generated using Mockaroo and imported into Enrollment.

-- Marks data:
-- Scores were generated from the existing Enrollment records
-- using the following SQL statement:

INSERT INTO Marks (student_id, course_id, score)
SELECT
    student_id,
    course_id,
    FLOOR(50 + RAND() * 51)
FROM Enrollment;