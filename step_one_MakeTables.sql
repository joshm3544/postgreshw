DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_mngr;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE dept_mngr(
	dept_no VARCHAR,
	emp_no INT,
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE employees(
	emp_no INT,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender CHAR(1),
	hire_date VARCHAR
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	from_date VARCHAR,
	to_date VARCHAR
);

CREATE TABLE titles(
	emp_no INT,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);