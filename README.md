# sql-challenge1
## Data Modelling
Created the ER Diagram in https://app.quickdatabasediagrams.com/#/d/rLdP7i
#### Added sql-challenge\sql-challenge\ER Diagram\ER Diagram Script.txt
#### Added sql-challenge\sql-challenge\ER Diagram\Employee Department ER Diagram.png

##Data Engineering
####converted hire_date and birth_date in Employee table to yyyy-mm-dd format so that they can be imported into Employee table without any issue. This is done by converting csv using pandas file(sql-challenge\sql-challenge\EmployeeCSVDateTimeTransformation.ipnby
####Created table creation script from quickdiagram app by analysing 6 CSVs and their data. The tables creation sql is at location sql-challenge\sql-challenge\EmployeeSQL\

##Data Analysis
####List the employee number, last name, first name, sex, and salary of each employee.
####List the first name, last name, and hire date for the employees who were hired in 1986.
####List the manager of each department along with their department number, department name, employee number, last name, and first name.
####List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
####List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
####List each employee in the Sales department, including their employee number, last name, and first name.
####List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
####List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
