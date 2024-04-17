USE uab_2024

--CREATE TABLE Paises (
--	IdPais INT PRIMARY KEY IDENTITY(1,1),
--	NomPais VARCHAR(50) NOT NULL
--)

--CREATE TABLE Categorias (
--	IdCategoria INT PRIMARY KEY IDENTITY(1,1),
--	NomCategoria VARCHAR(40) NOT NULL,
--	DescCategoria VARCHAR(255) NULL
--)

--CREATE TABLE Clientes(
--	IdCliente INT PRIMARY KEY IDENTITY(1,1),
--	NomCliente VARCHAR(40) NOT NULL,
--	DirCliente VARCHAR(80) NOT NULL,
--	IdPais INT NOT NULL,
--	FonoCliente VARCHAR(15) NULL
--	FOREIGN KEY (IdPais) REFERENCES Paises(IdPais) 
--)

--CREATE TABLE Proveedores(
--	IdProveedor INT PRIMARY KEY IDENTITY(1,1),
--	NomProveedor VARCHAR(80) NOT NULL,
--	DirProveedor VARCHAR(100) NOT NULL,
--	NomContacto VARCHAR(80) NOT NULL,
--	CargoContacto VARCHAR(50) NOT NULL,
--	IdPais INT NOT NULL,
--	FonoProveedor VARCHAR(15) NOT NULL,
--	faxProveedor VARCHAR(15) NOT NULL,
--	FOREIGN KEY (IdPais) REFERENCES Paises(IdPais)
--)

--CREATE TABLE Productos(
--	IdProducto INT PRIMARY KEY IDENTITY(1,1),
--	NomProducto VARCHAR(80) NOT NULL,
--	IdProveedor INT NOT NULL,
--	IdCategoria INT NOT NULL,
--	CantxUnidad VARCHAR(50) NOT NULL,
--	PrecioxUnidad Decimal(10,2) NOT NULL,
--	UniEnExistencia SMALLINT NOT NULL,
--	UniEnPedido SMALLINT NOT NULL,
--	FOREIGN KEY (IdProveedor) REFERENCES Proveedores(IdProveedor),
--	FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria)
--)

--CREATE TABLE Cargos (
--	IdCargo INT PRIMARY KEY IDENTITY(1,1),
--	DesCargo VARCHAR(30) NOT NULL
--)

--CREATE TABLE Distritos(
--	IdDistrito INT PRIMARY KEY IDENTITY(1,1),
--	NomDistrito VARCHAR(50) NOT NULL
--)

--CREATE TABLE Empleados (
--	IdEmpleado INT PRIMARY KEY IDENTITY(1,1),
--	NomEmpleado VARCHAR(50) NOT NULL,
--	ApeEmpleado VARCHAR(50) NOT NULL,
--	FecNac DATETIME NOT NULL,
--	DirEmpleado VARCHAR(100) NOT NULL,
--	IdDistrito INT NOT NULL,
--	FonoEmpleado VARCHAR(15) NOT NULL,
--	IdCargo INT NOT NULL,
--	FecContrata DATETIME NOT NULL,
--	FotoEmpleado IMAGE NOT NULL,
--	FOREIGN KEY (IdDistrito) REFERENCES Distritos(IdDistrito),
--	FOREIGN KEY (IdCargo) REFERENCES Cargos(IdCargo)
--)

--CREATE TABLE PedidosCabe (
--	IdPedidoCabe INT PRIMARY KEY IDENTITY(1,1),
--	IdCliente INT NOT NULL,
--	IdEmpleado INT NOT NULL,
--	FechaPedido DATETIME NOT NULL,
--	FechaEntrega DATETIME NOT NULL,
--	FechaEnvio DATETIME NOT NULL,
--	EnvioPedido CHAR(1) NOT NULL,
--	Destinatario VARCHAR(60) NOT NULL,
--	DirDestinatario VARCHAR(100) NOT NULL,
--	FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
--	FOREIGN KEY (IdEmpleado) REFERENCES Empleados(IdEmpleado),
--)

--CREATE TABLE PedidosDeta (
--	IdPedidoDeta INT PRIMARY KEY IDENTITY(1,1),
--	IdProducto INT NOT NULL,
--	PrecioUnidad Decimal(10,2) NOT NULL,
--	Cantidad SMALLINT NOT NULL,
--	Descuento Decimal(10,2) NOT NULL,
--	FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
--)

SELECT * FROM Paises
SELECT * FROM Clientes