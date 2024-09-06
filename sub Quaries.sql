use AldieDB;

alter table employees
add salary int;

-- disable safe update mode for the current session
SET SQL_SAFE_UPDATES=0; 

 --  update the salary column with random values 
UPDATE Employees
SET Salary=Round(rand() * (80000-40000)+40000,2);

-- re-enable safe update mode for the current session
SET SQL_SAFE_UPDATES=1; 

SELECT departmentName,
(SELECT COUNT(*)
FROM Employees
WHERE Employees.departmentID = department.departmentID) AS EmployeeCount
FROM department;


SELECT  *
FROM Employees
WHERE Salary = (SELECT MAX(Salary)
FROM Employees AS e
WHERE e.departmentID = Employees.departmentID);

SELECT DepartmentID,AverageSalary
FROM(SELEC
T DepartmentID,AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID) AS AvgSalaries
WHERE AverageSalary > 50000;
