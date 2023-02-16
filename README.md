# SQL Challenge

----
As a new data engineer, the first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
I will need to design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. This will require to perform data modelling, data engineering, and data analysis, respectively.

## Table of Contents

- [Data Modelling](#Data Modelling)
- [Data Engineering](#Data Engineering)
- [Data Analysis](#Data Analysis)

## Data Modelling
----
1. Created the ER Diagram in https://app.quickdatabasediagrams.com after reviewing the csv files
1. Added sql-challenge\sql-challenge\ER Diagram\ER Diagram Script.txt
1. Added sql-challenge\sql-challenge\ER Diagram\Employee Department ER Diagram.png

![image](https://user-images.githubusercontent.com/40103518/219360374-65b5963a-1940-42b2-a886-42a4b0affb89.png)


## Data Engineering
Reviewed the csv files and converted columns into fields in the columns for the tables
1. titles table
------
| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| titles | title_id | varchar(6) | Yes |  |  | | 
| titles | title | varchar(200) |  |  |  | | 

1. departments table
------
| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| departments | dept_code | varchar(5) | Yes |  |  | | 
| departments | dept_name | varchar(100) |  |  |  | | 


1. employee table
------------------------ 

| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| employee | emp_no | int | Yes |  |  | | 
| employee | emp_title_id | varchar(6) |  | Yes | titles | title_id | 
| employee | birth_date | Date |  |  |  | | 
| employee | first_name | varchar(100) nullable |  |  |  | | 
| employee | last_name | varchar(100) nullable |  |  |  | | 
| employee | sex | varchar(1) |  |  |  | | 
| employee | hire_date | Date |  |  |  | | 

1. dept_emp table
---------------------------------


| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| dept_emp | emp_no | int | Yes | Yes | employee |emp_no | 
| dept_emp | dept_code | varchar(6) |Yes  | Yes | departments | dept_code | 

emp_no,dept_code is a composite primary key.

1. salaries table
---------------------------------


| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| salaries | emp_no | int | Yes | Yes | employee |emp_no | 
| salaries | salary | float |  |  |  |  | 

1. dept_manager table
---------------------------------


| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| dept_manager | emp_no | int | Yes | Yes | employee |emp_no | 
| dept_manager | dept_code | varchar(6) |Yes  | Yes | departments | dept_code | 

emp_no,dept_code is a composite primary key.

----------------------------------------------------

Converted hire_date and birth_date in Employee table to yyyy-mm-dd format so that they can be imported into Employee table without any issue. This is done by converting csv using pandas file(sql-challenge\sql-challenge\EmployeeCSVDateTimeTransformation.ipnby

CSV Files imported in the chronological object:
------------------------------------------------------
1. titles table - titles.csv
1. departments table - departments.csv
1. employee table - employee_v1.csv
1. dept_emp table - dept_emp.csv
1. salaries table - salaries.csv
1. dept_manager table - dept_manager.csv


![image](https://user-images.githubusercontent.com/40103518/219365222-d3eb6300-d7a7-4e4d-8538-57782b0fd79c.png)

![image](https://user-images.githubusercontent.com/40103518/219365386-6a15440a-f144-4142-ad2b-eadc587ca2ad.png)

![image](https://user-images.githubusercontent.com/40103518/219365554-a0879ef7-fff0-4da9-9079-518930074e93.png)

![image](https://user-images.githubusercontent.com/40103518/219365947-0963edb5-8d15-4d62-92ce-f9bffc5b639c.png)

Salaries table
![image](https://user-images.githubusercontent.com/40103518/219366146-f2788c43-a432-4186-9333-3e1efe3ab8c0.png)

titles table
![image](https://user-images.githubusercontent.com/40103518/219366340-b41fe1a5-4037-4d6c-a2e4-debf0a48e53d.png)


----
##Data Analysis
----
Created the queries of the following statements: 
1. List the employee number, last name, first name, sex, and salary of each employee.

1. List the first name, last name, and hire date for the employees who were hired in 1986. 

1. List the manager of each department along with their department number, department name, employee number, last name, and first name. 
1. List the department number for each employee along with that employee’s employee number, last name, first name, and department name. 
1. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. 
1. List each employee in the Sales department, including their employee number, last name, and first name. 
1. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. 
1. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). 

The queries are locacted at sql-challenge\sql-challenge\EmployeeSQL\Assignment queries.sql
----
