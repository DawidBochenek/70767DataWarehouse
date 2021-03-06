USE [master]
GO
/****** Object:  Database [BazaDanychZadanie2Wizy]    Script Date: 08.09.2019 10:06:25 ******/
CREATE DATABASE [BazaDanychZadanie2Wizy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BazaDanychZadanie2Wizy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BazaDanychZadanie2Wizy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BazaDanychZadanie2Wizy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BazaDanychZadanie2Wizy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BazaDanychZadanie2Wizy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ARITHABORT OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET RECOVERY FULL 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET  MULTI_USER 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BazaDanychZadanie2Wizy', N'ON'
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET QUERY_STORE = OFF
GO
USE [BazaDanychZadanie2Wizy]
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
USE [BazaDanychZadanie2Wizy]
GO
/****** Object:  Table [dbo].[T01_WizyWydane]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T01_WizyWydane](
	[OSG] [varchar](10) NULL,
	[PSG] [varchar](30) NULL,
	[Obywatelstwo] [varchar](35) NULL,
	[Symbol] [varchar](4) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T02_WizyAgregacje]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T02_WizyAgregacje](
	[OSG] [varchar](10) NULL,
	[PSG] [varchar](30) NULL,
	[WydWizSchZaTerPaSchen] [bigint] NULL,
	[WydWizSchZaTerPolska] [bigint] NULL,
	[ZastNaklWizRodzVD] [bigint] NULL,
	[ZastNaklWizRodzVC] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T03_MOSG]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T03_MOSG](
	[PSG] [varchar](30) NULL,
	[Obywatelstwo] [varchar](35) NULL,
	[Symbol] [varchar](4) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T03_NOSG]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T03_NOSG](
	[PSG] [varchar](30) NULL,
	[Obywatelstwo] [varchar](35) NULL,
	[Symbol] [varchar](4) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T04_DerivedColumns]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T04_DerivedColumns](
	[OSG] [varchar](10) NULL,
	[PSG] [varchar](30) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL,
	[SymbObywatel] [nvarchar](40) NULL,
	[WydaneWizySchengen] [smallint] NULL,
	[ZastapienieNaklejki] [smallint] NULL,
	[data_ladowania_pliku] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T05_MultiA]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T05_MultiA](
	[OSG] [varchar](10) NULL,
	[PSG] [varchar](30) NULL,
	[Obywatelstwo] [varchar](35) NULL,
	[Symbol] [varchar](4) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T05_MultiB]    Script Date: 08.09.2019 10:06:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T05_MultiB](
	[OSG] [varchar](10) NULL,
	[PSG] [varchar](30) NULL,
	[Obywatelstwo] [varchar](35) NULL,
	[Symbol] [varchar](4) NULL,
	[WydWizSchZaTerPaSchen] [smallint] NULL,
	[WydWizSchZaTerPolska] [smallint] NULL,
	[ZastNaklWizRodzVD] [smallint] NULL,
	[ZastNaklWizRodzVC] [smallint] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BazaDanychZadanie2Wizy] SET  READ_WRITE 
GO
