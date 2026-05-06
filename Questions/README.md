# SQL Server Practical Test - Questions

## Instructions for Students
- Complete all questions in order
- Write your answers in a new SQL script file
- For theoretical questions, create a markdown file with your answers
- Submit all files in a zip folder named: YourName_SQL_Test.zip

## Total Marks: 100
## Time: 2 Hours

---

## SECTION A: RDBMS Concepts (20 Marks)

### Question 1 (4 marks)
Define the following terms with real-world examples:
a) Data vs Database
b) DBMS vs RDBMS

### Question 2 (4 marks)
List any 4 benefits of using a Database Management System.

### Question 3 (4 marks)
Explain the following database models with diagrams:
a) Hierarchical Model
b) Network Model
c) Relational Model

### Question 4 (4 marks)
What are the characteristics of a table in RDBMS? List and explain any 4.

### Question 5 (4 marks)
Describe the differences between entities and tables. Give an example of each.

---

## SECTION B: ER Modeling & Normalization (20 Marks)

### Question 6 (5 marks)
A university has the following requirements:
- A student can enroll in many courses
- A course can have many students
- Each course has one instructor
- An instructor can teach many courses

Draw an ER diagram (create using text or describe the relationships, cardinalities, and entities). Then identify:
a) All entities
b) Relationships with cardinalities
c) Primary keys for each entity

### Question 7 (5 marks)
Normalize the following unnormalized table to 3NF:

**StudentCourse Table:**
StudentID, StudentName, CourseID, CourseName, InstructorName, InstructorPhone, Grade

Show your work for:
a) 1NF
b) 2NF
c) 3NF

### Question 8 (5 marks)
Explain the following relational operators with SQL-like examples:
a) SELECT (σ)
b) PROJECT (π)
c) JOIN (⋈)
d) UNION (∪)

### Question 9 (5 marks)
List and explain all 5 normal forms (1NF to 5NF) with simple examples for at least 3 normal forms.

---

## SECTION C: SQL Server & Transact-SQL Basics (25 Marks)

### Question 10 (5 marks)
Write the correct sequence of logical order of operators in a SELECT statement. Explain why this order matters.

### Question 11 (5 marks)
What are the different categories of Transact-SQL statements? Provide 2 examples for each category.

### Question 12 (5 marks)
Create a script that demonstrates the use of the following data types in SQL Server:
- INT, VARCHAR, DATE, DECIMAL, BIT, XML

Create a table called `DataTypesDemo` and insert at least 2 records.

### Question 13 (5 marks)
Given the following tables:

**Employees:**
- EmployeeID (int)
- FirstName (varchar)
- LastName (varchar)
- DepartmentID (int)
- Salary (decimal)

**Departments:**
- DepartmentID (int)
- DepartmentName (varchar)

Write SQL queries to:
a) Find all employees with salary > 50000
b) Find employees whose last name starts with 'S'
c) Sort employees by salary descending
d) List employees with their department names using a JOIN

### Question 14 (5 marks)
Explain the following:
a) Database snapshots (when and why to use)
b) Transaction logs and their importance
c) Filegroups in SQL Server

---

## SECTION D: Database & Table Management (15 Marks)

### Question 15 (5 marks)
Write complete SQL statements to:
a) Create a database called `CompanyDB` with appropriate file settings
b) Add a secondary filegroup and a data file to `CompanyDB`
c) Drop the `CompanyDB` database (with safety check)

### Question 16 (5 marks)
For the `CompanyDB` database, create the following tables with appropriate constraints:

**Table: Departments**
- DepartmentID (Primary Key, int, identity)
- DepartmentName (varchar(50), not null, unique)
- Location (varchar(100))
- Budget (decimal(15,2), check budget > 0)

**Table: Employees**
- EmployeeID (Primary Key, int, identity)
- FirstName (varchar(50), not null)
- LastName (varchar(50), not null)
- Email (varchar(100), unique)
- HireDate (date, default to current date)
- Salary (decimal(10,2), check salary between 30000 and 200000)
- DepartmentID (Foreign Key referencing Departments)

### Question 17 (5 marks)
Write commands to:
a) Add a new column `PhoneNumber` (varchar(15)) to Employees table
b) Modify the `Location` column in Departments to varchar(150)
c) Drop the `Budget` column from Departments table
d) Rename the Employees table to `StaffMembers`

---

## SECTION E: Advanced Queries & Joins (20 Marks)

### Question 18 (5 marks)
Using the tables from Question 16, write queries for:
a) Find the average salary per department (use GROUP BY and aggregate functions)
b) Find departments with average salary > 50000 (use HAVING clause)
c) Count the number of employees in each department
d) Find the highest paid employee in each department (use subquery or window function)

### Question 19 (5 marks)
For the following tables, write JOIN queries:

**Table A (Customers):** CustomerID, CustomerName
**Table B (Orders):** OrderID, CustomerID, OrderAmount

Write queries demonstrating:
a) INNER JOIN
b) LEFT JOIN
c) RIGHT JOIN
d) FULL OUTER JOIN
e) CROSS JOIN

### Question 20 (5 marks)
Write a query using subqueries to:
a) Find employees who earn more than the average salary of all employees
b) Find departments that have no employees (using NOT EXISTS)
c) Find the second highest salary in the company (using subquery or TOP with ORDER BY)

### Question 21 (5 marks)
Explain and demonstrate with examples:
a) Table expressions (CTE - Common Table Expression)
b) Pivoting data (using PIVOT operator)
c) Grouping sets (ROLLUP, CUBE, GROUPING SETS)

---

## BONUS QUESTION (10 Extra Points)

### Question 22
Create a complete script that:
1. Creates a database called `LibraryManagement`
2. Creates tables for: Books, Members, Loans
3. Establishes proper relationships (PK, FK)
4. Inserts at least 5 records per table
5. Writes a complex query showing:
   - Members who borrowed books in the last 30 days
   - Books that are currently loaned out
   - Most popular book (most times borrowed)
6. Creates a view that shows overdue books (14 days return period)

---

## Submission Checklist
- [ ] All SQL queries are tested and working
- [ ] Theoretical answers are complete and well-explained
- [ ] ER diagram is clearly drawn/described
- [ ] Normalization steps are shown clearly
- [ ] Scripts include error handling where appropriate
- [ ] Code is properly formatted with comments

**Good luck!**
