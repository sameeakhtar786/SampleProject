USE [master]
GO
/****** Object:  Database [ALAdmin2_DEV]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE DATABASE [ALAdmin2_DEV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ALAdmin3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AMPLELOGIC\MSSQL\DATA\ALAdmin2_DEV.mdf' , SIZE = 83968KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ALAdmin3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AMPLELOGIC\MSSQL\DATA\ALAdmin2_DEV_log.ldf' , SIZE = 568896KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ALAdmin2_DEV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ALAdmin2_DEV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ALAdmin2_DEV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET ARITHABORT OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ALAdmin2_DEV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ALAdmin2_DEV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ALAdmin2_DEV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ALAdmin2_DEV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET RECOVERY FULL 
GO
ALTER DATABASE [ALAdmin2_DEV] SET  MULTI_USER 
GO
ALTER DATABASE [ALAdmin2_DEV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ALAdmin2_DEV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ALAdmin2_DEV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ALAdmin2_DEV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ALAdmin2_DEV]
GO
/****** Object:  Schema [alaat]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE SCHEMA [alaat]
GO
/****** Object:  Schema [alat]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE SCHEMA [alat]
GO
/****** Object:  Schema [alt]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE SCHEMA [alt]
GO
/****** Object:  Table [alaat].[Control]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Control](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ControlName] [nvarchar](max) NULL,
	[ControlType] [nvarchar](max) NULL,
	[IconCss] [nvarchar](max) NULL,
	[DllName] [nvarchar](max) NULL,
	[TsFileName] [nvarchar](max) NULL,
	[DllFilePath] [nvarchar](max) NULL,
	[TsFilePath] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Control] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Form]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Form](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[InternalName] [nvarchar](max) NULL,
	[EntityType] [nvarchar](max) NULL,
	[Schema] [nvarchar](max) NULL,
	[Content] [text] NULL,
	[InternalType] [int] NOT NULL,
	[ReferenceCount] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[HistoryId] [uniqueidentifier] NOT NULL,
	[ParentFormEntityId] [uniqueidentifier] NULL,
	[ParentFormEntityName] [nvarchar](max) NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[FormReference] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Form] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[FormLock]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[FormLock](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[FormEntity] [uniqueidentifier] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.FormLock] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterData]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterData](
	[EntityId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__MasterDat__Entit__45F365D3]  DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsGlobalList] [bit] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[HasUniqueCode] [bit] NOT NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[OverrideVersion] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_alaat.MasterData] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterData_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterData_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsGlobalList] [bit] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[HasUniqueCode] [bit] NOT NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[MasterId] [uniqueidentifier] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[OverrideVersion] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_alaat.MasterData_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterDataItems]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterDataItems](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[MasterDataId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[UniqueCode] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.MasterDataItems] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterDataItems_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterDataItems_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[MasterDataId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[UniqueCode] [nvarchar](max) NULL,
	[MasterDataItemId] [uniqueidentifier] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[MasterDataParent] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.MasterDataItems_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterDataItemsView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterDataItemsView](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[MasterDataId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[UniqueCode] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.MasterDataItemsView] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[MasterDataView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[MasterDataView](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsGlobalList] [bit] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[HasUniqueCode] [bit] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.MasterDataView] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[PageModule]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[PageModule](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[AppId] [uniqueidentifier] NULL,
	[ModuleId] [uniqueidentifier] NULL,
	[PageId] [uniqueidentifier] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.PageModule] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Pages]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Pages](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Order] [int] NULL,
	[MenuType] [nvarchar](max) NULL,
	[NavUrl] [nvarchar](max) NULL,
	[FormTemplateId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[AppId] [uniqueidentifier] NULL,
	[IsSystemDefined] [bit] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Translations] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Pages] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Permissions]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Permissions](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[_ParentEntityId] [uniqueidentifier] NULL,
	[_EntityId] [uniqueidentifier] NOT NULL,
	[EntityType] [int] NOT NULL,
	[Rights] [bigint] NOT NULL,
	[EntityRights] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[HierarchyDepartment] [nvarchar](max) NULL,
	[IconName] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Permissions] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Permissions_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Permissions_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[_ParentEntityId] [uniqueidentifier] NULL,
	[_EntityId] [uniqueidentifier] NOT NULL,
	[EntityType] [int] NOT NULL,
	[Rights] [bigint] NOT NULL,
	[EntityRights] [bigint] NOT NULL,
	[HierarchyDepartment] [nvarchar](max) NULL,
	[IconName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Permissions_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[ProfileSettings]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[ProfileSettings](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[Schema] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[ContentType] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.ProfileSettings] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Quartzjob]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Quartzjob](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[JobId] [nvarchar](max) NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Quartzjob] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[RecordLock]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[RecordLock](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Instance] [uniqueidentifier] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[LockedFromDate] [datetime2](7) NOT NULL,
	[LockedToDate] [datetime2](7) NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_alat.EditLock] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Reminders]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Reminders](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[FormTemplateId] [uniqueidentifier] NOT NULL,
	[RemainderTypeId] [int] NOT NULL,
	[Days] [int] NOT NULL,
	[OverDue] [int] NULL,
	[EscalationLevel] [int] NULL,
	[RemainderFieldId] [int] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Reminders] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Reports]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Reports](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Template] [nvarchar](max) NULL,
	[Settings] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[CustomCondition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Reports] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Reports_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Reports_History](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Template] [nvarchar](max) NULL,
	[Settings] [nvarchar](max) NULL,
	[CustomCondition] [nvarchar](max) NULL,
	[ReportIds] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Reports_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Role]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Role](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AppId] [uniqueidentifier] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Role] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Role_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Role_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AppId] [uniqueidentifier] NULL,
	[RolesId] [uniqueidentifier] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alaat.Role_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[RolePermissions]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[RolePermissions](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.RolePermissions] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[RolePermissions_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[RolePermissions_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[PermissionId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.RolePermissions_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[RoleProfile]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[RoleProfile](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[ProfileType] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.RoleProfile] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[RoleProfile_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[RoleProfile_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[ProfileType] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.RoleProfile_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[TaskList]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[TaskList](
	[EntityId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FormEntityId] [uniqueidentifier] NOT NULL,
	[WorkFlowInstanceId] [uniqueidentifier] NOT NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.TaskList] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alaat].[TrackList]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[TrackList](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TrackID] [uniqueidentifier] NOT NULL,
	[TaskState] [nvarchar](max) NULL,
	[TaskSchema] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.TrackList] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alaat].[Widget]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alaat].[Widget](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Options] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Enable] [bit] NOT NULL,
	[Visible] [bit] NOT NULL,
	[Query] [nvarchar](max) NULL,
	[Layout] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alaat.Widget] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[ActivityStamp]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[ActivityStamp](
	[EntityId] [uniqueidentifier] NOT NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[TransitionId] [uniqueidentifier] NOT NULL,
	[TransitionLabel] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[TimeStamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_alat.ActivityStamp] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[Attachment]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [alat].[Attachment](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Internal] [nvarchar](max) NULL,
	[Extension] [nvarchar](max) NULL,
	[Embedded] [bit] NOT NULL,
	[Location] [nvarchar](max) NULL,
	[Content] [varbinary](max) NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[RevisionNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_alat.Attachment] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [alat].[AttachmentComments]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[AttachmentComments](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[AttachmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Top_Pos] [float] NOT NULL,
	[Left] [float] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[CurrentPage] [int] NOT NULL,
	[CommentId] [int] NOT NULL,
 CONSTRAINT [PK_alat.AttachmentComments] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[DataRecovery]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[DataRecovery](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[EntityType] [int] NOT NULL,
	[Schema] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alat.DataRecovery] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[FormInstance]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[FormInstance](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[InitiatorUserId] [uniqueidentifier] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[RootId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[EntityInstanceId] [uniqueidentifier] NOT NULL,
	[PreviousUserId] [uniqueidentifier] NOT NULL,
	[PreviousDepartmentId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[ReferenceNo] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Signature] [nvarchar](max) NULL,
	[Flags] [bigint] NOT NULL,
	[HistoryId] [uniqueidentifier] NOT NULL,
	[RefFormInstanceId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alat.FormInstance] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[FormInstanceHistory]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[FormInstanceHistory](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[WorkflowInstanceHistoryId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[InitiatorUserId] [uniqueidentifier] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[RootId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[EntityInstanceId] [uniqueidentifier] NOT NULL,
	[PreviousUserId] [uniqueidentifier] NOT NULL,
	[PreviousDepartmentId] [uniqueidentifier] NOT NULL,
	[ReferenceNo] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Signature] [nvarchar](max) NULL,
	[Flags] [bigint] NOT NULL,
	[HistoryId] [uniqueidentifier] NOT NULL,
	[RefFormInstanceId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alat.FormInstanceHistory] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[History](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[EntityType] [nvarchar](max) NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[Schema] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Content] [nvarchar](max) NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alat.History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[WorkflowInstance]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[WorkflowInstance](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[InitiatorUserId] [uniqueidentifier] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[TransitionId] [uniqueidentifier] NOT NULL,
	[ActivityId] [uniqueidentifier] NOT NULL,
	[ActiveUserId] [uniqueidentifier] NOT NULL,
	[Action] [nvarchar](max) NULL,
	[RootId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[EntityInstanceId] [uniqueidentifier] NOT NULL,
	[PreviousUserId] [uniqueidentifier] NOT NULL,
	[PreviousDepartmentId] [uniqueidentifier] NOT NULL,
	[PreviousStateId] [uniqueidentifier] NOT NULL,
	[PreviousTransitionId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Flags] [bigint] NOT NULL,
	[ActiveUserIdentityType] [int] NOT NULL,
	[IsCurrentTaskChangeRequest] [bit] NOT NULL,
	[ChangeRequestComments] [nvarchar](max) NULL,
	[ChangeRequestedBy] [uniqueidentifier] NULL,
	[HistorySchemaId] [uniqueidentifier] NOT NULL,
	[ParentInstanceId] [uniqueidentifier] NOT NULL,
	[HasChildForm] [bit] NOT NULL,
	[ParentStateId] [uniqueidentifier] NOT NULL,
	[IsAutoGen] [bit] NOT NULL,
	[StateName] [nvarchar](max) NULL,
	[PreviousDepartmentName] [nvarchar](max) NULL,
	[PreviousStateName] [nvarchar](max) NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[TransitionName] [nvarchar](max) NULL,
	[PreviousTransitionName] [nvarchar](max) NULL,
	[FormId] [uniqueidentifier] NOT NULL,
	[FormSchemaId] [uniqueidentifier] NOT NULL,
	[FormHistorySchemaId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alat.WorkflowInstance] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alat].[WorkflowInstanceHistory]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alat].[WorkflowInstanceHistory](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[InstanceId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[HistorySchemaId] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[InitiatorUserId] [uniqueidentifier] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[StateName] [nvarchar](max) NULL,
	[TransitionId] [uniqueidentifier] NOT NULL,
	[TransitionName] [nvarchar](max) NULL,
	[ActivityId] [uniqueidentifier] NOT NULL,
	[ActiveUserId] [uniqueidentifier] NOT NULL,
	[ActiveUserIdentityType] [int] NOT NULL,
	[Action] [nvarchar](max) NULL,
	[HasChildForm] [bit] NOT NULL,
	[RootId] [uniqueidentifier] NOT NULL,
	[ParentInstanceId] [uniqueidentifier] NOT NULL,
	[ParentStateId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NOT NULL,
	[EntityInstanceId] [uniqueidentifier] NOT NULL,
	[PreviousUserId] [uniqueidentifier] NOT NULL,
	[PreviousDepartmentId] [uniqueidentifier] NOT NULL,
	[PreviousDepartmentName] [nvarchar](max) NULL,
	[PreviousStateId] [uniqueidentifier] NOT NULL,
	[PreviousStateName] [nvarchar](max) NULL,
	[PreviousTransitionId] [uniqueidentifier] NOT NULL,
	[PreviousTransitionName] [nvarchar](max) NULL,
	[IsCurrentTaskChangeRequest] [bit] NOT NULL,
	[ChangeRequestComments] [nvarchar](max) NULL,
	[ChangeRequestedBy] [uniqueidentifier] NULL,
	[Flags] [bigint] NOT NULL,
	[IsAutoGen] [bit] NOT NULL,
	[SessionId] [uniqueidentifier] NOT NULL,
	[UniqueNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_alat.WorkflowInstanceHistory] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[AppProfiles]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[AppProfiles](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AppId] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[ProfileType] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
 CONSTRAINT [PK_alt.AppProfiles] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[AppProfiles_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[AppProfiles_History](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AppId] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[ProfileType] [int] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.AppProfiles_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Apps]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Apps](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DBName] [nvarchar](500) NULL,
	[IsPublished] [bit] NOT NULL,
	[EncryptData] [bit] NOT NULL,
	[ShortDateFormat] [nvarchar](max) NULL,
	[LongDateFormat] [nvarchar](max) NULL,
	[ColorCode] [nvarchar](max) NULL,
	[LogoName] [nvarchar](max) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[HeaderName] [nvarchar](max) NULL,
	[HeaderBackground] [nvarchar](max) NULL,
	[ShowInDashBoard] [bit] NULL,
	[Theme] [nvarchar](max) NULL,
	[FontColor] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[Translations] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.Apps] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Apps_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Apps_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DBName] [nvarchar](500) NULL,
	[IsPublished] [bit] NOT NULL,
	[EncryptData] [bit] NOT NULL,
	[ShortDateFormat] [nvarchar](max) NULL,
	[LongDateFormat] [nvarchar](max) NULL,
	[ColorCode] [nvarchar](max) NULL,
	[LogoName] [nvarchar](max) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[HeaderName] [nvarchar](max) NULL,
	[HeaderBackground] [nvarchar](max) NULL,
	[ShowInDashBoard] [bit] NULL,
	[Theme] [nvarchar](max) NULL,
	[FontColor] [nvarchar](max) NULL,
	[AppId] [uniqueidentifier] NOT NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Apps_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[AuthProvider]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[AuthProvider](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ConfigData] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.AuthProvider] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[DashBoard]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[DashBoard](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[InternalName] [nvarchar](max) NULL,
	[EntityType] [int] NOT NULL,
	[Schema] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.DashBoard] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[DepartmentHierarchy]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[DepartmentHierarchy](
	[EntityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [int] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.DepartmentHierarchy] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[Departments]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Departments](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Number] [nvarchar](max) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Prefix] [nvarchar](max) NULL,
	[LocationCode] [nvarchar](max) NULL,
	[HierarchyId] [int] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsDivision] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_alt.Departments] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Departments_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Departments_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Number] [nvarchar](max) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Prefix] [nvarchar](max) NULL,
	[LocationCode] [nvarchar](max) NULL,
	[HierarchyId] [int] NOT NULL,
	[IsDivision] [bit] NOT NULL,
	[DeptartmentIds] [uniqueidentifier] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Departments_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Designation]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Designation](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.Designation] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Designation_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Designation_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DesignationId] [uniqueidentifier] NOT NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Designation_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[EmailTemplates]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[EmailTemplates](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[TemplateName] [nvarchar](max) NULL,
	[Template] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.EmailTemplates] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[EmailTemplates_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[EmailTemplates_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[TemplateName] [nvarchar](max) NULL,
	[Template] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[MasterTemplateId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[Justification_Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.EmailTemplates_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[EmailTemplatesView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[EmailTemplatesView](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[TemplateName] [nvarchar](max) NULL,
	[Template] [nvarchar](max) NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.EmailTemplatesView] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[EmployeeDepartments]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[EmployeeDepartments](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alt.EmployeeDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[EmployeeDepartments_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[EmployeeDepartments_History](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alt.EmployeeDepartments_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[Employees]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Employees](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[ADSupervisor] [nvarchar](max) NULL,
	[ADDepartment] [nvarchar](max) NULL,
	[ADSbu] [nvarchar](max) NULL,
	[ADCompany] [nvarchar](max) NULL,
	[ADBusinessGroup] [nvarchar](max) NULL,
	[ADDistinguishedName] [nvarchar](max) NULL,
	[ADDesignation] [nvarchar](max) NULL,
	[ADMobileNo] [nvarchar](max) NULL,
	[NewUser] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[NoOfRetries] [int] NULL,
	[Salt] [nvarchar](max) NULL,
	[TitleId] [int] NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[UserNumber] [nvarchar](max) NULL,
	[AccountType] [nvarchar](max) NULL,
	[PrimaryKey] [nvarchar](max) NULL,
	[UserName] [nvarchar](500) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[DepartmentIds] [nvarchar](max) NULL,
	[PwdUpdatedDate] [datetime2](7) NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[SupervisorId] [uniqueidentifier] NULL,
	[AltEmailAddress] [nvarchar](max) NULL,
	[MobileNum] [nvarchar](max) NULL,
	[PhoneNum] [nvarchar](max) NULL,
	[DesignationId] [uniqueidentifier] NOT NULL,
	[Gender] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[Location] [int] NULL,
	[DefaultDepartmentId] [uniqueidentifier] NOT NULL,
	[Initials] [nvarchar](max) NULL,
	[LastLogOn] [nvarchar](max) NULL,
	[AccExpiryDate] [nvarchar](max) NULL,
	[PwdExpiryDate] [nvarchar](max) NULL,
	[DateofJoining] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[FormId] [int] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[IsUser] [bit] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Surname] [nvarchar](32) NULL,
	[Password] [nvarchar](128) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[EmailConfirmationCode] [nvarchar](16) NULL,
	[PasswordResetCode] [nvarchar](32) NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [datetime2](7) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsAdminLocked] [bit] NULL,
	[ActionPerformed] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.Employees] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Employees_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Employees_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[EmployeeIds] [uniqueidentifier] NOT NULL,
	[ADSupervisor] [nvarchar](max) NULL,
	[ADDepartment] [nvarchar](max) NULL,
	[ADSbu] [nvarchar](max) NULL,
	[ADCompany] [nvarchar](max) NULL,
	[ADBusinessGroup] [nvarchar](max) NULL,
	[ADDistinguishedName] [nvarchar](max) NULL,
	[ADDesignation] [nvarchar](max) NULL,
	[ADMobileNo] [nvarchar](max) NULL,
	[NewUser] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[NoOfRetries] [int] NULL,
	[Salt] [nvarchar](max) NULL,
	[TitleId] [int] NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[UserNumber] [nvarchar](max) NULL,
	[AccountType] [nvarchar](max) NULL,
	[PrimaryKey] [nvarchar](max) NULL,
	[UserName] [nvarchar](500) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[DepartmentIds] [nvarchar](max) NULL,
	[PwdUpdatedDate] [datetime2](7) NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[SupervisorId] [uniqueidentifier] NULL,
	[AltEmailAddress] [nvarchar](max) NULL,
	[MobileNum] [nvarchar](max) NULL,
	[PhoneNum] [nvarchar](max) NULL,
	[DesignationId] [uniqueidentifier] NOT NULL,
	[Gender] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[Location] [int] NULL,
	[DefaultDepartmentId] [uniqueidentifier] NOT NULL,
	[Initials] [nvarchar](max) NULL,
	[LastLogOn] [nvarchar](max) NULL,
	[AccExpiryDate] [nvarchar](max) NULL,
	[PwdExpiryDate] [nvarchar](max) NULL,
	[DateofJoining] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[FormId] [int] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[IsUser] [bit] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Surname] [nvarchar](32) NULL,
	[Password] [nvarchar](128) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[EmailConfirmationCode] [nvarchar](16) NULL,
	[PasswordResetCode] [nvarchar](32) NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [datetime2](7) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsAdminLocked] [bit] NULL,
	[ActionPerformed] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.Employees_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Groups]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Groups](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[IsStatic] [bit] NOT NULL,
	[IsEditableOnlyBySuperAdmin] [bit] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[AccountType] [nvarchar](max) NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[EmployeeEntity_Id] [uniqueidentifier] NULL,
	[EmployeeEntity_History_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Groups] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Groups_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Groups_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[AccountType] [nvarchar](max) NULL,
	[IsStatic] [bit] NOT NULL,
	[IsEditableOnlyBySuperAdmin] [bit] NOT NULL,
	[GroupsId] [uniqueidentifier] NOT NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Groups_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Languages]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Languages](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsDefault] [bit] NOT NULL,
	[FlagIcon] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Languages] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Locations]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Locations](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsDefault] [bit] NOT NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Locations] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[RuntimeEmail]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[RuntimeEmail](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[FormEntity] [uniqueidentifier] NOT NULL,
	[Instance] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.RuntimeEmail] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[TableVersions]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[TableVersions](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UpdateVersion] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alat.TableVersions] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[TemporaryRoles]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[TemporaryRoles](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[SelectedUser] [uniqueidentifier] NOT NULL,
	[AssignedUser] [uniqueidentifier] NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.TemporaryRoles] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[TemporaryRoles_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[TemporaryRoles_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[TempRoleId] [uniqueidentifier] NOT NULL,
	[SelectedUser] [uniqueidentifier] NOT NULL,
	[AssignedUser] [uniqueidentifier] NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.TemporaryRoles_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Tenants]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Tenants](
	[EntityId] [uniqueidentifier] NOT NULL,
	[TenancyName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.Tenants] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserDepartments]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserDepartments](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alt.UserDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserDepartments_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserDepartments_History](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_alt.UserDepartments_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserGroup]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserGroup](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.UserGroup] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserGroup_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserGroup_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[UserId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[GroupHistoryId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
 CONSTRAINT [PK_alt.UserGroup_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserLog]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserLog](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserName] [nvarchar](max) NULL,
	[IsFailedAttempts] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[MachineIp] [nvarchar](max) NULL,
	[LoginFailedOn] [datetime2](7) NOT NULL,
	[NoOfFailedAttempts] [int] NOT NULL,
	[NoOfLockedAttempts] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsAdminLocked] [bit] NOT NULL DEFAULT ((0)),
	[MacAddress] [nvarchar](max) NULL,
	[IsLoginSucess] [bit] NOT NULL DEFAULT ((0)),
	[LastLogOn] [datetime2](7) NULL,
 CONSTRAINT [PK_alt.UserLog] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Users]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Users](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[NewUser] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[NoOfRetries] [int] NULL,
	[Salt] [nvarchar](max) NULL,
	[TitleId] [int] NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[UserNumber] [nvarchar](max) NULL,
	[PrimaryKey] [nvarchar](max) NULL,
	[UserName] [nvarchar](500) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[DepartmentIds] [nvarchar](max) NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[SupervisorId] [uniqueidentifier] NULL,
	[AltEmailAddress] [nvarchar](max) NULL,
	[MobileNum] [nvarchar](max) NULL,
	[PhoneNum] [nvarchar](max) NULL,
	[DesignationId] [uniqueidentifier] NOT NULL,
	[Gender] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[Location] [int] NULL,
	[DefaultDepartmentId] [uniqueidentifier] NOT NULL,
	[Initials] [nvarchar](max) NULL,
	[LastLogOn] [nvarchar](max) NULL,
	[AccExpiryDate] [nvarchar](max) NULL,
	[PwdExpiryDate] [nvarchar](max) NULL,
	[DateofJoining] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[FormId] [int] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Surname] [nvarchar](32) NULL,
	[Password] [nvarchar](128) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[EmailConfirmationCode] [nvarchar](16) NULL,
	[PasswordResetCode] [nvarchar](32) NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [datetime2](7) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[ADSupervisor] [nvarchar](max) NULL,
	[ADDepartment] [nvarchar](max) NULL,
	[ADSbu] [nvarchar](max) NULL,
	[ADCompany] [nvarchar](max) NULL,
	[ADBusinessGroup] [nvarchar](max) NULL,
	[ADDistinguishedName] [nvarchar](max) NULL,
	[ADDesignation] [nvarchar](max) NULL,
	[ADMobileNo] [nvarchar](max) NULL,
	[AccountType] [nvarchar](max) NULL,
	[PwdUpdatedDate] [datetime2](7) NULL DEFAULT ('1900-01-01T00:00:00.000'),
	[Justification_Comments] [nvarchar](max) NULL,
	[MasterEmployeeId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[IsAdminLocked] [bit] NULL,
	[ChangeType] [nvarchar](max) NULL,
	[MacAddress] [nvarchar](max) NULL,
	[OldPassword] [nvarchar](max) NULL,
	[NewPassword] [nvarchar](max) NULL,
	[ActionPerformed] [nvarchar](max) NULL,
	[ActionPerformedBy] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[UserLanguageCulture] [nvarchar](max) NULL,
 CONSTRAINT [PK_alt.Users] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[Users_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[Users_History](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserIds] [uniqueidentifier] NOT NULL,
	[ADSupervisor] [nvarchar](max) NULL,
	[ADDepartment] [nvarchar](max) NULL,
	[ADSbu] [nvarchar](max) NULL,
	[ADCompany] [nvarchar](max) NULL,
	[ADBusinessGroup] [nvarchar](max) NULL,
	[ADDistinguishedName] [nvarchar](max) NULL,
	[ADDesignation] [nvarchar](max) NULL,
	[ADMobileNo] [nvarchar](max) NULL,
	[NewUser] [bit] NULL,
	[AuthProviderId] [uniqueidentifier] NULL,
	[NoOfRetries] [int] NULL,
	[Salt] [nvarchar](max) NULL,
	[TitleId] [int] NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[UserNumber] [nvarchar](max) NULL,
	[AccountType] [nvarchar](max) NULL,
	[PrimaryKey] [nvarchar](max) NULL,
	[UserName] [nvarchar](500) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[DepartmentIds] [nvarchar](max) NULL,
	[PwdUpdatedDate] [datetime2](7) NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[SupervisorId] [uniqueidentifier] NULL,
	[AltEmailAddress] [nvarchar](max) NULL,
	[MobileNum] [nvarchar](max) NULL,
	[PhoneNum] [nvarchar](max) NULL,
	[DesignationId] [uniqueidentifier] NOT NULL,
	[Gender] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[Location] [int] NULL,
	[DefaultDepartmentId] [uniqueidentifier] NOT NULL,
	[Initials] [nvarchar](max) NULL,
	[LastLogOn] [nvarchar](max) NULL,
	[AccExpiryDate] [nvarchar](max) NULL,
	[PwdExpiryDate] [nvarchar](max) NULL,
	[DateofJoining] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[FormId] [int] NULL,
	[Justification_Comments] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Surname] [nvarchar](32) NULL,
	[Password] [nvarchar](128) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[EmailConfirmationCode] [nvarchar](16) NULL,
	[PasswordResetCode] [nvarchar](32) NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [datetime2](7) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[IsAdminLocked] [bit] NULL,
	[ChangeType] [nvarchar](max) NULL,
	[MacAddress] [nvarchar](max) NULL,
	[OldPassword] [nvarchar](max) NULL,
	[NewPassword] [nvarchar](max) NULL,
	[ActionPerformed] [nvarchar](max) NULL,
	[ActionPerformedBy] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
 CONSTRAINT [PK_alt.Users_History] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[UserSessions]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[UserSessions](
	[EntityId] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[SessionId] [nvarchar](max) NULL,
	[AppId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StartedOn] [datetime2](7) NOT NULL,
	[EndedOn] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[MacId] [nvarchar](max) NULL,
	[BrowserInfo] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
	[ClusterId] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_alt.UserSessions] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[vw_GetActiveSessionsOfUser]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[vw_GetActiveSessionsOfUser](
	[EntityId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](255) NULL,
	[Identifier] [nvarchar](255) NULL,
	[CurrentMaxVersion] [int] NULL,
	[CurrentMinVersion] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[SessionId] [nvarchar](max) NULL,
	[AppId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[StartedOn] [datetime2](7) NOT NULL,
	[EndedOn] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[MacId] [nvarchar](max) NULL,
	[BrowserInfo] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeleterUserId] [uniqueidentifier] NULL,
	[InactivationTime] [datetime2](7) NULL,
	[InactivatorUserId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[UpdatedByUserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedByUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_alt.vw_GetActiveSessionsOfUser] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [alt].[vw_GetTempRolesForTheDay]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alt].[vw_GetTempRolesForTheDay](
	[EntityId] [uniqueidentifier] NOT NULL,
	[AssignedUser] [uniqueidentifier] NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[SelectedUser] [uniqueidentifier] NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_alt.vw_GetTempRolesForTheDay] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRTZ_BLOB_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_BLOB_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[BLOB_DATA] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_CALENDARS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_CALENDARS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[CALENDAR_NAME] [nvarchar](200) NOT NULL,
	[CALENDAR] [image] NOT NULL,
 CONSTRAINT [PK_QRTZ_CALENDARS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_CRON_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_CRON_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[CRON_EXPRESSION] [nvarchar](120) NOT NULL,
	[TIME_ZONE_ID] [nvarchar](80) NULL,
 CONSTRAINT [PK_QRTZ_CRON_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_FIRED_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_FIRED_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[ENTRY_ID] [nvarchar](95) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[FIRED_TIME] [bigint] NOT NULL,
	[PRIORITY] [int] NOT NULL,
	[STATE] [nvarchar](16) NOT NULL,
	[JOB_NAME] [nvarchar](150) NULL,
	[JOB_GROUP] [nvarchar](150) NULL,
	[IS_NONCONCURRENT] [bit] NULL,
	[REQUESTS_RECOVERY] [bit] NULL,
	[SCHED_TIME] [bigint] NOT NULL,
 CONSTRAINT [PK_QRTZ_FIRED_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_JOB_DETAILS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_JOB_DETAILS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[JOB_NAME] [nvarchar](150) NOT NULL,
	[JOB_GROUP] [nvarchar](150) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[JOB_CLASS_NAME] [nvarchar](250) NOT NULL,
	[IS_DURABLE] [bit] NOT NULL,
	[IS_NONCONCURRENT] [bit] NOT NULL,
	[IS_UPDATE_DATA] [bit] NOT NULL,
	[REQUESTS_RECOVERY] [bit] NOT NULL,
	[JOB_DATA] [image] NULL,
 CONSTRAINT [PK_QRTZ_JOB_DETAILS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_LOCKS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_LOCKS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[LOCK_NAME] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_QRTZ_LOCKS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[LOCK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_QRTZ_PAUSED_TRIGGER_GRPS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_SCHEDULER_STATE]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SCHEDULER_STATE](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[LAST_CHECKIN_TIME] [bigint] NOT NULL,
	[CHECKIN_INTERVAL] [bigint] NOT NULL,
 CONSTRAINT [PK_QRTZ_SCHEDULER_STATE] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_SIMPLE_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[REPEAT_COUNT] [int] NOT NULL,
	[REPEAT_INTERVAL] [bigint] NOT NULL,
	[TIMES_TRIGGERED] [int] NOT NULL,
 CONSTRAINT [PK_QRTZ_SIMPLE_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_SIMPROP_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[STR_PROP_1] [nvarchar](512) NULL,
	[STR_PROP_2] [nvarchar](512) NULL,
	[STR_PROP_3] [nvarchar](512) NULL,
	[INT_PROP_1] [int] NULL,
	[INT_PROP_2] [int] NULL,
	[LONG_PROP_1] [bigint] NULL,
	[LONG_PROP_2] [bigint] NULL,
	[DEC_PROP_1] [numeric](13, 4) NULL,
	[DEC_PROP_2] [numeric](13, 4) NULL,
	[BOOL_PROP_1] [bit] NULL,
	[BOOL_PROP_2] [bit] NULL,
 CONSTRAINT [PK_QRTZ_SIMPROP_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QRTZ_TRIGGERS]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_TRIGGERS](
	[SCHED_NAME] [nvarchar](100) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[JOB_NAME] [nvarchar](150) NOT NULL,
	[JOB_GROUP] [nvarchar](150) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[NEXT_FIRE_TIME] [bigint] NULL,
	[PREV_FIRE_TIME] [bigint] NULL,
	[PRIORITY] [int] NULL,
	[TRIGGER_STATE] [nvarchar](16) NOT NULL,
	[TRIGGER_TYPE] [nvarchar](8) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NULL,
	[CALENDAR_NAME] [nvarchar](200) NULL,
	[MISFIRE_INSTR] [int] NULL,
	[JOB_DATA] [image] NULL,
 CONSTRAINT [PK_QRTZ_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEntity_HistoryGroupEntity_History]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEntity_HistoryGroupEntity_History](
	[UserEntity_History_Id] [uniqueidentifier] NOT NULL,
	[GroupEntity_History_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.UserEntity_HistoryGroupEntity_History] PRIMARY KEY CLUSTERED 
(
	[UserEntity_History_Id] ASC,
	[GroupEntity_History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEntityGroupEntities]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEntityGroupEntities](
	[UserEntity_Id] [uniqueidentifier] NOT NULL,
	[GroupEntity_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.UserEntityGroupEntities] PRIMARY KEY CLUSTERED 
(
	[UserEntity_Id] ASC,
	[GroupEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [alaat].[PermissionsView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [alaat].[PermissionsView]
AS
SELECT *
FROM  [alaat].[Permissions] WITH (NOLOCK) 

GO
/****** Object:  View [alaat].[RolePermissionsView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [alaat].[RolePermissionsView]
AS
SELECT *
FROM  [alaat].[RolePermissions] WITH (NOLOCK) 


GO
/****** Object:  View [alaat].[RoleProfileView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [alaat].[RoleProfileView]
AS
SELECT *
FROM  [alaat].[RoleProfile] WITH (NOLOCK) 


GO
/****** Object:  View [alaat].[RoleView]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [alaat].[RoleView]
AS
SELECT *
FROM [alaat].[Role] WITH (NOLOCK)

GO
/****** Object:  View [alt].[vwEmployees]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [alt].[vwEmployees]
AS
SELECT DISTINCT 
EntityId, Name + ' ' + Surname as 'FullName'
FROM [alt].[Employees] WITH (NOLOCK)

GO
/****** Object:  View [alt].[vwUser]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [alt].[vwUser]
AS
SELECT DISTINCT 
	EntityId, Name + ' ' + Surname as 'FullName'
FROM  [alt].[Users] WITH (NOLOCK) 




GO
/****** Object:  Index [IX_MasterDataId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_MasterDataId] ON [alaat].[MasterDataItems]
(
	[MasterDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MasterDataId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_MasterDataId] ON [alaat].[MasterDataItems_History]
(
	[MasterDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MasterDataId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_MasterDataId] ON [alaat].[MasterDataItemsView]
(
	[MasterDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_PageId] ON [alaat].[PageModule]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionId] ON [alaat].[RolePermissions]
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [alaat].[RolePermissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PermissionId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_PermissionId] ON [alaat].[RolePermissions_History]
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [alaat].[RolePermissions_History]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeEntity_History_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeEntity_History_Id] ON [alt].[Groups]
(
	[EmployeeEntity_History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeEntity_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeEntity_Id] ON [alt].[Groups]
(
	[EmployeeEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_GroupId] ON [alt].[UserGroup]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [alt].[UserGroup]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupEntity_History_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_GroupEntity_History_Id] ON [dbo].[UserEntity_HistoryGroupEntity_History]
(
	[GroupEntity_History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserEntity_History_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserEntity_History_Id] ON [dbo].[UserEntity_HistoryGroupEntity_History]
(
	[UserEntity_History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupEntity_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_GroupEntity_Id] ON [dbo].[UserEntityGroupEntities]
(
	[GroupEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserEntity_Id]    Script Date: 4/17/2017 6:00:56 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserEntity_Id] ON [dbo].[UserEntityGroupEntities]
(
	[UserEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [alaat].[Control] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[Form] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[Form] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [HistoryId]
GO
ALTER TABLE [alaat].[MasterDataItemsView] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[MasterDataView] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[PageModule] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[Quartzjob] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[RecordLock] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[RecordLock] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [Instance]
GO
ALTER TABLE [alaat].[RecordLock] ADD  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [alaat].[RecordLock] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [LockedFromDate]
GO
ALTER TABLE [alaat].[RecordLock] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [LockedToDate]
GO
ALTER TABLE [alaat].[Reminders] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[Reports] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[Reports_History] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[TaskList] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[TrackList] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[ActivityStamp] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[Attachment] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[AttachmentComments] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[AttachmentComments] ADD  DEFAULT ((0)) FOR [CurrentPage]
GO
ALTER TABLE [alat].[AttachmentComments] ADD  DEFAULT ((0)) FOR [CommentId]
GO
ALTER TABLE [alat].[DataRecovery] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[FormInstance] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[FormInstance] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [alat].[FormInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [HistoryId]
GO
ALTER TABLE [alat].[FormInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [RefFormInstanceId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [SchemaId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [InitiatorUserId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [DepartmentId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [RootId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [EntityInstanceId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousUserId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousDepartmentId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [HistoryId]
GO
ALTER TABLE [alat].[FormInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [RefFormInstanceId]
GO
ALTER TABLE [alat].[History] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ((0)) FOR [ActiveUserIdentityType]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ((0)) FOR [IsCurrentTaskChangeRequest]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [HistorySchemaId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentInstanceId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ((0)) FOR [HasChildForm]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentStateId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ((0)) FOR [IsAutoGen]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [FormId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [FormSchemaId]
GO
ALTER TABLE [alat].[WorkflowInstance] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [FormHistorySchemaId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [SchemaId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [HistorySchemaId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [InitiatorUserId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [DepartmentId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [StateId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [TransitionId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ActivityId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ActiveUserId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ((0)) FOR [ActiveUserIdentityType]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ((0)) FOR [HasChildForm]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [RootId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentInstanceId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentStateId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ParentId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [EntityInstanceId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousUserId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousDepartmentId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousStateId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [PreviousTransitionId]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ((0)) FOR [IsCurrentTaskChangeRequest]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ((0)) FOR [IsAutoGen]
GO
ALTER TABLE [alat].[WorkflowInstanceHistory] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [SessionId]
GO
ALTER TABLE [alt].[AppProfiles_History] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[AuthProvider] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[DashBoard] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[EmailTemplatesView] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[Languages] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[Locations] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[RuntimeEmail] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[Tenants] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alt].[vw_GetActiveSessionsOfUser] ADD  DEFAULT (newsequentialid()) FOR [EntityId]
GO
ALTER TABLE [alaat].[MasterDataItems]  WITH CHECK ADD  CONSTRAINT [FK_alaat.MasterDataItems_alaat.MasterData_MasterDataId] FOREIGN KEY([MasterDataId])
REFERENCES [alaat].[MasterData] ([EntityId])
GO
ALTER TABLE [alaat].[MasterDataItems] CHECK CONSTRAINT [FK_alaat.MasterDataItems_alaat.MasterData_MasterDataId]
GO
ALTER TABLE [alaat].[MasterDataItems_History]  WITH CHECK ADD  CONSTRAINT [FK_alaat.MasterDataItems_History_alaat.MasterData_History_MasterDataId] FOREIGN KEY([MasterDataId])
REFERENCES [alaat].[MasterData_History] ([EntityId])
GO
ALTER TABLE [alaat].[MasterDataItems_History] CHECK CONSTRAINT [FK_alaat.MasterDataItems_History_alaat.MasterData_History_MasterDataId]
GO
ALTER TABLE [alaat].[MasterDataItemsView]  WITH CHECK ADD  CONSTRAINT [FK_alaat.MasterDataItemsView_alaat.MasterData_MasterDataId] FOREIGN KEY([MasterDataId])
REFERENCES [alaat].[MasterData] ([EntityId])
GO
ALTER TABLE [alaat].[MasterDataItemsView] CHECK CONSTRAINT [FK_alaat.MasterDataItemsView_alaat.MasterData_MasterDataId]
GO
ALTER TABLE [alaat].[PageModule]  WITH CHECK ADD  CONSTRAINT [FK_alaat.PageModule_alaat.Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [alaat].[Pages] ([EntityId])
GO
ALTER TABLE [alaat].[PageModule] CHECK CONSTRAINT [FK_alaat.PageModule_alaat.Pages_PageId]
GO
ALTER TABLE [alaat].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_alaat.RolePermissions_alaat.Permissions_PermissionId] FOREIGN KEY([PermissionId])
REFERENCES [alaat].[Permissions] ([EntityId])
GO
ALTER TABLE [alaat].[RolePermissions] CHECK CONSTRAINT [FK_alaat.RolePermissions_alaat.Permissions_PermissionId]
GO
ALTER TABLE [alaat].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_alaat.RolePermissions_alaat.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [alaat].[Role] ([EntityId])
GO
ALTER TABLE [alaat].[RolePermissions] CHECK CONSTRAINT [FK_alaat.RolePermissions_alaat.Role_RoleId]
GO
ALTER TABLE [alaat].[RolePermissions_History]  WITH CHECK ADD  CONSTRAINT [FK_alaat.RolePermissions_History_alaat.Permissions_History_PermissionId] FOREIGN KEY([PermissionId])
REFERENCES [alaat].[Permissions_History] ([EntityId])
GO
ALTER TABLE [alaat].[RolePermissions_History] CHECK CONSTRAINT [FK_alaat.RolePermissions_History_alaat.Permissions_History_PermissionId]
GO
ALTER TABLE [alaat].[RolePermissions_History]  WITH CHECK ADD  CONSTRAINT [FK_alaat.RolePermissions_History_alaat.Role_History_RoleId] FOREIGN KEY([RoleId])
REFERENCES [alaat].[Role_History] ([EntityId])
GO
ALTER TABLE [alaat].[RolePermissions_History] CHECK CONSTRAINT [FK_alaat.RolePermissions_History_alaat.Role_History_RoleId]
GO
ALTER TABLE [alt].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_alt.Groups_alt.Employees_EmployeeEntity_Id] FOREIGN KEY([EmployeeEntity_Id])
REFERENCES [alt].[Employees] ([EntityId])
GO
ALTER TABLE [alt].[Groups] CHECK CONSTRAINT [FK_alt.Groups_alt.Employees_EmployeeEntity_Id]
GO
ALTER TABLE [alt].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_alt.Groups_alt.Employees_History_EmployeeEntity_History_Id] FOREIGN KEY([EmployeeEntity_History_Id])
REFERENCES [alt].[Employees_History] ([EntityId])
GO
ALTER TABLE [alt].[Groups] CHECK CONSTRAINT [FK_alt.Groups_alt.Employees_History_EmployeeEntity_History_Id]
GO
ALTER TABLE [alt].[UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_alt.UserGroup_alt.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [alt].[Groups] ([EntityId])
GO
ALTER TABLE [alt].[UserGroup] CHECK CONSTRAINT [FK_alt.UserGroup_alt.Groups_GroupId]
GO
ALTER TABLE [alt].[UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_alt.UserGroup_alt.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [alt].[Users] ([EntityId])
GO
ALTER TABLE [alt].[UserGroup] CHECK CONSTRAINT [FK_alt.UserGroup_alt.Users_UserId]
GO
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS] FOREIGN KEY([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
REFERENCES [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
GO
ALTER TABLE [dbo].[QRTZ_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS]
GO
ALTER TABLE [dbo].[UserEntity_HistoryGroupEntity_History]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserEntity_HistoryGroupEntity_History_alt.Groups_History_GroupEntity_History_Id] FOREIGN KEY([GroupEntity_History_Id])
REFERENCES [alt].[Groups_History] ([EntityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserEntity_HistoryGroupEntity_History] CHECK CONSTRAINT [FK_dbo.UserEntity_HistoryGroupEntity_History_alt.Groups_History_GroupEntity_History_Id]
GO
ALTER TABLE [dbo].[UserEntity_HistoryGroupEntity_History]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserEntity_HistoryGroupEntity_History_alt.Users_History_UserEntity_History_Id] FOREIGN KEY([UserEntity_History_Id])
REFERENCES [alt].[Users_History] ([EntityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserEntity_HistoryGroupEntity_History] CHECK CONSTRAINT [FK_dbo.UserEntity_HistoryGroupEntity_History_alt.Users_History_UserEntity_History_Id]
GO
ALTER TABLE [dbo].[UserEntityGroupEntities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserEntityGroupEntities_alt.Groups_GroupEntity_Id] FOREIGN KEY([GroupEntity_Id])
REFERENCES [alt].[Groups] ([EntityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserEntityGroupEntities] CHECK CONSTRAINT [FK_dbo.UserEntityGroupEntities_alt.Groups_GroupEntity_Id]
GO
ALTER TABLE [dbo].[UserEntityGroupEntities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserEntityGroupEntities_alt.Users_UserEntity_Id] FOREIGN KEY([UserEntity_Id])
REFERENCES [alt].[Users] ([EntityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserEntityGroupEntities] CHECK CONSTRAINT [FK_dbo.UserEntityGroupEntities_alt.Users_UserEntity_Id]
GO
/****** Object:  StoredProcedure [dbo].[AL_P_DeleteInActiveApplication]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*===========================================================================
AUTHOR					: Nandhini G
CREATED DATE			: 28-October-2015
DESCRIPTION             : Used To Deleted The Inactive Applications
PROCEDURE NAME			: AL_P_DeleteInActiveApplication

EXEC AL_P_DeleteInActiveApplication 1
===============================================================================*/
CREATE PROCEDURE [dbo].[AL_P_DeleteInActiveApplication]
(
@boolean BIT=1
)
AS
BEGIN
SET NOCOUNT ON

	CREATE TABLE #temp(Id Int Identity(1,1),database_id INT,name NVARCHAR(MAX))

	DECLARE @cnt INT,@Count INT,@DatabaseName NVARCHAR(MAX),@BackupDir NVARCHAR(MAX)
	SET @BackupDir='\\192.168.1.30\AmpleLogicDataBases\NandhiniG\PlatformInActiveApplications_Backup\'


