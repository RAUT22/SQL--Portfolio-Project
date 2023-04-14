USE Library_Management_System

-- Craeting table named "Publisher".

CREATE TABLE Publisher
(
  PublisherID INT primary key,
  PublisherName varchar(30),
  PublisherAdd varchar(100),
  PublisherContact varchar(20)
);

-- Creating Table named "Authors".

CREATE TABLE Author
(
  AuthorID INT primary key,
  AuthorName varchar(100)
)

-- Creating Table named "LibraryBranch"

CREATE TABLE LibraryBranch
(
  BranchID INT primary key,
  BranchName varchar(30),
  BranchAdd varchar(30)
)

-- Creating Table Named "Book"

CREATE TABLE Book
(
  BookID INT primary key,
  BookTitle varchar(100),
  BookAuthorId INT,
  BookPublisherID INT,
  BookPublicationDate Date,
  FOREIGN KEY (BookPublisherID) REFERENCES Publisher(PublisherID),
  FOREIGN KEY (BookAuthorId) REFERENCES Author(AuthorID)
)
   
-- Creating Tablea named "Borrower"

CREATE TABLE Borrower
(
  BorrowerID INT primary key,
  BorrowerName varchar(50),
  BorrowerAdd varchar(50),
  BorrowerContact varchar(20)
)

-- Creating Table named "BookLoan"

CREATE TABLE BookLoan
(
  LoanID INT primary key,
  BookID INT,
  BorrowerID INT,
  LoanDate Date,
  DueDate Date,
  FOREIGN KEY (BookID) REFERENCES Book(BookID),
  FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID)
)

-- Creating Table named "BookCopies"

CREATE TABLE BookCopies
(
  CopyID INT primary key,
  BookID INT,
  BranchID INT,
  NoOfCopies INT,
  FOREIGN KEY (BookID) REFERENCES Book(BookID),
  FOREIGN KEY (BranchID) REFERENCES LibraryBranch(BranchID)
)


-- After creating tables succefully we can now populate them.

-- Populating Tables.

INSERT INTO Publisher(PublisherID, PublisherName, PublisherAdd, PublisherContact)
VALUES(1,'Random House India','New Delhi','+0000000'),
      (2,'HarperCollins India','New Delhi','+11111111'),
	  (3,'Random House India','New Delhi','+2222222'),
	  (4,'Vintage Books','New Delhi','+3333333'),
	  (5,'Indian Thought Publications','Mumbai','+4444444'),
	  (6,'Ravi Dayal Publisher','New Delhi','+5555555'),
	  (7,'Westland Publications','Chennai','+6666666'),
	  (8,'Picador India','New Delhi','+7777777')


INSERT INTO Author(AuthorID, AuthorName)
VALUES(1,'Arundhati Roy'),
	  (2,'Vikram Seth'),
	  (3,'Aravind Adiga'),
	  (4,'Salman Rushdie'),
	  (5,'Jhumpa Lahiri'),
	  (6,'R.K.Narayan'),
	  (7,'Khushwant Singh'),
	  (8,'Amitav Ghosh'),
	  (9,'Amish Tripathi'),
	  (10,'Chitra Divakaruni')


INSERT INTO LibraryBranch(BranchID, BranchName, BranchAdd)
VALUES(1, 'New Delhi Central Library', 'Delhi'),
      (2, 'Mumbai Public Library', 'Mumbai'),
	  (3, 'Kolkata City Library', 'Kolkata'),
	  (4, 'Chennai District Library', 'Chennai'),
	  (5, 'Bangalore Municipal Library', 'Bangalore'),
	  (6, 'Hyderabad Central Library', 'Hyderabad'),
	  (7, 'Pune City Library', 'Pune'),
	  (8, 'Ahmedabad District Library', 'Ahmedabad'),
	  (9, 'Jaipur Regional Library', 'Jaipur'),
	  (10, 'Lucknow Public Library', 'Lucknow')


INSERT INTO Book(BookID, BookTitle, BookAuthorId, BookPublisherID, BookPublicationDate)
VALUES(1,'The God of Small Things',1,1,'1997-01-01'),
	  (2,'A Suitable Boy',2,2,'1993-02-01'),
	  (3,'The White Tiger',3,3,'2008-03-03'),
	  (4,'Midnights Children',4,4,'1981-04-04'),
	  (5,'The Namesake',5,2,'2003-05-05'),
	  (6,'The Guide',6,5,'1997-01-01'),
	  (7,'Train to Pakistan',7,6,'1956-06-06'),
	  (8,'The Shadow Lines',8,6,'1988-07-07'),
	  (9,'The Immortals of Meluha',9,7,'2010-08-08'),
	  (10,'The Palace of Illusions',10,8,'2008-09-09')


INSERT INTO Borrower(BorrowerID, BorrowerName, BorrowerAdd, BorrowerContact)
VALUES(1001,'Rhaul Sharma', 'New Delhi','+91-9876543210'),
	  (1002, 'Priya Patel', 'Mumbai', '+91-9876543211'),
	  (1003, 'Sanjay Gupta', 'Kolkata', '+91-9876543212'),
	  (1004, 'Anu Singh', 'Chennai', '+91-9876543214'),
	  (1005, 'Shweta Varma', 'Hyderabad','+91-9876543215'),
	  (1006, 'Ravi Patel', 'Pune','+91-9876543216'),
	  (1007, 'Neha Gupta', 'Ahmedabad','+91-9876543217'),
	  (1008, 'Rohit Singh', 'Jaipur','+91-9876543218'),
	  (1009, 'Ananya Patel', 'Lucknow', '+91-9876543219'),
	  (1010, 'Rajesh Sharma', 'Bangalore','+91-9876543214')


