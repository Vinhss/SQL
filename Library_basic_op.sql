use [LibraryManagement]
SELECT * FROM Members;

SELECT FirstName, LastName FROM Members;
SELECT FirstName AS FN, LastName AS LN FROM Members;
SELECT * FROM Books WHERE Publisher = 'Penguin Classics';

SELECT * FROM Members ORDER BY RegistrationDate ASC;

--Retrieve the loan details along with member names.
SELECT l.LoanID, m.FirstName, m.LastName, l.LoanDate, l.DueDate
FROM Loans l
JOIN Members m ON l.MemberID = m.MemberID;

--Retrieve all books and their categories, including books that may not have a category assigned.
SELECT b.Title, bc.Name AS CategoryName
FROM Books b
LEFT JOIN Book_Category_Assignments bca ON b.BookID = bca.BookID
LEFT JOIN Book_Categories bc ON bca.CategoryID = bc.CategoryID;

--Retrieve the number of loans per member.
SELECT MemberID, COUNT(*) AS LoanCount
FROM Loans
GROUP BY MemberID;

SELECT * FROM Books WHERE PublicationYear BETWEEN 2000 AND 2020;
SELECT * FROM Members WHERE FirstName LIKE 'A%';

INSERT INTO Members (FirstName, LastName, MembershipType, RegistrationDate)
VALUES ('John', 'Doe', 'Regular', '2023-06-01');

INSERT INTO Publishers (Name)
VALUES ('Penguin Random House');

INSERT INTO Books (Title, Author, ISBN, PublicationYear, Genre, Publisher, CopiesAvailable)
VALUES
('Book Title 1', 'Author 1', '1234567890', 2022, 'Fiction', 'Penguin Random House', 5),
('Book Title 2', 'Author 2', '2345678901', 2021, 'Non-Fiction', 'HarperCollins', 3);

--Insert a new loan using variables for BookID and MemberID.
DECLARE @BookID INT = 1;
DECLARE @MemberID INT = 1;
INSERT INTO Loans (BookID, MemberID, LoanDate, DueDate, ReturnDate, Status)
VALUES (@BookID, @MemberID, '2023-06-05', '2023-06-19', NULL, 'On Loan');

UPDATE Members
SET LastName = 'Smith'
WHERE MemberID = 1;

--Update both the first name and last name of a member.
UPDATE Members
SET FirstName = 'Jane', LastName = 'Doe'
WHERE MemberID = 1;

--Update the publisher of a book based on the publisher's name.
UPDATE Books
SET Publisher = (SELECT PublisherID FROM Publishers WHERE Name = 'HarperCollins')
WHERE BookID = 1;

--Update the CopiesAvailable for a book only if the current available copies are more than 0.
UPDATE Books
SET CopiesAvailable = CopiesAvailable - 1
WHERE BookID = 1 AND CopiesAvailable > 0;


--Insert a new book and assign an author to it in the Book Authors table.
-- Insert the book
INSERT INTO Books (Title, Author, ISBN, PublicationYear, Genre, Publisher, CopiesAvailable)
VALUES ('Book Title 3', 'Author 3', '3456789012', 2023, 'Mystery', 'Penguin Random House', 4);

-- Insert the author
INSERT INTO Authors (FirstName, LastName)
VALUES ('Agatha', 'Christie');

--Removing Exact Duplicates (All Columns Match):
WITH CTE AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY BookID, Title, Author, ISBN, PublicationYear, Genre, Publisher, CopiesAvailable ORDER BY BookID) AS RowNum
    FROM Books
)
DELETE FROM CTE
WHERE RowNum > 1;
