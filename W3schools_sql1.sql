The SQL SELECT Statement
SELECT column1, column2 FROM table_name;
If you want to return all columns, without specifying every column name
SELECT * FROM Customers;
The SELECT DISTINCT statement is used to return only distinct (different) values.
SELECT DISTINCT column1, column2 FROM table_name;
The WHERE clause is used to filter records.
SELECT column1, column2 FROM table_name WHERE condition;
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
SELECT column1, column2 FROM table_name ORDER BY column1, column2, ... ASC|DESC;
The WHERE clause can contain one or many AND operators.
The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G':
SELECT column1, column2 FROM table_name WHERE condition1 AND condition2 AND condition3 ...;
