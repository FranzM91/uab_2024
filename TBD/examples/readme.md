## Fecha: 22/02/2024
### https://onecompiler.com/sqlserver/

## Fecha: 29/02/2024.
### Actidad de clases.
    
    1 Mostrar una suma de 2 Numeros.
    2 Mostrar una resta de 2 Numeros.
    3 Mostrar una multiplicacion de 2 Numeros.
    4 Mostrar una division de 2 Numeros.
    5 Creata una tabla "Facultad" con las columnas:
        | IdFacultad | NombreFacultad | TotalEstudiantes | EstaActivo | FechaDeCracion |
        - El IdFacultad debe ser autoincremental.
    6 Insertar 10 facultades en la tabla Facultad con el EstadoActivo = Si/TRUE ejemplo:
        - (Ing. de Sistemas, 240, Si, 02/22/2024)
    7 Insertar 2 facultades en la tabla Facultad con el EstadoActivo = No/False ejemplo:
        - (INSA, 500, No, 02/22/2024, 02/22/2024)
    8 Mostrar todos los datos registrados en la tabla Facultad.
    9 Mostrar el Total de Facultades registrados.
    10 Mostrar la Facultad con menor numero de Estudiantes.
    12 Mostrar la Facultad con mayor numero de Estudiantes.
    13 Mostrar solo las Facultades que esten Activos.
    14 Mostrar solo las Facultades que esten InActivos.
    15 Ordernar de manera Ascendente basado en la columna TotalEstudiantes
    16 Ordernar de manera Descendente basado en la columna TotalEstudiantes
    17 Eliminar todos los registros que esten Inactivos.
    18 Actualizar 1 registro con el estado Inactivo
    19 Mostrar datos utilizando el operador BEETWEEN basado en la columna TotalEstudiantes
    20 Mostrar datos utilizando el operador NOT IN basado en la columna TotalEstudiantes
    21 Mostrar datos utilizando el operador IN basado en la columna TotalEstudiantes
    22 Mostrar datos utilizando el operador LIKE basado en la columna NombreFacultad
    -
## Fecha: 07/03/2024.
### Actidad de clases.
    
    #Tabla > Estudiantes
        |     Ci    |        Nombre      | Apellido1 | Apellido2 | Tip_Carnet | Fecha_Aprobacion  |Puntos  | Fecha_Renovacion |
        |:----------|:------------------:|:---------:|:---------:|:----------:|:-----------------:|:------:|:----------------:|
        |21873367K  | JUAN               | ALFONSO   |RODRIGUEZ  |A           |10/01/1990         |15      |10/01/2023	      |
        |94273727X  | MIGUEL             | ÁNGEL     |BERMUDEZ   |B           |12/04/1996         |15      |12/04/2024	      |
        |24344332W  | RAFA               | MARQUEZ   |DE RIVEIRO |A2          |21/10/2001         |10      |21/10/2021	      |
        |53279821Q  | IBON               | REINOSO   |ISASI      |A           |03/11/2004         |-2      |-	              |
        |78333312B  | MARIA DEL CARMEN   | BILBAO    |BLAZQUEZ   |B           |17/09/2006         |0       |-	              |
        |63259008H  | JULIETA            | VENECIA   |DE ROSSI   |B           |07/07/2021         |4       |07/07/2041	      |
        |983275134F | BENITO             | ESCAPADAS |ZIDANE     |B1          |31/12/2061         |10      |31/12/2081	      |
        |35448977O  | MIGUEL             | CERVANTES |DE AUXILIO |B           |12/04/1700         |0       |-	              |
        |98327332V  | ALBERTO            | EINSTEIN  |ALEGRIA    |C           |12/10/1999         |15      |12/10/2026        |

    1 Obtener las personas que de la tabla Estudiantes los que comienzan con el Ci por un 2.
    2 Obtener los primeros 5 digitos del numero de Ci del Estudiante RAFA.
    3 Cuál es la longitud (número de caracteres) del apellido2 para el registro con ci 21873367K.
    4 Obtener el Nombre y el apellido1 de todos los registros en minúsculas.
    5 Obtener las primeras tres letras del apellido2 y mostrarlas en mayúsculas para el registro con ci 98327332V.
    6 De la tabla Estudiantes queremos conocer quienes deben renovar, sin embargo, los que no tienen puntos no tienen fecha de renovación. ¿Se te ocurre la manera de obtener quienes son?.
    7 De la tabla Estudiantes obtener aquellos que el primer apellido comience por la A..
    8 Obtener todos los estuantes de la tabla Estudiantes donde el Ci no sea de 9 dígitos.
    9 Devolver todos los Estudiantes que su Fecha_Aprobacion no sea inferior a 2000 y tenga Tip_Carnet B.
    10 Buscar por Ci donde el penultimo digito que sea igual a 2.
    -
