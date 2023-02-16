-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rLdP7i
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "titles" (
    "title_id" varchar(10)   NOT NULL,
    "title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "departments" (
    "dept_code" varchar(10)   NOT NULL,
    "dept_name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_code"
     )
);

CREATE TABLE "Employee" (
    "emp_id" int   NOT NULL,
    "emp_title_id" varchar(10)   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" varchar(100)   NULL,
    "last_name" varchar(100)   NULL,
    "sex" varchar(1) NULL,
    "hire_date" Date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "dept_emp" (
    "dept_code" varchar(10)   NOT NULL,
    "emp_id" INT   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "dept_code","emp_id"
     )
);

CREATE TABLE "salaries" (
    "emp_id" int   NOT NULL,
    "salary" float   NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "dept_manager" (
    "dept_code" varchar(10)   NOT NULL,
    "emp_id" INT   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_code","emp_id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_code" FOREIGN KEY("dept_code")
REFERENCES "departments" ("dept_code");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_code" FOREIGN KEY("dept_code")
REFERENCES "departments" ("dept_code");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

