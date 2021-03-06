USE [master]
GO
/****** Object:  Database [Parents]    Script Date: 3/16/2019 8:08:57 AM ******/
CREATE DATABASE [Parents]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Parents', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Parents.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Parents_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Parents_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Parents] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Parents].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Parents] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Parents] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Parents] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Parents] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Parents] SET ARITHABORT OFF 
GO
ALTER DATABASE [Parents] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Parents] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Parents] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Parents] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Parents] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Parents] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Parents] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Parents] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Parents] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Parents] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Parents] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Parents] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Parents] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Parents] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Parents] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Parents] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Parents] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Parents] SET RECOVERY FULL 
GO
ALTER DATABASE [Parents] SET  MULTI_USER 
GO
ALTER DATABASE [Parents] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Parents] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Parents] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Parents] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Parents] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Parents', N'ON'
GO
ALTER DATABASE [Parents] SET QUERY_STORE = OFF
GO
USE [Parents]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Parents]
GO
/****** Object:  Table [dbo].[Children]    Script Date: 3/16/2019 8:08:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Children](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ClassId] [int] NULL,
	[Gender] [varchar](50) NULL,
	[School] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_Children] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 3/16/2019 8:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 3/16/2019 8:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[LandMark] [varchar](50) NULL,
	[MobileNUmber] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Children] ON 

INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (1, N'dfg', 2, N'Female', N'kjh', N'kh', 2)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (2, N'fg', 1, N'1', N'dfg', NULL, 3)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (3, N'Name', 1, N'Male', N'erter', NULL, 4)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (4, N'Name', 1, N'Male', NULL, NULL, 5)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (1002, N'Namesdf', 2, N'Male', N'', NULL, 1002)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (1003, N'Namesdf', 2, N'Male', N'', NULL, 1002)
INSERT [dbo].[Children] ([Id], [Name], [ClassId], [Gender], [School], [Age], [ParentId]) VALUES (1004, N'Namesdf', 2, N'Male', N'', NULL, 1002)
SET IDENTITY_INSERT [dbo].[Children] OFF
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Id], [Name]) VALUES (1, N'4th')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (2, N'5th')
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[Parents] ON 

INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (1, N'Naveed', N'jjhg', N'khk', N'8686', N'kjhkjh')
INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (2, N'fdg', N'dfg', N'df', N'dfg', N'dfg')
INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (4, N'erg', N'erer', N'ert', N'ert', N'ert')
INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (5, N'oi', N'uoi', N'uoi', N'oi', N'uoi')
INSERT [dbo].[Parents] ([Id], [Name], [Email], [LandMark], [MobileNUmber], [Address]) VALUES (1002, N'sd', N'sdf', N'sdfs', NULL, N'sdf')
SET IDENTITY_INSERT [dbo].[Parents] OFF
ALTER TABLE [dbo].[Children]  WITH CHECK ADD  CONSTRAINT [FK_Children_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Children] CHECK CONSTRAINT [FK_Children_Class]
GO
ALTER TABLE [dbo].[Children]  WITH CHECK ADD  CONSTRAINT [FK_Children_Parents] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Parents] ([Id])
GO
ALTER TABLE [dbo].[Children] CHECK CONSTRAINT [FK_Children_Parents]
GO
USE [master]
GO
ALTER DATABASE [Parents] SET  READ_WRITE 
GO
