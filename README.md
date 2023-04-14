Library Management System SQL Project

This is a SQL project for a library management system. It includes several tables to store information about publishers, authors, library branches, books, borrowers, book loans, and book copies. The project aims to manage the transactions and interactions that take place in a library.

**Database Setup**
To set up the database for this library management system, follow the steps below:

1. Create a database named "Library_Management_System" using the SQL CREATE statement:
   
   CREATE DATABASE Library_Management_System;

2. Create the necessary tables using the CREATE TABLE statements provided in the project. 

The tables are as follows:

•	Publisher: stores information about publishers, including their ID, name, address, and contact information.
•	Author: stores information about authors, including their ID and name.
•	LibraryBranch: stores information about library branches, including their ID, name, and address.
•	Book: stores information about books, including their ID, title, author ID, publisher ID, and publication date. It also includes foreign key references to the Publisher and Author tables.
•	Borrower: stores information about borrowers, including their ID, name, address, and contact information.
•	BookLoan: stores information about book loans, including their ID, book ID, borrower ID, loan date, and due date. It includes foreign key references to the Book and Borrower tables.
•	BookCopies: stores information about book copies, including their ID, book ID, branch ID, and the number of copies. It includes foreign key references to the Book and LibraryBranch tables.


3. Populate the tables with data using the INSERT INTO statements provided in the project. The INSERT INTO statements will add sample data to the tables for testing and demonstration purposes.

**Project Usage**
This library management system is designed to handle transactions and interactions that occur in a library, such as adding new books, borrowers, or publishers, loaning books to borrowers, and managing book copies in different library branches.

You can use SQL queries and transactions to perform various operations on the tables, such as adding, updating, and deleting records. You can also retrieve information from the tables by querying the data using SQL SELECT statements.


Here are some example queries that you can use with this library management system:

•	Retrieve all books from the Book table:
  SELECT * 
  FROM Book;

•	Retrieve all borrowers from the Borrower table:
  SELECT * 
  FROM Borrower;

•	Insert a new book into the Book table:
  INSERT INTO Book(BookID, BookTitle, BookAuthorId, BookPublisherID, BookPublicationDate)
  VALUES(11, 'The Catcher in the Rye', 11, 9, '1951-07-16');

•	Update the title of a book in the Book table:
  UPDATE Book
  SET BookTitle = 'To Kill a Mockingbird'
  WHERE BookID = 12;

•	Delete a borrower from the Borrower table:
  DELETE FROM Borrower
  WHERE BorrowerID = 1007;

You can customize and extend the functionality of this library management system by adding additional tables, columns, and relationships based on your specific requirements. Remember to use appropriate SQL transactions and error handling techniques to ensure data integrity and reliability in a real-world library management system.
