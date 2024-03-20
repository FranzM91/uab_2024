USE Spotify

-- Tabla Departamento
 CREATE TABLE Departamento (
     Codigo INT PRIMARY KEY,
     Nombre NVARCHAR(100),
     PresupuestoAnual DECIMAL(18, 2)
 );
 
-- Tabla CentroTrabajo
CREATE TABLE CentroTrabajo (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Poblacion NVARCHAR(100),
    Direccion NVARCHAR(255)
);
 
-- Tabla Empleado
CREATE TABLE Empleado (
    Telefono NVARCHAR(20),
    FechaAlta DATE,
    NIF NVARCHAR(20) PRIMARY KEY,
    Nombre NVARCHAR(100),
    NumeroHijos INT,
    Salario DECIMAL(18, 2),
    DepartamentoCodigo INT, -- Clave for�nea
    FOREIGN KEY (DepartamentoCodigo) REFERENCES Departamento(Codigo),
);

CREATE TABLE EmpleadoCT (
	Id INT PRIMARY KEY IDENTITY(1,1),
    EmpleadoDirectorNIF NVARCHAR(20), -- Clave for�nea
    CentroTrabajoCodigo INT, -- Clave for�nea
    FOREIGN KEY (EmpleadoDirectorNIF) REFERENCES Empleado(NIF),
    FOREIGN KEY (CentroTrabajoCodigo) REFERENCES CentroTrabajo(Codigo)
);
 
-- Tabla Hijo
CREATE TABLE Hijo (
    Codigo INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    FechaNacimiento DATE,
    EmpleadoNIF NVARCHAR(20), -- Clave for�nea
    FOREIGN KEY (EmpleadoNIF) REFERENCES Empleado(NIF)
);
 
-- Tabla Habilidad
CREATE TABLE Habilidad (
    Codigo INT PRIMARY KEY,
    Descripcion NVARCHAR(255)
);
 
-- Tabla intermedia para la relaci�n N:M entre Empleado y Habilidad
CREATE TABLE EmpleadoHabilidad (
    EmpleadoNIF NVARCHAR(20), -- Clave for�nea
    HabilidadCodigo INT, -- Clave for�nea
    PRIMARY KEY (EmpleadoNIF, HabilidadCodigo),
    FOREIGN KEY (EmpleadoNIF) REFERENCES Empleado(NIF),
    FOREIGN KEY (HabilidadCodigo) REFERENCES Habilidad(Codigo)
);
 
 
