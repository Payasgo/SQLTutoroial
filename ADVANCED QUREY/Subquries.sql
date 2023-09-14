/*

Subquries (In the select, From, and Where Statement)

*/

SELECT *
FROM EmployeeSalary

-- Subquery in Select

SELECT EmployeeID, Salary, (SELECT Avg(Salary) FROM EmployeeSalary) AS ALlAvgsalary
FROM EmployeeSalary

-- How to do it with Partition By

SELECT EmployeeID, Salary, Avg(Salary) Over() As AllAvgSalary
FROM EmployeeSalary

-- Why Group By doesn't Work

SELECT EmployeeID, Salary, Avg(Salary) As AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

-- Subqurey in FROM 

SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, Avg(Salary) over() As AllAvgsalary
		FROM EmployeeSalary) a


-- Subqurey in WHERE