IF(@boolean=1)
BEGIN

	SELECT DB.database_id,DB.name INTO #t FROM SYS.DataBases DB
	INNER JOIN [alt].[Apps] AP
	ON DB.Name=AP.DBname
	WHERE AP.IsActive=0

	SELECT * FROM #t

	INSERT INTO #temp(database_id,name)
	SELECT database_id,name FROM #t

	--SELECT * FROM #temp
		SET @cnt=(SELECT COUNT(*) FROM #temp)
		SET @Count=1
			WHILE(@Count<=@cnt)
				BEGIN
					SET @DatabaseName=(SELECT name FROM #temp WHERE @Count=Id)

					/*Taking BackUp Of InActiveApplication*/
					EXEC BackupDatabase @BackupDir,@DatabaseName
					DECLARE @DynSQL NVARCHAR(MAX)
					SET @DynSQL='DROP DATABASE ['+@DatabaseName+']'
					SELECT @DynSQL AS 'A'
					--EXEC (@DynSQL)
					DELETE FROM [alt].[Apps] WHERE Name=@DatabaseName
					SET @Count=@Count+1
				END
END
ELSE
	BEGIN
		SELECT database_id,DB.name INTO #t1 FROM SYS.DataBases DB
		INNER JOIN [alt].[Apps] AP
		ON DB.Name=AP.DBname

		INSERT INTO #temp(database_id,name)
		SELECT database_id,name FROM #t1

		SET @cnt=(SELECT COUNT(*) FROM #temp)
		SET @Count=1
			WHILE(@Count<=@cnt)
				BEGIN
					SET @DatabaseName=(SELECT name FROM #temp WHERE @Count=Id)

					/*Taking BackUp Of InActiveApplication*/
					EXEC BackupDatabase @BackupDir,@DatabaseName
					SET @DynSQL='DROP DATABASE ['+@DatabaseName+']'
					--SELECT @DynSQL AS 'A'
					EXEC (@DynSQL)
					DELETE FROM [alt].[Apps] WHERE Name=@DatabaseName
					SET @Count=@Count+1
				END
	DROP TABLE  #temp
	DROP TABLE  #t

	END
END



GO
/****** Object:  StoredProcedure [dbo].[AL_P_DeleteMigration]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*--------------------------------------------------------------------------------

AUTHOR				: RAJESH
CREATED DATE		: 06 AUG 2015
DESCRIPTION			: Used to DELETE Migration table Data
PROCEDURE NAME		: AL_P_DeleteMigration
EXAMPLE				: EXEC AL_P_DeleteMigration 
CHANGE HISTORY		:		Change Reason						ChangedBy			ChangedOn
-----------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[AL_P_DeleteMigration]
AS
BEGIN
	DECLARE @count INT,@Cnt INT,@Databasename NVARCHAR(1000),@EntityId uniqueidentifier
	,@Dynsql NVARCHAR(1000)=''
	SET @Cnt=1

	DECLARE @Temp TABLE(Id INT IDENTITY(1,1),EntityId uniqueidentifier,DBName NVARCHAR(200))

	Insert @Temp(EntityId,DBName)
	SELECT EntityId,DBName
	FROM alt.apps WHERE IsActive=1

	SELECT @count=COUNT(Id) FROM @Temp

	WHILE @count>=@Cnt
	BEGIN
		SELECT @Databasename=DBName,@EntityId=EntityId FROM @Temp WHERE Id=@Cnt

		IF db_id(@Databasename) IS NOT NULL
		BEGIN
			SET @Dynsql='TRUNCATE TABLE ['+@Databasename+'].'+'[dbo].[__MigrationHistory]'
				--SELECT @Dynsql AS 'zx'
				EXEC(@Dynsql)
		END
		ELSE
		BEGIN
			--select 1
			DELETE alt.apps WHERE EntityId=@EntityId
		END
		SET @Cnt=@Cnt+1
	END
	
END

GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetAllUsers]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*==============================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 24 June 2016
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_GetAllUsers
EXAMPLE                 : EXEC AL_P_GetAllUsers 
History                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------
==============================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_GetAllUsers]
AS
BEGIN
SET NOCOUNT ON;
	SELECT DIstinct UserNumber FROM [alt].[Users] ORDER BY UserNumber DESC
END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetDepartmentHierarchy]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC AL_P_GetDepartmentHierarchy '','95435519-D809-E511-9418-C81F660EC933'
--SELECT * FROM VS_QT_T_Department	 WHERE ParentDeptId=2
CREATE PROCEDURE [dbo].[AL_P_GetDepartmentHierarchy]
(
	@LoginId uniqueidentifier=NUll,
	@DepartmentId uniqueidentifier=NULL
)
AS
BEGIN
SET NOCOUNT ON
	
	IF CAST(@LoginId AS NVARCHAR(100))<>''
	BEGIN
		SELECT @DepartmentId=U.DefaultDepartmentId
		FROM alt.Users U
		--INNER JOIN alt.UserDepartments UD
		--	ON UD.UserId=U.EntityId --AND UD.IsDefaultDeptId=1
		WHERE U.EntityId=@LoginId
	END
	DECLARE @Temp TABLE (DepartmentId uniqueIdentifier,ParentDeptId uniqueIdentifier)	
	
	;WITH CTC
	AS
	(
		SELECT EntityId AS DepartmentId,ParentId AS ParentDeptId
		FROM alt.Departments
		WHERE EntityId=@DepartmentId
		UNION ALL
		SELECT DP.EntityId AS DepartmentId,DP.ParentId AS ParentDeptId
		FROM alt.Departments DP
		INNER JOIN CTC C
			ON C.ParentDeptId=DP.EntityId	
	)
	INSERT INTO @Temp(DepartmentId,ParentDeptId)
	SELECT * FROM CTC
	OPTION (MAXRECURSION 1000)

	--select 1,* from @Temp
	
	;WITH CTE
	AS
	(
		SELECT EntityId AS DepartmentId,ParentId AS ParentDeptId
		FROM alt.Departments
		WHERE EntityId=@DepartmentId
		UNION ALL
		SELECT DP.EntityId AS DepartmentId,DP.ParentId AS ParentDeptId
		FROM alt.Departments DP
		INNER JOIN CTE C
			ON C.DepartmentId =DP.parentId 	
		WHERE  DP.parentId=@DepartmentId
	)
	INSERT INTO @Temp(DepartmentId,ParentDeptId)
	SELECT * FROM CTE OPTION (MAXRECURSION 1000)
	
		--select 1,* from @Temp


	SELECT DISTINCT 
				 D.EntityId AS Id 
				,D.Name 
				,D.[HierarchyId]
				,D.ParentId
				,D.Number
				,D.Prefix
				,D.LocationCode
				,D.IsActive
				,D.IsDivision
				--,HN.Id AS ChildHierarchyLevelId
				--,H.ParentId AS ParentHierarchyLevelId
				,E.Name+' '+E.SurName AS CreatedBy
				,D.CreatedOn
				,ED.Name+' '+ED.SurName AS UpdatedBy
				,D.UpdatedOn  UpdatedOn
	FROM @Temp DT
	INNER JOIN alt.Departments D WITH(NOLOCK)
		ON DT.DepartmentId=D.EntityId
	LEFT JOIN alt.Departments PD WITH(NOLOCK)
		ON DT.ParentDeptId=PD.EntityId 
	LEFT JOIN alt.DepartmentHierarchy H
		ON H.EntityId=D.[HierarchyId] AND H.IsActive=1
	LEFT JOIN alt.DepartmentHierarchy HN
		ON H.EntityId=HN.ParentId
	LEFT JOIN alt.Users E
			ON E.EntityId=D.CreatedByUserId
		LEFT JOIN alt.Users ED
			ON ED.EntityId=D.UpdatedByUserId

END
		




GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetDepartmentHierarchyByDepartmentId]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*==============================================================================================
AUTHOR					: RAJESH
CREATED DATE			: 04 AUG 2015
LAST UPDATED BY			: 
LAST UPDATED DATE		:
DESCRIPTION             : Used to Get allusers Hierrachy Under Supervisor
PROCEDURE NAME			:  AL_P_GetDepartmentHierarchyByDepartmentId 
EXAMPLE                 : EXEC AL_P_GetDepartmentHierarchyByDepartmentId '596F525D-9A0A-E511-9418-C81F660EC933'
							
==============================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_GetDepartmentHierarchyByDepartmentId]
(
	@DepartmentId uniqueidentifier
)
AS
BEGIN
SET NOCOUNT ON
	;WITH CTC
	AS
	(
	SELECT EntityId AS DepartmentId,Name,ParentId AS ParentDeptId
	FROM alt.Departments
	WHERE EntityId=@DepartmentId
	UNION ALL
	SELECT DP.EntityId AS DepartmentId,DP.Name,DP.ParentId AS ParentDeptId
	FROM alt.Departments DP 
	INNER JOIN CTC C
		ON C.DepartmentId=DP.ParentId	
	WHERE DP.IsActive=1
	)
	SELECT DepartmentId,Name,ParentDeptId FROM CTC
	OPTION (MAXRECURSION 1000)
END

GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetErrorInfo]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*======================================================================================================
AUTHOR					: Janardhan Kumar Manne
CREATED DATE			: 04 MAR 2014
DESCRIPTION             : Used to get error information
PROCEDURE NAME			: VS_QT_P_GetErrorInfo
EXAMPLE                 : EXEC VS_QT_P_GetErrorInfo
HISTORY                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------	
=======================================================================================================*/

CREATE PROCEDURE [dbo].[AL_P_GetErrorInfo]
AS
SELECT   ERROR_NUMBER() AS ErrorNumber
		,ERROR_SEVERITY() AS ErrorSeverity
		,ERROR_STATE() AS ErrorState
		,ERROR_PROCEDURE() AS ErrorProcedure
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage
		,GETDATE() AS CreatedOn

GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetUserApplicationRole_RPT]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*======================================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 30-June-2016
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_GetUserApplicationRole_RPT
EXAMPLE                 : exec AL_P_GetUserApplicationRole_RPT @EMPLOYEEID='3BF06476-7C16-E611-80CD-5CF3FCB1B2E9'
HISTORY                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------	
=======================================================================================================*/

CREATE PROCEDURE [dbo].[AL_P_GetUserApplicationRole_RPT]
(
  @EmployeeId NVARCHAR(MAX)
)

AS
BEGIN
SET NOCOUNT ON
BEGIN TRY

DECLARE @DynSql NVARCHAR(MAX),@ApplicationName NVARCHAR(MAX),@Cnt INT, @Count INT,@EmpName NVARCHAR(MAX),@DbName NVARCHAR(MAX),@UserEntityId NVARCHAR(MAX)

CREATE TABLE #Roleuser(Id INT Identity(1,1),AppName NVARCHAR(MAX),EmploYeeName NVARCHAR(MAX),RoleId NVARCHAR(MAX),RoleName NVARCHAR(MAX))

CREATE TABLE #Temp(Id Int Identity(1,1),AppName NVARCHAR(MAX),DBName NVARCHAR(MAX)) 
INSERT INTO #Temp
SELECT Name,DBName FROM [alt].[Apps] WHERE IsActive=1

--SET @EmpName=(SELECT UserNumber FROM [alt].[Employees] WHERE EntityId=@EmployeeId)
--SET @UserEntityId=(SELECT EntityId FROM [alt].[Users] WHERE MasterEmployeeId=@EmployeeId)

SET @EmpName=(SELECT UserNumber FROM [alt].[Users] WHERE EntityId=@EmployeeId)
--SET @UserEntityId=(SELECT EntityId FROM [alt].[Users] WHERE MasterEmployeeId=@EmployeeId)

SET @Count=(Select Count(*) From #Temp)
SET @cnt=1

/*To Get perticular appplication Roles For Perticular User*/
WHILE (@Count>=@cnt)
	BEGIN
		SET @ApplicationName=(SELECT AppName FROM #Temp WHERE Id=@cnt)
		SET @DbName=(SELECT DBName FROM #Temp WHERE Id=@cnt)
		--SELECT @ApplicationName,@DbName
		SET @DynSql = ISNULL(@DynSql,'')+ '
					INSERT INTO #Roleuser
					SELECT ''' + @ApplicationName +''',''' + @EmpName + ''',RP.RoleId,R.Name
					FROM '+'['+ @DbName + ']'+'.[alaat].[RoleProfile] Rp
					INNER JOIN '+'['+ @DbName + ']'+'.[alaat].[Role] R
					ON RP.RoleId=R.EntityId
					WHERE RP.IsDeleted IS NULL AND Rp.ProfileId=''' + @EmployeeId + ''''+';'
				
		SET @cnt=@cnt+1
	END


	SET @DynSql = @DynSql +'
					SELECT DISTINCT EmployeeName,AppName AS ''User Application(s) Acess'',STUFF((SELECT DISTINCT '',''+ t.RoleName
					FROM #Roleuser T
					WHERE TEM.AppName=T.AppName 
					FOR XML PATH('''')),1,1,'''') AS ''Role(s) in the Application''
					FROM #Roleuser tem'
	EXEC(@DynSql)
		----SELECT @DynSql


	/*To Get perticular Groups For Perticular User*/
	SELECT @EmpName AS 'EmployeeId',G.Name As 'Group(s)' FROM [alt].[Groups] G
	INNER JOIN [alt].[UserGroup] UG
	ON G.EntityId=UG.GroupId
	WHERE UG.UserId=@EmployeeId

DROP TABLE #Roleuser
DROP TABLE #Temp

END TRY
BEGIN CATCH
	EXEC AL_SP_GetErrorInfo
END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetUserProfile_RPT]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 28 June 2016
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_GetUsersSearchdetails_RPT
EXAMPLE                 : EXEC AL_P_GetUsersSearchdetails_RPT 'nandhini',@FROMDATE=N'06/29/2016',@TODATE=N'06/29/2016'

History                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------
==============================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_GetUserProfile_RPT]
(
	@UserName NVARCHAR(MAX)
	,@FromDate NVARCHAR(MAX)=null
	,@ToDate NVARCHAR(MAX)=null
)
AS
BEGIN
SET NOCOUNT ON;

BEGIN TRY

  	SELECT  DISTINCT EntityId,UserNumber AS Username,Name+' '+Surname AS 'Fullname',CreatedOn AS 'ActiveFrom'
	INTO #UserDetails
	FROM [alt].[Users] 
	WHERE UserNumber LIKE '%'+@UserName+'%' OR EmailAddress LIKE '%'+@UserName+'%' OR Name+''+Surname LIKE '%'+@UserName+'%'
	ORDER BY UserNumber DESC
 

	SELECT  ROW_NUMBER ( ) OVER ( PARTITION BY  U.EntityId ORDER BY US.StartedOn DESC ) AS RN,U.EntityId,U.Username,U.Fullname,U.ActiveFrom,US.StartedOn AS 'LastLogin'
	INTO #LastLogin
	FROM #UserDetails U
	LEFT JOIN [alt].[UserSessions] US
	ON U.EntityId=US.UserId

SELECT UserIds,ISNULL(COUNT(U.UserNumber),0) AS 'Password Updated'
INTO #PasswordCount
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%Password%'
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
 GROUP BY UserIds


 SELECT UserIds,ISNULL(COUNT(U.UserNumber),0) AS 'User Locked'
 INTO #LockedCount
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%Lock%' AND U.ActionPerformed NOT LIKE '%Unlock%'
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
 GROUP BY UserIds


   SELECT UserIds,ISNULL(COUNT(U.UserNumber),0) AS 'User UnLocked'
   INTO #UnlockedCount
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%Unlock%'
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
 GROUP BY UserIds

    SELECT UserIds,ISNULL(COUNT(U.UserNumber),0) AS 'User Activated'
   INTO #ActiveCount
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%Activ%' AND U.ActionPerformed NOT LIKE '%InActiv%' 
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
 GROUP BY UserIds

 SELECT UserIds,ISNULL(COUNT(U.UserNumber),0) AS 'User InActivated'
   INTO #INActiveCount
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%INactiv%' 
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
 GROUP BY UserIds


  SELECT UserIds,ActionPerformed
   INTO #ProfileUpdate
 FROM [alt].[Users_History] U
 WHERE U.UserIds IN(SELECT  EntityId FROM #LastLogin)
		AND U.ActionPerformed LIKE '%Profile%' 
		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	   AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.CreatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))




 	SELECT DISTINCT L.EntityId,L.Username,L.Fullname,L.ActiveFrom,L.LastLogin,ISNULL(p.[Password Updated],0) AS 'Password Updated'
		,ISNULL(LC.[User Locked],0) AS 'User Locked',ISNULL(UC.[User UnLocked],0) AS 'User UnLocked'
		,ISNULL(AC.[User Activated],0) AS 'User Activated',ISNULL(IC.[User InActivated],0) AS 'User InActivated'
		,CASE WHEN PU.ActionPerformed IS NULL THEN NULL ELSE 'ProfileUpdated' END AS 'Profile Action'
	FROM #LastLogin L
	LEFT JOIN #PasswordCount P
	ON L.EntityId=P.UserIds
	LEFT JOIN #LockedCount LC
	ON L.EntityId=LC.UserIds
	LEFT JOIN #UnlockedCount UC
	ON L.EntityId=UC.UserIds
	LEFT JOIN #ActiveCount AC
	ON L.EntityId=AC.UserIds
	LEFT JOIN #INActiveCount IC
	ON L.EntityId=IC.UserIds
	LEFT JOIN #ProfileUpdate PU
	ON L.EntityId=PU.Userids
	 WHERE L.RN=1  


DROP TABLE #UserDetails
DROP TABLE #LastLogin
DROP TABLE #PasswordCount
DROP TABLE #LockedCount
DROP TABLE #UnlockedCount
DROP TABLE #ActiveCount
DROP TABLE #INActiveCount
DROP TABLE #ProfileUpdate

END TRY
BEGIN CATCH
	EXEC AL_P_GetErrorInfo
END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetUserProfileAudit_RPT]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*======================================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_GetUserProfileActions
EXAMPLE                 : EXEC AL_P_GetUserProfileActions '4D399482-CE36-E611-80CD-5CF3FCB1B2E9'
HISTORY                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------	
=======================================================================================================*/

CREATE PROCEDURE [dbo].[AL_P_GetUserProfileAudit_RPT]
(
	@UserId uniqueidentifier
	,@FromDate NVARCHAR(MAX)=null
	,@ToDate NVARCHAR(MAX)=null
)
AS
BEGIN
SET NOCOUNT ON
 
	BEGIN TRY

/*Getting The Records Which Are Not In Inserted,ProfileUpdated From  The History */
SELECT U.UserNumber,REPLACE(U.ActionPerformed,'By Admin','') AS 'ActionPerformed',U.UpdatedOn AS 'ActionDate'
,CASE WHEN U.ActionPerformed='Locked By Failure Attempts' THEN 'System' ELSE UR.UserNumber END AS 'PerformedBy' --,UpdatedByUserId
 FROM [alt].[Users_History] U
 INNER JOIN [alt].[Users] UR
 ON U.CreatedByUserId=UR.EntityId
 WHERE U.UserIds=@UserId 
 		AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), U.UpdatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
		AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), U.UpdatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))
		AND U.ActionPerformed NOT LIKE '%Profile%' AND U.ActionPerformed NOT LIKE '%Inserted%'
 ORDER BY U.UpdatedOn DESC

/*TO GET User Profile Updated Values*/
EXEC AL_P_GetUserProfileFieldUpdates @UserId,@FromDate,@ToDate

END TRY
BEGIN CATCH
	Exec [dbo].[AL_P_GetErrorInfo] 
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetUserProfileFieldUpdates]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*======================================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_GetUserProfileFieldUpdates
EXAMPLE                 : EXEC AL_P_GetUserProfileFieldUpdates '5b510dcb-c439-e611-80cd-5cf3fcb1b2e9'
HISTORY                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------	
=======================================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_GetUserProfileFieldUpdates]
(
	@UserId uniqueidentifier
	,@FromDate NVARCHAR(MAX)=null
	,@ToDate NVARCHAR(MAX)=null
)
AS
BEGIN
SET NOCOUNT ON

	BEGIN TRY

