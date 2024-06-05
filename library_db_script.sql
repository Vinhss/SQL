-- Use the database
USE LibraryManagement;
GO

-- Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    ISBN VARCHAR(20),
    PublicationYear INT,
    Genre VARCHAR(100),
    Publisher VARCHAR(255),
    CopiesAvailable INT
);
GO

-- Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
);
GO

-- Book_Authors table (to handle many-to-many relationship)
CREATE TABLE Book_Authors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
GO

-- Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    MembershipType VARCHAR(50),
    RegistrationDate DATE
);
GO

-- Loans table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    Status VARCHAR(50), -- e.g., "Borrowed", "Returned", "Overdue"
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
GO

-- Reservations table
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT,
    MemberID INT,
    ReservationDate DATE,
    Status VARCHAR(50), -- e.g., "Pending", "Fulfilled", "Cancelled"
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
GO

-- Publishers table
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255),
    Address VARCHAR(255),
    Contact VARCHAR(100)
);
GO

-- Fines table
CREATE TABLE Fines (
    FineID INT PRIMARY KEY IDENTITY(1,1),
    LoanID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);
GO

-- Book_Categories table
CREATE TABLE Book_Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100)
);
GO

-- Book_Category_Assignments table (to handle many-to-many relationship)
CREATE TABLE Book_Category_Assignments (
    BookID INT,
    CategoryID INT,
    PRIMARY KEY (BookID, CategoryID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (CategoryID) REFERENCES Book_Categories(CategoryID)
);
GO