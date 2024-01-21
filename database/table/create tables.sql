CREATE DATABASE UniversityDB;

USE UniversityDB;
Go
  
CREATE TABLE Student(
  Student_ID INT IDENTITY(1,1) PRIMARY KEY,
  FName VARCHAR(100) NOT NULL,
  LName VARCHAR(100) ,
  Email VARCHAR(225) NOT NULL,
  Accademic_Year INT NOT NULL);

CREATE TABLE Employee(
  Employee_ID INT IDENTITY(1,1) PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Position VARCHAR(100) ,
  Home_Address VARCHAR(225) NOT NULL,
  PhoneNumber CHAR(10) NOT NULL);

CREATE TABLE Users(
  User_ID INT IDENTITY(1,1) PRIMARY KEY,
  User_Password VARCHAR(100) NOT NULL,
  User_Type VARCHAR(100) NOT NULL,
  Student_ID INT,
  Employee_ID INT,
  Sup_ID INT NOT NULL,
  FOREIGN KEY (Student_ID) REFERENCES dbo.Student(Student_ID),
  FOREIGN KEY (Employee_ID) REFERENCES dbo.Employee(Employee_ID),
  FOREIGN KEY (Sup_ID) REFERENCES dbo.Employee(Employee_ID));

CREATE TABLE Course(
  Course_ID INT IDENTITY(1,1) PRIMARY KEY,
  Course_Name VARCHAR(100) NOT NULL,
  Credit INT NOT NULL,
  Teacher_ID INT NOT NULL,
  Sup_ID INT NOT NULL,
  FOREIGN KEY (Teacher_ID) REFERENCES dbo.Employee(Employee_ID),
  FOREIGN KEY (Sup_ID) REFERENCES dbo.Employee(Employee_ID));

CREATE TABLE Registration(
  Registration_ID INT IDENTITY(1,1) PRIMARY KEY,
  Course_ID INT NOT NULL,
  Student_ID INT NOT NULL,
  Reg_Date DATE NOT NULL,
  FOREIGN KEY (Course_ID) REFERENCES dbo.Course(Course_ID),
  FOREIGN KEY (Student_ID) REFERENCES dbo.Student(Student_ID));

CREATE TABLE Exam(
  Exam_ID INT IDENTITY(1,1) PRIMARY KEY,
  Exam_Name VARCHAR(100) NOT NULL,
  Exam_Date DATE NOT NULL,
  Course_ID INT NOT NULL,
  Sup_ID INT NOT NULL,
  FOREIGN KEY (Course_ID) REFERENCES dbo.Course(Course_ID),
  FOREIGN KEY (Sup_ID) REFERENCES dbo.Employee(Employee_ID));

CREATE TABLE Results(
  Result_ID INT IDENTITY(1,1) PRIMARY KEY,
  Marks INT NOT NULL,
  Grade CHAR(2),
  Student_ID INT NOT NULL,
  Exam_ID INT NOT NULL,
  Sup_ID INT NOT NULL,
  FOREIGN KEY (Student_ID) REFERENCES dbo.Student(Student_ID),
  FOREIGN KEY (Exam_ID) REFERENCES dbo.Exam(Exam_ID),
  FOREIGN KEY (Sup_ID) REFERENCES dbo.Employee(Employee_ID));

CREATE TABLE AccessDetails(
  Access_ID INT IDENTITY(1,1) PRIMARY KEY,
  Login DATE NOT NULL,
  LogOut DATE,
  User_ID INT NOT NULL,
  FOREIGN KEY (User_ID) REFERENCES dbo.Users(User_ID),
  FOREIGN KEY (Employee_ID) REFERENCES dbo.Employee(Employee_ID),
  FOREIGN KEY (Sup_ID) REFERENCES dbo.Employee(Employee_ID));


