USE UAB

--SELECT * FROM Facultad
--SELECT * FROM Estudiante

--/* 1 */
--SELECT * FROM Estudiante
--WHERE FechaNacimiento IN (SELECT TOP(1) FechaNacimiento FROM Estudiante
--							GROUP BY FechaNacimiento
--							ORDER BY COUNT(IdEstudiante) DESC)

--/* 2 */
--SELECT * , UPPER(Ci) AS NewCI FROM Estudiante
--WHERE Ci LIKE '%lp'

--/* 3 */
--SELECT LOWER(LEFT(Apellido, 1)) + UPPER(SUBSTRING(Apellido, 2, 10)) AS NewApellido FROM Estudiante

--/* 4*/
SELECT TOP(1) *, 2024 - YEAR(FechaNacimiento) AS NewFecha FROM Estudiante
ORDER BY FechaNacimiento ASC

/* 5 */
--SELECT * FROM Facultad
--UPDATE Facultad SET TotalEstudiantes = (SELECT COUNT(*) FROM Estudiante WHERE IdFacultad = Facultad.IdFacultad)

/* 6 */
--SELECT * FROM Facultad fac
--RIGHT JOIN Estudiante est ON Fac.IdFacultad = est.IdFacultad

--/* 7 */
--SELECT * FROM Estudiante fac
--RIGHT JOIN Facultad est ON Fac.IdFacultad = est.IdFacultad

/* 8 */
SELECT * FROM Facultad
WHERE TotalEstudiantes = ( SELECT AVG(TotalEstudiantes) AS Media FROM Facultad)