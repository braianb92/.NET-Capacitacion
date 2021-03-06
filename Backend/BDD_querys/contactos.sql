USE [Contactos]
GO
/****** Object:  Table [dbo].[Datos Basicos]    Script Date: 23/05/2019 17:52:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Datos Basicos](
	[DNI] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Estado_Civil] [char](1) NOT NULL,
 CONSTRAINT [PK_Datos Basicos] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TelefonoMail]    Script Date: 23/05/2019 17:52:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TelefonoMail](
	[IDTM] [int] NOT NULL,
	[Valor] [varchar](80) NULL,
	[DNI] [int] NULL,
	[Tipo] [char](1) NULL,
 CONSTRAINT [PK_TelefonoMail] PRIMARY KEY CLUSTERED 
(
	[IDTM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
