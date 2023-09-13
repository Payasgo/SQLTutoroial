/*
GROUPBY ORDERBY
*/

/* THE GROUPBY Statement is same like DISTINCT it show the unqiue value in the column the difference 
between DISTINCT AND GROUPBY In DISTINCT IT SHOW THE what value is in it unqiue  but in the GROUP by it showing
us what value is unique and it also rolling all up into one column but we use for other things */

SELECT * 
FROM EmployeeDemographics 

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE age > 31
GROUP BY Gender

/* ORDER BY */

SELECT Gender, COUNT(Gender) AS COUNTGender
FROM EmployeeDemographics
WHERE age > 31
GROUP BY Gender
ORDER BY COUNTGender 

SELECT Gender, COUNT(Gender) AS COUNTGender
FROM EmployeeDemographics
WHERE age > 31
GROUP BY Gender
ORDER BY COUNTGender ASC

SELECT Gender, COUNT(Gender) AS COUNTGender
FROM EmployeeDemographics
WHERE age > 31
GROUP BY Gender
ORDER BY COUNTGender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age ASC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

/* INSTED OF USING COLUMN NAMES WE CAN USE NUMBER */

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

