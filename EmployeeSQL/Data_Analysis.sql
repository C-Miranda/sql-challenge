-- List the following details of each employee: employee number, last name, first name, sex, and salary. 
SELECT e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM employee AS e
JOIN salary AS s ON 
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name,
e.last_name,
e.hire_dateSELECT e.last_name,
COUNT(last_name)
FROM employee as e
FROM employee AS e
WHERE EXTRACT('year' FROM hire_date) = 1986;

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
FROM dept_manager as dm
JOIN department AS d ON
d.dept_no=dm.dept_no
JOIN employee AS e ON
e.emp_no=dm.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employee as e
JOIN dept_emp AS de ON
de.emp_no=e.emp_no
JOIN department AS d ON
d.dept_no = de.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.last_name,
e.first_name,
e.sex
FROM employee as e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employee AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN department AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employee AS e
JOIN dept_emp AS de ON
e.emp_no = de.emp_no
JOIN department AS d ON
d.dept_no = de.dept_no
WHERE dept_name IN ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name) AS "last_name_count"
FROM employee
GROUP BY last_name
ORDER BY "last_name_count" DESC;



