CREATE DATABASE Library_CEBILEMABASO  

USE Library_CEBILEMABASO;


/*QUESTION 1:Create the table "Branch" and insert the following records*/
CREATE TABLE Branch 
(Branch_No varchar(20) primary key,
Manager_Id varchar(20),
Branch_Address varchar(50),
Contact_No varchar(50)
); 

INSERT INTO Branch values 
('B001', 'M101', '1 Peter Mokaba Road', '+2719988676'),
('B002', 'M102', '6 Windemere Road', '+2719988677'),
('B003', 'M103', '7 Soldiers Way', '+27319988678'),
('B004', 'M104', '3 Miriam Makeba Ave', '+27212988679'),
('B005', 'M105', '9 Bulwer St', '+27873988680');

/*QUESTION 2: Create the table "Employee" and insert the following data.*/
CREATE TABLE Employee
(Emp_ID varchar(20) primary key,
Emp_Name varchar(50), 
Brach_No varchar(20) foreign key references Branch(Branch_No),
Position varchar(50),
Salary decimal 
); 

INSERT INTO Employee values
('E101', 'John Craig', 'B002', 'Manager', 60000.00),
('E102', 'Mandla Mabaso', 'B001', 'Clerk', 45000.00),
('E103', 'Zama Dlamini', 'B003', 'Librarian', 55000.00),
('E104', 'Mlondi Nzama', 'B004', 'Assistant', 40000.00),
('E105', 'Sarah Brown', 'B001', 'Assistant', 42000.00),
('E106', 'Sasha Michael', 'B002', 'Assistant', 43000.00),
('E107', 'Michael Drewsbury', 'B001', 'Manager', 62000.00),
('E108', 'Asanda Ncube', 'B003', 'Clerk', 46000.00),
('E109', 'Ayanda Mbatha', 'B003', 'Librarian', 57000.00),
('E110', 'Sifiso Ndaba', 'B003', 'Assistant', 41000.00),
('E111', 'Buhle Nyaba', 'B003', 'Manager', 65000.00);

/*QUESTION 3: Create table “Customer” and insert the following data*/
CREATE TABLE Customer 
(Customer_ID varchar(20) primary key,
Customer_Name varchar(50),
Customer_Address varchar(50),
Reg_Date date
);

INSERT INTO Customer values
('C101', 'Mandla Dube', '123 Main St', '2021-05-15'),
('C102', 'Eddie Cross', '456 Elm St', '2021-06-20'),
('C103', 'Anele Malinga', '789 Oak St', '2021-07-10'),
('C104', 'Eric Don', '567 Pine St', '2021-08-05'),
('C105', 'Evans Murphy', '890 Maple St', '2021-09-25'),
('C106', 'Thobeka Jali', '234 Cedar St', '2021-10-15'),
('C107', 'Zandile Dlamini', '345 Walnut St', '2021-11-20'),
('C108', 'Thandeka Ndlovu', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Brown', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25');

/*QUESTION 4: Create table “IssueStatus” and insert the following data: [2]
Table Structure*/
CREATE TABLE IssueStatus
(Issue_ID varchar(20) primary key,
Issued_Cust varchar(20),
Issued_BookName varchar(100),
Issue_Date date,
ISBN_Book varchar(50)
);

INSERT INTO IssueStatus values 
('IS101', 'C101', 'The Catcher in the Rye', '2023-05-01', '978-0-553-29698-2'),
('IS102', 'C102', 'The Da Vinci Code', '2023-05-02', '978-0-7432-4722-4'),
('IS103', 'C103', '1491: New Revelations of the Americas Before Columbus', '2023-05-03', '978-0-7432-7357-1'),
('IS104', 'C104', 'Sapiens: A Brief History of Humankind', '2023-05-04', '978-0-307-58837-1'),
('IS105', 'C105', 'The Diary of a Young Girl', '2023-05-05', '978-0-375-41398-8');

/*QUESTION 5: Create the table “ReturnStatus” and insert the following data*/
CREATE TABLE ReturnStatus 
(Return_ID varchar(20) primary key,
Return_Cust varchar(20),
Return_BookName varchar(100),
Return_Date date,
ISBN_Book2 varchar(50)
);

