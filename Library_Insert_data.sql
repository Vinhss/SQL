use LibraryManagement;

-- Insert into Books
INSERT INTO Books (Title, Author, ISBN, PublicationYear, Genre, Publisher, CopiesAvailable)
VALUES
    ('The Lord of the Rings', 'J.R.R. Tolkien', '978-0618640157', 1954, 'Fantasy', 'Houghton Mifflin', 5),
    ('Pride and Prejudice', 'Jane Austen', '978-0141439518', 1813, 'Romance', 'Penguin Classics', 3),
    ('To Kill a Mockingbird', 'Harper Lee', '978-0446310789', 1960, 'Southern Gothic', 'Grand Central Publishing', 8),
    ('The Great Gatsby', 'F. Scott Fitzgerald', '978-0743273565', 1925, 'Classic', 'Scribner', 2),
    ('1984', 'George Orwell', '978-0451524935', 1949, 'Dystopian', 'Signet Classics', 10),
    ('The Catcher in the Rye', 'J.D. Salinger', '978-0316769488', 1951, 'Coming-of-Age', 'Little, Brown and Company', 4),
    ('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '978-0590353427', 1997, 'Fantasy', 'Scholastic', 12),
    ('The Hobbit', 'J.R.R. Tolkien', '978-0618260300', 1937, 'Fantasy', 'Houghton Mifflin', 6),
    ('The Da Vinci Code', 'Dan Brown', '978-0385504201', 2003, 'Thriller', 'Doubleday', 7),
    ('The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', '978-0345391803', 1979, 'Science Fiction', 'Del Rey', 9);


INSERT INTO Authors (FirstName, LastName)
VALUES
    ('J.R.R.', 'Tolkien'),
    ('Jane', 'Austen'),
    ('Harper', 'Lee'),
    ('F. Scott', 'Fitzgerald'),
    ('George', 'Orwell'),
    ('J.D.', 'Salinger'),
    ('J.K.', 'Rowling'),
    ('Dan', 'Brown'),
    ('Douglas', 'Adams'),
    ('Stephen', 'King'); 

INSERT INTO Book_Authors (BookID, AuthorID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 1); 

INSERT INTO Members (FirstName, LastName, MembershipType, RegistrationDate)
VALUES
    ('John', 'Doe', 'Standard', '2023-01-15'),
    ('Jane', 'Smith', 'Premium', '2023-03-22'),
    ('Alice', 'Johnson', 'Student', '2023-05-10'),
    ('Bob', 'Brown', 'Standard', '2023-02-08'),
    ('Eva', 'Williams', 'Premium', '2023-04-18'),
    ('Michael', 'Jones', 'Student', '2023-06-03'),
    ('Olivia', 'Davis', 'Standard', '2023-01-29'),
    ('Daniel', 'Taylor', 'Premium', '2023-03-12'),
    ('Sophia', 'Anderson', 'Student', '2023-05-25'),
    ('William', 'Wilson', 'Standard', '2023-02-19');

INSERT INTO Loans (BookID, MemberID, LoanDate, DueDate, ReturnDate, Status)
VALUES
    (1, 1, '2024-05-01', '2024-05-15', '2024-05-10', 'Returned'),
    (3, 2, '2024-05-05', '2024-05-19', NULL, 'Borrowed'), 
    (5, 3, '2024-04-28', '2024-05-12', '2024-05-11', 'Returned'),
    (2, 4, '2024-05-08', '2024-05-22', NULL, 'Borrowed'),
    (4, 5, '2024-05-02', '2024-05-16', '2024-05-15', 'Returned'),
    (6, 6, '2024-05-10', '2024-05-24', NULL, 'Borrowed'),
    (1, 7, '2024-05-03', '2024-05-17', '2024-05-16', 'Returned'),
    (3, 8, '2024-05-06', '2024-05-20', NULL, 'Borrowed'),
    (5, 9, '2024-05-01', '2024-05-15', '2024-05-14', 'Returned'),
    (2, 10, '2024-05-09', '2024-05-23', NULL, 'Borrowed');

INSERT INTO Reservations (BookID, MemberID, ReservationDate, Status)
VALUES
    (2, 4, '2024-06-01', 'Pending'),
    (7, 5, '2024-06-05', 'Pending'),
    (1, 6, '2024-06-03', 'Confirmed'),
    (3, 7, '2024-06-02', 'Pending'),
    (4, 8, '2024-06-04', 'Cancelled'),
    (5, 9, '2024-06-06', 'Confirmed'),
    (6, 10, '2024-06-07', 'Pending'),
    (8, 1, '2024-06-01', 'Pending'),
    (9, 2, '2024-06-08', 'Confirmed'),
    (10, 3, '2024-06-05', 'Cancelled');

INSERT INTO Publishers (Name, Address, Contact)
VALUES
    ('Penguin Random House', '1745 Broadway, New York, NY 10019', '212-366-2000'),
    ('HarperCollins', '195 Broadway, New York, NY 10007', '212-207-7000'),
    ('Simon & Schuster', '1230 Avenue of the Americas, New York, NY 10020', '212-698-7000'),
    ('Hachette Book Group', '1290 Avenue of the Americas, New York, NY 10104', '212-364-1200'),
    ('Macmillan Publishers', '120 Broadway, New York, NY 10271', '646-307-5151'),
    ('Scholastic', '557 Broadway, New York, NY 10012', '212-343-6100'),
    ('Pearson', '80 Strand, London, WC2R 0RL, UK', '44-20-7010-2000'),
    ('Wiley', '111 River Street, Hoboken, NJ 07030', '201-748-6000'),
    ('Springer', '233 Spring Street, New York, NY 10013', '212-460-1500'),
    ('Oxford University Press', '198 Madison Avenue, New York, NY 10016', '212-726-6000');

INSERT INTO Fines (LoanID, Amount, PaymentDate)
VALUES 
    (1, 5.00, '2024-05-16'),
    (2, 3.00, '2024-05-20'),
    (3, 4.50, '2024-05-21'),
    (4, 6.00, '2024-05-18'),
    (5, 2.75, '2024-05-19'),
    (6, 5.25, '2024-05-22'),
    (7, 3.50, '2024-05-23'),
    (8, 4.00, '2024-05-24'),
    (9, 2.00, '2024-05-25'),
    (10, 3.75, '2024-05-26');

INSERT INTO Book_Categories (Name)
VALUES
    ('Fiction'),
    ('Non-fiction'),
    ('Mystery'),
    ('Thriller'),
    ('Science Fiction'),
    ('Fantasy'),
    ('Romance'),
    ('History'),
    ('Biography'),
    ('Self-help');

INSERT INTO Book_Category_Assignments (BookID, CategoryID)
VALUES
    (1, 6), 
    (2, 7),
    (3, 5),
    (4, 4),
    (5, 3),
    (6, 2),
    (7, 1),
    (8, 8),
    (9, 9),
    (10, 10);
