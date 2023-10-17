USE [BillSystem2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[CompanyProfiles]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 10/17/2023 11:33:38 AM ******/
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
	[EmploymentPosition] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [nvarchar](450) NOT NULL,
	[Rowstatus] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeneralCodes]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[HrmSettings]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[UserClaims]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[UserLogins]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 10/17/2023 11:33:38 AM ******/
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
/****** Object:  Table [dbo].[UserTokens]    Script Date: 10/17/2023 11:33:38 AM ******/
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
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FullName], [PhoneNumber], [Email], [ImagePath], [Address], [Gender], [BirthDate], [EmploymentDate], [TerminatedDate], [EmploymentStatus], [EmploymentPosition], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'5e3167c2-a5ba-42b9-886c-1289d225f054', N'Emp-0001', N'Superadmin', N'0960831941', N'admin@DAFC.com', N'wwwroot\Employee\5403e831-7f32-4286-b4a4-d89f8151a4ba.Jpeg', N'Casanchiz', 0, CAST(N'1995-12-07 00:00:00.0000000' AS DateTime2), CAST(N'2007-07-18 00:00:00.0000000' AS DateTime2), NULL, 0, 0, CAST(N'2024-07-07 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[GeneralCodes] ([Id], [GeneralCodeType], [InitialName], [Pad], [CurrentNumber], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'18eef146-fc48-4074-94e7-e5dd4a3be236', 0, N'emp', 4, 1, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[HrmSettings] ([Id], [GeneralSetting], [Value], [CreatedDate], [CreatedById], [Rowstatus]) VALUES (N'18eef146-fc48-4074-94e7-e5dd4a3be238', 0, 60, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', 0)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'System-Admin', N'SYSTEM-ADMIN', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Customer-Service', N'CUSTOMER-SERVICE', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'Bill-Product', N'BILL-PRODUCT', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4', N'Technical-Service', N'TECHNICAL-SERVICE', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5', N'Stock-Control', N'STOCK-CONTROL', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6', N'HRM', N'HRM', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7', N'Allow-Ketena', N'ALLOW-KETENAS', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8', N'online', N'ONLINE', NULL)
INSERT [dbo].[Users] ([Id], [EmployeeId], [RowStatus], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7cd878f5-8d25-494d-899c-a9d46ebf12c9', N'5e3167c2-a5ba-42b9-886c-1289d225f054', 0, N'admin', N'ADMIN', N'admin@her.com', N'ADMIN@HER.COM', 0, N'AQAAAAIAAYagAAAAEN/vT8QfXoeVXrQyaTXE2Iv+jrKLIUq4nrbkE40F9g9fb02dRqGokTnhT7vjh+ZVhw==', N'AZY66XPBGRMTZZJ4JWR2OQRK65DUJUQF', N'54674588-b058-410c-a3ac-66cea8f1777e', NULL, 0, 0, NULL, 1, 0)
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
