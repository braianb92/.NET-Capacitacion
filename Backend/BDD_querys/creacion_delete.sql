USE pubs

sp_help tablaPrueba
INSERT INTO TablaPrueba(Descripcion) VALUES ('Primer ingreso')
INSERT INTO TablaPrueba(Descripcion) VALUES ('Segundo ingreso')
INSERT INTO TablaPrueba(Descripcion) VALUES ('Tercer ingreso')

SELECT * FROM TablaPrueba

DELETE from TablaPrueba WHERE Codigo=2

TRUNCATE TABLE TablaPrueba

-------------------------------------------------------------------

--COPIO SALES EN OTRA TABLA;BORRO EN LA TABLA ALTERNATIVA DONDE EL AÑO SEA 1992 Y LUEGO VUELVO A MOSTRAR
SELECT * INTO SalesPrueba from sales

DELETE FROM SalesPrueba WHERE YEAR(ord_date)=1992

SELECT * FROM SalesPrueba

--VACIA TODOS LOS DOMINIOS SIN FILTRO(A LO LOCO)
TRUNCATE TABLE SalesPrueba
SELECT * FROM SalesPrueba

--BORRA LA TABLA DE LA ESTRUCTURA
DROP TABLE salesPrueba
--------------------------------------------------------------------------

--ELIMINAR EL VINCULO DE TITLEAUTHOR PARA LOS LIBROS DE LA FECHA 09-06-1991
SELECT * FROM titleauthor

SELECT * INTO TituloAutor FROM titleauthor

SELECT * FROM TituloAutor

--ANTES DE BORRAR MIRO QUE VALORES SE VAN A BORRAR
SELECT
	t.title,
	t.pub_id,
	ta.title_id
FROM titles as t
JOIN titleauthor as ta on t.title_id=ta.title_id
WHERE pubdate='19910609'

--ACA BORRO DIRECTAMENTE
DELETE FROM titleauthor
FROM titles AS t
JOIN titleauthor AS ta on t.title_id=ta.title_id
WHERE pubdate='19910609'

--ACTUALIZACION "UPDATE" // EN ESTE CASO ACTUALIZA UN 10% EL PRECIO DE LOS LIBROS
SELECT price as Precio
FROM titles

UPDATE titles
	SET price = (price * 1.1)

--ACTUALIZA EL PRECIO DE LOS LIBROS DE LA EDITORIAL DE 'CA'
SELECT t.price AS Precio,
	p.state
FROM titles as t
join publishers as p on t.pub_id=p.pub_id
WHERE P.state='CA'


UPDATE titles
SET price=price+2
FROM titles AS T
JOIN publishers AS P ON T.pub_id=P.pub_id
WHERE P.state='CA'

--ACTUALIZA EL PRECIO DE LOS LIBROS DE LA EDITORIAL DEl PAIS 'USA'
SELECT t.price AS Precio,
	p.country
FROM titles as t
join publishers as p on t.pub_id=p.pub_id
WHERE P.country='USA'

UPDATE titles
SET price=price+2
WHERE pub_id IN
		(SELECT pub_id FROM publishers
			WHERE country='usa')

--TRANSACCIONES//SI FALLA -> "ROLLBACK" //TIENEN Q SUCEDER COMO SI FUERA UNA SOLA
--BEGIN TRANSACTION
	--UPDATE debitos
	--UPDATE creditos
	--COMMIT TRANSACTION