INSERT INTO BookLoan(LoanID, BookID, BorrowerID, LoanDate, DueDate)
VALUES(101,2,1003,'2023-04-14','2023-05-14'),
	  (102,1,1001,'2023-04-15','2023-05-15'),
	  (103,3,1002,'2023-04-16','2023-05-16'),
	  (104,4,1005,' 2023-04-17','2023-05-17'),
	  (105,5,1004,'2023-04-18','2023-05-18'),
	  (106,8,1006,'2023-04-19','2023-05-19'),
	  (107,7,1007,'2023-04-20','2023-05-20'),
	  (108,9,1009,'2023-04-21','2023-05-21'),
	  (109,6,1008,'2023-04-22','2023-05-22'),
	  (110,10,1010,'2023-04-23','2023-05-23')


INSERT INTO BookCopies(CopyID, BookID, BranchID, NoOfCopies)
VALUES(1101, 1, 1, 5),
	  (1102, 2, 2, 6),
	  (1103, 3, 3, 8),
	  (1104, 4, 4, 4),
	  (1105, 5, 5, 5),
	  (1106, 6, 6, 7),
	  (1107, 7, 7, 4),
	  (1108, 8, 8, 2),
	  (1109, 9, 9, 9),
	  (1110, 10, 10, 3)


-- Creating Stored Procedures for following questions.

--Q.1.-How many copies of the book titled "A Suitable Boy" are owned by the library branch whose name is "Mumbai Public Library"?

CREATE PROCEDURE GetBookCopieByBranch @BranchName NVARCHAR(100)
AS
BEGIN
	SELECT COUNT(bc.CopyID) AS NumOfCopies
	FROM BookCopies AS bc
	INNER JOIN Book AS b ON bc.BookID = b.BookID
	INNER JOIN LibraryBranch AS lb ON bc.BranchID = lb.BranchID
	WHERE b.BookTitle = 'A Suitable Boy' AND lb.BranchName = 'Mumbai Public Library'
END

-- Executing the Procedures.

EXEC GetBookCopieByBranch @BranchName = 'Mumbai Public Library'


--Q.2.-How many copies of the book titled "The White Tiger" are owned by each library branch?

CREATE PROCEDURE GetBookCopiesByAllBranches 
AS
BEGIN
	SELECT lb.BranchName, COUNT(bc.CopyID) AS NumOfCopies
	FROM BookCopies AS bc
	INNER JOIN Book AS b ON bc.BookID = b.BookID
	INNER JOIN LibraryBranch AS lb ON bc.BranchID = lb.BranchID
	WHERE b.BookTitle = 'The White Tiger'
	GROUP BY lb.BranchName
END

-- Executing the Procedures

EXEC GetBookCopiesByAllBranches

--Q.3.Retrieve the names of all borrowers who do not have any books checked out.

CREATE PROCEDURE GetBorrowersWithBooksCheckedOut
AS
BEGIN
	SELECT BorrowerName
	FROM Borrower
	Where BorrowerID NOT IN ( SELECT DISTINCT BorrowerID
							  FROM BookLoan)
END

-- Executing the Procedures

EXEC GetBorrowersWithBooksCheckedOut

--Q.4.For each book that is loaned out from the "Chennai District Library" branch and whose DueDate is 2023-05-17, retrieve the book title, the borrower's name, and the borrower's address.

CREATE PROCEDURE GetBookLoanDetails
AS
BEGIN
    SELECT b.BookTitle, br.BorrowerName, br.BorrowerAdd
    FROM BookLoan bl
    INNER JOIN Book AS b ON bl.BookID = b.BookID
    INNER JOIN Borrower AS br ON bl.BorrowerID = br.BorrowerID
    INNER JOIN LibraryBranch AS lb ON lb.BranchID = lb.BranchID
    WHERE lb.BranchName = 'Chennai District Library' 
    AND CONVERT(DATE, bl.DueDate) = '2023-05-17';
END

-- Executing the Procedures

exec GetBookLoanDetails

--Q.5.For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

CREATE PROCEDURE GetBookLoanedOutByBranch
AS
BEGIN
	SELECT lb.BranchName, COUNT(*) AS NoOfBooksLoaned
	FROM BookLoan AS bl
	INNER JOIN LibraryBranch AS lb ON lb.BranchID = lb.BranchID
	GROUP BY lb.BranchName
END


-- Executing the Procedures

EXEC GetBookLoanedOutByBranch


--Q.6.Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.

CREATE PROCEDURE GetBorrowersWithMoreThanFiveBooksCheckedOut
AS
BEGIN
	SELECT br.BorrowerName, br.BorrowerAdd, COUNT(*) AS NumOfBooksCheckedOut
	FROM BookLoan AS bl
	INNER JOIN Borrower AS br ON bl.BorrowerID = br.BorrowerID
	GROUP BY br.BorrowerName, br.BorrowerAdd
	HAVING COUNT(*) > 5
END

-- Executing the Procedures

EXEC GetBorrowersWithMoreThanFiveBooksCheckedOut

--Q.7.For each book authored by "R.K.Narayan", retrieve the title and the number of copies owned by the library branch whose name is "Hyderabad Central Library".

CREATE PROCEDURE GetBookCopiesByAuthorAndBranch
AS
BEGIN
	SELECT b.BookTitle, bc.NoOfCopies
	FROM Book AS b
	INNER JOIN Author AS a ON b.BookAuthorId = a.AuthorID
	INNER JOIN BookCopies AS bc ON b.BookID = bc.BookID
	INNER JOIN LibraryBranch AS lb ON bc.BranchID = lb.BranchID
	WHERE a.AuthorName = 'R.K.Narayan' AND lb.BranchName = 'Hyderabad Central Library'
END

-- Executing the Procedures

EXEC GetBookCopiesByAuthorAndBranch
