The WHERE clause can contain one or more OR operators.
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';
You can combine the AND and OR operators. The following SQL statement selects all customers from Spain that starts with a "G" or an "R".
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.
SELECT * FROM Customers WHERE NOT Country = 'Spain';
SELECT * FROM Customers WHERE CustomerName NOT LIKE 'A%';
SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60;
SELECT * FROM Customers WHERE City NOT IN ('Paris', 'London');
It is possible to write the INSERT INTO statement in two ways:
1. Specify both the column names and the values to be inserted:
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:
INSERT INTO Customers (CustomerName, City, Country) VALUES ('Cardinal', 'Stavanger', 'Norway');
SELECT TOP 3 * FROM Customers;
SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;
