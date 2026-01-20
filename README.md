# Student Marks Management and Analysis System (Oracle SQL)

This project implements a Student Marks Management and Analysis System usin Oracle SQL.
The system stores information about students, subjects, and their marks in a relational database and provides analytical queries to evaluate student performance, subject-wise averages, and ranks the topper.
The project demonstrates core database concepts including relational schema design, primary and foreign keys, multi-table joins, aggregation functions, and subqueries;

## Table Design
The database cosists of the following tables:
1. students
   - student_id (Primary Key)
   - full_name
   - class_name
     
2. subjects
   - subject_id (Primary Key)
   - subject_name

3. marks
   - mark_id (Primary Key)
   - student_id (Foreign Key -> students.student_id)
   - subject_id (Foreign Key -> subjects.subject_id)
   - marks_obtained

These tables are linked using foreign key constraints to maintain referential integrity.

## Key Queries Implemented
The project includes SQL queries to perform the following operations:
- Display student-wise marks with subject names using JOINs
- Calculate average marks of each student
- Find the class topper (highest average)
- Calculate subject-wise class averages

## What I Learned
Through this project, I learned:
- How to design relational database schema
- How to use primary keys and foreign keys
- How to insert and commit data in Oracle
- How to write multi-table JOIN queries
- How to use aggregation functions like AVG
- How to use GROUP BY and ORDER BY
- How to use subquries to find the topper

THis project strengthened my understanding of practtical SQL and database design.

## Tools Used
- Oracle SQL Developer
- Oracle Autonomous Database (Free Tier)
- Oracle SQL
