--USE uab_2024
--GO
--Ejemplo 1
BEGIN TRY
	DECLARE @Divisor INT, @Dividendo INT, @Result INT
	SET @Dividendo = 100
	SET @Divisor = 0
	SET @Result = @Dividendo / @Divisor
	PRINT 'Correcto!'+STR(@result)
END TRY
BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH

SELECT * FROM sys.sysmessages WHERE error = 8134

/**


*/
----Ejemplo 2
---- Recuperar el penultimo registro: Resultado esperado = Brasil

SELECT * FROM Paises ORDER BY IdPais DESC
BEGIN TRY
	SELECT * FROM Paises
	ORDER BY IdPais DESC
	OFFSET 1 ROWS FETCH NEXT 1 ROW ONLY

	--SELECT TOP(1) NomPais
	--FROM (
	--	SELECT TOP(2) NomPais
	--	FROM Paises
	--	ORDER BY IdPais DESC
	--) AS PenultimoRegistro
	--ORDER BY NomPais DESC
END TRY
BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH

--Ejemplo 3
BEGIN TRY
	SELECT * FROM Paises
	FOR JSON AUTO
END TRY
BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH

--Ejemplo 4
Insertar un registro desde un JSON
BEGIN TRY
	DECLARE @NewName VARCHAR(50)
	DECLARE @jsonRow VARCHAR(250) = '{"nombre": "Uruguay", "edad": 45, "ci": 345678974}'
	--DECLARE @jsonRow VARCHAR(250) = '{"data": [{"nombre": "Uruguay", "edad": 45, "ci": 345678974}, {"nombre": "Paraguay", "edad": 20, "ci": 56466677}]}'
	--PRINT @jsonRow
	--SELECT JSON_QUERY(@jsonRow, '$.data[0]') AS JsonRow
	--SELECT JSON_VALUE(@jsonRow, '$.data[1].ci') as NombrePais
	SET @NewName = (SELECT JSON_VALUE(@jsonRow, '$.nombre') as NombrePais)
	--PRINT @NewName
	INSERT Paises VALUES(@NewName)
	SELECT * FROM Paises
END TRY
BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH

--Ejemplo 5
-- DECLARE @M INT, @MES VARCHAR(20) 
-- SET @M=4 
-- SET @MES = (CASE @M 
-- 		WHEN 1 THEN 'ENERO' 
-- 		WHEN 2 THEN  'FEBRERO' 
-- 		WHEN 3 THEN  'MARZO' 
-- 		WHEN 4 THEN  'ABRIL' 
-- 		WHEN 5 THEN  'MAYO'
-- 		ELSE 'NO ES MES VALIDO'   
-- 	END) 
-- PRINT @MES
CREATE FUNCTION getNameByMonth(@Month INT)
RETURNS VARCHAR(20)
AS
BEGIN
	DECLARE @Mes VARCHAR(20)
	SET @MES = (CASE @Month 
			WHEN 1 THEN		'ENERO' 
			WHEN 2 THEN		'FEBRERO' 
			WHEN 3 THEN		'MARZO' 
			WHEN 4 THEN		'ABRIL' 
			WHEN 5 THEN		'MAYO'
			WHEN 6 THEN		'JUNIO'
			WHEN 7 THEN		'JULIO'
			WHEN 8 THEN		'AGOSTO'
			WHEN 9 THEN		'SEPTIEMBRE'
			WHEN 10 THEN	'OCTUBRE'
			WHEN 11 THEN	'NOVIEMBRE'
			WHEN 12 THEN	'DICIEMBRE'
			ELSE 'NO ES MES VALIDO'   
		END)
	RETURN @MES
END

SELECT [dbo].[GetNameByMonth](42) AS MesActual


-- Ejemplo 6

SELECT Cl.IdCliente, CL.NomCliente, PA.NomPais FROM Clientes CL
JOIN Paises PA ON CL.IdPais = PA.IdPais
WHERE CL.NomCliente LIKE '%Zelote%'
ORDER BY IdCliente DESC

CREATE PROCEDURE getClienteByFilter
	@Filter VARCHAR(10)
AS
BEGIN
	--BEGIN TRY
	--	PRINT ''
	--END TRY
	--BEGIN CATCH
	--	PRINT ERROR_NUMBER()
	--	PRINT ERROR_LINE()
	--	PRINT ERROR_MESSAGE()
	--END CATCH
	--Creando tabla temporal
	CREATE TABLE #Cliente_Temp(
		Id	INT,
		Nombre VARCHAR(50),
		NombrePais VARCHAR(50)
	)

	--Insertar Datos en la tabla Temporal
	INSERT #Cliente_Temp
	SELECT Cl.IdCliente, CL.NomCliente, PA.NomPais FROM Clientes CL
	JOIN Paises PA ON CL.IdPais = PA.IdPais	

	--Realizar busqueda basado en el filtro
	SELECT * FROM #Cliente_Temp
	WHERE Nombre LIKE CONCAT('%', @Filter, '%')
	ORDER BY Id DESC
END
DROP TABLE #Cliente_Temp

EXEC getClienteByFilter ''

-- Ejemplo 7
SELECT * FROM Paises
SELECT * FROM Clientes

DECLARE @IdPaises INT, @Contador INT
SET @Contador = 1
DECLARE cursor_Paises CURSOR
FOR SELECT IdPais FROM Paises
OPEN cursor_Paises;
	FETCH NEXT FROM cursor_Paises INTO @IdPaises;
	WHILE @@FETCH_STATUS = 0
		BEGIN
			-- logica
			PRINT CONCAT('INDEX:', @IdPaises, 'Contador:', @Contador)
			--SELECT * FROM Clientes WHERE IdPais = @IdPaises
			SET @Contador = @Contador+1;
			FETCH NEXT FROM cursor_Paises INTO @IdPaises;
		END
DEALLOCATE cursor_Paises;