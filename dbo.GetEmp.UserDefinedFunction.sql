USE [ShowDotNetIT]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmp]    Script Date: 05/27/2024 08:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[GetEmp] (@Id INT)
RETURNS TABLE
AS
RETURN(SELECT * FROM EmployeeCND where ID = @Id);
GO
