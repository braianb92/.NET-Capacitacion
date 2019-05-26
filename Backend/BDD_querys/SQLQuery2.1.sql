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

select * from discounts
select * from employee
select * from jobs
select * from pub_info
select * from publishers
select * from roysched
select * from sales
select * from stores
select * from titleauthor
select * from titles