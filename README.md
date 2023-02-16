# SQL Challenge

----
As a new data engineer, the first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
I will need to design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. This will require to perform data modelling, data engineering, and data analysis, respectively.

## Table of Contents

- [Data Modelling](#Data Modelling)
- [Data Engineering](#Data Engineering)
- [Data Analysis](#Data Analysis)

## Data Modelling
Reviewed the csv files and converted columns into fields in the columns for the tables
1. titles table
| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| titles | title_id | varchar(6) | Yes |  |  | | 
| titles | title | varchar(200) |  |  |  | | 

1. departments Table
| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| departments | dept_code | varchar(5) | Yes |  |  | | 
| departments | dept_name | varchar(100) |  |  |  | | 


1. employee
------------------------ 
emp_no int PK
emp_title_id varchar(6) Foreign Key to titles table -> title_id field
birth_date Date
first_name varchar(100) NULL
last_name varchar(100) NULL
sex varchar(1)
hire_date Date
| Table Name | Column Name |  DataType |Primary Key|Foreign Key  | Foreign Key table | Foreign key firld name |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| employee | emp_no | int | Yes |  |  | | 
| employee | emp_title_id | varchar(6) |  | Yes | titles | title_id | 
| employee | birth_date | Date |  |  |  | | 
| employee | first_name | varchar(100) nullable |  |  |  | | 
| employee | last_name | varchar(100) nullable |  |  |  | | 
| employee | sex | varchar(1) |  |  |  | | 
| employee | hire_date | Date |  |  |  | | 


emp_no is the primary key
emp_title_id is the foriegn key referencing titles table -> title_id field


1. dept_emp
---------------------------------
dept_code varchar(5) Primary Key and Foreign Key of departments table -> dept_code field
emp_no INT Primary Key and Foreign Key of employee table -> emp_no

emp_no,dept_code is a composite primary key.


## Data Engineering
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Data Analysis
Installation instructions.

## Usage
A step by step series of examples that tell you how to get a development env running.

## Contributing
Contributors names.








## Data Modelling
----
1. Created the ER Diagram in https://app.quickdatabasediagrams.com/#/d/rLdP7i
1. Added sql-challenge\sql-challenge\ER Diagram\ER Diagram Script.txt
1. Added sql-challenge\sql-challenge\ER Diagram\Employee Department ER Diagram.png
----
##Data Engineering
----
1. Converted hire_date and birth_date in Employee table to yyyy-mm-dd format so that they can be imported into Employee table without any issue. This is done by converting csv using pandas file(sql-challenge\sql-challenge\EmployeeCSVDateTimeTransformation.ipnby
1. Created table creation script from quickdiagram app by analysing 6 CSVs and their data. The tables creation sql is at location sql-challenge\sql-challenge\EmployeeSQL\EmployeesSchemaCreation.sql
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