## Fecha: 14/03/2024.
### Actidad de clases.
    - PREGUNTA: 
    Resuelva el siguiente problema utilizando MER (Modelado Entidad - Relacion).
    “Una empresa necesita organizar la siguiente información referente a su organización interna. La empresa está organizada en una serie de departamentos. 
    
    Cada departamento tiene un código, nombre y presupuesto anual. Cada departamento está ubicado en un centro de trabajo. 
    
    La información que se desea guardar del centro de trabajo es el código de centro, nombre, población y dirección del centro. La empresa tiene una serie de empleados. 
    
    Cada empleado tiene un teléfono, fecha de alta en la empresa, NIF y nombre. De cada empleado también interesa saber el número de hijos que tiene y el salario de cada empleado.

    A esta empresa también le interesa tener guardada información sobre los hijos de los empleados. 
    Cada hijo de un empleado tendrá un código, nombre y fecha de nacimiento.
    Se desea mantener también información sobre las habilidades de los empleados (por ejemplo, mercadotecnia, trato con el cliente, fresador, operador de telefonía,etc…). 
    Cada habilidad tendrá una descripción y un código”. 
    
    Un empleado está asignado a un único departamento. Un departamento estará compuesto por uno o más empleados.

    Cada departamento se ubica en un único centro de trabajo. Estos se componen de uno o más departamentos.

    Un empleado puede tener varios hijos. Un empleado puede tener varias habilidades, y una misma habilidad puede ser poseída por empleados diferentes.
     
    Un centro de trabajo es dirigido por un empleado. Un mismo empleado puede dirigir centros de trabajo distintos.

    Preguntas:
    1. ¿Cómo puedes mostrar el nombre de todos los departamentos en mayúsculas?
    2. ¿Cuál es la población de todos los centros de trabajo en minúsculas?
    3. ¿Cuál es la fecha de alta del empleado con NIF 'NIF_Empleado_2'?
    4. ¿Cuántos empleados tienen más de 1 hijo?
    5. Actualiza el salario del empleado con NIF 'NIF_Empleado_1' a 38000.
    6. Elimina todos los hijos del empleado con NIF 'NIF_Empleado_3'.
    7. Inserta un nuevo empleado con Teléfono='111111111', FechaAlta='2022-01-01', NIF='NIF_Empleado_4', Nombre='Laura Martínez', NumeroHijos=0, Salario=32000, DepartamentoCodigo=1, CentroTrabajoCodigo=1.
    8. ¿Cuál es el nombre del empleado con NIF 'NIF_Empleado_3' en mayúsculas y el nombre del departamento al que está asignado en minúsculas?
    9. ¿Cuál es la fecha de alta de todos los empleados que fueron contratados después del 1 de enero de 2021?
    10. Actualiza el salario de todos los empleados en el departamento con código 2 a 42000.

## Fecha: 21/03/2024.
### Actidad de clases.
    -- Crear tabla Artista
    CREATE TABLE Artista (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        NombreArtistico VARCHAR(50),
        Nacionalidad VARCHAR(50)
    );

    -- Crear tabla Album
    CREATE TABLE Album (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Titulo VARCHAR(50),
        Portada VARCHAR(50),
        ArtistaId INT,
        FOREIGN KEY(ArtistaId) REFERENCES Artista(Id)
    );
    - Insertar estos registros
    -- Insertar 10 registros en la tabla Artista
INSERT INTO Artista (NombreArtistico, Nacionalidad)
VALUES
    ('Shakira', 'Colombiana'),
    ('The Beatles', 'Británica'),
    ('Michael Jackson', 'Estadounidense'),
    ('Adele', 'Británica'),
    ('Queen', 'Británica'),
    ('Elton John', 'Británica'),
    ('Madonna', 'Estadounidense'),
    ('Pink Floyd', 'Británica'),
    ('Bob Marley', 'Jamaicana'),
    ('David Bowie', 'Británica');

