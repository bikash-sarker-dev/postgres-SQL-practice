-- Active: 1747418681259@@127.0.0.1@5432@ph@public
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);

DROP Table employees

INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES 
    ('John Doe', 1, 60000.00, '2022-01-10'),
    ('Jane Smith', 2, 75000.50, '2021-05-22'),
    ('Bob Johnson', 3, 80000.75, '2020-11-15'),
    ('Alice Williams', 4, 90000.25, '2019-08-03'),
    ('David Lee', 5, 65000.50, '2020-03-18'),
    ('Sara Brown', 6, 70000.00, '2021-09-28'),
    ('Mike Miller', 7, 55000.75, '2022-02-05'),
    ('Emily Davis', 8, 95000.00, '2018-12-12'),
    ('Chris Wilson', 9, 72000.50, '2020-06-30'),
    ('Amy White', 10, 68000.25, '2021-11-09'),
    ('John Johnson', 1, 62000.00, '2022-01-15'),
    ('Jessica Thompson', 2, 78000.50, '2021-06-05'),
    ('Michael Harris', 3, 85000.75, '2020-11-25'),
    ('Emma Martinez', 4, 92000.25, '2019-09-15'),
    ('James Taylor', 5, 67000.50, '2020-04-08'),
    ('Sophia Anderson', 6, 72000.00, '2021-10-10'),
    ('William Jackson', 7, 56000.75, '2022-02-10'),
    ('Olivia Nelson', 8, 97000.00, '2018-12-20'),
    ('Daniel White', 9, 73000.50, '2020-07-05'),
    ('Ava Wilson', 10, 69000.25, '2021-11-15'),
    ('Matthew Brown', 1, 63000.00, '2022-01-20'),
    ('Emily Garcia', 2, 76000.50, '2021-06-15'),
    ('Christopher Allen', 3, 86000.75, '2020-12-05'),
    ('Madison Hall', 4, 93000.25, '2019-09-25'),
    ('Andrew Cook', 5, 68000.50, '2020-04-18'),
    ('Abigail Torres', 6, 73000.00, '2021-10-20'),
    ('Ethan Murphy', 7, 57000.75, '2022-02-15'),
    ('Ella King', 8, 98000.00, '2018-12-28'),
    ('Nathan Rivera', 9, 74000.50, '2020-07-15'),
    ('Mia Roberts', 10, 70000.25, '2021-11-20');


SELECT * FROM employees

SELECT * FROM employees 
    WHERE salary > 63000
    ;


SELECT * FROM employees 
    WHERE department_name  = 'HR'
    ;


SELECT *, (SELECT sum(salary) from employees) from employees

SELECT sum(salary) FROM employees

SELECT employee_name, sum(salary) as Total_sumtion FROM employees
    GROUP BY employee_name;


CREATE View dept_age_avg
AS
SELECT department_id, avg(salary)  FROM employees
    GROUP BY department_id

SELECT * FROM dept_age_avg


SELECT * FROM employees

SELECT count(*) from employees

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
as
$$
    SELECT count(*) from employees;
$$;

SELECT emp_count();

CREATE FUNCTION delete_emp()
    RETURNS void
    LANGUAGE SQL
    AS
    $$
        DELETE from employees WHERE employee_id = 30
    $$;

SELECT delete_emp()


CREATE FUNCTION delete_emp_para(p_emp_id int)
    RETURNS void
    LANGUAGE SQL
    AS
    $$
        DELETE from employees WHERE employee_id = p_emp_id
    $$;

SELECT delete_emp_para(25)


CREATE Procedure remove_emp_var(p_id_emp INT)
    LANGUAGE plpgsql
    as 
    $$
        DECLARE
        test_var INT;
        BEGIN 
            SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_id_emp;
            DELETE from employees WHERE employee_id = test_var;

            RAISE NOTICE 'employee remove successfully!';
        END
    $$;


call remove_emp_var(7)

SELECT * FROM employees