INSERT INTO ReturnStatus values
('RS101', 'C101', 'The Catcher in the Rye', '2023-06-06', '978-0-553-29698-2'),
('RS102', 'C102', 'The Da Vinci Code', '2023-06-07', '978-0-7432-4722-4'),
('RS103', 'C105', 'The Diary of a Young Girl', '2023-06-08', '978-0-375-41398-8'),
('RS104', 'C108', 'The Histories', '2023-06-09', '978-0-14-044930-3'),
('RS105', 'C110', 'A Game of Thrones', '2023-06-10', '978-0-09-957807-9');

/*QUESTION 6: Create table “Books” and insert the following data:*/
CREATE TABLE Books 
(ISBN varchar(50) primary key,
Book_Title varchar(100),
Category varchar(50),
Rental_Price decimal,
Status varchar(20),
Author varchar(50),
Publisher varchar(50)
);


INSERT INTO Books values
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', 'Harry Potter and the Sorcerers Stone', 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', 'A Peoples History of the United States', 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial');

INSERT INTO Books values 
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes','Charles C. Mann', 'Vintage Books');

/*QUESTION 7: List the employee names and their respective salaries in descending order of salary.*/

SELECT Emp_Name, Salary 
FROM Employee 
ORDER BY Salary desc; 

/*QUESTION 8: Display the total number of books in each category.*/

SELECT Category, COUNT(Book_Title) AS TotalBooks_Per_Category
FROM Books
GROUP BY Category;

/*QUESTION 9:Retrieve the employee names and their positions for
the employees whose salaries are above
R50,000*/
SELECT Emp_Name, Position
FROM Employee
WHERE Salary > 50000;


/*QUESTION 10: Retrieve the book title of all 
books that have a title containing the word 'history'.*/
SELECT Book_Title 
FROM Books
WHERE Book_Title like '%history%';


/*QUESTION 11: Using a procedure and JOIN, 
retrieve the branch numbers along with the number of employees
for branches having more than 3 employees*/

CREATE PROCEDURE Disp_BranchNumbers1 @BranchNo1 varchar(20)
AS
    SELECT Brach_No, Count(Emp_ID) as Number0fEmp 
    FROM Employee 
    JOIN Branch on Branch.Branch_No = Employee.Brach_No 
    GROUP BY Branch_No, Employee.Brach_No
    HAVING COUNT(emp_id) > 3;
 

exec Disp_BranchNumbers1 'B001'

/*QUESTION 12: Create a view to retrieve the book title, category, and rental price of all available books.*/
CREATE view Bookss
AS 
SELECT Book_Title, Category, Rental_Price 
FROM Books
where ISBN not in 
  (select ISBN_Book from IssueStatus);

SELECT * from Bookss

/*QUESTION 13: Using JOIN, write a procedure to retrieve the book titles and the corresponding customers who
have been issued with books.*/
CREATE PROCEDURE cust_books
as 
SELECT Book_Title, Customer_Name FROM Customer
JOIN IssueStatus on IssueStatus.Issued_Cust = Customer.Customer_ID
JOIN Books on Books.ISBN = IssueStatus.ISBN_Book

exec cust_books;

/*QUESTION 14: Using JOIN, write a procedure to display the names of customers who have been issued with
books in the month of June 2023.*/
CREATE PROCEDURE BooksIssued1 @IssuedDate1 date
AS 
SELECT Customer_Name, Issue_Date FROM Customer 
JOIN IssueStatus on IssueStatus.Issued_Cust = Customer.Customer_ID
WHERE Issue_Date = @IssuedDate1

exec BooksIssued1 '2023-06-01'

/*QUESTION 15: Using CASE, write a procedure to change the status of any book to ‘yes’ given its isbn code.*/

CREATE PROCEDURE ChangeStat @ISBNValue varchar(50)
as
UPDATE Books set status = 
CASE 
WHEN ISBN = @ISBNValue THEN 'No'
ELSE 'Invalid'
END 
 
exec ChangeStat '978-0-09-957807-9'


/*QUESTION 16: Create a view to list the customer names who registered before 2022-01-01 and have not been
issued with any books yet. Include a subquery.*/

CREATE VIEW CustomerList 
AS
SELECT Customer_Name, Reg_Date FROM Customer
where Reg_Date < '2022-01-01' and 
   Customer_ID NOT in
      (Select Issued_Cust FROM IssueStatus) 

  Select * from CustomerList