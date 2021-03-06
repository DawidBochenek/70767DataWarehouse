USE [master]
GO
/****** Object:  Database [Database1]    Script Date: 08.09.2019 10:05:58 ******/
CREATE DATABASE [Database1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Database1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Database1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Database1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Database1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Database1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Database1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Database1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Database1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Database1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Database1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Database1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Database1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Database1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Database1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Database1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Database1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Database1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Database1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Database1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Database1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Database1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Database1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Database1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Database1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Database1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Database1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Database1] SET RECOVERY FULL 
GO
ALTER DATABASE [Database1] SET  MULTI_USER 
GO
ALTER DATABASE [Database1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Database1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Database1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Database1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Database1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Database1', N'ON'
GO
ALTER DATABASE [Database1] SET QUERY_STORE = OFF
GO
USE [Database1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Database1]
GO
/****** Object:  Table [dbo].[AbaloneLoad]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbaloneLoad](
	[Sex] [varchar](1) NULL,
	[Length] [numeric](10, 5) NULL,
	[Diameter] [numeric](10, 5) NULL,
	[Height] [numeric](10, 5) NULL,
	[Whole weight] [numeric](10, 5) NULL,
	[Shucked weight] [numeric](10, 5) NULL,
	[Viscera weight] [numeric](10, 5) NULL,
	[Shell weight] [numeric](10, 5) NULL,
	[Rings] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarAccept] [varchar](50) NULL,
	[PriceAccept] [varchar](50) NULL,
	[BuyingPrice] [varchar](50) NULL,
	[MaintenCost] [varchar](50) NULL,
	[TechCharect] [varchar](50) NULL,
	[Comfort] [varchar](50) NULL,
	[ClassDistr] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataLogowania]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataLogowania](
	[DateOfExectPackg] [datetime] NULL,
	[UserExectPackg] [nvarchar](100) NULL,
	[ExectPackgName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MostyCSV]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MostyCSV](
	[IDENTIF] [varchar](50) NULL,
	[RIVER] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[ERECTED] [varchar](50) NULL,
	[PURPOSE] [varchar](50) NULL,
	[LENGTH] [varchar](50) NULL,
	[LANES] [varchar](50) NULL,
	[CLEAR-G] [varchar](50) NULL,
	[TorD] [varchar](50) NULL,
	[MATERIAL] [varchar](50) NULL,
	[SPAN] [varchar](50) NULL,
	[RelL] [varchar](50) NULL,
	[TYPE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[Sex] [varchar](1) NULL,
	[Length] [numeric](10, 5) NULL,
	[Diameter] [numeric](10, 5) NULL,
	[Height] [numeric](10, 5) NULL,
	[Whole weight] [numeric](10, 5) NULL,
	[Shucked weight] [numeric](10, 5) NULL,
	[Viscera weight] [numeric](10, 5) NULL,
	[Shell weight] [numeric](10, 5) NULL,
	[Rings] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination 2]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination 2](
	[CarAccept] [varchar](50) NULL,
	[PriceAccept] [varchar](50) NULL,
	[BuyingPrice] [varchar](50) NULL,
	[MaintenCost] [varchar](50) NULL,
	[TechCharect] [varchar](50) NULL,
	[Comfort] [varchar](50) NULL,
	[ClassDistr] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination3]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination3](
	[CarAccept] [varchar](50) NULL,
	[PriceAccept] [varchar](50) NULL,
	[BuyingPrice] [varchar](50) NULL,
	[MaintenCost] [varchar](50) NULL,
	[TechCharect] [varchar](50) NULL,
	[Comfort] [varchar](50) NULL,
	[ClassDistr] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination4]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination4](
	[IDENTIF] [varchar](50) NULL,
	[RIVER] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[ERECTED] [varchar](50) NULL,
	[PURPOSE] [varchar](50) NULL,
	[LENGTH] [varchar](50) NULL,
	[LANES] [varchar](50) NULL,
	[CLEAR-G] [varchar](50) NULL,
	[TorD] [varchar](50) NULL,
	[MATERIAL] [varchar](50) NULL,
	[SPAN] [varchar](50) NULL,
	[RelL] [varchar](50) NULL,
	[TYPE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination44]    Script Date: 08.09.2019 10:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination44](
	[Sex] [varchar](1) NULL,
	[Length] [numeric](10, 5) NULL,
	[Diameter] [numeric](10, 5) NULL,
	[Height] [numeric](10, 5) NULL,
	[Whole weight] [numeric](10, 5) NULL,
	[Shucked weight] [numeric](10, 5) NULL,
	[Viscera weight] [numeric](10, 5) NULL,
	[Shell weight] [numeric](10, 5) NULL,
	[Rings] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Database1] SET  READ_WRITE 
GO
