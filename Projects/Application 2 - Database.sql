USE [master]
GO
/****** Object:  Database [SE1502_Workshop2_TranHongQuan]    Script Date: 3/14/2021 5:14:10 PM ******/
CREATE DATABASE [SE1502_Workshop2_TranHongQuan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301Workshop2_TranHongQuan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301Workshop2_TranHongQuan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301Workshop2_TranHongQuan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301Workshop2_TranHongQuan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE1502_Workshop2_TranHongQuan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET RECOVERY FULL 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET  MULTI_USER 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SE1502_Workshop2_TranHongQuan', N'ON'
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET QUERY_STORE = OFF
GO
USE [SE1502_Workshop2_TranHongQuan]
GO
/****** Object:  Table [dbo].[Laptops]    Script Date: 3/14/2021 5:14:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptops](
	[laptopID] [varchar](50) NOT NULL,
	[laptopName] [varchar](50) NOT NULL,
	[technicalInformation] [varchar](50) NOT NULL,
	[yearOfManufacturing] [varchar](50) NOT NULL,
	[producer] [varchar](50) NOT NULL,
	[status] [bit] NOT NULL,
	[supplierID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Laptops] PRIMARY KEY CLUSTERED 
(
	[laptopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 3/14/2021 5:14:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplierID] [varchar](50) NOT NULL,
	[supplierName] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/14/2021 5:14:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userName] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Laptops] ([laptopID], [laptopName], [technicalInformation], [yearOfManufacturing], [producer], [status], [supplierID]) VALUES (N'asdas', N'Lenovo', N'8GB Ram', N'2009', N'Lenovo', 1, N'Dell102')
INSERT [dbo].[Laptops] ([laptopID], [laptopName], [technicalInformation], [yearOfManufacturing], [producer], [status], [supplierID]) VALUES (N'Duong', N'Peter Parker', N'10GB Ram', N'2021', N'Parkert', 1, N'Apple101')
INSERT [dbo].[Laptops] ([laptopID], [laptopName], [technicalInformation], [yearOfManufacturing], [producer], [status], [supplierID]) VALUES (N'Mine', N'Poor', N'9GB ram', N'1992', N'Dell', 0, N'Len101')
INSERT [dbo].[Laptops] ([laptopID], [laptopName], [technicalInformation], [yearOfManufacturing], [producer], [status], [supplierID]) VALUES (N'qrer', N'ere', N'ertret', N'1991', N'wrtertrt', 0, N'Apple101')
GO
INSERT [dbo].[Suppliers] ([supplierID], [supplierName], [description]) VALUES (N'Apple101', N'Apple', N'A world-class provider for phone and laptop')
INSERT [dbo].[Suppliers] ([supplierID], [supplierName], [description]) VALUES (N'Dell102', N'Dell', N'The best laptop producer in the wolrd')
INSERT [dbo].[Suppliers] ([supplierID], [supplierName], [description]) VALUES (N'Len101', N'Lenovo', N'A famoud supplier in providing the finest laptop')
GO
INSERT [dbo].[User] ([userName], [password], [fullName]) VALUES (N'PeterParker', N'123456789', N'Peter Tran')
GO
ALTER TABLE [dbo].[Laptops]  WITH CHECK ADD  CONSTRAINT [Supply] FOREIGN KEY([supplierID])
REFERENCES [dbo].[Suppliers] ([supplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Laptops] CHECK CONSTRAINT [Supply]
GO
USE [master]
GO
ALTER DATABASE [SE1502_Workshop2_TranHongQuan] SET  READ_WRITE 
GO
