-- Active: 1747418681259@@127.0.0.1@5432@ph
--show time zone 

SELECT now();

CREATE Table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ VALUES('2024-05-25 10:10:00', '2024-01-12 10:10:00');
SELECT * FROM timeZ;

SELECT CURRENT_DATE;

SELECT now()::date

SELECT now()::time

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT * FROM students;
SELECT country, count(*), avg(age) FROM students
    GROUP BY country
    HAVING avg(age) > 19;


SELECT extract(YEAR FROM dob) as birth_year
    FROM students
    GROUP BY birth_year;



SELECT extract(YEAR FROM dob) as birth_year , count(*)
    FROM students
    GROUP BY birth_year;