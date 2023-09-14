/*
CTEs whcih is used manuplate complex sub query data
*/

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION by Gender) as TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) as Avgsalary
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, Salary
FROM CTE_Employee
--SELECT *
--FROM CTE_Employee
