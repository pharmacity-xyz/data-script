USE [store_assignment1]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Members_MemberId]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF__Products__Weight__31EC6D26]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 9/17/2022 11:07:23 AM ******/
DROP INDEX [IX_Products_CategoryId] ON [dbo].[Products]
GO
/****** Object:  Index [IX_Orders_MemberId]    Script Date: 9/17/2022 11:07:23 AM ******/
DROP INDEX [IX_Orders_MemberId] ON [dbo].[Orders]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 9/17/2022 11:07:23 AM ******/
DROP INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 9/17/2022 11:07:23 AM ******/
DROP INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Members]') AND type in (N'U'))
DROP TABLE [dbo].[Members]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/17/2022 11:07:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [store_assignment1]    Script Date: 9/17/2022 11:07:23 AM ******/
DROP DATABASE [store_assignment1]
GO
/****** Object:  Database [store_assignment1]    Script Date: 9/17/2022 11:07:23 AM ******/
CREATE DATABASE [store_assignment1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'store_assignment1', FILENAME = N'D:\SQLServer\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\store_assignment1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'store_assignment1_log', FILENAME = N'D:\SQLServer\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\store_assignment1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [store_assignment1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [store_assignment1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [store_assignment1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [store_assignment1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [store_assignment1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [store_assignment1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [store_assignment1] SET ARITHABORT OFF 
GO
ALTER DATABASE [store_assignment1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [store_assignment1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [store_assignment1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [store_assignment1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [store_assignment1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [store_assignment1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [store_assignment1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [store_assignment1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [store_assignment1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [store_assignment1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [store_assignment1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [store_assignment1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [store_assignment1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [store_assignment1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [store_assignment1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [store_assignment1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [store_assignment1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [store_assignment1] SET RECOVERY FULL 
GO
ALTER DATABASE [store_assignment1] SET  MULTI_USER 
GO
ALTER DATABASE [store_assignment1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [store_assignment1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [store_assignment1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [store_assignment1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [store_assignment1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [store_assignment1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'store_assignment1', N'ON'
GO
ALTER DATABASE [store_assignment1] SET QUERY_STORE = OFF
GO
USE [store_assignment1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[OrderDate] [datetime2](7) NULL,
	[RequiredDate] [datetime2](7) NULL,
	[ShippedDate] [datetime2](7) NULL,
	[Freight] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/17/2022 11:07:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[UnitInStock] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Weight] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914091021_addDB', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914091844_addDB2', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220915012935_add3', N'6.0.9')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Rainbow Fish')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Angel Fish')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Discuss Fish')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Colydoras Fish')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Tetra Fish')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (1, N'Boesmani', 1, 100, CAST(80000.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (2, N'Altum', 2, 80, CAST(900000.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (3, N'Parkingson', 1, 20, CAST(1600000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (4, N'Sentani', 1, 50, CAST(200000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (5, N'Koi', 2, 200, CAST(120000.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (6, N'Red Melon', 3, 100, CAST(200000.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (7, N'Yellow Albino', 3, 100, CAST(400000.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (8, N'Pigmy', 4, 100, CAST(30000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (9, N'Venezuela', 4, 90, CAST(70000.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (10, N'Cardinal', 5, 500, CAST(5000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [UnitInStock], [UnitPrice], [Weight]) VALUES (11, N'Rummynose', 5, 800, CAST(5000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 9/17/2022 11:07:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 9/17/2022 11:07:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_MemberId]    Script Date: 9/17/2022 11:07:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_MemberId] ON [dbo].[Orders]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 9/17/2022 11:07:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0)) FOR [Weight]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Members_MemberId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [store_assignment1] SET  READ_WRITE 
GO
