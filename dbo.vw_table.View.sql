USE [ShowDotNetIT]
GO
/****** Object:  View [dbo].[vw_table]    Script Date: 05/27/2024 08:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_table]
AS

SELECT Employees.*,
EmployeeDetails.Salary,EmployeeDetails.Department,EmployeeDetails.JobType
FROM Employees 
LEFT JOIN EmployeeDetails ON Employees.EmployeeId = EmployeeDetails.EmployeeId

 
GO
