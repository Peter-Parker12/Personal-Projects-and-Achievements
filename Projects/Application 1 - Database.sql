USE [master]
GO
/****** Object:  Database [SE1502_Workshop1_TranHongQuan]    Script Date: 2/26/2021 3:15:43 PM ******/
CREATE DATABASE [SE1502_Workshop1_TranHongQuan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301Workshop1_TranHongQuan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301Workshop1_TranHongQuan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301Workshop1_TranHongQuan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301Workshop1_TranHongQuan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE1502_Workshop1_TranHongQuan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET RECOVERY FULL 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET  MULTI_USER 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SE1502_Workshop1_TranHongQuan', N'ON'
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET QUERY_STORE = OFF
GO
USE [SE1502_Workshop1_TranHongQuan]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2/26/2021 3:15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[PublishYear] [varchar](50) NOT NULL,
	[ShortDescription] [varchar](150) NOT NULL,
	[Status] [bit] NOT NULL,
	[CategoryID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/26/2021 3:15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [varchar](50) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[Description] [varchar](150) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 2/26/2021 3:15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[UserInfo] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([BookID], [Name], [Author], [PublishYear], [ShortDescription], [Status], [CategoryID]) VALUES (N'15', N'2', N'Anthony', N'9000', N'This is an introductory book into number 2', 0, N'01')
INSERT [dbo].[Books] ([BookID], [Name], [Author], [PublishYear], [ShortDescription], [Status], [CategoryID]) VALUES (N'CEA201', N'Introduction to software engineering', N'James Arthur', N'2012', N'An introductory course into the process of developing a software', 0, N'01')
INSERT [dbo].[Books] ([BookID], [Name], [Author], [PublishYear], [ShortDescription], [Status], [CategoryID]) VALUES (N'CEA202', N'Computer Architecture and Organization', N'Pearson Education', N'2001', N'An introductory book into computer organization and architecture', 0, N'02')
INSERT [dbo].[Books] ([BookID], [Name], [Author], [PublishYear], [ShortDescription], [Status], [CategoryID]) VALUES (N'DBI202', N'Introductoi to database', N'James Arthur', N'2002', N'An introductory book into database engineering', 1, N'01')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'0', N'e', N'0')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'01', N'Research', N'Research books, which facilitate students in doing classwork')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'02', N'Student book', N'Books that can be used by student for on-class study purpose')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'erewrqwer', N'ewrr', N'eweeweweewewewerererere')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'TextBook', N'null', N'null')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'TXT101', N'TextBook', N'This is a type of book that allows student to practice applying what they have done into practices.')
GO
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'Internationalism', N'Internationalism123', N'Tran Hong Quan')
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'Internationalismq241', N'123456789', N'12sad')
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'p1675496', N'Internationalism123', N'Quan Tran Hong')
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'p16754962', N'123456789', N'9')
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'PeterParker', N'123456789', N'Quan')
INSERT [dbo].[Login] ([Username], [Password], [UserInfo]) VALUES (N'PeterParker123', N'Internationalism', N'Peter Parker')
GO
USE [master]
GO
ALTER DATABASE [SE1502_Workshop1_TranHongQuan] SET  READ_WRITE 
GO
