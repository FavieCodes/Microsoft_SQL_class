# question 1 
1a. A Data is a raw piece of information that can be stored or used.
1a. A Database is collection of data that can be stored,managed and Updated.
1b.DBMS is a software that stores,manages and updates data.
1b.RDBMS is an advance database software that organizes the data in tables(rows and columns) and also makes them have a relationship
# question 2
1. It improves Data security
2. It helps in Readability
3. It helps in Accountability
4. It helps in Storing datas
# question 3
1.It is a data structure that organizes data in a tree-like or top-down structure.
2.It is a framework defining how data is organized, stored or transmitted.
3.It is a method for organizing data into tables consisting of rows and columns
# question 4
1.Rows and Columns: Data is organized in a grid.
2.Unique Rows (Primary Key): A primary key uniquely identifies each record, ensuring no other rows are identical.
3.Unique Column Names: Each column within a table must have a distinct name.
4.Uniform Data Types: All values in a column belong to the same data type.
# question 5
1.An entity is a conceptual object that is defined during database design, 
(e.g., "Customer," "Product") 
2.A table is the physical implementation of that entity storing data in rows and columns.
# question 9
1.First Normal Form (1NF) – Atomic ValuesA table is in 1NF if all columns contain atomic values and there are no repeating groups or arrays. 
2.Second Normal Form (2NF) – Full Functional DependencyA table is in 2NF if it is in 1NF and all non-key attributes are fully functionally dependent on the primary key. This means there can be no "partial dependency," where a column depends on only part of a composite primary key.Example Violation: In an OrderItems table with primary key (OrderID, ProductID), the column SupplierAddress depends only on ProductID, not OrderID.
3.Third Normal Form (3NF) – No Transitive DependencyA table is in 3NF if it is in 2NF and no non-prime attribute (non-key column) depends on another non-prime attribute. That means all columns must depend only on the primary key, not on other intermediate columns.
4.Fourth Normal Form (4NF) – No Multi-valued DependenciesA table is in 4NF if it is in BCNF and contains no multi-valued dependencies. This occurs when one key implies multiple, independent, multi-valued facts.Example: A Teacher can teach multiple Subjects and have multiple Hobbies. If you put them in one table, you get exponential combinations.
5.Fifth Normal Form (5NF) – Join DependenciesA table is in 5NF if it is in 4NF and cannot be decomposed into smaller tables without losing data, resolving cases where information can only be reconstructed by joining three or more tables. It addresses "join dependencies," ensuring that if a table is split into smaller tables, re-joining them does not produce "spurious" (false) tuples.
# question 10
1.FROM / JOIN: The database identifies the tables involved and pulls the raw data.
2.WHERE: It filters individual rows based on your conditions.
3.GROUP BY: It groups the remaining rows into buckets.
4.HAVING: It filters those groups.
5.SELECT: It finally picks the specific columns you want and calculates any expressions.DISTINCT: It removes duplicate rows from the results.
6.ORDER BY: It sorts the final list.LIMIT / OFFSET: It chops the list down to a specific number of rows
7.LIMIT / OFFSET: It chops the list down to a specific number of rows.
