# Atomcamp SQL Exercises

Welcome to my repository of SQL assignments from Atomcamp's Data Science and AI training program. Here, you'll find a variety of exercises that demonstrate my proficiency in SQL, including data querying, manipulation, and analysis.

## What's Inside

- SQL Assignment 1: Employee Database Management.
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


- SQL Assignment 2: Advanced Data Analysis.
This repository contains my solutions to the second SQL assignment from my Data Science and AI training at Atomcamp. The assignment focuses on advanced data analysis using four datasets: PetOwners.csv, Pets.csv, ProceduresDetails.csv, and ProceduresHistory.csv.

## Overview

The assignment consists of 15 queries that explore various aspects of data manipulation and retrieval, including joins, aggregations, and subqueries. The queries address real-world scenarios such as identifying pet owners, analyzing pet procedures, and classifying pets based on age and gender.

## Datasets

- PetOwners.csv: Contains information about pet owners.
- Pets.csv: Details of pets, including their names, types, and owners.
- ProceduresDetails.csv: Describes different procedures available for pets.
- ProceduresHistory.csv: Historical data of procedures performed on pets.

## Queries

1. List pet owners and their pets.
2. Include pets without recorded owners.
3. Full dataset combination using Left Join, Union, and Right Join.
4. Count the number of dogs owned by each pet owner.
5. Identify pets with no procedures.
6. Determine the oldest pet.
7. Detail procedures performed on 'Cuddles'.
8. Find pets that received 'VACCINATIONS'.
9. Count pets by kind.
10. Group and count pets by kind and gender.
11. Calculate the average age of pets by kind.
12. Identify costly procedures.
13. Classify pets by age groups.
14. Label pet genders.
15. Status labels based on the number of procedures.

## Reflection
This assignment challenged me to apply complex SQL techniques to extract meaningful insights from interconnected data. It has significantly enhanced my understanding of data relationships and the power of SQL in data analysis.

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
