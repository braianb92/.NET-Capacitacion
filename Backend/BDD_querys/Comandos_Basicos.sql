--alter authorization on database::pubs to sa

use pubs

--Elige que campos y tabla y alias
select au_fname AS Nombre,au_lname AS Apellido from authors

--literales
select 
	au_fname AS Nombre,
	'tiene el apellido',
	au_lname as Apellido 
from authors

--Literales concatenados
select au_lname + ', '+ au_fname AS Apellido_Y_Nombre 
from authors

--Distinct(valores unicos de conjunto de registros)
--mostrar las ciudades donde viven los autores
select city from authors  --Hay repetidas
order by city

--Anterior con distinct
select distinct city from authors

--otro(muestra todo por contract ordenados por city)
select * from authors order by city, contract

--otro(Muestra no repetido)
select distinct city,contract from authors

--Operacion don datos numericos
Select
	title as NombreLibro,
	price as PrecioNeto,
	price * 1.21 as PrecioConIVA
from titles

--Operacion don datos numericos pero con orderby(NULL aparecen primero en asc)
Select
	title as NombreLibro,
	price as PrecioNeto,
	price * 1.21 as PrecioConIVA
from titles
order by price desc

--Operacion con fechas(Fechas por omision son en formato ISOSTYLE o EN-US (yyyymmdd))
Select
	title as NombreLibro,
	pubdate as FechaPublicacion,
	pubdate+1 as FechaPublicacionMasUnDia
from titles

---------
select*from publishers
--WHERE

select pub_name
	from publishers
	where country='USA'

-------
select * from titles
order by price
--BETWEEN CON VALORES NUMERICOS (between incluye 10 y 20)
Select title,price
	from titles
	where price between 10 and 20
--Operadores CON VALORES NUMERICOS (operadores incluye 10 y 20)
Select title,price
	from titles
	where price >= 10 and price <=20
--VALORES NUMERICOS (excluye 10 y 20)
Select title,price
	from titles
	where price > 10 and price < 20

-----------
select * from sales order by ord_date
--BETWEEB CON VALORES FECHA (VAN COMO STRING)
SELECT * FROM sales
	WHERE ord_date BETWEEN '19930524' AND '19930529'

--Clausula IN
SELECT pub_name,country
	from publishers
	WHERE country IN ('USA','FRANCE')

----Clausula IN negada
SELECT pub_name,country
	from publishers
	WHERE country not IN ('USA','FRANCE')

--Lo mismo pero con WHERE
SELECT pub_name,country
	from publishers
	WHERE country='USA' or country='FRANCE'

--EJERCICIO LAB
SELECT * from authors
	WHERE state='or' or state='tn' or state='ut'

--LIKE(selecciona los registros de aquellos campos que contengan una parte de una cadena de car.)
select *
from authors order by au_lname

select *
from authors
where (au_lname like 'B%')

--Otro de LIKE
select * from titles

select*
from titles
where (title_id LIKE 'BU[1-3]%')

select*
from titles
where (title_id LIKE 'BU%')

select *
from employee
where (lname LIKE '%U%')

--BUSCAR NULL
select * from titles
where price is null
order by price

--BUSCAR NULL
select * from titles
where price is not null
order by price

--BUSCAR NULL
select * from titles
where not price is null
order by price

select pub_name,city, state,country
from publishers
where (state is null)

select title_id,title,type,price
from titles
where NOT price IS NULL AND type='popular_comp'

--LAB//MOSTRAR LAS VENTAS DE TABLA SALES CON CAMPO STOR_ID=7131 Y CAMPO QTY MAYOR O IGUAL A 20
SELECT stor_id,qty
FROM sales
where stor_id='7131' AND qty >= 20 

--MOSTRAR LOS 10 LIBROS MAS CAROS
SELECT top 10 * FROM titles
order by price DESC

--TOTAL 18 LIBROS Y EL 10 PORCIENTO DEL TOTAL SERIA 1,8...REDONDEA MUESTRA 2 LIBROS
SELECT top 10 percent * FROM titles
order by price DESC

