\# Student Performance Management System



\## 1. Project Description



The Student Performance Management System is a MySQL-based relational database project designed to manage student enrollment and academic performance data for an educational institute.



The project stores student details, course information, student enrollments, and course scores. SQL queries are used to analyze student and course performance and generate useful insights.



\## 2. Business Problem



An educational institute needs a structured database to manage student and course information instead of maintaining the data in separate files.



The institute wants to answer questions such as:



\- How many students are enrolled?

\- How many students are enrolled in each course?

\- What is the average score of each student?

\- Who are the top-performing students?

\- Which students are performing below the overall average?

\- Which course has the highest average score?

\- Which course has the highest number of enrollments?

\- What is the overall average score?



\## 3. Objectives



\- Design a relational database for student and course management.

\- Maintain relationships between students and courses.

\- Store student performance scores.

\- Use SQL to analyze academic performance.

\- Generate meaningful insights from the data.



\## 4. Database Structure



The database contains four tables:



\### Students

Stores student information.



\- student\_id

\- student\_name



\### Courses

Stores course information.



\- course\_id

\- course\_name

\- course\_details



\### Enrollment

Stores the courses in which students are enrolled.



\- student\_id

\- course\_id



\### Marks

Stores the scores obtained by students in their enrolled courses.



\- student\_id

\- course\_id

\- score



\## 5. Relationships



\- One student can enroll in multiple courses.

\- One course can have multiple students.

\- The Enrollment table manages the many-to-many relationship between Students and Courses.

\- Marks records the score of a student for a particular course.



\## 6. Technologies Used



\- MySQL

\- MySQL Workbench

\- SQL

\- dbdiagram.io

\- Mockaroo



\## 7. SQL Concepts Used



\- CREATE DATABASE

\- CREATE TABLE

\- Primary Keys

\- Foreign Keys

\- Composite Primary Keys

\- INSERT

\- SELECT

\- COUNT()

\- AVG()

\- GROUP BY

\- HAVING

\- ORDER BY

\- LIMIT

\- JOIN

\- CASE

\- Subqueries

\- CTE

\- Window Functions

\- RANK()



\## 8. Project Data



The database contains:



\- 250 students

\- 10 courses

\- 454 enrollments

\- 454 course performance records



The student data was generated as synthetic sample data for project and learning purposes.



\## 9. Project Structure



```text

Student-Performance-Management-System/
│
├── README.md
├── 01_Create_Database.sql
├── 02_Create_Tables.sql
├── 03_Insert_Data.sql
├── 04_Data_Validation.sql
├── 05_Basic_Analysis.sql
├── 06_Advanced_Analysis.sql
├── ER_Diagram.png
├── ER_Diagram.dbml
└── Project_Insights.md
