USE [ShowDotNetIT]
GO
/****** Object:  Table [dbo].[EmpIndex]    Script Date: 05/27/2024 08:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpIndex](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
