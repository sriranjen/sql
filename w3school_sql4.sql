-- Task 1: Retrieve the names of all books in the library
SELECT title FROM books;

-- Task 2: Find the titles of all books published after 2010
SELECT title FROM books WHERE publication_year > 2010;

-- Task 3: List the names of all authors who have written more than 5 books
SELECT authors.author_name 
FROM authors 
INNER JOIN books ON authors.author_id = books.author_id 
GROUP BY authors.author_name 
HAVING COUNT(books.author_id) > 5;

-- Task 4: List the names of all members who have borrowed a book in the last month
SELECT member_name 
FROM members 
WHERE borrow_date BETWEEN '2024-03-01' AND '2024-04-01';

-- Task 5: Calculate the total number of books borrowed by each member, sorted in descending order of the count
SELECT members.member_name, COUNT(DISTINCT members.book_id) AS borrow_books 
FROM members 
GROUP BY members.member_id 
ORDER BY borrow_books DESC;

-- Task 6: Retrieve the average publication year of all books in the library
SELECT AVG(publication_year) AS avg_pub_year FROM books;

-- Task 7: Find the title and author name of the book with the earliest publication year
SELECT books.title, authors.author_name 
FROM books 
INNER JOIN authors ON books.author_id = authors.author_id 
ORDER BY books.publication_year ASC 
LIMIT 1;

-- Task 8: List the names of all authors who have not written any books in the library
SELECT authors.author_name 
FROM authors 
LEFT JOIN books ON authors.author_id = books.author_id 
WHERE books.author_id IS NULL;

-- Task 9: Calculate the total number of books borrowed in each month of the year
SELECT EXTRACT(MONTH FROM borrow_date) AS month, COUNT(book_id) AS num_books_borrowed
FROM members
GROUP BY EXTRACT(MONTH FROM borrow_date)
ORDER BY month;

-- Task 10: Identify the member(s) who borrowed the most books from the library
SELECT members.member_name, COUNT(members.book_id) AS borrow_count 
FROM members 
GROUP BY members.member_id 
ORDER BY borrow_count DESC 
LIMIT 1;
