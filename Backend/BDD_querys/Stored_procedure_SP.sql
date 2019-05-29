--STORED PROCEDURES------
use pubs
go
--CREAR SP DE VENTAS
CREATE PROC dbo.RecuperarPromedioVentas
AS
	SELECT AVG(ISNULL(QTY,0))AS PromedioVentas
	FROM dbo.Sales

GO