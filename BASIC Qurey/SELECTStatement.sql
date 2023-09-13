/* 
SELECT Statement
*, Top, Distinct, Count, AS, Max, Min, Avg
*/

SELECT * FROM 
EmployeeDemographics

/* SELECT TOP 5 columns form employee table*/
SELECT TOP 5 * 
FROM EmployeeDemographics

/* DISTINCT TO GET THE UNQIUE COLUMNS IN TABLE */
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

/* COUNT WILL SHOW ALL THE NON KNOW VALUES IN A COLUMN */

SELECT COUNT(LastName) 
FROM EmployeeDemographics

/* AS KEYWORD IS USED THE NAME THE COLUMN NAME FOR TEMPORIALRY AS ALIASING */
SELECT COUNT(LastName) AS LastNameCOUNT
FROM EmployeeDemographics

/* MAX, MIN , AVG */

SELECT MAX(Salary)
FROM SQLTutorial.dbo.EmployeeSalary

SELECT MIN(Salary)
FROM SQLTutorial.dbo.EmployeeSalary

SELECT AVG(Salary)
FROM SQLTutorial.dbo.EmployeeSalary

/* IF WE ARE IN OTHER DATABSE WE CAN SELECT DATABASE AND IT TABLE IN SELECT QUREY */
SELECT * FROM 
SQLTutorial.dbo.EmployeeSalary