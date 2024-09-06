use AldieDB;

SELECT SUM(Salary) AS TotalSalary
FROM Employees2;

SELECT AVG(Salary) AS AVGTotalSalary
FROM Employees2;

-- Find the latest hire date for each department
SELECT DepartmentID, MAX(HireDate) AS LatestHireDate
FROM Employees
GROUP BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;

-- Filtering
SELECT * FROM Employees2
WHERE Salary > 50000;

SELECT DepartmentID,count(*) AS EmployeeCount
-- from the Employees table
FROM  Employees
-- Group BY DepartmentID
GROUP BY DepartmentID
-- only include groups where the count of employees is greater than 2
HAVING COUNT(*) >=2;

-- Select employees who work in the department HR with a salary greater than 50000

SELECT * FROM  Employees2
WHERE Department = 'HR' OR Salary>= 50000;

SELECT * FROM  Employees2
WHERE Department = 'HR' OR Salary>= 70000;

--- Select employees who do not work in department 101
SELECT * FROM Employees
WHERE NOT DepartmentID = 101;

SELECT * FROM Employees
WHERE NOT DepartmentID = 'HR';

SELECT * FROM Employees
WHERE NOT DepartmentID IN (101, 102,103);

SELECT * FROM Employees2
WHERE Salary BETWEEN 60000 AND 70000;
--- begin with A
SELECT * FROM Employees2
WHERE Name Like 'A%';

--- check names ends with e
SELECT * FROM Employees2
WHERE Name Like '%e';

--- names in between with ac
 SELECT * FROM Employees2
WHERE Name Like '%ac%';

use AldieDB;
SELECT * FROM Employees2
WHERE Name Like '%e';

SELECT * FROM Employees2
WHERE Name Like '%vi%';


