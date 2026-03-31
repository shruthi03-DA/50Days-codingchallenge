#DDL
#creating database
Create database students;
#activate database
use students
CREATE TABLE students (student_id INT PRIMARY KEY, student_name VARCHAR(50),gender VARCHAR(10),
 city VARCHAR(50), join_year INT);
 describe students
#DML
INSERT INTO students VALUES(1, 'Anu', 'F', 'Tumakuru', 2024),(2, 'Ravi', 'M', 'Bengaluru', 2023), 
(3, 'Kiran', 'M', 'Tumakuru', 2024), (4, 'Sneha', 'F', 'Mysuru', 2023), (5, 'Manu', 'M', 'Tumakuru', 2022);
#DQL
select * from students

CREATE TABLE courses (course_id INT PRIMARY KEY, course_name VARCHAR(100), department VARCHAR(50));
describe students
#DML
INSERT INTO courses VALUES (101, 'SQL Basics', 'Computer Science'), (102, 'Excel for Analysts', 'Commerce'), (103, 'Statistics', 'Mathematics');
select * from courses

CREATE TABLE marks (mark_id INT PRIMARY KEY, student_id INT, course_id INT, marks INT,
 FOREIGN KEY (student_id) REFERENCES students(student_id), FOREIGN KEY (course_id) REFERENCES courses(course_id));
 describe marks
INSERT INTO marks VALUES (1, 1, 101, 85), (2, 2, 101, 72), (3, 3, 101, 90), (4, 4, 102, 88),
(5, 5, 103, 67), (6, 1, 103, 79), (7, 2, 102, 81);
select * from marks

1. SELECT * FROM students;
2. SELECT student_name, city FROM students;
3. SELECT * FROM courses;
4. SELECT * FROM students WHERE city = 'Tumakuru';
5. SELECT * FROM students WHERE join_year = 2024;
6. SELECT * FROM students WHERE gender = 'F';
7. SELECT * FROM marks WHERE marks > 80;
8. SELECT course_name FROM courses WHERE department = 'Commerce';
9. SELECT * FROM students WHERE city = 'Bengaluru';
10. SELECT * FROM marks WHERE marks BETWEEN 70 AND 90;
11. SELECT * FROM students ORDER BY student_name ASC;
12. SELECT * FROM marks ORDER BY marks DESC;
13. SELECT * FROM students ORDER BY join_year DESC;
14. SELECT COUNT(*) FROM students;
15. SELECT AVG(marks) FROM marks;
16. SELECT MAX(marks) FROM marks;
17. SELECT MIN(marks) FROM marks; 
18. SELECT SUM(marks) FROM marks;