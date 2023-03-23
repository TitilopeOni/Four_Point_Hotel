--- #Region
---Midweek_Assignment Day 3
-----1.	Write a query that displays the product ID and name for each product from the Production.Product table with the name starting with Chain.
 SELECT ProductID, Name 
 From Production.Product
 WHERE Name Like 'Chain%'


/*
 ----2.	Write a query that displays the business entity ID number, first name, middle name, and last name from the Person.Person table 
 for only those rows that have E or B stored in the middle name column.
 */
 SELECT BusinessEntityID, FirstName, MiddleName, Lastname
 FROM Person.Person
 WHERE MiddleName Like '[EB]'


------3.	Explain the difference between the following two queries:
/*
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'Ja%es';

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'Ja_es';

The second query will return only the FirstNames Where the LastName has only one letter between Ja and es while the first query will return FirstName Where there can be 0-infinity letters between Ja and es
*/


--4.	Write a query that displays characters 10 to 15 of the AddressLine1 column in the Person.Address table.
--wrong answer
 ---SELECT AddressLine1, SUBSTRING(AddressLine1, 10, LEN(AddressLine1)) AS 'AddressLine1.1'
 ---right answer
  SELECT AddressLine1, SUBSTRING(AddressLine1, 10, 6) AS 'AddressLine1.1'
 FROM Person.Address


--5.	Write a query displaying the first name and last name from the Person.Person table all in uppercase.
 SELECT UPPER(FirstName) AS FirstName1, UPPER(LastName) AS LastName1
 FROM Person.Person

/*
--6.	The product number in the Production.Product contains a hyphen (-). Write a query that uses the SUBSTRING function 
and the CHARINDEX function to display the characters in the product number following the hyphen. Note: there is also a 
second hyphen in many of the rows; ignore the second hyphen for this question. Hint: Try writing this statement in two steps, 
the first using the CHARINDEX function and the second adding the SUBSTRING function.
*/
SELECT ProductNumber, SUBSTRING (ProductNumber, CHARINDEX('-', ProductNumber), LEN(ProductNumber)) AS 'ProductNumber1.0'
FROM Production.Product
SELECT ProductNumber,  LEN(ProductNumber) AS 'Textlength'
FROM Production.Product

SELECT ProductNumber, CHARINDEX('-', ProductNumber, 1) FirstPositionofHypen,
CHARINDEX('-', ProductNumber, CHARINDEX('-', ProductNumber, 1) + 1) SecondPositionofHypen
FROM Production.Product


