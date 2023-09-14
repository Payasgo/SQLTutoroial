/*
Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT * 
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
JobTitle varchar(50),
EMployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics emp
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2

