USE pubs

-----CREACION-------
--SINTAXIS: Insert into Empleado(empid,nombre,jefeid)values (1001,'Juan Perez',null); 

--ACA CREO LA NUEVA SUCURSAL
CREATE TABLE NuevaSucursal(
	stor_id char(4) NOT NULL,
	stor_name varchar(40) NULL,
	stor_address varchar(40) NULL,
	city varchar(20) NULL,
	state char(2) NULL,
	zip char(5) NULL)
GO
INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('7890', 'Sucursal Rosario', 'Calle 1', 'Rosario', 'SF', '1000')
INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('1234', 'Sucursal CABA', 'Calle 2', 'CABA', 'BA', '2000')

--ACA MUESTRO LO QUE HAY EN CADA UNA
SELECT * FROM NuevaSucursal
SELECT * FROM stores

--ACA METO NUEVASUCURSAL DENTRO DE STORES
GO
INSERT stores
SELECT stor_id,stor_name,stor_address,city,state,zip
FROM NuevaSucursal

SELECT * FROM NuevaSucursal
SELECT * FROM stores

--FUNCIONES
print getdate()
print sysdatetime()

