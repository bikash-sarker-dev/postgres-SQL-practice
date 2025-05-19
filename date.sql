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