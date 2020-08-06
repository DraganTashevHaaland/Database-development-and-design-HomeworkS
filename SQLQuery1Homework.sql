USE [SEDC HOMEWORK 1]
GO

CREATE TABLE [dbo].[Teacher](
[ID] smallint IDENTITY (1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[AcademicRank] nvarchar(50) NOT NULL,
[HireDate] date NOT NULL,
CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED
(
[Id] ASC
))
GO

CREATE TABLE [dbo].[Grade](
[ID] int IDENTITY (1,1) NOT NULL,
[StudentID] int NOT NULL,
[CourseID] smallint NOT NULL,
[TeacherID] smallint NOT NULL,
[Grade] tinyint NOT NULL,
[Comment] nvarchar(100) NULL,
[CreatedDate] datetime NOT NULL,
CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED
(
[Id] ASC
))
GO

CREATE TABLE [dbo].[Student](
[ID] smallint IDENTITY (1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[EnrolledDate] date NOT NULL,
[Gender] nvarchar(1) NOT NULL,
[NationalIDNumber] nvarchar(20) NULL,
[StudentCardNumber] nvarchar(20) NULL,
CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED
(
[Id] ASC
))
GO

CREATE TABLE [dbo].[Course](
[ID] smallint IDENTITY (1,1) NOT NULL,
[Name] nvarchar(50) NOT NULL,
[Credit] tinyint NOT NULL,
[AcademicYear] nvarchar(20) NULL,
[Semester] nvarchar(20) NULL,
CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED
(
[Id] ASC
))
GO

CREATE TABLE [dbo].[AchievementType](
[ID] smallint IDENTITY (1,1) NOT NULL,
[Name] nvarchar(50) NOT NULL,
[Descritpion] nvarchar(50) NOT NULL,
[ParticipationRate] nvarchar(1) NOT NULL,
CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED
(
[Id] ASC
))
GO

CREATE TABLE [dbo].[GradeDetails](
[ID] smallint IDENTITY (1,1) NOT NULL,
[GradeID] smallint NOT NULL,
[AchievementTypeID] int NOT NULL,
[AchievementPoints] int NOT NULL,
[AchievementMaxPoints] int NOT NULL,
[AchievementDate] date NOT NULL,
CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED
(
[Id] ASC
))