/*Getting Only Inserted,ProfileUpdated Records From  The History */
 SELECT ROW_NUMBER ( ) OVER ( PARTITION BY  U.UserNumber ORDER BY U.UpdatedOn DESC ) AS RN,U.EntityId,U.ActionPerformed, U.UserNumber,U.EmailAddress
	 ,D.Name AS 'DepartMent',DG.Name AS 'Designation',U.SupervisorId,U.MobileNum,U.DateofJoining,U.Surname,U.IsActive,U.IsLocked,U.Name,U.PhoneNum,U.UpdatedOn
	 ,UR.UserNumber AS 'PerformedBy',URS.UserNumber AS 'Supervisor',U.AltEmailAddress,U.MiddleName,U.CompanyName AS 'BusinessUnit',U.ProfileImage
 INTO #Temp
 FROM [alt].[Users_History] U
 INNER JOIN [alt].[Departments] D
	 ON U.DefaultDepartmentId=D.EntityId
 INNER JOIN [alt].[Designation] DG
	 ON U.DesignationId=DG.EntityId
 INNER JOIN [alt].[Users] UR
	 ON U.CreatedByUserId=UR.EntityId
 LEFT JOIN [alt].[Users] URS
	 ON U.SupervisorId=URS.EntityId
 WHERE UserIds=@UserId AND (U.ActionPerformed LIKE '%Profile%' OR U.ActionPerformed LIKE '%Insert%') 

 --SELECT * FROM #Temp


