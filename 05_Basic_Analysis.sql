-- Student Performance Management System
-- 05_Basic_Analysis.sql

USE student_performance;

-- 1. Total number of students
SELECT COUNT(*) AS total_students
FROM Students;


-- 2. Number of students enrolled in each course
SELECT
    course_id,
    COUNT(*) AS total_students
FROM Enrollment
GROUP BY course_id;


-- 3. Average score of each student
SELECT
    student_id,
    AVG(score) AS avg_score
FROM Marks
GROUP BY student_id;


-- 4. Top 5 performing students
SELECT
    student_id,
    AVG(score) AS avg_score
FROM Marks
GROUP BY student_id
ORDER BY avg_score DESC
LIMIT 5;


-- 5. Students performing below the overall average
SELECT
    student_id,
    AVG(score) AS avg_score
FROM Marks
GROUP BY student_id
HAVING AVG(score) < (
    SELECT AVG(score)
    FROM Marks
)
ORDER BY avg_score;


-- 6. Course with the highest average score
SELECT
    course_id,
    AVG(score) AS avg_score
FROM Marks
GROUP BY course_id
ORDER BY avg_score DESC
LIMIT 1;


-- 7. Course with the highest number of students
SELECT
    course_id,
    COUNT(*) AS total_students
FROM Enrollment
GROUP BY course_id
ORDER BY total_students DESC
LIMIT 1;


-- 8. Overall average score
SELECT AVG(score) AS overall_average
FROM Marks;