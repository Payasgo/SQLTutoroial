/*

STRING FUNCTIONS - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--DROP Table EMployeeERRORS;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

INSERT INTO EmployeeErrors Values
('1001   ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'Toby', 'Flenderson - Fired')

SELECT * 
FROM EmployeeErrors

--using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDRTRIM
FROM EmployeeErrors


-- Using Replace

SELECT LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors

-- Using Substring

SELECT SUBSTRING(FirstName, 1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName, 3,3)
FROM EmployeeErrors

SELECT Err.FirstName, Dem.FirstName
FROM EmployeeErrors Err
JOIN EmployeeDemographics Dem
	ON Err.FirstName = Dem.FirstName

SELECT SUBSTRING(Err.FirstName,1,3), SUBSTRING(Dem.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Dem
	ON SUBSTRING(Err.FirstName,1,3) =SUBSTRING(Dem.FirstName,1,3)

SELECT Err.FirstName, SUBSTRING(Err.FirstName,1,3), Dem.FirstName, SUBSTRING(Dem.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Dem
	ON SUBSTRING(Err.FirstName,1,3) =SUBSTRING(Dem.FirstName,1,3)

--Fassi matching can be done to get high accurency --Gender, --LastName, --AGE, --DOB


-- Using UPPER AND LOWER

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors