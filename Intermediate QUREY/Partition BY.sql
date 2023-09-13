/*
Partition BY is also compare with group by statement a groupby statement 
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary SAL
	ON Demo.EmployeeID = SAL.EmployeeID


SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary SAL
	ON Demo.EmployeeID = SAL.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary SAL
	ON Demo.EmployeeID = SAL.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

SELECT Gender, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary SAL
	ON Demo.EmployeeID = SAL.EmployeeID
GROUP BY Gender