--EJEMPLO AGGREGATED FUNCTIONS
SELECT  COUNT(*) AS CantVentas1994
FROM sales
where YEAR(ord_date)=1994

--OTRO EJEMPLO AGGREGATED F.
SELECT MAX(price) AS PrecioMayor
FROM titles

--LAB 1 MOSTRAR LA CANTIDAD DE VENTAS DEL LIBRO 'PS2091'
SELECT COUNT(*) AS CantidadVentas_Libro_ps2091
FROM sales
WHERE title_id='PS2091'
--LAB 2 MOSTRAR LA SUMA DE LAS CANTIDADES VENDIDAS (CAMPO QTY) DEL LIBRO 'PS2091'
SELECT SUM(qty) AS SumaCantidades_libro_ps2091
FROM sales
WHERE title_id='PS2091'

--CLAUSULA
SELECT title, type, COUNT(*) AS algo
FROM titles
GROUP BY type,
--CLAUSULA GROUP BY
SELECT type,COUNT(*) AS CantidadLibrosxTipo
FROM titles
GROUP BY type

--LAB/MOSTRAR DE LA TABLA SALES EL PROMEDIO DE CANTIDADES (QTY) POR SUCUERSAL (STOR_ID)
SELECT AVG(qty) AS PromedioDeLasCantidades, stor_id AS Sucursal
FROM sales
GROUP BY stor_id

--LAB/MOSTRAR DE LA TABLA SALES LA SUMA DE LAS CANTIDADES (QTY) AGRUPADAS Y ORDENADAS POR SUCURSAL (STOR_ID) Y TITULO (TITLE_ID)
SELECT SUM(qty) AS SumaDeLasCantidades, title_id AS Titulo,stor_id AS Sucursal
FROM sales
GROUP BY stor_id,title_id
order by stor_id, title_id

--CLAUSULA HAVING//me muestra las categorias y las cantidades por categorias que tienen mas de 1(cantidad)
SELECT type, COUNT(*) AS CantPorCategoria
FROM titles
GROUP BY type
HAVING (COUNT(*)>1)
order by COUNT(*)--o tambien order by CantPorCategoria

--LAB/MOSTRAR DE LA TABLA SALES EL PROMEDIO DE LAS CANTIDADES(QTY) AGRUPADAS X SUCURSAL Y LIBRO, Q SUPEREN LAS 20 UNID.
SELECT AVG(qty) AS PromedioDeLasCantidades, stor_id AS Sucursal, title_id AS Libro
FROM sales
GROUP BY stor_id, title_id
HAVING (AVG(qty)>20)

--LAB/MOSTRAR DE LA TABLA SALES LA SUMA DE LAS CANT(QTY) AGRUPADAS X SUCURSAL Y LIBROM PARA LA SUCURSAL 7067(STOR_ID) CON SUMA DE CANTIDADES MAYOR A 20
SELECT SUM(qty) AS SumaDeLasCantidades, stor_id AS Sucursal, title_id AS Libro
FROM sales
WHERE stor_id='7067'
GROUP BY stor_id, title_id
HAVING (SUM(qty)>20)
--Anterior otra version
SELECT SUM(qty) AS SumaDeLasCantidades, stor_id AS Sucursal, title_id AS Libro
FROM sales
GROUP BY stor_id, title_id
HAVING stor_id='7067' AND (SUM(qty)>20)

-----JOINS(MAS DE UNA TABLA)//UNION ENTRE PK Y FK
SELECT
	t.title as Libro,
	t.price as Precio,
	p.pub_name as Editorial
FROM titles as t
INNER JOIN publishers as p on p.pub_id=t.pub_id
-----JOINS(MAS DE UNA TABLA)//UNION ENTRE PK Y FK sin as de tabla(MAS USADA)
SELECT
	t.title as Libro,
	t.price as Precio,
	p.pub_name as Editorial
FROM titles  t
INNER JOIN publishers  p on p.pub_id=t.pub_id

