/****** Object:  Table [dbo].[heste]    Script Date: 12/19/2012 22:37:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[heste]') AND type in (N'U'))
DROP TABLE [dbo].[heste]
GO
/****** Object:  Table [dbo].[Hestesko]    Script Date: 12/19/2012 22:37:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hestesko]') AND type in (N'U'))
DROP TABLE [dbo].[Hestesko]
GO
/****** Object:  Table [dbo].[Hestesko]    Script Date: 12/19/2012 22:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hestesko]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Hestesko](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[navn] [varchar](50) COLLATE Danish_Norwegian_CI_AS NULL,
	[størelse] [int] NULL,
	[beskrivelse] [text] COLLATE Danish_Norwegian_CI_AS NULL,
 CONSTRAINT [PK_Hestesko] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Hestesko] ON
INSERT [dbo].[Hestesko] ([id], [navn], [størelse], [beskrivelse]) VALUES (3, N'dansesko', 28, N'asdf')
INSERT [dbo].[Hestesko] ([id], [navn], [størelse], [beskrivelse]) VALUES (7, N'Stål', 45, N'Sej klinge!')
INSERT [dbo].[Hestesko] ([id], [navn], [størelse], [beskrivelse]) VALUES (9, N'Træsko', 38, N'Gode gamle egeplanker')
SET IDENTITY_INSERT [dbo].[Hestesko] OFF
/****** Object:  Table [dbo].[heste]    Script Date: 12/19/2012 22:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[heste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[heste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[navn] [varchar](50) COLLATE Danish_Norwegian_CI_AS NULL,
	[race] [varchar](50) COLLATE Danish_Norwegian_CI_AS NULL,
	[farve] [varchar](20) COLLATE Danish_Norwegian_CI_AS NULL,
	[antalBen] [int] NULL,
 CONSTRAINT [PK_heste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[heste] ON
INSERT [dbo].[heste] ([id], [navn], [race], [farve], [antalBen]) VALUES (1, N'ibrahim', N'hurtig', N'hvid', 4)
INSERT [dbo].[heste] ([id], [navn], [race], [farve], [antalBen]) VALUES (2, N'tarok', N'avlshingst', N'brun', 5)
INSERT [dbo].[heste] ([id], [navn], [race], [farve], [antalBen]) VALUES (3, N'steen', N'mand', N'bodega-bleg', 3)
SET IDENTITY_INSERT [dbo].[heste] OFF
