/*
INNER JOINS, FULL/LEFT/RIGHT/OUTERJOINS
*/

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeSalary

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Right Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Left Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT EmployeeID, FirstName, LastName,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, salary
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.EmployeeSalary
	ON dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID


SELECT * 
FROM sys.tables

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
	WHERE FirstName <> 'Michael'
	ORDER BY Salary

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
	WHERE FirstName <> 'Michael'
	ORDER BY Salary DESC

SELECT JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
	WHERE JobTitle = 'Salesman'

SELECT JObTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
	WHERE JobTitle = 'Salesman'
	GROUP BY JobTitle 