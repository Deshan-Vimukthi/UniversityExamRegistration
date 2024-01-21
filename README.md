# UniversityExamRegistration
This is a simple database for University Exam Registration. 

-----------------------------------------------------------
Approach 
-----------------------------------------------------------

Microsoft SQL Server Management Studio 18 was used to implement to the Database Management System for exam registration. 

The database consists of eight tables which are described in detail below.

1.	 Users Table:
	 This table was created to store the user access details. This table has user id as a unique ID. 

2.	 Student Table:
	 This table was used to store the student registration details. This table has a unique id as Student Id.

3.	 Employee Table:
	 This table was used to store the employee registration data to access to system. This table also has a unique id called as employee id.

4.	 Course table:
	 This table was used to store the course details. Course also has unique id called as course id.

5.	 Exam Table:
	This table was created to store the exam details and it has unique id called as exam id.

6.	 Result Table:
	This table was created to store result of given exam using unique result id and exam student ids.

7.	Registration Table:
	This table was created to store course registration details with course id, student id, and registered date. This table also has unique field as registration id.

8.	Access details Table:
	This table was created to store the login and logout time of system users. This table has unique id called as access id.


----------------------------------------------------------
Assumptions
----------------------------------------------------------

•	Every Employee ID has Permission to modify the system.

•	Dropped data row doesn’t store as ledger.

•	Every Student can enrol into any course.






