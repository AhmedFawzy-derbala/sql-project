CREATE database test5;
CREATE TABLE test5. Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    AuthorID INT,
    Genre VARCHAR(100),
    PublishedYear INT,
    QuantityAvailable INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
CREATE TABLE test5. Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Country VARCHAR(100)
);
CREATE TABLE test5. Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    MembershipDate DATE
);
CREATE TABLE test5. Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    Returned BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO test5. Authors (Name, Country) VALUES
('Ahmed Khaled Tawfik', 'Egypt'),
('George Orwell', 'UK'),
('J.K. Rowling', 'UK');
INSERT INTO test5. Books (Title, AuthorID, Genre, PublishedYear, QuantityAvailable) VALUES
('1984', 2, 'Dystopian', 1949, 3),
('Harry Potter and the Philosopher\'s Stone', 3, 'Fantasy', 1997, 5),
('Utopia', 1, 'Science Fiction', 1999, 2);
INSERT INTO test5. Members (FullName, Email, PhoneNumber, MembershipDate) VALUES
('Ali Hassan', 'ali@example.com', '01001234567', '2024-01-15'),
('Mona Said', 'mona@example.com', '01007654321', '2024-03-01');
INSERT INTO test5. Loans (BookID, MemberID, LoanDate, ReturnDate) VALUES
(1, 1, '2025-05-01', '2025-05-15'),
(2, 2, '2025-05-03', '2025-05-17');
