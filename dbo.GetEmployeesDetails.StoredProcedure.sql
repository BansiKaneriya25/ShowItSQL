USE [ShowDotNetIT]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesDetails]    Script Date: 05/27/2024 08:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployeesDetails]
	@Dept NVARCHAR(100) = NULL
AS
BEGIN
	SELECT *  FROM EmployeeDetails  WHERE Department = @Dept
	 
END
GO