/*Inorder To compare The Recors For New Value & Old Value*/
SELECT ROW_NUMBER ( ) OVER ( PARTITION BY  UserNumber ORDER BY UpdatedOn DESC ) AS RowNo,*
INTO #Temp1
FROM #Temp
WHERE RN<>1

SELECT t.UserNumber AS 'NewUserId'
	,T.Surname AS 'NewLastName',T1.Surname AS 'OldLastName', T.MobileNum AS 'NewMobile',T1.MobileNum AS 'OldMobile'
	,T.DateofJoining AS 'NewDateofJoining',T1.DateofJoining AS 'OldDateofJoining',T.Name AS 'NewFirstName',T1.Name AS 'OldFirstName'
	,T.Designation AS 'NewDesignation',T1.Designation AS 'OldDesignation', T.DepartMent AS 'NewDepartment',T1.DepartMent AS 'OldDepartment'
	,T.EmailAddress AS 'NewEmailId', T1.EmailAddress AS 'OldEmailId',t1.UserNumber AS 'OldUserId',t.PhoneNum AS 'NewDeskNo',t1.PhoneNum  AS 'OldDeskNo'
	,T.Supervisor AS 'NewSupervisor',T1.Supervisor AS 'OldSupervisor',T.AltEmailAddress AS 'NewAltEmailAddress',T1.AltEmailAddress AS 'OldAltEmailAddress'
	,T.MiddleName AS 'NewMiddleName', T1.MiddleName AS 'OldMiddleName',T.BusinessUnit AS 'NewBusinessUnit',T1.BusinessUnit AS 'OldBusinessUnit'
	,T.ProfileImage AS 'NewProfileImage',T1.ProfileImage AS 'OldProfileImage'
	,T.UpdatedOn AS 'ActionDate',T.[PerformedBy]
