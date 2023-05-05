-- include salary to employee information 
SELECT i.emp_no, i.last_name, i.first_name, i. sex, f.salary
FROM employees i 
Join salaries f
On (i.emp_no = f.emp_no)

-- first name, last name and hire date = 1986
SELECT a.last_name, a.first_name, a.hire_date
FROM employees a
WHERE a.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their 
-- department number, department name, employee number, last name, and first name.

SELECT a.dept_no, b.dept_name,c.emp_no, c.last_name, c.first_name
FROM dept_manager a 
	INNER JOIN departments b
		ON a.dept_no=b.dept_no
	INNER JOIN employees c
		ON a.emp_no=c.emp_no;

-- List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name.
SELECT a.dept_no, a.dept_name,c.emp_no, c.last_name, c.first_name
FROM departments a 
     INNER JOIN dept_emp as b
	 ON a.dept_no=b.dept_no
	 INNER JOIN employees as c
	 ON b.emp_no=c.emp_no
ORDER BY c.emp_no



-- List first name, last name, and sex of each employee whose first name is 
-- Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, 
-- last name, and first name.

SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees as a
    INNER JOIN dept_emp as b
    ON a.emp_no=b.emp_no
	INNER JOIN departments as c
	ON b.dept_no = c.dept_no
	WHERE c.dept_name = 'Sales'



-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees as a
    INNER JOIN dept_emp as b
    ON a.emp_no=b.emp_no
	INNER JOIN departments as c
	ON b.dept_no = c.dept_no
	WHERE c.dept_name IN ('Sales', 'Development');
		

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).

SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees as a
    JOIN dept_emp as b
    ON a.emp_no=b.emp_no
	JOIN departments as c
	ON b.dept_no = c.dept_no
	WHERE c.dept_name IN ('Sales', 'Development')
ORDER BY a.emp_no;

