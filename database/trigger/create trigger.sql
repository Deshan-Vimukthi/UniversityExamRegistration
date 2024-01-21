CREATE TRIGGER trig_insert_grade
ON dbo.Results
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;

  UPDATE r
  SET r.Grade = 
    CASE
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
    END
  FROM dbo.Results r
  INNER JOIN inserted i ON r.Result_ID = i.Result_ID;
END;
GO

CREATE TRIGGER trig_update_mark
ON dbo.Results
AFTER UPDATE
AS
BEGIN
  SET NOCOUNT ON;

  UPDATE r
  SET r.Grade = 
    CASE
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
      WHEN i.Mark >= 0 AND i.Mark <20 THEN 'E'
    END
  FROM dbo.Results r
  INNER JOIN inserted i ON r.Result_ID = i.Result_ID;
END;
GO