FROM #Temp t
LEFT JOIN #Temp1 t1
ON T.Rn=t1.rowno
WHERE T1.DateofJoining IS NOT NULL AND T1.UserNumber IS NOT NULL AND T.DepartMent IS NOT NULL--COndition When Exists Only Inserted Record In History
		AND (T.Designation<>t1.Designation OR T.Surname<>T1.Surname OR T.DateofJoining<>T1.DateofJoining OR T.Name<>T1.Name 
			 OR T.MobileNum<>t1.MobileNum OR T.DepartMent<>t1.DepartMent OR T.Designation<>T1.Designation OR T.EmailAddress<>t1.EmailAddress
			 OR T.PhoneNum<>t1.PhoneNum OR T.Supervisor<>T1.Supervisor OR T.AltEmailAddress<>t1.AltEmailAddress 
			 OR T.MiddleName<>T1.MiddleName OR T.BusinessUnit<>T1.BusinessUnit)
  	AND (@FromDate IS NULL OR CONVERT(VARCHAR(10), T.UpdatedOn, 101)>=CONVERT(VARCHAR(10), @FromDate, 101))
	AND (@ToDate IS NULL OR CONVERT(VARCHAR(10), T.UpdatedOn, 101)<=CONVERT(VARCHAR(10), @ToDate, 101))