--EJEMPLO INNER JOIN MOSTRAR LOS PEDIDOS Y EL NOMBRE SUCURSAL
SELECT
	sa.ord_num as NroPedido,
	sa.ord_date as FechaPedido,
	st.stor_name as Sucursal
FROM sales as sa
INNER JOIN stores as st on sa.stor_id=st.stor_id


--LAB/MOSTRAR LOS EMPLEADOS Y LAS EDITORIALES DONDE PERTENECEN(NOMBRES)(EMPLOYEE Y PUBLISHERS)
SELECT
	e.fname as NombreEmpleado,
	e.lname as ApellidoEmpleado,
	p.pub_name as Editorial
FROM publishers as p
INNER JOIN employee as e on p.pub_id=e.pub_id

--OUTTER JOIN:LEFT
SELECT
	p.pub_name as Editorial,
	t.title as Libro,
	t.price as Precio
FROM publishers as p
LEFT JOIN titles  as t on p.pub_id=t.pub_id
ORDER BY Libro

--Lab: Mostrar todos los libros existentes y aún los que no se hayan vendido en ninguna sucursal (Titles y Sales).
SELECT
	t.title_id as Codigo,
	t.title as NombreDeLibro,
	s.qty as Cantidad,
	s.stor_id as Sucursal
FROM titles t 
left outer join sales s on t.title_id=s.title_id
order by Cantidad

SELECT
	d.discounttype as TipoDescuento,
	d.discount as Descuento,
	s.stor_name as NombreSucursal
FROM discounts d
RIGHT OUTER JOIN stores s on d.stor_id=s.stor_id
order by Descuento desc

--LAB/MOSTRAR TODOS LOS PUESTOS DE TRABAJAO Y LOS QUE CORRESPONDEN A LOS EMPLEADOS.
--TAMBIEN MOSTRAR EL PUNTAJE DE NIVEL DEL EMPLEADO Y EL PUNTAJE MINIMO DEL PUESTO (JOBS Y EMPLOYEE).
SELECT
	e.emp_id as IDempleado,
	e.fname as Nombre,
	e.lname as Apellido,
	j.job_desc as Puesto,
	e.job_lvl as NivelEmpleado,
	j.min_lvl as PuntajeMinimoPuesto,
	j.max_lvl as PuntajeMaximoPuesto
FROM employee e
RIGHT OUTER JOIN jobs j on e.job_id=j.job_id
order by NivelEmpleado desc

--EJEMPLO DEL "SWITCH"
SELECT
	e.fname as Nombre,
	e.lname as Apellido,
	j.job_desc as Puesto,
	e.job_lvl as NivelEmpleado,
	j.min_lvl as PuntajeMinimoPuesto,
	j.max_lvl as PuntajeMaximoPuesto,
CASE WHEN e.job_lvl>j.min_lvl
		THEN 'SUPERO MINIMO'
		ELSE'NO SUPERO'
END AS Calificacion
FROM employee e
RIGHT OUTER JOIN jobs j on e.job_id=j.job_id
order by Calificacion desc

--DESDE VERSION 2012 USAR IIF (INLINE IF)
SELECT
	e.fname as Nombre,
	e.lname as Apellido,
	j.job_desc as Puesto,
	e.job_lvl as NivelEmpleado,
	j.min_lvl as PuntajeMinimoPuesto,
	j.max_lvl as PuntajeMaximoPuesto,
IIF(e.job_lvl>j.min_lvl,'Supero minimo','No supero') as Calificacion
FROM employee e
RIGHT OUTER JOIN jobs j on e.job_id=j.job_id
order by Calificacion desc


--En base a esta consulta, que muestra todos los libros tengan o no ventas,
--Mostrar tambièn el nombre de la sucursal
---------------------------------------------------------------------------
SELECT 
	t.title_id as IdLibro, 
	t.title as Titulo, 
	s.stor_id as IdSucursal,
	st.stor_name as NombreSucursal
FROM Titles  t
LEFT outer JOIN Sales  s on s.title_id =t.title_id 
left outer join stores st on s.stor_id=st.stor_id
ORDER BY  IdLibro , IdSucursal

