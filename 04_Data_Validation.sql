-- Student Performance Management System
-- 04_Data_Validation.sql

USE student_performance;

-- 1. Check number of students
SELECT COUNT(*) AS total_students
FROM Students;

-- 2. Check number of courses
SELECT COUNT(*) AS total_courses
FROM Courses;

-- 3. Check number of enrollments
SELECT COUNT(*) AS total_enrollments
FROM Enrollment;

-- 4. Check number of marks records
SELECT COUNT(*) AS total_marks
FROM Marks;

-- 5. Check for invalid marks
SELECT *
FROM Marks
WHERE score < 0 OR score > 100;

-- 6. Check for marks without matching enrollment
SELECT m.*
FROM Marks m
LEFT JOIN Enrollment e
    ON m.student_id = e.student_id
   AND m.course_id = e.course_id
WHERE e.student_id IS NULL;

-- 7. Check for duplicate enrollments
SELECT student_id, course_id, COUNT(*) AS duplicate_count
FROM Enrollment
GROUP BY student_id, course_id
HAVING COUNT(*) > 1;