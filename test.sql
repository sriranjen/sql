-- Task 1: Retrieve the names of all books in the library
SELECT title FROM books;
-- Task 2: Find the titles of all books published after 2010
SELECT title FROM books WHERE publication_year > 2010;
-- Answer: [List of book titles]
-- Task 3: List the names of all authors who have written more than 5 books
SELECT authors.author_name 
FROM authors 
INNER JOIN books ON authors.author_id = books.author_id 
GROUP BY authors.author_name 
HAVING COUNT(books.author_id) > 5;
-- Answer: [List of author names]
-- Task 4: List the names of all members who have borrowed a book in the last month
-- Query not provided
-- Answer: [List of member names]
-- Task 5: Calculate the total number of books borrowed by each member, sorted in descending order of the count
-- Query not provided
-- Answer: [List of member names with the count of books borrowed]
-- Task 6: Retrieve the average publication year of all books in the library
SELECT AVG(publication_year) AS avg_pub_year FROM books;
-- Answer: [Average publication year]
-- Task 7: Find the title and author name of the book with the earliest publication year
-- Query not provided
-- Answer: [Title and author name of the book]

-- Task 8: List the names of all authors who have not written any books in the library
-- Query not provided
-- Answer: [List of author names]

-- Task 9: Calculate the total number of books borrowed in each month of the year
SELECT EXTRACT(MONTH FROM borrow_date) AS month, COUNT(book_id) AS num_books_borrowed
FROM members
GROUP BY EXTRACT(MONTH FROM borrow_date)
ORDER BY month;
-- Answer: [Number of books borrowed in each month]

-- Task 10: Identify the member(s) who borrowed the most books from the library
-- Query not provided
-- Answer: [List of member names]

-- Task 11: Retrieve the names of all authors along with the titles of their books, sorted alphabetically by author name and then by book title
SELECT authors.author_name, books.title 
FROM authors 
INNER JOIN books ON authors.author_id = books.author_id 
ORDER BY authors.author_name, books.title;
-- Answer: [List of author names with the titles of their books]

-- Task 12: Retrieve the total number of books written by each author, sorted in descending order of the count
-- Query not provided
-- Answer: [List of author names with the count of books written]

-- Task 13: Find the title of the book with the highest publication year
-- Answer: [Title of the book]
