CREATE FUNCTION dbo.GetResultsByExam(@Exam_ID INT)
RETURNS TABLE
AS
RETURN (
  SELECT r.Student_ID AS [STUDENT ID],
    r.Grade AS [GRADE],
    r.Mark AS [MARKS],
    r.Sup_ID AS [CHECKED BY]
  FROM dbo.[Results] r
  WHERE r.[Exam_ID] = @Exam_ID
);
GO

CREATE FUNCTION dbo.GetResultsByStudent(@Student_ID INT)
RETURNS TABLE
AS
RETURN (
  SELECT r.Exam_ID AS [Exam ID],
    r.Grade AS [GRADE],
    r.Mark AS [MARKS],
    r.Sup_ID AS [CHECKED BY]
  FROM dbo.[Results] r
  WHERE r.[Student_ID] = @Student_ID
);
GO

CREATE FUNCTION dbo.GetCourseByExam(@Exam_ID INT)
RETURNS INT
AS
BEGIN 
  DECLARE @Course_ID INT
  SELECT @Course_ID = e.Course_ID FROM Exam e WHERE e.Exam_ID = @Exam_ID;

  RETURN @Course_ID;
END;
GO

CREATE FUNCTION dbo.GetStudentByExam(@Exam_ID INT)
RETURNS TABLE
AS
RETURN (
  SELECT * FROM dbo.GetStudentByCourse(dbo.GetCourseByExam(@Exam_ID)
);
GO

CREATE FUNCTION dbo.GetStudentsByCourse(@Course_ID INT)
RETURNS TABLE
AS
RETURN (
  SELECT 
    s.Student_ID AS [Student ID],
    s.FName AS [First Name],
    s.LName AS [Last Name],
    s.Accademic_Year AS [Accademic Year]
  FROM dbo.Student s
  JOIN dbo.Registration r ON s.Student_ID = r.Student_ID
  WHERE r.Course_ID = @Course_ID
);
GO

CREATE FUNCTION dbo.GetUserPermissionDetails(@User_ID INT)
RETURNS TABLE
AS
RETURN (
  SELECT u.User_Type AS [User_Type],
    u.Student_ID AS [STUDENT ID],
    r.Employee_ID AS [EMPLOYEE ID]
  FROM dbo.[Users] u
  WHERE u.[User_ID] = @User_ID
);
GO
