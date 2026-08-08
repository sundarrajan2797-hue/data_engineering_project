
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);
INSERT INTO students (id, name, age, course)
VALUES (1, 'Rahul', 20, 'Computer Science'),
       (2, 'Priya', 21, 'Commerce'),
       (3, 'Arun', 19, 'Computer Science');
SELECT * FROM students;
SELECT * FROM students;
SELECT name, course
FROM students;
SELECT name, course
FROM students;



select * from employee;