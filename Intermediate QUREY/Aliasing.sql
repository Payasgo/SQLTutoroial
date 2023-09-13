/*
Aliasing----Temporaliy change the name of the column or table 
*/

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName AS Fname
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FUllName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT AVG(Age) 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT AVG(Age) AS AVGAGE
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Demo.EmployeeID, SAL.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
	ON Demo.EmployeeID = SAL.EmployeeID

SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM SQLTutorial.dbo.EmployeeDemographics a
LEFT JOIN SQLTutorial.dbo.EmployeeSalary b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics c
	ON a.EmployeeID = c.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName,
	SAL.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary SAL
	ON Demo.EmployeeID = SAL.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID