--Check if all the data is present in the database
select * from employee;
select * from departments;
select * from dept_manager;
select * from dept_emp;
select * from salaries;
select * from titles;

--List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employee e inner join salaries s 
on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

select e.emp_no,e.first_name,e.last_name,e.hire_date from employee e 
where e.hire_date >= '1986-01-01' and  e.hire_date <= '1986-12-31';

--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.

select  d.dept_code,d.dept_name,e.emp_no,e.last_name,e.first_name from 
dept_manager dm inner join
employee e on dm.emp_no = e.emp_no
inner join departments d on d.dept_code = dm.dept_code;

--List the department number for each employee along with that
--employee’s employee number, last name, first name, and department name.

select e.emp_no,e.last_name, e.first_name, de.dept_code
from employee e inner join dept_emp de on
e.emp_no = de.emp_no;

--List the first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.

select e.emp_no, e.first_name,  e.last_name, e.sex from employee e where
e.first_name = 'Hercules' and e.last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no,   e.last_name, e.first_name from employee e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_code = d.dept_code
where d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

select e.emp_no,   e.last_name, e.first_name, d.dept_name from employee e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_code = d.dept_code
where d.dept_name in ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

select e.last_name,count(e.last_name) from employee e
group by e.last_name
order by count(e.last_name) desc
