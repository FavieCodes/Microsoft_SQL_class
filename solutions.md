# question 1;
A;
Data is often used as the raw material for analysis and decision-making.
Example of data in real-world:
A table named "Employees" with columns EmployeeID, FirstName, LastName, Department, and
Salary. This table could be used to store information about employees in a company, including their unique ID, names, department they work in, and their salary.
while
Databases : database is a structured digital repository that holds information in a way that 
makes it easy to store, retrieve, update, and manage.
Example of database in real-world:
A university database that contains information about students, courses, and professors.
The database may have tables such as "Students," "Courses," and "Professors," with relationships 
between them to track which students are enrolled in which courses and which professors are teaching those courses.

B;
What is DBMS?
DBMS stands for Database Management System. It is software that allows users to create, manage,and
interact with databases. A DBMS provides an interface for users to perform various operations on 
the database, such as inserting, updating, deleting, and querying data. It also handles tasks 
like data security, backup and recovery, and concurrency control to ensure the integrity and 
availability of the database.
Examples of DBMS include MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server, and MongoDB.

RDBMS stands for Relational Database Management System: It is a type of DBMS that organizes data into
tables with rows and columns, and uses SQL for managing and querying the data.
RDBMS is based on the relational model, which allows for the establishment of relationships between
tables through the use of primary keys and foreign keys.
Examples of RDBMS include MySQL, PostgreSQL, Oracle Database, and Microsoft SQL Server.

# question 2;

1. Data Integrity: A DBMS ensures that the data stored in the database is accurate and consistent, preventing data corruption and maintaining the quality of the information.

2. Data Security: DBMS provides mechanisms to protect the database from unauthorized access and ensures that only authorized users can view or modify the data, maintaining confidentiality and privacy.

3. Data Sharing: A DBMS allows multiple users and applications to access and share data simultaneously, facilitating collaboration and improving efficiency in managing and utilizing the information.

4. Backup and Recovery: DBMS offers built-in features for creating backups of the database and restoring it in case of system failures or data loss, ensuring data durability and minimizing downtime.

#question 3;
Hierarchical Model:
The hierarchical model organizes data in a tree-like structure, where each record has a single parent and can have multiple child records. This model is efficient for representing one-to-many relationships. 
Example:
          Root
         /    \
      Child1  Child2
      /   \     |
   Sub1  Sub2  Sub3

b) Network Model:
The network model is similar to the hierarchical model but allows for more complex relationships. In this model,a record can have multiple parents and multiple children, creating a graph-like structure. This model is efficient for representing many-to-many relationships. 
Example:
          Root
         /    \
      Child1  Child2
      /   \     |
   Sub1  Sub2  Sub3
    |      |     |
   Sub4   Sub5  Sub6

c) Relational Model:
The relational model organizes data into tables (relations) consisting of rows and columns. Each table represents an entity, and the relationships between entities are represented through foreign keys. This model is efficient for representing complex relationships and allows for easy querying using SQL. 
Example: 
Employees
| EmployeeID | Name   | DepartmentID |

#question 4;

1. Rows (Records): Each row in a table represents a single record or instance of the data being stored.
2. Columns (Attributes): Each column in a table represents a specific attribute or property of the data.
3. Primary Key: A primary key is a column or a combination of columns that uniquely identifies each row in the table. It ensures data integrity and allows for efficient retrieval of records.
4. Foreign Key: A foreign key is a column or a combination of columns that establishes a link between two tables. It references the primary key of another table, enabling the creation of relationships between tables.

#question 5;

Describe the differences between entities and tables. Give an example of each.
Entities and tables are fundamental concepts in database design, but they serve different purposes.

An entity is a real-world object or concept that is represented in the database. It has attributes and relationships with other entities. 
For example, a "Student" entity might have attributes like "StudentID", "Name", and "Email".

A table is a structured collection of data in a relational database. It consists of rows and columns, where each row represents a record and each column represents an attribute. 
For example, a "Students" table might have columns for "StudentID", "Name", and "Email".


