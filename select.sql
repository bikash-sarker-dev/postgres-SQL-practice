-- Active: 1747418681259@@127.0.0.1@5432@ph
CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

select * from students ORDER BY first_name DESC;

INSERT INTO students (first_name, age, grade, course, email, dob, blood_group, country) VALUES
    ('Alice', 18, 'A', 'Mathematics', 'alice@example.com', '2006-04-15', 'A+', 'USA'),
('Bob', 19, 'B', 'Physics', 'bob@example.com', '2005-11-02', 'B-', 'Canada'),
('Charlie', 17, 'A', 'Chemistry', 'charlie@example.com', '2007-06-23', 'O+', 'UK'),
('Diana', 20, 'C', 'Biology', 'diana@example.com', '2004-01-08', 'AB+', 'Australia'),
('Ethan', 18, 'B', 'Computer Science', 'ethan@example.com', '2006-09-12', 'A-', 'Germany'),
('Fiona', 19, 'A', 'English', 'fiona@example.com', '2005-12-30', 'B+', 'India'),
('George', 21, 'D', 'History', 'george@example.com', '2003-05-05', 'O-', 'France'),
('Hannah', 20, 'A', 'Psychology', 'hannah@example.com', '2004-03-19', 'AB-', 'Japan'),
('Ian', 18, 'B', 'Economics', 'ian@example.com', '2006-07-28', 'A+', 'Brazil'),
('Julia', 17, 'A', 'Art', 'julia@example.com', '2007-10-17', 'O+', 'South Africa');




select * from students ORDER BY first_name ASC;
select * from students ORDER BY age ASC;
select * from students ORDER BY dob ASC;

select country from students ORDER BY country DESC;


SELECT DISTINCT country from students;
SELECT DISTINCT blood_group from students;

SELECT * FROM students age
    WHERE country = 'USA';


SELECT * FROM students age
    WHERE grade = 'A' AND course = 'Mathematics';


SELECT * FROM students age
    WHERE blood_group = 'A+';

SELECT * FROM students age
    WHERE blood_group = 'A+';

SELECT * FROM students 
    WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students 
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students
    WHERE age != 18;

SELECT upper(first_name) FROM students;


SELECT upper(first_name) as first_name_in_upper_case, * FROM students;
SELECT concat(first_name, ' ', course) FROM students;


SELECT avg(age) FROM students;

SELECT max(age) FROM students;

SELECT min(age) FROM students;

SELECT sum(age) FROM students;

SELECT count(*) FROM students;

SELECT max(length(first_name)) FROM students;


SELECT * FROM students
    WHERE NOT country = 'USA';



-- SELECT * FROM students
--     WHERE email IS NULL;


SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK';

SELECT * FROM students WHERE country IN('USA', 'UK')

SELECT * FROM students WHERE country NOT IN('USA', 'UK')

SELECT * from students
    WHERE age BETWEEN 17 and 18;

SELECT * from students
    WHERE dob BETWEEN '2006-01-01' and '2010-01-01' ORDER BY dob;



SELECT * from students
    WHERE first_name LIKE '%ia '


SELECT * from students
    WHERE first_name LIKE 'A%';

SELECT * from students
    WHERE first_name LIKE '____a';


SELECT * from students
    WHERE first_name ILIKE 'a%';

SELECT * from students LIMIT 6;


SELECT * from students LIMIT 3 OFFSET 2 * 0;

SELECT * from students LIMIT 3 OFFSET 2 *  1;

SELECT * from students LIMIT 3 OFFSET 2 *  2;

SELECT * from students;

DELETE from students
    WHERE grade = 'B';

UPDATE students 
    set email = 'default@gmail.com', age = 30
    WHERE student_id = 7;

SELECT * FROM students