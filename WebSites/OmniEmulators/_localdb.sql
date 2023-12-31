USE [master]
GO
/****** Object:  Database [omniemulators]    Script Date: 6/18/2018 11:24:43 AM ******/
CREATE DATABASE [omniemulators]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'omniemulators', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\omniemulators.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'omniemulators_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\omniemulators_log.ldf' , SIZE = 3200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [omniemulators] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [omniemulators].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [omniemulators] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [omniemulators] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [omniemulators] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [omniemulators] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [omniemulators] SET ARITHABORT OFF 
GO
ALTER DATABASE [omniemulators] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [omniemulators] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [omniemulators] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [omniemulators] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [omniemulators] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [omniemulators] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [omniemulators] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [omniemulators] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [omniemulators] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [omniemulators] SET  ENABLE_BROKER 
GO
ALTER DATABASE [omniemulators] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [omniemulators] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [omniemulators] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [omniemulators] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [omniemulators] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [omniemulators] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [omniemulators] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [omniemulators] SET RECOVERY FULL 
GO
ALTER DATABASE [omniemulators] SET  MULTI_USER 
GO
ALTER DATABASE [omniemulators] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [omniemulators] SET DB_CHAINING OFF 
GO
ALTER DATABASE [omniemulators] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [omniemulators] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [omniemulators]
GO
/****** Object:  User [omniemulators]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE USER [omniemulators] FOR LOGIN [omniemulators] WITH DEFAULT_SCHEMA=[omniemulators]
GO
ALTER ROLE [db_owner] ADD MEMBER [omniemulators]
GO
/****** Object:  Schema [omniemulators]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE SCHEMA [omniemulators]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Console]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Console](
	[consoleid] [int] IDENTITY(1,1) NOT NULL,
	[consolename] [varchar](50) NOT NULL,
	[consolecompany] [varchar](50) NOT NULL,
	[consoleyear] [int] NOT NULL,
	[consolecontrollers] [int] NOT NULL,
	[consoleresolution] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[consoleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[custfirstname] [varchar](50) NOT NULL,
	[custlastname] [varchar](50) NOT NULL,
	[custdob] [date] NOT NULL,
	[custemail] [varchar](50) NOT NULL,
	[custphone] [varchar](15) NOT NULL,
	[custaddress1] [varchar](50) NOT NULL,
	[custaddress2] [varchar](50) NULL,
	[custcity] [varchar](50) NOT NULL,
	[custstate] [varchar](20) NOT NULL,
	[custzip] [varchar](10) NOT NULL,
	[custaddlnotes] [text] NULL,
	[custusername] [nvarchar](50) NULL,
	[custpassword] [nvarchar](128) NULL,
	[custadmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[gameid] [int] IDENTITY(1,1) NOT NULL,
	[gametitle] [varchar](25) NULL,
	[consoleid] [int] NOT NULL,
	[gameyear] [varchar](4) NULL,
	[gamegenre] [varchar](25) NULL,
	[gamecompany] [varchar](25) NULL,
	[gamenumplayers] [int] NULL,
	[gameprice] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[gameid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[reviewid] [int] IDENTITY(1,1) NOT NULL,
	[gameid] [int] NOT NULL,
	[reviewrating] [int] NOT NULL,
	[reviewdate] [datetime] NULL,
	[reviewnotes] [varchar](max) NOT NULL,
	[custid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reviewid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 6/18/2018 11:24:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[saleid] [int] IDENTITY(1,1) NOT NULL,
	[custid] [int] NOT NULL,
	[total] [decimal](8, 2) NOT NULL,
	[cartcontents] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[saleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/18/2018 11:24:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [custadmin]
GO
ALTER TABLE [dbo].[Review] ADD  DEFAULT (getdate()) FOR [reviewdate]
GO
ALTER TABLE [dbo].[Review] ADD  DEFAULT ((1)) FOR [custid]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([consoleid])
REFERENCES [dbo].[Console] ([consoleid])
GO
ALTER TABLE [dbo].[Review]  WITH NOCHECK ADD FOREIGN KEY([custid])
REFERENCES [dbo].[Customer] ([custid])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([gameid])
REFERENCES [dbo].[Game] ([gameid])
GO
ALTER TABLE [dbo].[Sale]  WITH NOCHECK ADD FOREIGN KEY([custid])
REFERENCES [dbo].[Customer] ([custid])
GO
USE [master]
GO
ALTER DATABASE [omniemulators] SET  READ_WRITE 
GO
