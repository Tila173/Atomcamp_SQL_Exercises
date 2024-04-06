SELECT * FROM atomcamp.employees;

-- Task 1: Create the employees table
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

-- Task 2: Insert data into the employees table
INSERT INTO employees (last_name, first_name, age, job_title, date_of_birth, phone_number, insurance_id)
VALUES 
('Smith', 'John', 32, 'Manager', '1989-05-12', '5551234567', 'INS736'),
('Johnson', 'Sarah', 28, 'Analyst', '1993-09-20', '5559876543', 'INS832'),
('Davis', 'David', 45, 'HR', '1976-02-03', '5550555995', 'INS007'),
('Brown', 'Emily', 37, 'Lawyer', '1984-11-15', '5551112022', 'INS035'),
('Wilson', 'Michael', 41, 'Accountant', '1980-07-28', '5554403003', 'INS943'),
('Anderson', 'Lisa', 22, 'Intern', '1999-03-10', '5556667777', 'INS332'),
('Thompson', 'Alex', 29, 'Sales Representative', null, '5552120111', 'INS433');

-- Task 3: Change the datatype of phone_number to CHAR(10)
ALTER TABLE employees MODIFY phone_number CHAR(10);

-- Task 4: Explore unique job titles
SELECT DISTINCT job_title FROM employees;

-- Task 5: Name the top three youngest employees
SELECT first_name, last_name, age, job_title, date_of_birth, phone_number, insurance_id 
FROM employees 
ORDER BY age 
LIMIT 3;

-- Task 6: Update date of birth for Alex Thompson
UPDATE employees 
SET date_of_birth = '1992-06-24' 
WHERE ID= (
	SELECT ID FROM ( 
		SELECT ID FROM employees WHERE first_name = 'Alex' AND last_name = 'Thompson'
        ) AS temp
        );
        
-- Task 7: Delete the data of employees with age greater than 30
DELETE employees 
FROM employees
JOIN (
	SELECT *
    FROM employees
    WHERE age > 30
    ) AS tem ON employees.ID = temp.ID;

-- Task 8: Concatenating First name and Last name
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

-- Task 9: Create the employee_insurance table
CREATE TABLE employee_insurance (
  insurance_id VARCHAR(15),
  insurance_info VARCHAR(100),
  PRIMARY KEY (insurance_id)
);

-- Task 10: Insert values into employee_insurance
INSERT INTO employee_insurance (insurance_id, insurance_info)
VALUES 
('INS736', 'unavailable'),
('INS832', 'unavailable'),
('INS007', 'unavailable'),
('INS035', 'unavailable'),
('INS943', 'unavailable'),
('INS332', 'unavailable'),
('INS433', 'unavailable');

-- Task 11: Add a column called email to the employees table
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

-- Task 12: Add the value "unavailable" for all records in email
UPDATE employees SET email = 'unavailable';