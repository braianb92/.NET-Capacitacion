--LAS VARIABLES SE DECLARAN CON @
--NO HAY VARIABLES GLOBALES
--SI NO ES INICIALIZADA, POR DEFECTO ES NULL
--SE PUEDEN DECLARAR VARIAS EN UNA MISMA LINEA
--SE ASIGNA CON SELECT O SET

--EJEMPLO DECLARACION//PARA VER EL VALOR MARCO LAS 3 LINEAS
declare @variable varchar(10);
set @variable=10;
select @variable

declare @variable2 varchar(10)=20;
select @variable2

------ESQUEMA ADVENTUREWORKS2014-----
--use AdventureWorks2014

--declare @nombre varchar(255)
--select @nombre = name from Production.Product 	where ProductID = 332
-- select @nombre as ValorEncontrado
-------------------

-----ESQUEMA PUBS-------
--PARA SACAR PROMEDIO EVITANDO LOS NULLS
use pubs

SELECT AVG(price) as Promedio
FROM titles

SELECT AVG(isnull(price,0)) as Prom
FROM titles

SELECT COUNT(PRICE)
FROM titles

SELECT COUNT(isnull(PRICE,0))
FROM titles

--CALCULO CON VARIABLES//MONEY ES TIPO DE DATO
use pubs 
declare @promedioprecio as money
select @promedioprecio = avg(isnull(Price,0)) from Titles

select * from titles
	where price<@promedioprecio;
