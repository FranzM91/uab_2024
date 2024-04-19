USE uab_2024

--SELECT cl.IdCliente, cl.NomCliente, cl.DirCliente, pa.NomPais FROM Clientes cl, Paises pa 
--WHERE cl.IdPais = pa.IdPais

--SELECT * FROM Paises
--SELECT * FROM Clientes
--SELECT * FROM Empleados
--SELECT * FROM PedidosCabe
--INSERT Paises VALUES('Bolivia'),('Chile'),('Peru'), ('Brasil')
--INSERT Distritos VALUES('Vinto Norte'), ('Vinto Sur'), ('Vinto Este'), ('Vinto Oeste')
--INSERT Cargos VALUES('Supervisor'), ('Secretaria'), ('Contador'), ('Empleado')
--INSERT Empleados VALUES('Juan','Perez','01-25-2000','calle 1 zona vinto', 1, 800102020, 1, '01-01-2020','c:\image\picture.jpg'),
--					('Maria','Garcia','02-20-2002','', 2, 800105050, 2, '01-01-2020','c:\image\picture.jpg'),
--					('Sergio','Vargas','05-27-2006','', 3, 800103030, 3, '01-01-2020', 'c:\image\picture.jpg'),
--					('Miguel','Castro','04-12-2004','', 4, 800104040, 3, '01-01-2020', 'c:\image\picture.jpg')

--INSERT PedidosCabe VALUES(1, 3, '01-23-2023', '01-25-2023', '01-24-2023', 'T', 'La Paz', 'El Alto s/n'),
--						(5, 2, '03-23-2023', '03-25-2023', '03-24-2023', 'A', 'Santa Cruz', '3er anillo s/n')

--INSERT Proveedores VALUES('DELL', 'Esteban Arce S/N', 'Sucursal #3', 'Promotor', 4, 800303030, 52800),
--						('SONY', 'Esteban Arce S/N', 'Sucursal #2', 'Promotor', 3, 800202020, 43400),
--						('ASUS', 'El Gallo #20', 'Sucursal #10', 'Promotor', 2, 9003030, 9400)

--INSERT Categorias VALUES('DELL', 'Productos de computo'),
--						('SONY', 'Productos de computo'),
--						('ASUS', 'Productos de computo')

--INSERT Productos VALUES('Teclado', 1, 1, 200, 230, 48, 0),
--					   ('Mouse', 1, 1, 60, 80, 24, 0),
--					   ('Monitor x24', 1, 1, 800, 1000, 12, 0),
--					   ('Notebook x15', 2, 2, 1800, 2100, 12, 0)



--SELECT * FROM Clientes c, Paises p 
--WHERE c.IdPais = p.IdPais

--SELECT * FROM Clientes c
--INNER JOIN PedidosCabe p ON c.IdCliente = p.IdCliente

--SELECT * FROM PedidosCabe

--SELECT * FROM Empleados e
--LEFT JOIN PedidosCabe p ON e.IdEmpleado = p.IdEmpleado
--SELECT * FROM PedidosDeta

--SELECT * FROM PedidosCabe p
--FULL JOIN Empleados e ON p.IdEmpleado = e.IdEmpleado

--SELECT * FROM PedidosCabe p
--CROSS JOIN Empleados e
--SELECT * FROM Productos p
--CROSS JOIN Proveedores d

SELECT * FROM Empleados