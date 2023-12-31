USE [BillSystem2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/18/2023 12:32:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyProfiles]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyProfiles](
	[Id] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [nvarchar](450) NOT NULL,
	[Rowstatus] [int] NOT NULL,
 CONSTRAINT [PK_CompanyProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[EmployeeCode] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Gender] [int] NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[EmploymentDate] [datetime2](7) NOT NULL,
	[TerminatedDate] [datetime2](7) NULL,
	[EmploymentStatus] [int] NOT NULL,
	[EmploymentPosition] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [nvarchar](450) NOT NULL,
	[Rowstatus] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeneralCodes]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralCodes](
	[Id] [uniqueidentifier] NOT NULL,
	[GeneralCodeType] [int] NOT NULL,
	[InitialName] [nvarchar](max) NOT NULL,
	[Pad] [int] NOT NULL,
	[CurrentNumber] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [nvarchar](450) NOT NULL,
	[Rowstatus] [int] NOT NULL,
 CONSTRAINT [PK_GeneralCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HrmSettings]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrmSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[GeneralSetting] [int] NOT NULL,
	[Value] [float] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [nvarchar](450) NOT NULL,
	[Rowstatus] [int] NOT NULL,
 CONSTRAINT [PK_HrmSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](max) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[RowStatus] [int] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 10/18/2023 12:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017082055_initial', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017083926_employee-position', N'7.0.9')
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FullName], [PhoneNumber], [Email], [ImagePath], [Address], [Gender], [BirthDate], [EmploymentDate], [TerminatedDate], [EmploymentStatus], [EmploymentPosition], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'5e3167c2-a5ba-42b9-886c-1289d225f054', N'Emp-0001', N'Superadmin', N'0960831941', N'admin@DAFC.com', N'wwwroot\Employee\3c35e4ff-8d0b-45e3-bbef-9aafb2e9120f.png', N'Casanchiz', 0, CAST(N'1995-12-07 00:00:00.0000000' AS DateTime2), CAST(N'2007-07-18 00:00:00.0000000' AS DateTime2), NULL, 0, N'Director', CAST(N'2024-07-07 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FullName], [PhoneNumber], [Email], [ImagePath], [Address], [Gender], [BirthDate], [EmploymentDate], [TerminatedDate], [EmploymentStatus], [EmploymentPosition], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'9157a03f-6c13-48c0-8c42-93948a55eea2', N'emp-0003', N'Brennan1 Unity1', N'Wyoming1', N'refohab@mailinator.com1', N'wwwroot\Employee\9157a03f-6c13-48c0-8c42-93948a55eea2.png', N'Scarlett1', 0, CAST(N'1976-12-07 00:00:00.0000000' AS DateTime2), CAST(N'1983-10-04 00:00:00.0000000' AS DateTime2), NULL, 1, N'Jenna1', CAST(N'2023-10-18 10:26:52.9400460' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FullName], [PhoneNumber], [Email], [ImagePath], [Address], [Gender], [BirthDate], [EmploymentDate], [TerminatedDate], [EmploymentStatus], [EmploymentPosition], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'61389dd4-ab2c-4b17-9ea6-9bf793213548', N'emp-0004', N'Addison Nasim', N'Halee', N'visymywu@mailinator.com', N'wwwroot\Employee\61389dd4-ab2c-4b17-9ea6-9bf793213548.jpg', N'Signe', 1, CAST(N'2023-08-21 00:00:00.0000000' AS DateTime2), CAST(N'1996-10-03 00:00:00.0000000' AS DateTime2), NULL, 0, N'MacKenzie', CAST(N'2023-10-18 10:27:33.7667231' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FullName], [PhoneNumber], [Email], [ImagePath], [Address], [Gender], [BirthDate], [EmploymentDate], [TerminatedDate], [EmploymentStatus], [EmploymentPosition], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'334b3c45-7619-4561-8401-e039a681095d', N'emp-0005', N'Christian Barry', N'Sacha', N'gykaca@mailinator.com', N'wwwroot\Employee\334b3c45-7619-4561-8401-e039a681095d.jpg', N'Malachi', 0, CAST(N'1979-02-13 00:00:00.0000000' AS DateTime2), CAST(N'1979-04-20 00:00:00.0000000' AS DateTime2), NULL, 0, N'Freya', CAST(N'2023-10-18 10:34:00.6811765' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[GeneralCodes] ([Id], [GeneralCodeType], [InitialName], [Pad], [CurrentNumber], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'18eef146-fc48-4074-94e7-e5dd4a3be236', 0, N'emp', 4, 6, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[HrmSettings] ([Id], [GeneralSetting], [Value], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'18eef146-fc48-4074-94e7-e5dd4a3be238', 0, 60, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'System-Admin', N'SYSTEM-ADMIN', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Customer-Service', N'CUSTOMER-SERVICE', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'Bill-Product', N'BILL-PRODUCT', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4', N'Technical-Service', N'TECHNICAL-SERVICE', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5', N'Stock-Control', N'STOCK-CONTROL', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6', N'HRM', N'HRM', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7', N'Allow-Ketena', N'ALLOW-KETENAS', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8', N'online', N'ONLINE', NULL)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'1')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'4')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'5')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd238c939-6ee0-4f70-9c22-35a18b3faeeb', N'4')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd238c939-6ee0-4f70-9c22-35a18b3faeeb', N'5')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd238c939-6ee0-4f70-9c22-35a18b3faeeb', N'6')
INSERT [dbo].[Users] ([Id], [EmployeeId], [RowStatus], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'5e3167c2-a5ba-42b9-886c-1289d225f054', 0, N'admin', N'ADMIN', N'admin@DAFC.com', N'ADMIN@DAFC.COM', 0, N'AQAAAAIAAYagAAAAEN/vT8QfXoeVXrQyaTXE2Iv+jrKLIUq4nrbkE40F9g9fb02dRqGokTnhT7vjh+ZVhw==', N'AZY66XPBGRMTZZJ4JWR2OQRK65DUJUQF', N'45b78faa-ec62-4868-a72c-6c83e7614942', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [EmployeeId], [RowStatus], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd238c939-6ee0-4f70-9c22-35a18b3faeeb', N'9157a03f-6c13-48c0-8c42-93948a55eea2', 0, N'bre', N'BRE', N'bre@her.com', N'BRE@HER.COM', 0, N'AQAAAAIAAYagAAAAEIaadaMARJYiNAI7702xlAuLu3VUhJ5ac0h+E3y7XqMSmKit3zBZEdGH0TDIUX90mQ==', N'GTJXNME3K3ARMBVWUX5T2EGTNRU27ZDO', N'5baa5e41-5f68-4880-81f5-1b701bcdbb24', NULL, 0, 0, NULL, 1, 0)
ALTER TABLE [dbo].[CompanyProfiles]  WITH CHECK ADD  CONSTRAINT [FK_CompanyProfiles_Users_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyProfiles] CHECK CONSTRAINT [FK_CompanyProfiles_Users_CreatedById]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users_CreatedById]
GO
ALTER TABLE [dbo].[GeneralCodes]  WITH CHECK ADD  CONSTRAINT [FK_GeneralCodes_Users_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GeneralCodes] CHECK CONSTRAINT [FK_GeneralCodes_Users_CreatedById]
GO
ALTER TABLE [dbo].[HrmSettings]  WITH CHECK ADD  CONSTRAINT [FK_HrmSettings_Users_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HrmSettings] CHECK CONSTRAINT [FK_HrmSettings_Users_CreatedById]
GO
