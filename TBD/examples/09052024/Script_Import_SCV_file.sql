
BULK INSERT Categorias 
FROM 'C:\Categoria_lite.csv'
WITH (
	  FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

SELECT * FROM Categorias