-- Insertar 10 registros en la tabla Album
INSERT INTO Album (Titulo, Portada, ArtistaId)
VALUES
    ('El Dorado', 'eldorado.jpg', 1),
    ('Abbey Road', 'abbeyroad.jpg', 2),
    ('Thriller', 'thriller.jpg', 3),
    ('21', '21.jpg', 4),
    ('Bohemian Rhapsody', 'bohemianrhapsody.jpg', 5),
    ('Goodbye Yellow Brick Road', 'yellowbrickroad.jpg', 6),
    ('Like a Virgin', 'likeavirgin.jpg', 7),
    ('The Dark Side of the Moon', 'darksideofthemoon.jpg', 8),
    ('Legend', 'legend.jpg', 9),
    ('The Rise and Fall of Ziggy Stardust', 'ziggy.jpg', 10);
## Preguntas
    1. mostrar el nombre artístico del artista y el título de cada álbum que ha lanzado.
    2. mostrar todos los artistas y los títulos de los álbumes que han lanzado, incluso si no tienen álbumes asociados
    3. mostrar todos los álbumes y los nombres artísticos de los artistas que los lanzaron, incluso si no tienen artistas asociados
    4. mostrar todos los artistas y álbumes, incluso si no tienen correspondencia entre sí
    5. mostrar los artistas británicos y sus álbumes correspondientes.
    6. mostrar los artistas que no tienen álbumes asociados
    7. mostrar los álbumes lanzados por artistas estadounidenses
    8. mostrar los artistas y álbumes donde los álbumes no tienen una portada definida
    9. ordenamiento por título de álbum de forma descendente
    10. Agrupar para contar el número de álbumes por cada artista
## Fecha: 18/04/2024.
### Actidad de clases.

    INSERT Paises VALUES('Bolivia'),('Chile'),('Peru'), ('Brasil')
    ----------------------------------------------------------------
    INSERT Clientes VALUES()
    Pedro Camargo	    CALLE LUIS MIRO         123	1	3245566
    Adres Arenas	    Avenida Venezuela       789	1	600303030
    Santiago Olmos	    Pasaje Sucre            123	1	500202020
    Juan Salvatierra	Calle Oruro             456	1	400101010
    Felipe Escobar	    Avenida Potosí          789	2	300000000
    Bartolome Lazarte	Pasaje Tarija           123	2	200000000
    Tomas Prado	        Calle La Paz            456	2	100000000
    Mateo Pocoata	    Avenida Cochabamba      789	3	900000000
    Jacobo Oporto	    Pasaje Santa Cruz       123	3	800000000
    Judas Tadeo Nina	Calle Venezuela         456	4	700000000
    Simon el Zelote	    Avenida Bolivia         789	1	600000000
    Judas Iscariote	    Pasaje Sucre            123	4	500000000
    ---------------------------------------------------------------
    --INSERT Distritos VALUES('Vinto Norte'), ('Vinto Sur'), ('Vinto Este'), ('Vinto Oeste')
    ---------------------------------------------------------------
    --INSERT Cargos VALUES('Supervisor'), ('Secretaria'), ('Contador'), ('Empleado')
    ---------------------------------------------------------------
    --INSERT Empleados VALUES('Juan','Perez','01-25-2000','calle 1 zona vinto', 1, 800102020, 1, '01-01-2020','c:\image\picture.jpg'),
    --					('Maria','Garcia','02-20-2002','', 2, 800105050, 2, '01-01-2020','c:\image\picture.jpg'),
    --					('Sergio','Vargas','05-27-2006','', 3, 800103030, 3, '01-01-2020', 'c:\image\picture.jpg'),
    --					('Miguel','Castro','04-12-2004','', 4, 800104040, 3, '01-01-2020', 'c:\image\picture.jpg')
    ---------------------------------------------------------------
    --INSERT PedidosCabe VALUES(1, 3, '01-23-2023', '01-25-2023', '01-24-2023', 'T', 'La Paz', 'El Alto s/n'),
    --						(5, 2, '03-23-2023', '03-25-2023', '03-24-2023', 'A', 'Santa Cruz', '3er anillo s/n')
    ---------------------------------------------------------------
    --INSERT Proveedores VALUES('DELL', 'Esteban Arce S/N', 'Sucursal #3', 'Promotor', 4, 800303030, 52800),
    --						('SONY', 'Esteban Arce S/N', 'Sucursal #2', 'Promotor', 3, 800202020, 43400),
    --						('ASUS', 'El Gallo #20', 'Sucursal #10', 'Promotor', 2, 9003030, 9400)
    ---------------------------------------------------------------
    --INSERT Categorias VALUES('DELL', 'Productos de computo'),
    --						('SONY', 'Productos de computo'),
    --						('ASUS', 'Productos de computo')