ORDER BY T.UpdatedOn DESC


 DROP TABLE #Temp
 DROP TABLE #Temp1

END TRY
BEGIN CATCH
	Exec [dbo].[AL_P_GetErrorInfo] 
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_GetWidget]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
DECLARE @RetrunCode INT
EXEC AL_P_IsDataBaseExists 'ALRDXAdmin1',@RetrunCode OUT
SELECT @RetrunCode
*/
CREATE PROCEDURE [dbo].[AL_P_GetWidget]
(
@UserID varchar(max)
)
AS
BEGIN
	select * from Widget where UserID=@UserID
END



GO
/****** Object:  StoredProcedure [dbo].[AL_P_IsDataBaseExists]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
DECLARE @RetrunCode INT
EXEC AL_P_IsDataBaseExists 'ALRDXAdmin1',@RetrunCode OUT
SELECT @RetrunCode
*/
CREATE PROCEDURE [dbo].[AL_P_IsDataBaseExists]
(
 @DatBaseName NVARCHAR(500),
 @RetrunCode INT OUT
)
AS
BEGIN
	SET NOCOUNT ON
	IF db_id(@DatBaseName) IS NOT NULL
	BEGIN
	SET @RetrunCode=-2
	END
	ELSE
	BEGIN
	SET @RetrunCode=1
	END
