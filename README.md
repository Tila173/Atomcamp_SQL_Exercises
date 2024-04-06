# Atomcamp SQL Exercises

Welcome to my repository of SQL assignments from Atomcamp's Data Science and AI training program. Here, you'll find a variety of exercises that demonstrate my proficiency in SQL, including data querying, manipulation, and analysis.

## What's Inside

- SQL Assignment 1: Employee Database Management:
This repository contains my solutions to the first SQL assignment from my Data Science and AI training at Atomcamp. The assignment involves creating and manipulating an employees table with various data operations.

## Tasks and Solutions
### Task 1: Table Creation
Created an employees table with specific columns and constraints. Here's the SQL command used:

```SQL
CREATE TABLE employees (
  ID INT AUTO_INCREMENT,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  age INT,
  job_title VARCHAR(100),
  date_of_birth DATE,
  phone_number CHAR(10),
  insurance_id VARCHAR(15),
  PRIMARY KEY (ID)
);

Task 2: Data Insertion
Inserted multiple records into the employees table with a single query. Modified the phone_number column to accommodate the data format.

Task 3: Data Type Modification
Altered the phone_number column to CHAR(10) to store fixed-length strings.

Task 4: Unique Job Titles
Queried the database to find unique job titles within the employees table.

Task 5: Youngest Employees
Retrieved the top three youngest employees from the database.

Task 6: Data Update
Updated the date of birth for Alex Thompson.

Task 7: Data Deletion
Deleted records of employees aged over 30.

Task 8: Concatenation
Concatenated the first_name and last_name columns to display full names.

Task 9: Additional Table Creation
Created an employee_insurance table with insurance_id as the primary key.

Task 10: Column Addition and Data Update
Added an email column to the employees table and updated all records with a default value.


- Assignment 2: Advanced data filtering with WHERE clauses.
- Assignment 3: JOIN operations to combine multiple tables.
- ... (and so on, for each assignment)

## Skills Demonstrated

- Data retrieval and sorting
- Complex queries involving multiple tables
- Data aggregation and function usage
- Database schema understanding

## Tools & Technologies Used

- SQL
- PostgreSQL/MySQL (or any other DBMS you've used)
- DataGrip/MySQL Workbench (or any other SQL client)

Feel free to explore the assignments and reach out if you have any questions or feedback!
