---BIBLIOTECA BRAIAN BALDINO-----

USE [biblioteca]

-----------LIBRO_AUTORES-----------
GO

INSERT INTO [dbo].[libro_autor]
           ([id_libro]
           ,[id_autor])
     VALUES
           (1
           ,1)
GO

INSERT INTO [dbo].[libro_autor]
           ([id_libro]
           ,[id_autor])
     VALUES
           (3
           ,3)
GO

INSERT INTO [dbo].[libro_autor]
           ([id_libro]
           ,[id_autor])
     VALUES
           (4
           ,5)
GO

INSERT INTO [dbo].[libro_autor]
           ([id_libro]
           ,[id_autor])
     VALUES
           (5
           ,4)
GO

INSERT INTO [dbo].[libro_autor]
           ([id_libro]
           ,[id_autor])
     VALUES
           (6
           ,2)

------------------LIBROS-----------------
GO
INSERT INTO [dbo].[libros]
           ([id_genero]
           ,[id_editorial]
           ,[titulo]
           ,[cantidad])
     VALUES
           (1
           ,1
           ,'El nombre de la rosa'
           ,5)
GO
INSERT INTO [dbo].[libros]
           ([id_genero]
           ,[id_editorial]
           ,[titulo]
           ,[cantidad])
     VALUES
           (1
           ,3
           ,'Cementerio de animales'
           ,10)
INSERT INTO [dbo].[libros]
           ([id_genero]
           ,[id_editorial]
           ,[titulo]
           ,[cantidad])
     VALUES
           (3
           ,2
           ,'Pensar rapido, pensar despacio'
           ,3)
INSERT INTO [dbo].[libros]
           ([id_genero]
           ,[id_editorial]
           ,[titulo]
           ,[cantidad])
     VALUES
           (1
           ,3
           ,'El retrato de Dorian Grey'
           ,21)
INSERT INTO [dbo].[libros]
           ([id_genero]
           ,[id_editorial]
           ,[titulo]
           ,[cantidad])
     VALUES
           (2
           ,4
           ,'Hola, chicos y chicas'
           ,6)
GO
----------------AUTORES-----------------------
INSERT INTO [dbo].[autor]
           ([nombre]
           ,[apellido])
     VALUES
           ('Umberto','Eco')
GO
INSERT INTO [dbo].[autor]
           ([nombre]
           ,[apellido])
     VALUES
           ('Mario','Benedetti')
GO
INSERT INTO [dbo].[autor]
           ([nombre]
           ,[apellido])
     VALUES
           ('Stephen','King')
GO
INSERT INTO [dbo].[autor]
           ([nombre]
           ,[apellido])
     VALUES
           ('Oscar','Wilde')
GO
INSERT INTO [dbo].[autor]
           ([nombre]
           ,[apellido])
     VALUES
           ('Daniel','Kahneman')
GO
---------------EDITORIALES-------------------
INSERT INTO [dbo].[editorial]
           ([nombre])
     VALUES
           ('Cúspide')
GO
INSERT INTO [dbo].[editorial]
           ([nombre])
     VALUES
           ('Santillana')
GO
INSERT INTO [dbo].[editorial]
           ([nombre])
     VALUES
           ('Oxford')
GO
INSERT INTO [dbo].[editorial]
           ([nombre])
     VALUES
           ('Debolsillo')
GO

---------------GENEROS---------------
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Terror')
GO
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Infantil')
GO
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Psicologia')
GO
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Historia')
GO
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Educacion')
GO
INSERT INTO [dbo].[genero]
           ([genero])
     VALUES
           ('Arte')
GO