END



GO
/****** Object:  StoredProcedure [dbo].[AL_P_IsUserExistsInHeirarchy]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*==============================================================================================
AUTHOR					: NandhiniG
CREATED DATE			: 24 June 2016
DESCRIPTION             : 
PROCEDURE NAME			: AL_P_IsUserExistsInHeirarchy
						  DECLARE @ReturnCode INT
EXAMPLE                 : EXEC AL_P_IsUserExistsInHeirarchy '3B20ADD9-D536-E611-80CD-5CF3FCB1B2E9','50FEE9BA-BA32-E611-8C19-D067E5E54B7F', @ReturnCode OUT
						  SELECT  @ReturnCode
History                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------
==============================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_IsUserExistsInHeirarchy]
(
	@UserId  UniqueIdentifier='',
	@SupervisorId UniqueIdentifier='',
	@ReturnCode INT OUT
)
AS
BEGIN
SET NOCOUNT ON;

	BEGIN TRY

	CREATE TABLE #Temp(Id Int Identity(1,1),SupervisorId NVARCHAR(MAX),SuperVisor NVARCHAR(MAX),UserId NVARCHAR(MAX)
			,UserName NVARCHAR(MAX),ChildGender NVARCHAR(MAX),EmailId NVARCHAR(MAX),ImagePath NVARCHAR(MAX)
			,IsParent NVARCHAR(MAX),Active NVARCHAR(MAX),IsUser NVARCHAR(MAX),EmployeeId NVARCHAR(MAX))

	INSERT INTO  #Temp
	EXEC AL_P_User_GetHierarchyByLevel @SupervisorId,''

	IF EXISTS (SELECT * FROM #Temp WHERE UserId=@UserId)
	BEGIN
		SET @ReturnCode=-1
	END
	ELSE
		SET @ReturnCode=0

DROP TABLE #Temp

	END TRY
	BEGIN CATCH
		EXEC AL_P_GetErrorInfo
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_RunMigrationScript]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*--------------------------------------------------------------------------------

AUTHOR				: arpan
CREATED DATE		: 08 AUG 2015
DESCRIPTION			: Used to ...
PROCEDURE NAME		: AL_P_RunMigrationScript
EXAMPLE				: EXEC AL_P_RunMigrationScript 
CHANGE HISTORY		:		Change Reason						ChangedBy			ChangedOn
-----------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[AL_P_RunMigrationScript]
(
	@script nvarchar(max)=NUll
)
AS
BEGIN
	DECLARE @count INT,@Cnt INT,@Databasename NVARCHAR(1000),@EntityId uniqueidentifier
	,@Dynsql NVARCHAR(1000)=''
	SET @Cnt=1

	DECLARE @Temp TABLE(Id INT IDENTITY(1,1),EntityId uniqueidentifier,DBName NVARCHAR(200))

	Insert @Temp(EntityId,DBName)
	SELECT EntityId,DBName
	FROM alt.apps 

	SELECT @count=COUNT(Id) FROM @Temp

	WHILE @count>=@Cnt
	BEGIN
		SELECT @Databasename=DBName,@EntityId=EntityId FROM @Temp WHERE Id=@Cnt

		IF db_id(@Databasename) IS NOT NULL
		BEGIN
			SET @Dynsql='USE ['+@Databasename+'] '+@script
				--SELECT @Dynsql AS 'zx'
				EXEC(@Dynsql)
		END
		ELSE
		BEGIN
			--select 1
			DELETE alt.apps WHERE EntityId=@EntityId
		END
		SET @Cnt=@Cnt+1
	END
	
END

GO
/****** Object:  StoredProcedure [dbo].[AL_P_UpdateWidget]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AL_P_UpdateWidget]
(
@UserID varchar(max),
@Content varchar(max)

)
AS
BEGIN
update alaat.Widget set layout=@Content where UserID=@UserID
END



GO
/****** Object:  StoredProcedure [dbo].[AL_P_User_GetDetailsByDepartmentHierarchy]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*==============================================================================================
AUTHOR					: RAJESH
CREATED DATE			: 04 AUG 2015
LAST UPDATED BY			: 
LAST UPDATED DATE		:
DESCRIPTION             : Used to Get allusersby Department Hierarchy
PROCEDURE NAME			:  AL_P_User_GetDetailsByDepartmentHierarchy 
EXAMPLE                 : EXEC AL_P_User_GetDetailsByDepartmentHierarchy '596F525D-9A0A-E511-9418-C81F660EC933'
							
==============================================================================================*/
CREATE PROCEDURE [dbo].[AL_P_User_GetDetailsByDepartmentHierarchy]
(
  @DepartmentId uniqueidentifier
)
AS
BEGIN
SET NOCOUNT ON
 DECLARE @Temp TABLE(DepartmentId uniqueidentifier,ParentDeptId uniqueidentifier)
		;WITH CTC
		AS
		(
		SELECT EntityId AS DepartmentId,ParentId AS ParentDeptId
		FROM alt.Departments
		WHERE EntityId=@DepartmentId
		UNION ALL
		SELECT DP.EntityId AS DepartmentId,DP.ParentId AS ParentDeptId
		FROM alt.Departments DP
		INNER JOIN CTC C
			ON C.DepartmentId=DP.ParentId	
		WHERE DP.IsActive=1
		)
		INSERT INTO @Temp(DepartmentId,ParentDeptId)
		SELECT * FROM CTC
		OPTION (MAXRECURSION 1000)

		SELECT U.EntityId,Name,UserNumber,U.DefaultDepartmentId FROM [alt].[Users] U
		--INNER JOIN alt.UserDepartments UD
		--	ON U.EntityId=UD.UserId
		WHERE U.DefaultDepartmentId IN(SELECT DepartmentId FROM @Temp) AND U.IsActive=1

END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_User_GetHierarchyByLevel]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================================================
AUTHOR					: Harsha
CREATED DATE			: 17 DEC 2013
DESCRIPTION             : This stored procedure is used to Get Employee Hierarchy.
PROCEDURE NAME			: AL_P_User_GetHierarchyByLevel_R
EXAMPLE                 : EXEC AL_P_User_GetHierarchyByLevel 'D049EC69-E109-E511-9418-C81F660EC933',3
History                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------
==============================================================================================*/
CREATE  PROCEDURE [dbo].[AL_P_User_GetHierarchyByLevel]
(
	@UserId UniqueIdentifier='',
	@Level INT
)
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY


--DECLARE @UserId UniqueIdentifier

