-- Student Performance Management System
-- 06_Advanced_Analysis.sql

USE student_performance;

-- 1. Rank students by average score
SELECT
    student_id,
    AVG(score) AS avg_score,
    RANK() OVER (ORDER BY AVG(score) DESC) AS student_rank
FROM Marks
GROUP BY student_id;


-- 2. Categorize student performance
SELECT
    student_id,
    AVG(score) AS avg_score,
    CASE
        WHEN AVG(score) >= 85 THEN 'Excellent'
        WHEN AVG(score) >= 70 THEN 'Good'
        WHEN AVG(score) >= 50 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance
FROM Marks
GROUP BY student_id;


-- 3. Course performance using CTE
WITH course_performance AS (
    SELECT
        course_id,
        AVG(score) AS avg_score
    FROM Marks
    GROUP BY course_id
)
SELECT *
FROM course_performance
ORDER BY avg_score DESC;


-- 4. Student and course performance
SELECT
    s.student_id,
    s.student_name,
    c.course_name,
    m.score
FROM Marks m
JOIN Students s
    ON m.student_id = s.student_id
JOIN Courses c
    ON m.course_id = c.course_id
ORDER BY m.score DESC;