USE [master]
GO
/****** Object:  Database [HoardSorter]    Script Date: 12/11/2018 11:35:57 AM ******/
CREATE DATABASE [HoardSorter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoardSorter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HoardSorter.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoardSorter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HoardSorter_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HoardSorter] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoardSorter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoardSorter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoardSorter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoardSorter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoardSorter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoardSorter] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoardSorter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoardSorter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoardSorter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoardSorter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoardSorter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoardSorter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoardSorter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoardSorter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoardSorter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoardSorter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoardSorter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoardSorter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoardSorter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoardSorter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoardSorter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoardSorter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoardSorter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoardSorter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HoardSorter] SET  MULTI_USER 
GO
ALTER DATABASE [HoardSorter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoardSorter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoardSorter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoardSorter] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoardSorter] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoardSorter] SET QUERY_STORE = OFF
GO
USE [HoardSorter]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/11/2018 11:35:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/11/2018 11:35:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/11/2018 11:35:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/11/2018 11:35:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/11/2018 11:35:57 AM ******/
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
/****** Object:  Table [dbo].[CardCollection]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardCollection](
	[CardCollectionID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NOT NULL,
	[ToTrade] [bit] NULL,
	[Wanted] [bit] NULL,
	[OwnedQty] [int] NULL,
	[TradeQty] [int] NULL,
	[WantQty] [int] NULL,
	[collectorID] [int] NOT NULL,
 CONSTRAINT [PK_CardCollection] PRIMARY KEY CLUSTERED 
(
	[CardCollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardDetails]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardDetails](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[CardName] [varchar](50) NOT NULL,
	[ConvertedManaCost] [int] NULL,
	[Text] [varchar](500) NULL,
	[Power] [varchar](50) NULL,
	[Toughness] [varchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardSet]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardSet](
	[SetID] [int] IDENTITY(1,1) NOT NULL,
	[SetName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Set] PRIMARY KEY CLUSTERED 
(
	[SetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[collectorID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[collectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorIdent]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorIdent](
	[ColorID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[ColorIdentID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ColorIdent] PRIMARY KEY CLUSTERED 
(
	[ColorIdentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[myID] [nvarchar](128) NOT NULL,
	[yourID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deck]    Script Date: 12/11/2018 11:35:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deck](
	[DeckID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[DeckTypeID] [int] NOT NULL,
	[DeckName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Deck] PRIMARY KEY CLUSTERED 
(
	[DeckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckCards]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckCards](
	[DeckCardID] [int] IDENTITY(1,1) NOT NULL,
	[DeckID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[CardQty] [int] NOT NULL,
 CONSTRAINT [PK_DeckCards] PRIMARY KEY CLUSTERED 
(
	[DeckCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckType]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckType](
	[DeckTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DeckType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeckType] PRIMARY KEY CLUSTERED 
(
	[DeckTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rarity]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rarity](
	[RarityID] [int] IDENTITY(1,1) NOT NULL,
	[RarityName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rarity] PRIMARY KEY CLUSTERED 
(
	[RarityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RarityIdent]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RarityIdent](
	[RarityID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[RarityIdentID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RarityIdent] PRIMARY KEY CLUSTERED 
(
	[RarityIdentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SetIdent]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetIdent](
	[CardID] [int] NOT NULL,
	[SetID] [int] NOT NULL,
	[SetIdentID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SetIdent] PRIMARY KEY CLUSTERED 
(
	[SetIdentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeIdent]    Script Date: 12/11/2018 11:35:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeIdent](
	[TypeID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[TypeIdentID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TypeIdent] PRIMARY KEY CLUSTERED 
(
	[TypeIdentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[CardCollection]  WITH CHECK ADD  CONSTRAINT [FK_CardCollection_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[CardCollection] CHECK CONSTRAINT [FK_CardCollection_CardDetails]
GO
ALTER TABLE [dbo].[CardCollection]  WITH CHECK ADD  CONSTRAINT [FK_CardCollection_Collections] FOREIGN KEY([collectorID])
REFERENCES [dbo].[Collections] ([collectorID])
GO
ALTER TABLE [dbo].[CardCollection] CHECK CONSTRAINT [FK_CardCollection_Collections]
GO
ALTER TABLE [dbo].[Collections]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Collections_dbo.AspNetUsers_Id] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Collections] CHECK CONSTRAINT [FK_dbo.Collections_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[ColorIdent]  WITH CHECK ADD  CONSTRAINT [FK_ColorIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[ColorIdent] CHECK CONSTRAINT [FK_ColorIdent_CardDetails]
GO
ALTER TABLE [dbo].[ColorIdent]  WITH CHECK ADD  CONSTRAINT [FK_ColorIdent_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ColorIdent] CHECK CONSTRAINT [FK_ColorIdent_Color]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_AspNetUsers] FOREIGN KEY([yourID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_AspNetUsers]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Contacts] FOREIGN KEY([myID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Contacts]
GO
ALTER TABLE [dbo].[Deck]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deck_dbo.AspNetUsers_Id] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deck] CHECK CONSTRAINT [FK_dbo.Deck_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[Deck]  WITH CHECK ADD  CONSTRAINT [FK_Deck_DeckType] FOREIGN KEY([DeckTypeID])
REFERENCES [dbo].[DeckType] ([DeckTypeID])
GO
ALTER TABLE [dbo].[Deck] CHECK CONSTRAINT [FK_Deck_DeckType]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [CardID] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [CardID]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_Deck] FOREIGN KEY([DeckID])
REFERENCES [dbo].[Deck] ([DeckID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_Deck]
GO
ALTER TABLE [dbo].[RarityIdent]  WITH CHECK ADD  CONSTRAINT [FK_RarityIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[RarityIdent] CHECK CONSTRAINT [FK_RarityIdent_CardDetails]
GO
ALTER TABLE [dbo].[RarityIdent]  WITH CHECK ADD  CONSTRAINT [FK_RarityIdent_Rarity] FOREIGN KEY([RarityID])
REFERENCES [dbo].[Rarity] ([RarityID])
GO
ALTER TABLE [dbo].[RarityIdent] CHECK CONSTRAINT [FK_RarityIdent_Rarity]
GO
ALTER TABLE [dbo].[SetIdent]  WITH CHECK ADD  CONSTRAINT [FK_SetIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[SetIdent] CHECK CONSTRAINT [FK_SetIdent_CardDetails]
GO
ALTER TABLE [dbo].[SetIdent]  WITH CHECK ADD  CONSTRAINT [FK_SetIdent_Set] FOREIGN KEY([SetID])
REFERENCES [dbo].[CardSet] ([SetID])
GO
ALTER TABLE [dbo].[SetIdent] CHECK CONSTRAINT [FK_SetIdent_Set]
GO
ALTER TABLE [dbo].[TypeIdent]  WITH CHECK ADD  CONSTRAINT [FK_TypeIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[TypeIdent] CHECK CONSTRAINT [FK_TypeIdent_CardDetails]
GO
ALTER TABLE [dbo].[TypeIdent]  WITH CHECK ADD  CONSTRAINT [FK_TypeIdent_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[TypeIdent] CHECK CONSTRAINT [FK_TypeIdent_Type]
GO
USE [master]
GO
ALTER DATABASE [HoardSorter] SET  READ_WRITE 
GO