--SET @UserId=(SELECT MasterEmployeeId FROM [alt].[Users] WHERE EntityId=@UserId)
		
		;WITH Rollups AS
		(
			SELECT EntityId AS UserId,SupervisorId,0 AS LV,CASE WHEN Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			,IsUser,UserName
			FROM [alt].[Employees]	
			WHERE EntityId=@UserId OR CAST(@UserId AS NVARCHAR(200))='' 			
			UNION ALL			
			SELECT R.EntityId AS UserId,R.SupervisorId ,LV+1 AS LV,CASE WHEN R.Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			,R.IsUser,R.UserName
			FROM [alt].[Employees] R
			INNER JOIN Rollups C
				ON C.UserId=R.SupervisorId	
		) 
		
		SELECT DISTINCT ED.UserId,UA.Name+' '+UA.SurName AS 'SuperVisor',ED.SupervisorId,U.Name+' '+U.Surname AS 'ChildUser'
		,ED.ChildGender,U.EmailAddress AS 'ChildEMail'
		,NULL AS 'ChildDesignation',U.IsActive,U.ProfileImage,ED.IsUser,ED.UserName
		INTO #A
		FROM Rollups ED
		LEFT JOIN [alt].[Employees] UA
			ON UA.EntityId=ED.SupervisorId
		INNER JOIN [alt].[Employees] U
			ON U.EntityId=ED.UserId
		--LEFT JOIN [alaat].MasterDataItems DE  
		--	ON DE.Id=U.DesignationId			
		WHERE LV<=@Level OR @Level=''

		--select * from #A

		;WITH CTE AS
		(
			SELECT EntityId AS UserId,SupervisorId,0 AS LV,CASE WHEN Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			,IsUser,UserName
			FROM [alt].[Employees]	
			WHERE EntityId=@UserId OR (CAST(@UserId AS NVARCHAR(200))='' AND SupervisorId IS NULL)
			UNION ALL
			SELECT R.EntityId AS UserId,R.SupervisorId ,LV+1 AS LV,CASE WHEN R.Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			,R.IsUser,R.UserName
			FROM [alt].[Employees] R
			INNER JOIN CTE C
				ON C.SupervisorId=R.EntityId	
		) 
			
			--select * from CTE
		SELECT DISTINCT ED.UserId,UA.Name+' '+UA.SurName AS 'SuperVisor',ED.SupervisorId,U.Name+' '+U.SurName AS 'ChildUser'
		,ED.ChildGender,U.EmailAddress AS 'ChildEMail',NULL AS 'ChildDesignation',U.IsActive,U.ProfileImage	,ED.IsUser,ED.UserName
		INTO #B
		FROM CTE ED
		LEFT JOIN [alt].[Employees] UA
			ON UA.EntityId=ED.SupervisorId
		INNER JOIN [alt].[Employees] U
			ON U.EntityId=ED.UserId
			--LEFT JOIN [alaat].MasterDataItems DE  
			--ON DE.Id=U.DesignationId
		WHERE LV<=@Level OR @Level=0

		--select * from #B

		SELECT * INTO #Temp FROM(
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage,IsUser,UserName
		FROM #A
		UNION
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage,IsUser,UserName
		FROM #B) AS A


		DECLARE @Temp TABLE(Id INT IDENTITY(1,1),SupervisorId uniqueidentifier,SuperVisor NVARCHAR(MAX),UserId uniqueidentifier
			,UserName NVARCHAR(MAX),ChildGender NVARCHAR(MAX),EMailId NVARCHAR(MAX),Designation NVARCHAR(MAX),Active BIT,ImagePath NVARCHAR(MAX)
			,IsUser BIT,EmployeeId NVARCHAR(MAX))

		INSERT INTO @Temp(SupervisorId,SuperVisor,UserId,UserName,ChildGender,EmailId,Designation,Active,ImagePath,IsUser,EmployeeId)
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage,IsUser,UserName
		FROM #A
		UNION
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage,IsUser,UserName
		FROM #B
		
		--SELECT * FROM @Temp 
		
		SELECT SupervisorId,SuperVisor,UserId AS 'UserId',UserName,ChildGender,EmailId,ImagePath
		,CASE WHEN (SupervisorId NOT IN (SELECT UserId FROM #Temp) OR SupervisorId IS NULL)THEN 1 ELSE 0 END AS 'IsParent',Active,IsUser,EmployeeId
		--,CASE WHEN Id=1 THEN 1 ELSE 0 END AS 'IsParent',Active,IsUser,EmployeeId
		FROM @Temp
		
		DROP TABLE #A
		DROP TABLE #B 

	END TRY
	BEGIN CATCH
		EXEC AL_P_GetErrorInfo
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_User_GetHierarchyByLevel_Old]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*==============================================================================================
AUTHOR					: Harsha
CREATED DATE			: 17 DEC 2013
DESCRIPTION             : This stored procedure is used to Get Employee Hierarchy.
PROCEDURE NAME			: AL_P_User_GetHierarchyByLevel_R
EXAMPLE                 : EXEC AL_P_User_GetHierarchyByLevel '995e6184-eb44-e511-80c1-5cf3fcb1b2e9',2
History                 : Change Reason                           UpdatedOn         UpdatedBy
						-------------------------------------------------------------------------
==============================================================================================*/
CREATE  PROCEDURE [dbo].[AL_P_User_GetHierarchyByLevel_Old]
(
	@UserId UniqueIdentifier='',
	@Level INT
)
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY

		
		;WITH Rollups AS
		(
			SELECT EntityId AS UserId,SupervisorId,0 AS LV,CASE WHEN Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			FROM [alt].Users	
			WHERE EntityId=@UserId OR CAST(@UserId AS NVARCHAR(50))='' 
			
			UNION ALL
			
			SELECT R.EntityId AS UserId,R.SupervisorId ,LV+1 AS LV,CASE WHEN R.Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			FROM [alt].Users R
			INNER JOIN Rollups C
				ON C.UserId=R.SupervisorId	
		) 
		

		SELECT DISTINCT ED.UserId,UA.Name+' '+UA.SurName AS 'SuperVisor',ED.SupervisorId,U.Name+' '+U.Surname AS 'ChildUser'
		,ED.ChildGender,U.EmailAddress AS 'ChildEMail'
		,NULL AS 'ChildDesignation',U.IsActive,U.ProfileImage
		INTO #A
		FROM Rollups ED
		LEFT JOIN [alt].Users UA
			ON UA.EntityId=ED.SupervisorId
		INNER JOIN [alt].Users U
			ON U.EntityId=ED.UserId
		--LEFT JOIN [alaat].MasterDataItems DE  
		--	ON DE.Id=U.DesignationId			
		WHERE LV<=@Level OR @Level=''
		option (maxrecursion 0)
		--select * from #A


		;WITH CTE AS
		(
			SELECT EntityId AS UserId,SupervisorId,0 AS LV,CASE WHEN Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			FROM [alt].Users	
			WHERE EntityId=@UserId OR (CAST(@UserId AS NVARCHAR(100))='' AND SupervisorId IS NULL)
			UNION ALL
			SELECT R.EntityId AS UserId,R.SupervisorId ,LV+1 AS LV,CASE WHEN R.Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
			FROM [alt].Users R
			INNER JOIN CTE C
				ON C.SupervisorId=R.EntityId	
		) 
			
			--select * from CTE
		SELECT DISTINCT ED.UserId,UA.Name+' '+UA.SurName AS 'SuperVisor',ED.SupervisorId,U.Name+' '+U.SurName AS 'ChildUser'
		,ED.ChildGender,U.EmailAddress AS 'ChildEMail',NULL AS 'ChildDesignation',U.IsActive,U.ProfileImage	
		INTO #B
		FROM CTE ED
		LEFT JOIN [alt].Users UA
			ON UA.EntityId=ED.SupervisorId
		INNER JOIN [alt].Users U
			ON U.EntityId=ED.UserId
			--LEFT JOIN [alaat].MasterDataItems DE  
			--ON DE.Id=U.DesignationId
		WHERE LV<=@Level OR @Level=0
		option (maxrecursion 0)
		--select * from #B

		DECLARE @Temp TABLE(Id INT IDENTITY(1,1),SupervisorId uniqueidentifier,SuperVisor NVARCHAR(100),UserId uniqueidentifier
			,UserName NVARCHAR(100),ChildGender NVARCHAR(100),EMailId NVARCHAR(100),Designation NVARCHAR(100),Active BIT,ImagePath NVARCHAR(100))
		
		INSERT INTO @Temp(SupervisorId,SuperVisor,UserId,UserName,ChildGender,EmailId,Designation,Active,ImagePath)
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage
		FROM #A
		UNION
		SELECT SupervisorId,SuperVisor,UserId,ChildUser,ChildGender,ChildEMail,ChildDesignation,IsActive,ProfileImage 
		FROM #B
		
		SELECT SupervisorId,SuperVisor,UserId AS 'UserId',UserName,ChildGender,EmailId,ImagePath
		,CASE WHEN Id=1 THEN 1 ELSE 0 END AS 'IsParent',Active
		FROM @Temp
		

		DROP TABLE #A
		DROP TABLE #B 
		--DROP TABLE #ABC
		--DROP TABLE #DEF
		--DROP TABLE #UName	
	END TRY
	BEGIN CATCH
		EXEC AL_P_GetErrorInfo
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[AL_P_User_GetHierarchyBySupervisorId]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================================================
AUTHOR					: RAJESH
CREATED DATE			: 04 AUG 2015
LAST UPDATED BY			: 
LAST UPDATED DATE		:
DESCRIPTION             : Used to Get allusers Hierrachy Under Supervisor
PROCEDURE NAME			: EXEC AL_P_User_GetHierarchyBySupervisorId '24486039-2B30-E511-80BF-5EF3FCB1B2F0'
EXAMPLE                 : 
							
==============================================================================================*/

CREATE PROCEDURE [dbo].[AL_P_User_GetHierarchyBySupervisorId]
(
  @UserId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON

	;WITH Rollups AS
			(
				SELECT EntityId AS UserId,SupervisorId,0 AS LV,CASE WHEN Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
				FROM [alt].[Users]	
				WHERE EntityId=@UserId 
			
				UNION ALL
			
				SELECT R.EntityId,R.SupervisorId ,LV+1 AS LV,CASE WHEN R.Gender=1 THEN 'MALE' ELSE 'FEMALE' END AS 'ChildGender'
				FROM [alt].[Users] R
				INNER JOIN Rollups C
					ON C.UserId=R.SupervisorId
				WHERE R.IsActive=1	
			) 

			select R.UserId,U.UserName,U.Name,U.SupervisorId from Rollups R
			INNER JOIN [alt].[Users] U
				ON R.UserId=U.EntityId
			WHERE U.IsActive=1
			OPTION (MAXRECURSION 1000)
END
GO
/****** Object:  StoredProcedure [dbo].[AL_P_UserDetails_GetByDepartmentHierarchy]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC AL_P_UserDetails_GetByDepartmentHierarchy '596F525D-9A0A-E511-9418-C81F660EC933'
CREATE PROCEDURE [dbo].[AL_P_UserDetails_GetByDepartmentHierarchy]
(
@DepartmentId uniqueidentifier
)
AS
BEGIN
 DECLARE @Temp TABLE(DepartmentId uniqueidentifier,ParentDeptId uniqueidentifier)
	;WITH CTC
		AS
		(
			SELECT EntityId AS DepartmentId,ParentId AS ParentDeptId
			FROM alt.Departments
			WHERE EntityId=@DepartmentId
			UNION ALL
			SELECT DP.EntityId AS DepartmentId,DP.ParentId AS ParentDeptId
			FROM alt.Departments DP
			INNER JOIN CTC C
				ON C.ParentDeptId=DP.EntityId	
		)
		INSERT INTO @Temp(DepartmentId,ParentDeptId)
		SELECT * FROM CTC
		OPTION (MAXRECURSION 1000)
END
GO
/****** Object:  StoredProcedure [dbo].[AL_SP_GetErrorInfo]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AL_SP_GetErrorInfo]  
AS  
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage
	,GETDATE() AS ErrorDate; 


GO
/****** Object:  StoredProcedure [dbo].[BackupDatabase]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*==============================================================================================
AUTHOR : Kishore A
CREATED DATE : 06 July 2015
DESCRIPTION : This stored procedure is used to take FULL BACKUP of the specific database 
PROCEDURE NAME : BackupDatabase_Full
EXAMPLE : EXEC BackupDatabase_Full 'E:\extranet\QMSRevamp\DBBackUps\TASKS_QMSDev_BackUps_Weekly\','QMS_Dev'
History : Change Reason UpdatedOn UpdatedBy
-------------------------------------------------------------------------
==============================================================================================*/
CREATE PROCEDURE [dbo].[BackupDatabase]
(
@BackupDir varchar(400),
@DatabaseName varchar(300)
)
AS
BEGIN

IF @DatabaseName IS NULL
BEGIN
RETURN;
END

-- Declare Session Variables
DECLARE @Now datetime,@TodayStr varchar(20),@BackupName varchar(100),@BackupFile varchar(100)
,@DBName varchar(300),@SQL varchar(2000)

-- Database Names have to have [dbname] format since some names have a - or _ in the name
SET @DBName = '['+@DatabaseName+']'

-- Set the current date and time
SET @Now = getdate()

-- Create backup file date and time in DOS format yyyy_hhmmss
Set @TodayStr = convert(varchar, @Now, 112)+ '_'+replace(convert(varchar, @Now, 108), ':', '')

-- Create a variable holding the total path\filename.ext for the log backup
Set @BackupFile = @BackupDir+REPLACE(REPLACE(@DBName, '[',''), ']','')+'-'+ @TodayStr + '-FULL.BAK'

-- Provide the backup a SQL name and name in media
Set @BackupName = REPLACE(REPLACE(@DBName, '[',''), ']','')+' full backup for ' + @TodayStr

-- Generate the Dynamic SQL script variable to be executed
SET @SQL = 'BACKUP DATABASE ' + @DBName + ' TO DISK = ''' + @BackupFile + ''' WITH INIT, NAME = ''' +@BackupName+''', NOSKIP, NOFORMAT'

-- Execute the SQL Command 
EXEC(@SQL)
--SELECT @SQL
END

GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateLogs]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SP_UpdateLogs]  --'356BBD09-A7D4-E511-80C6-5CF3FCB1B2E9','0'
(

@EntityId uniqueidentifier ,
@IsLocked bit
)
as begin


update alt.Employees set IsLocked= @IsLocked where EntityId=@EntityId

end


GO
/****** Object:  StoredProcedure [dbo].[UpdateLogs]    Script Date: 4/17/2017 6:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateLogs] 
(

@EntityId uniqueidentifier ,
@IsLocked bit
)
as begin


update alt.Employees set IsLocked= @IsLocked where EntityId=@EntityId

end


GO
USE [master]
GO
ALTER DATABASE [ALAdmin2_DEV] SET  READ_WRITE 
GO