--CROSS JOIN:
SELECT
	t.title as Libro,
	p.pub_name as Editorial
FROM titles t
CROSS JOIN publishers p
ORDER BY Libro

--CROSS JOIN SIN CROSS JOIN:
SELECT
	title as Libro,
	pub_name as Editorial
FROM titles,publishers
ORDER BY Libro

--SELF JOINS: INTERSECCION PERO DE A CON A (NO ES LO MISMO QUE INNER JOIN A CON B)
--Ejemplo SELF JOIN 
 -- Mostrar el nombre del empleado y su jefe
 IF OBJECT_ID (N'dbo.Empleado', N'T') IS NOT NULL 
	DROP TABLE Empleado; 
 
CREATE TABLE Empleado
(
empid int primary key,
nombre varchar(50),
jefeid int
)
Insert into Empleado(empid,nombre,jefeid)values (1001,'Juan Perez',null); 
Insert into Empleado(empid,nombre,jefeid)values (1002,'María Lopez',1001);
Insert into Empleado(empid,nombre,jefeid)values (1003,'Josecito',1001);
Insert into Empleado(empid,nombre,jefeid)values (1004,'Sandra Bull',1002);
Insert into Empleado(empid,nombre,jefeid)values (1005,'Andrea Puente',1003);
Insert into Empleado(empid,nombre,jefeid)values (1006,'Mr. Enri',1002);

SELECT * from Empleado;
--------
--AHORA SI EJEMPLO SELF JOIN
SELECT
	e.empid as ID_Empleado,
	e.nombre as Nombre_Empleado,
	j.jefeid as ID_Jefe,
	j.nombre as Nombre_Jefe
FROM Empleado e, Empleado j
WHERE j.empid=e.jefeid
--AHORA SI EJEMPLO LEFT JOIN
SELECT
	e.empid as ID_Empleado,
	e.nombre as Nombre_Empleado,
	j.jefeid as ID_Jefe,
	j.nombre as Nombre_Jefe
FROM Empleado e
LEFT OUTER JOIN Empleado j on j.empid=e.jefeid
--AHROA CON INNER
SELECT
	e.empid as ID_Empleado,
	e.nombre as Nombre_Empleado,
	j.jefeid as ID_Jefe,
	j.nombre as Nombre_Jefe
FROM Empleado e
JOIN Empleado j on j.empid=e.jefeid


--CLAUSULA UNION//ORDENA POR PRIMER SELECT Y NO REPITE
SELECT
	fname
FROM employee
UNION
SELECT
	au_fname
FROM authors

--UNION//EJEMPLO DE Q ESTA MAL PERO EXISTE EL CONVERT
SELECT
	fname as Nombre,
	convert(varchar,job_lvl) as Puntaje
FROM employee
UNION
SELECT
	au_fname, au_lname
FROM authors

--CREACION SELECT INTO PERO SIN PK, ES GENERICA
SELECT
	title_id as Codigo,
	title as Libro,
	price as PrecioNeto,
	(price*1.21) as PrecioIVA
INTO ListaPrecios
FROM titles

DROP table ListaPrecios
SELECT * FROM ListaPrecios

--CREACION DE TABLA TEMPORAL(SON O "#" LOCALES O "##" GLOBALES)
--VA A LA SYSTEM DATABASES->TEMPDB//LAS LOCALES LA VEN SOLO LOS CREADORES Y LA GLOBAL LA PUEDEN VER TODOS
--PERO CUANDO TERMINA LA SESION O EL QUERY ESTA SE BORRA DE MEMORIA.

--EJEMPLO LOCAL
SELECT * INTO #libros
FROM titles;

SELECT * FROM #libros


--EJEMPLO GLOBAL
SELECT *
INTO ##global
FROM authors

SELECT * FROM ##global
--VIENDO GLOBAL DEL OTRO QUERY
SELECT * FROM ##global


select * from discounts
select * from employee
select * from jobs
select * from pub_info
select * from publishers
select * from roysched
select * from sales
select * from titleauthor
select * from titles