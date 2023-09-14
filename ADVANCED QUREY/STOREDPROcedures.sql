/*

STORED PROCEDURES(A stored procedure is a group of SQL statement tht been created and stored in that database
A stored procedures can be use input parameters. A single Stored procedure can be used over the network that can 
be used by several different  users and we all can be using different input data
if we modifed that stored procedure every one who use that stored procdure in future will also get that update)

*/

CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

EXEC TEST


CREATE OR ALTER PROCEDURE Temp_Employee
As
DROP TABLE IF EXISTS #Temp_Employee
CREATE TABLE #Temp_Employee(
JobTitle varchar(100)
,EmployeePerJob int
,AvgAge int
,AvgSalary int
)

INSERT INTO #Temp_Employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee
GO;

EXEC Temp_Employee @JobTitle = 'Salesman'

CREATE OR ALTER PROCEDURE Temp_Employee2
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #Temp_Employee3
CREATE TABLE #Temp_Employee2(
JobTitle varchar(100)
,EmployeePerJob int
,AvgAge int
,AvgSalary int
)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON emp.EmployeeID = Sal.EmployeeID
WHERE JobTitle = @JobTitle---make sure to change this in this script from Original above
GROUP BY JobTitle


SELECT *
FROM #Temp_Employee2
GO;

EXEC Temp_Employee2 @JobTitle = 'Salesman'
EXEC Temp_Employee2 @JobTitle = 'Accountant'