/**** PASO 1****/
--CREATE DATABASE Spotify
/**** PASO 2****/
--USE Spotify
/**** PASO 3****/
--CREATE TABLE Artista (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    NombreArtistico VARCHAR(20),
--    Nacionalidad VARCHAR(20),
--    FechaNacimiento DATE,
--    GeneroMusical VARCHAR(20),
--    Genero VARCHAR(10)
--)

--CREATE TABLE Album (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Titulo VARCHAR(20),
--    Portada VARCHAR(250),
--    AnioLanzamiento INT,
--    Descripcion VARCHAR(250),
--    IdArtista INT,
--    FOREIGN KEY (IdArtista) REFERENCES Artista (Id)
--)
/**** PASO 4****/
SELECT * FROM Artista

/**** PASO 5****/
--INSERT Artista VALUES('Michael Jackson', 'EEUU', '01-12-1950', 'POP', 'Masculino')

/**** PASO 6****/
--UPDATE Artista SET Nacionalidad = 'Africa', FechaNacimiento = '01-12-1958' WHERE Id = 1

/**** PASO 7****/
SELECT * FROM Album

/**** PASO 8****/
INSERT Album VALUES('Thriller', 'th.bing.com', 1982, 'Rey del pop: El funeral público de Michael Jackson (Michael Jackson Memorial Service), fue un homenaje póstumo a Michael Jackson realizado el 7 de julio de 2009', 1)

