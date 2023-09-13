/* 
Union, Union ALl the data we select it should be same 
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
FUll Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = 
	SQLTutorial.dbo.WareHouseEmployeeDemographics.EmployeeID


SElECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, salary
FROM SQLTutorial.dbo.EmployeeSalary

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID