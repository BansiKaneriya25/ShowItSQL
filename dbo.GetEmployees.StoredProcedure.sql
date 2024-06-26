USE [ShowDotNetIT]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 05/27/2024 08:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployees]
	@Name NVARCHAR(100) = NULL,
	@ABC NVARCHAR(100) = NULL,
	@Dept NVARCHAR(100) = NULL,
	@Result NVARCHAR(100) OUTPUT
AS
BEGIN
	BEGIN TRY
		SELECT *  FROM Employees 
		INNER JOIN EmployeeDetails ON Employees.EmployeeId = EmployeeDetails.EmployeeId
		WHERE Employees.Name = @Name
		OR Address = @ABC

		EXEC [dbo].[GetEmployeesDetails] @Dept
		EXEC [dbo].[GetEmployeesDetails] 'CE'

		DECLARE @A INT  = 10

		IF(ISNULL(@Name,'') = '' AND ISNULL(@Dept,'') = '') --NULL -> '' = ''
		BEGIN
			--SELECT
			PRINT 1
			SET @Result = 'TEST'
		END

		--SELECT 10/0
	
	END TRY
	BEGIN CATCH
	SELECT ERROR_MESSAGE()
	END CATCH
END
GO
