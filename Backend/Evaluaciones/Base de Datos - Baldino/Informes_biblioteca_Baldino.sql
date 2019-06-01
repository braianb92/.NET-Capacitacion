---BIBLIOTECA BRAIAN BALDINO-----

use biblioteca

--INFORME 1
SELECT
	l.id_libro as Codigo_Libro,
	l.titulo as Nombre_Libro,
	au.nombre as Nombre_Autor,
	au.apellido as Apellido_Autor,
	e.nombre as Editorial,
	g.genero as Genero,
	l.cantidad as Cantidad
FROM libros l
left outer join editorial e on l.id_editorial=e.id_editorial
left outer join genero g on l.id_genero=g.id_genero
left outer join libro_autor la on l.id_libro=la.id_libro
left outer join autor au on la.id_autor= au.id_autor

--INFORME 2
SELECT
	l.id_libro as Codigo_Libro,
	l.titulo as Nombre_Libro,
	au.nombre as Nombre_Autor,
	au.apellido as Apellido_Autor,
	e.nombre as Editorial,
	l.cantidad as Cantidad
FROM libros l
left outer join editorial e on l.id_editorial=e.id_editorial
left outer join genero g on l.id_genero=g.id_genero
left outer join libro_autor la on l.id_libro=la.id_libro
left outer join autor au on la.id_autor= au.id_autor
WHERE genero='Terror'

--INFORME 3
SELECT
	l.id_libro as Codigo_Libro,
	l.titulo as Nombre_Libro,
	au.nombre as Nombre_Autor,
	au.apellido as Apellido_Autor,
	e.nombre as Editorial,
	l.cantidad as Cantidad
FROM libros l
left outer join editorial e on l.id_editorial=e.id_editorial
left outer join genero g on l.id_genero=g.id_genero
left outer join libro_autor la on l.id_libro=la.id_libro
left outer join autor au on la.id_autor= au.id_autor
WHERE (titulo like '%erio%')

--INFORME 4
SELECT
	l.id_libro as Codigo_Libro,
	l.titulo as Nombre_Libro,
	au.nombre as Nombre_Autor,
	au.apellido as Apellido_Autor,
	e.nombre as Editorial,
	l.cantidad as Cantidad
FROM libros l
left outer join editorial e on l.id_editorial=e.id_editorial
left outer join genero g on l.id_genero=g.id_genero
left outer join libro_autor la on l.id_libro=la.id_libro
left outer join autor au on la.id_autor= au.id_autor
WHERE e.nombre='Debolsillo'

--INFORME 5
SELECT
	l.id_libro as Codigo_Libro,
	l.titulo as Nombre_Libro,
	au.nombre as Nombre_Autor,
	au.apellido as Apellido_Autor,
	e.nombre as Editorial,
	l.cantidad as Cantidad
FROM libros l
left outer join editorial e on l.id_editorial=e.id_editorial
left outer join genero g on l.id_genero=g.id_genero
left outer join libro_autor la on l.id_libro=la.id_libro
left outer join autor au on la.id_autor= au.id_autor
WHERE AU.nombre='Stephen' or au.apellido='King'

--INFORME 6
SELECT
	e.nombre as Editorial,
	l.titulo as Titulo
FROM libros l
right outer join editorial e on l.id_editorial=e.id_editorial
order by e.nombre, l.titulo

--INFORME 7
SELECT
	l.titulo as Titulo,
	a.apellido as Apellido_Autor,
	a.nombre as Nombre_Autor
FROM autor a
right outer join libro_autor la on a.id_autor=la.id_autor
right outer join libros l on la.id_libro=l.id_libro
order by a.apellido, l.titulo

--INFORME 8
SELECT
	COUNT(l.titulo) as CantidadLibros,
	e.nombre as Editorial
FROM editorial e
right outer join libros l on e.id_editorial=l.id_editorial
GROUP BY e.nombre
