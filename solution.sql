#question 7
studentID studentName courseID courseName instructorPhone  instructorName grade
1            Abas     101      Math        2015647448484            Dr. Smith    85
2            Ide      102      Science     2027474488484            Dr. Johnson  90
3            Anita     101      Math        201 7373383838             Dr. Smith    78

1NF unique rows
2NF    StudentID   StudentName eliminates dependency
        101        Abas
        102        Ide
        101        Anita
3NF    StudentID   StudentName eliminates transitive dependency
        101        Abas
        102        Ide
        101        Anita

15 
CREATE DATABASE CompanyDB;


ALTER DATABASE CompanyDB ADD FILEGROUP CompanyFG;

CREATE TABLE CompanyDB.dbo.Employee
(
    EmployeeID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
) ON CompanyFG;


ALTER DATABASE CompanyDB REMOVE FILEGROUP CompanyFG;

16

CREATE TABLE Departments (
    DepartmentID INT IDENTITY PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50),
    Budget DECIMAL(15,2) CHECK (Budget > 0)
);

CREATE TABLE Employees (
    EmployeeID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    HireDate DATE DEFAULT GETDATE(),
    Salary DECIMAL(10,2) CHECK (Salary BETWEEN 30000 AND 200000),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
);

17
ALTER TABLE Employees ADD PhoneNumber VARCHAR(15);


ALTER TABLE Departments DROP COLUMN Budget;

EXEC sp_rename 'Employees', 'StaffMembers';
 