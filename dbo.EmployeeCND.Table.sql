USE [ShowDotNetIT]
GO
/****** Object:  Table [dbo].[EmployeeCND]    Script Date: 05/26/2024 08:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCND](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GenderOfPerson] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
