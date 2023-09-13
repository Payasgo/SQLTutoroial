/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

/* WHERE STATEMENT DO IT HELPS TO LIMIT THE AMOUNT OF DATA AND SPECIFY WHAT DATA YOU WHAT */

/* = EQUALS */
SELECT * 
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

/* <> Not EQUALS */
SELECT * 
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

/* > >= */
SELECT * 
FROM EmployeeDemographics
WHERE age > 30

SELECT * 
FROM EmployeeDemographics
WHERE age >= 30

/* < <= */
SELECT * 
FROM EmployeeDemographics
WHERE age < 30

SELECT * 
FROM EmployeeDemographics
WHERE age <= 30

/* AND OR */
SELECT * 
FROM EmployeeDemographics
WHERE age <=32 AND Gender = 'Male'

SELECT * 
FROM EmployeeDemographics
WHERE age <=32 OR Gender = 'Male'

/* LIKE */

SELECT * 
FROM EmployeeDemographics
WHERE LastName like 'S%'

SELECT * 
FROM EmployeeDemographics
WHERE LastName like '%S%'

SELECT * 
FROM EmployeeDemographics
WHERE LastName like 'S%_h_t_e'

SELECT * 
FROM EmployeeDemographics
WHERE LastName like 'S%o%'

/* NULL NOTNULL */

SELECT * 
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT * 
FROM EmployeeDemographics
WHERE FirstName is NOT NULL


/* IN */

SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Kevin')

SELECT * 
FROM EmployeeDemographics
WHERE Gender IN ('Male','Female')
