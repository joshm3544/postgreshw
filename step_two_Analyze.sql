--1. Employee Details
SELECT employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--2. Employees Hired in 1986
SELECT employees.hire_date, employees.last_name, employees.first_name 
FROM employees
WHERE employees.hire_date LIKE '%1986';

--3. Department Managers
SELECT dept_mngr.dept_no, dept_mngr.emp_no, employees.last_name, employees.first_name, 
dept_mngr.from_date, dept_mngr.to_date, departments.dept_name
FROM dept_mngr
INNER JOIN employees ON
employees.emp_no=dept_mngr.emp_no
INNER JOIN departments ON
departments.dept_no=dept_mngr.dept_no;

--4. Employee Department Names
SELECT employees.emp_no, employees.last_name, employees.first_name, 
dept_emp.dept_no, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no;

--5. Employees Named Hercules B.
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. Sales Department Employees
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales';

--7. Sales and Development Employees
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--8. Frequency of Employee Last Name
--SELECT * FROM employees;

SELECT last_name, count(emp_no) 
FROM employees
GROUP BY last_name
ORDER BY count(emp_no) desc;
