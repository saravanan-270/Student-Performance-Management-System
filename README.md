# Student-Performance-Management-System-MySQL

A **Student Performance Management System built using MySQL** to manage student information, course details, enrollments, and academic performance. The project demonstrates how a relational database can be designed and used to analyze academic data through SQL.

## 📌 Project Overview

This project simulates an educational institute where students can enroll in multiple courses and receive scores for their enrolled courses. The database is structured using four related tables: `Students`, `Courses`, `Enrollment`, and `Marks`.

The `Enrollment` table manages the relationship between students and courses, while the `Marks` table stores the performance of students in each course. SQL queries are used to combine and analyze this information to generate useful academic insights.

## 🎯 Objectives

* Design a structured relational database for managing student and course information.
* Maintain student enrollment and course performance records.
* Establish relationships between students and courses using primary and foreign keys.
* Analyze student performance using SQL queries.
* Compare student and course performance using aggregate and analytical functions.
* Identify meaningful patterns such as top-performing students and high-performing courses.

## 📊 Data

The project contains **250 students, 10 courses, 454 enrollments, and 454 performance records**. The student data is synthetically generated using Mockaroo and is used for learning and portfolio purposes.

The database includes:

* Student details such as student ID and name.
* Course details including course name and course information.
* Enrollment records connecting students with their selected courses.
* Marks representing the scores obtained by students in their enrolled courses.

## 🔗 Database Structure

The database contains four related tables:

* **Students** – Stores the details of students.
* **Courses** – Stores available courses and their details.
* **Enrollment** – Connects students with the courses they are enrolled in.
* **Marks** – Stores the scores obtained by students for their respective courses.

A student can enroll in multiple courses, and each course can have multiple students. The `Enrollment` table handles this many-to-many relationship, while the `Marks` table records the performance for each student-course combination.

## 🔍 SQL Analysis

The project uses SQL queries to analyze the academic data and answer practical questions such as:

* How many students are enrolled in the system?
* How many students are enrolled in each course?
* What is the average score of each student?
* Who are the top-performing students?
* Which students are performing below the overall average?
* Which course has the highest average score?
* Which course has the highest number of enrollments?
* What is the overall average score?
* How can students be ranked based on their performance?

The analysis uses concepts such as **joins, aggregate functions, grouping, filtering, subqueries, CTEs, CASE expressions, and window functions** including `RANK()`.

## 🔄 Project Workflow

* Identify the requirements and analysis questions.
* Design the relational database structure.
* Create the required tables and relationships.
* Apply primary keys, foreign keys, and composite keys.
* Generate and insert sample data.
* Write SQL queries for student, course, and enrollment analysis.
* Analyze the results to generate meaningful academic insights.

## 🛠 Tools Used

The project was developed using **MySQL and MySQL Workbench**. **dbdiagram.io** was used to design and visualize the database structure, while **Mockaroo** was used to generate synthetic student data.
