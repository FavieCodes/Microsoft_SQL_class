### Question 6 
a) Entities:
1. Student
2. Course
3. Instructor
b) Relationships with cardinalities:
1. Enrolls: A many-to-many relationship between Student and Course (a student can enroll in many 
courses, and a course can have many students).
2. Teaches: A one-to-many relationship between Instructor and Course (an instructor can teach many
 courses, but each course has only one instructor).
c) Primary keys for each entity:
1. Student: StudentID
2. Course: CourseID
3. Instructor: InstructorID

### Questin 7

(First Normal Form):
**StudentCourse Table (1NF):
StudentID, StudentName, CourseID, CourseName, InstructorName, InstructorPhone, Grade
1, John Doe, 101, Math, Dr. Smith, 555-1234, A
1, John Doe, 102, Science, Dr. Brown, 555-5678, B
2, Jane Doe, 101, Math, Dr. Smith, 555-1234, A
2, Jane Doe, 103, History, Dr. Green, 555-9012, A

b) 2NF (Second Normal Form):
To convert the table to 2NF, we need to remoccurs when a non-key attribute is dependent on only part of the primary key. In this case, the primary key is a composite key consisting of StudentID and CourseID. We can create separate tables for Student, Course, and Instructor to eliminate partial dependencies.
**Student Table:**
StudentID, StudentName
1, John Doe
2, Jane Doe

**Course Table:
CourseID, CourseName, InstructorName, InstructorPhone
101, Math, Dr. Smith, 555-1234
102, Science, Dr. Brown, 555-5678
103, History, Dr. Green, 555-9012

**Instructor Table:**
InstructorName, InstructorPhone
Dr. Smith, 555-1234
Dr. Brown, 555-5678
Dr. Green, 555-9012

c) 3NF (Third Normal Form):
To convert the table to 3NF, we need to remove transitive dependencies. A transitive dependency occurs when a non-key attribute is dependent on another non-key attribute. In this case, we have already eliminated partial dependencies in 2NF. We can create a separate table for the relationship between Student and Course to eliminate transitive dependencies.
**StudentCourse Table (3NF):**
StudentID, CourseID, Grade
1, 101, A
1, 102, B
2, 101, A
2, 103, A