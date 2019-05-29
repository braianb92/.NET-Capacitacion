USE [pubs]
GO

/****** Object:  Table [dbo].[TablaPrueba]    Script Date: 28/05/2019 14:28:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TablaPrueba](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](50) NULL,
 CONSTRAINT [PK_TablaPrueba] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

sp_help tablaPrueba
INSERT INTO TablaPrueba(Descripcion) VALUES ('Primer ingreso')
INSERT INTO TablaPrueba(Descripcion) VALUES ('Segundo ingreso')
INSERT INTO TablaPrueba(Descripcion) VALUES ('Tercer ingreso')

SELECT * FROM TablaPrueba

DELETE from TablaPrueba WHERE Codigo=2

