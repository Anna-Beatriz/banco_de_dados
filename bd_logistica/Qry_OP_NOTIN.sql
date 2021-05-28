USE Logistica;
GO

SELECT * FROM TableClientes
WHERE Pais NOT IN ('Argentina', 'Mexico', 'Reino Unido');