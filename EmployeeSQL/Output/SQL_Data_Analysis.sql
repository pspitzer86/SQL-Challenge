-- List the following details of each employee: employee number,
-- last name, first name, sex, and salary.
Select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
	FROM employees e
	INNER JOIN salaries s ON
	e.emp_no = s.emp_no;


-- List first name, last name, and
-- hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986'


-- List the manager of each department with the
-- following information: department number, department name,
-- the manager's employee number, last name, first name.
SELECT d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
	FROM departments d
	INNER JOIN dept_manager dm ON
	d.dept_no = dm.dept_no
	INNER JOIN employees e ON
	dm.emp_no = e.emp_no;


-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
	FROM employees e
	INNER JOIN dept_emp de ON
	e.emp_no = de.emp_no
	INNER JOIN departments d ON
	d.dept_no = de.dept_no;


-- List first name, last name, and sex for employees whose
-- first name is "Hercules" and last names begin with "B."
SELECT first_name,
	last_name,
	sex
	FROM employees
	WHERE first_name = 'Hercules' AND
	last_name LIKE 'B%';
	

-- List all employees in the Sales department,
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
	FROM employees e
	INNER JOIN dept_emp de ON
	e.emp_no = de.emp_no
	INNER JOIN departments d ON
	d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales';


-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.