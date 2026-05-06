### questionnumber 1
1 (a) Data can be defined as raw set of information or a collection of information while a database has to do with organized set of information
(b) DBMS means databased management system and it has to do with how you store your data i.e, either in hierachial structure, or in tables while RDMS which is relational database management system stores data in rowss and colums

### question nuumber 2
i. Stores data in an organized format
11. Easy to assess

### question number 3
(a)Hierarchial Model: Stores data based on stacks or in a simple format, in a tree based format
                                a
                                |
                                |
        |                       |                |
        B                       C                D

(b)Network Model:


(c)Relational Model: It stores data in rows and columns or in a tabular structure
Id   | Name  | Salary|  Location

### question number 4




### question number 5

A. Entities define what we want to store while database stores the actual data

B. Entities are stored mainly in singular form e.g `Order, Customer, Restaurant while Databse are stored in plural forms e.g Orders, Customers, etc

C. Entitiies uses attribute mode while data uses colums

D.  Entities define relationships between objects like one-to-many or many-to-many In tables, these are implemented via foreign keys to maintain referential integrity.

E. Entities are used primarily during database design to outline requirements and structure, while tables are used to store, query, and manage data physically.


### SECTION B: ER Modelling and Normalization
### QUESTION 6




### QUESTION 7
StudentCourse Table
| StudentID | StudentName | CourseID | CourseName | InstructorName | InstructorPhone | Grade |

Step a) First Normal Form (1NF)
1NF Conversion:
Ensure that each attribute contains atomic data.
Each student-course pair has one row.
1NF Table:
| StudentID | StudentName | CourseID | CourseName | InstructorName | InstructorPhone | Grade |
|-----------|-------------|----------|------------|----------------|----------------|-------|
Each row now represents one student enrolled in one course with one grade. The table is now in 1NF.
Step b) Second Normal Form (2NF)
Let us note that a table is in 2NF if it is in its  1NF.
Every non-prime attribute is fully functionally dependent on the whole primary key (no partial dependency).
Primary Key Analysis:
In the 1NF table, the composite key is likely (StudentID, CourseID) since a student can take multiple courses.
Non-prime attributes: StudentName, CourseName, InstructorName, InstructorPhone, Grade.
Functional Dependencies:
StudentID → StudentName
CourseID → CourseName, InstructorName, InstructorPhone
(StudentID, CourseID) → Grade
Partial Dependencies:
StudentName depends only on StudentID → partial dependency.
CourseName, InstructorName, InstructorPhone depend only on CourseID → partial dependency.
Grade depends on the full key (StudentID, CourseID) → ok.
2NF Decomposition: Break table into tables that remove partial dependencies:
Student Table:
| StudentID | StudentName |
Primary Key: StudentID
Course Table:
| CourseID | CourseName | InstructorName | InstructorPhone |
Primary Key: CourseID
Enrollment Table: (relationship between students and courses)
| StudentID | CourseID | Grade |
Primary Key: (StudentID, CourseID)
All tables are now in 2NF (no partial dependencies).
Step c) Third Normal Form (3NF)
It is important to note that a table is in 3NF if it is in 2NF.
No non-prime attribute is transitively dependent on the primary key.
Analysis:

Student Table (StudentID → StudentName)
StudentName depends only on the key, no transitive dependency → 3NF.
Course Table (CourseID → CourseName, InstructorName, InstructorPhone):
Potential transitive dependency: InstructorName → InstructorPhone.
If an instructor teaches multiple courses, InstructorPhone depends on InstructorName, not directly on CourseID.
Decomposition to remove transitive dependency:
Instructor Table:
| InstructorName | InstructorPhone |
Primary Key: InstructorName
Course Table (updated):
| CourseID | CourseName | InstructorName |
Primary Key: CourseID
InstructorName is a foreign key referencing the Instructor table.
Enrollment Table remains the same:
| StudentID | CourseID | Grade |
Primary Key: (StudentID, CourseID)
Foreign keys: StudentID → Student table, CourseID → Course table
All tables now satisfy 3NF (no partial or transitive dependencies).
Final 3NF Schema
Student Table
| StudentID | StudentName |
PK: StudentID
Instructor Table
| InstructorName | InstructorPhone |
PK: InstructorName
Course Table
| CourseID | CourseName | InstructorName |
PK: CourseID
FK: InstructorName references Instructor
Enrollment Table
| StudentID | CourseID | Grade |
PK: (StudentID, CourseID)
FK: StudentID references Student
FK: CourseID references Course

### QUESTION 8
(a) The SELECT commmand is an SQL Query language and it is used to retrieve information from a table or a colum in a table. e.g SELECT * retrieves all informations from a specific table

(b) Project


(c) Joins is used to combine two or more tables based on a related colums. We have the INNER JOINS, RIGHT JOINS, LEFT JOINS, Etc.

(d) UNION

### QUESTION 9
(a) First Normal Form: Thios ensures that each attribute contains atomic data and that there should be no form of redundancy.

(b) SECOND NORMAL FORM: For there to be a Second Normal Form (2NF), such a table must first be in its First Normal Form and that every non-prime value is dependent on the primary key in that there should be no form of partial depency. This form kicks against partial dependencies.

(c)Third Normal Form (3NF)
It is important to note that a table is in 3NF if it is in 2NF.
No non-prime attribute is transitively dependent on the primary key.

(d) FOURTH NORMAL FORM (4NF):


(e)FIFTH NORMAL FORM (5NF):

## SECTION C: SQL Server & Transact-SQL Basics