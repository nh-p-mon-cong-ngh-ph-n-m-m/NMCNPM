CREATE DATABASE [dataNew]
GO
USE [dataNew]
GO

CREATE TABLE [dbo].[Account](
	
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,

	)
INSERT [dbo].[Account] ([Username], [Password]) VALUES (N'user', N'123')