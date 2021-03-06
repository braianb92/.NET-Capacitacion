USE [biblioteca]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 30/05/2019 12:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[autor](
	[id_autor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
 CONSTRAINT [PK_autor] PRIMARY KEY CLUSTERED 
(
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[editorial]    Script Date: 30/05/2019 12:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[editorial](
	[id_editorial] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_editorial] PRIMARY KEY CLUSTERED 
(
	[id_editorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[genero]    Script Date: 30/05/2019 12:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[genero](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NULL,
 CONSTRAINT [PK_genero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[libro_autor]    Script Date: 30/05/2019 12:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libro_autor](
	[id_libro] [int] NOT NULL,
	[id_autor] [int] NOT NULL,
 CONSTRAINT [PK_libro_autor] PRIMARY KEY CLUSTERED 
(
	[id_libro] ASC,
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[libros]    Script Date: 30/05/2019 12:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[libros](
	[id_libro] [int] IDENTITY(1,1) NOT NULL,
	[id_genero] [int] NULL,
	[id_editorial] [int] NULL,
	[titulo] [varchar](50) NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_libros] PRIMARY KEY CLUSTERED 
(
	[id_libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[autor] ON 

INSERT [dbo].[autor] ([id_autor], [nombre], [apellido]) VALUES (1, N'Umberto', N'Eco')
INSERT [dbo].[autor] ([id_autor], [nombre], [apellido]) VALUES (2, N'Mario', N'Benedetti')
INSERT [dbo].[autor] ([id_autor], [nombre], [apellido]) VALUES (3, N'Stephen', N'King')
INSERT [dbo].[autor] ([id_autor], [nombre], [apellido]) VALUES (4, N'Oscar', N'Wilde')
INSERT [dbo].[autor] ([id_autor], [nombre], [apellido]) VALUES (5, N'Daniel', N'Kahneman')
SET IDENTITY_INSERT [dbo].[autor] OFF
SET IDENTITY_INSERT [dbo].[editorial] ON 

INSERT [dbo].[editorial] ([id_editorial], [nombre]) VALUES (1, N'Cúspide')
INSERT [dbo].[editorial] ([id_editorial], [nombre]) VALUES (2, N'Santillana')
INSERT [dbo].[editorial] ([id_editorial], [nombre]) VALUES (3, N'Oxford')
INSERT [dbo].[editorial] ([id_editorial], [nombre]) VALUES (4, N'Debolsillo')
SET IDENTITY_INSERT [dbo].[editorial] OFF
SET IDENTITY_INSERT [dbo].[genero] ON 

INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (1, N'Terror')
INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (2, N'Infantil')
INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (3, N'Psicologia')
INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (4, N'Historia')
INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (5, N'Educacion')
INSERT [dbo].[genero] ([id_genero], [genero]) VALUES (6, N'Arte')
SET IDENTITY_INSERT [dbo].[genero] OFF
INSERT [dbo].[libro_autor] ([id_libro], [id_autor]) VALUES (1, 1)
INSERT [dbo].[libro_autor] ([id_libro], [id_autor]) VALUES (3, 3)
INSERT [dbo].[libro_autor] ([id_libro], [id_autor]) VALUES (4, 5)
INSERT [dbo].[libro_autor] ([id_libro], [id_autor]) VALUES (5, 4)
INSERT [dbo].[libro_autor] ([id_libro], [id_autor]) VALUES (6, 2)
SET IDENTITY_INSERT [dbo].[libros] ON 

INSERT [dbo].[libros] ([id_libro], [id_genero], [id_editorial], [titulo], [cantidad]) VALUES (1, 1, 1, N'El nombre de la rosa', 5)
INSERT [dbo].[libros] ([id_libro], [id_genero], [id_editorial], [titulo], [cantidad]) VALUES (3, 1, 3, N'Cementerio de animales', 10)
INSERT [dbo].[libros] ([id_libro], [id_genero], [id_editorial], [titulo], [cantidad]) VALUES (4, 3, 2, N'Pensar rapido, pensar despacio', 3)
INSERT [dbo].[libros] ([id_libro], [id_genero], [id_editorial], [titulo], [cantidad]) VALUES (5, 1, 3, N'El retrato de Dorian Grey', 21)
INSERT [dbo].[libros] ([id_libro], [id_genero], [id_editorial], [titulo], [cantidad]) VALUES (6, 2, 4, N'Hola, chicos y chicas', 6)
SET IDENTITY_INSERT [dbo].[libros] OFF
ALTER TABLE [dbo].[libro_autor]  WITH CHECK ADD  CONSTRAINT [FK_libro_autor_autor] FOREIGN KEY([id_autor])
REFERENCES [dbo].[autor] ([id_autor])
GO
ALTER TABLE [dbo].[libro_autor] CHECK CONSTRAINT [FK_libro_autor_autor]
GO
ALTER TABLE [dbo].[libro_autor]  WITH CHECK ADD  CONSTRAINT [FK_libro_autor_libros] FOREIGN KEY([id_libro])
REFERENCES [dbo].[libros] ([id_libro])
GO
ALTER TABLE [dbo].[libro_autor] CHECK CONSTRAINT [FK_libro_autor_libros]
GO
ALTER TABLE [dbo].[libros]  WITH CHECK ADD  CONSTRAINT [FK_libros_editorial] FOREIGN KEY([id_editorial])
REFERENCES [dbo].[editorial] ([id_editorial])
GO
ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_editorial]
GO
ALTER TABLE [dbo].[libros]  WITH CHECK ADD  CONSTRAINT [FK_libros_genero] FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id_genero])
GO
ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_genero]
GO
